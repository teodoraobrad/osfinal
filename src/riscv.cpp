//
// Created by marko on 20.4.22..
// modified by teodora 2024
//

#include "../h/riscv.hpp"
#include "../h/sem.h"

#include "../lib/mem.h"
#include "../lib/console.h"

#include "../h/tcb.hpp"
#include "../h/print.hpp"
#include "../test/printing.hpp"

//#include "../h/MemoryAllocator.hpp"//SKLONI MEM.H

void Riscv::popSppSpie() {

    if (TCB::running->sysRegime) {
        ms_sstatus(SSTATUS_SPP);
    }
    else
    {
        mc_sstatus(SSTATUS_SPP);
    }

    __asm__ volatile("csrw sepc, ra");
    __asm__ volatile("sret");
}

void Riscv::handleSupervisorTrap() {

    uint64 volatile scause = r_scause();
    uint64 volatile sstatus = r_sstatus();
    uint64 volatile a0arg = r_a0();

    switch (scause) {
        case IRQ_SYSCALL_UMODE:
        case IRQ_SYSCALL_SMODE: {

            uint64 volatile sepc = r_sepc() + 4;
            //if(a0arg!=PUTC&&a0arg!=GETC)printRegister(a0arg);
            switch (a0arg) {
                case MEM_ALLOC: {

                    uint64 volatile a1reg = r_a1fromstack();
                    //size_t sizeInBlks = (a1reg + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;

                    //a0arg = (uint64) MemoryAllocator::mem_alloc(sizeInBlks);
                    a0arg = (uint64) __mem_alloc(a1reg); //SKLONI MEM.H

                    Riscv::w_a0(a0arg);
                }
                    break;
                case MEM_FREE: {
                    uint64 volatile a1reg = r_a1fromstack();

                    //uint64 retCast = (uint64) MemoryAllocator::mem_free((void *) a1reg);
                    uint64 retCast = (uint64) __mem_free((void *) a1reg);

                    Riscv::w_a0(retCast);
                }
                    break;
                case THREAD_CREATE: {
                    uint64 volatile a1reg = (uint64) r_a1fromstack();
                    TCB::Body volatile a2reg = (TCB::Body) r_a2fromstack();
                    void *volatile a3reg = (void *) r_a3fromstack();
                    void *volatile a4reg = (void *) r_a4fromstack();

                    (*(TCB **) a1reg) = TCB::createThread(a2reg, a3reg, a4reg);

                    w_a1onstack(a1reg);
                    if (a1reg != 0)a0arg = 0; else a0arg = -1;
                    w_a0(a0arg);
                }
                    break;
                case THREAD_EXIT: {
                    TCB::running->setFinished();
                    TCB::yield();
                    w_a0(1);
                }
                    break;
                case THREAD_DISPATCH: {
                    //printRegister((uint64)TCB::running);
                    TCB::timeSliceCounter = 0;
                    TCB::yield();
                }
                    break;
                case SEM_OPEN: {
                    unsigned volatile a2reg = (unsigned) r_a2fromstack();
                    uint64 volatile a1reg = (uint64) r_a1fromstack();

                    (*(Sem **) a1reg) = Sem::open((unsigned )a2reg);
                    w_a1onstack(a1reg);

                    if (a1reg != 0)a0arg = 0; else a0arg = -1;
                    w_a0(a0arg);
                }
                    break;
                case SEM_CLOSE: {
                    uint64 volatile a1reg = r_a1fromstack();

                    Sem *s = (Sem *) a1reg;
                    uint64 retCast = (uint64) s->close();

                    Riscv::w_a0(retCast);
                }
                    break;
                case SEM_WAIT: {
                    uint64 volatile a1reg = r_a1fromstack();
                    //printRegister((uint64)a1reg);

                    uint64 retCast = (uint64) ((Sem *) a1reg)->wait();

                    Riscv::w_a0(retCast);

                }
                    break;
                case SEM_SIGNAL: {
                    uint64 volatile a1reg = r_a1fromstack();

                    Sem *s = (Sem *) a1reg;
                    uint64 retCast = (uint64) s->signal();

                    Riscv::w_a0(retCast);
                }
                    break;
                case SEM_TIMEDWAIT: {

                }
                    break;
                case SEM_TRYDWAIT: {

                }
                    break;
                case TIME_SLEEP: {

                }
                    break;
                case GETC: {
                    char c=__getc();
                    Riscv::w_a0((uint64)c);
                }
                    break;
                case PUTC: {
                    uint64 volatile a1reg = r_a1fromstack();
                    char c=(char)a1reg;
                    __putc(c);

                }
                    break;
                case CHANGEREGIME: {
                    TCB::running->sysRegime=true;
                }
                    break;

                default: {
                    printString("Prosledjen code za syscall koji nije na listi za obradu.\n");
                }
                    break;
            }

            w_sstatus(sstatus);
            w_sepc(sepc);
        }
            break;
        case IRQ_HARDWARE: {

            console_handler();
            /* if (plic_claim() == CONSOLE) {
                 plic_complete(CONSOLE);
             }
             */
        }
            break;
        case IRQ_SOFTWARE_TIMER: {
            // interrupt: yes; cause code: supervisor software interrupt (CLINT; machine timer interrupt)

            Riscv::mc_sip(SIP_SSIP);
            TCB::timeSliceCounter++;
            if (TCB::timeSliceCounter >= TCB::running->getTimeSlice()) {
                uint64 volatile sepc = r_sepc();
                TCB::timeSliceCounter = 0;
                TCB::yield();///TCB::dispatch();
                w_sstatus(sstatus);
                w_sepc(sepc);
            }

        }
            break;
        default: {

            printString("Unexpected trap cause\n");
            printString("scause: ");
            printRegister(scause);
            uint64 stval = r_stval();
            printString("stval: ");
            printRegister(stval);
            //uint64 stvec = r_stvec();
            //printString("stvec: ");
            //printRegister(stvec);
            uint64 sepc = r_sepc();
            printString("sepc: ");
            printRegister(sepc);

        }
            break;
    }

}

void Riscv::terminateRiscv() {

    *(int*)0x100000 = 0x5555;
    /*__asm__ volatile (
    "lui t0, 0x10000\n"
    "addi t0, t0, 0x0000\n"
    "li t1, 0x5555\n"
    "sw t1, 0(t0)\n"
    );*/
}