#include "../lib/hw.h"

#include "../test/printing.hpp"
#include "../h/print.hpp"
#include "../h/syscall_c.h"
#include "../h/userMain.h"
#include "../h/tcb.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_cpp.hpp"
//#include "../h/MemoryAllocator.hpp"

int main() {

    //MemoryAllocator::initialize();

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    //Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    Scheduler::idle = TCB::createThread(Scheduler::idleFunc, nullptr, new uint64[DEFAULT_STACK_SIZE]);
    //(uint64 *) mem_alloc(sizeof(uint64) * DEFAULT_STACK_SIZE));
    TCB::maintcb = TCB::createThread(nullptr, nullptr, nullptr);
    TCB::running = TCB::maintcb;
    changeSysRegime();

    printString("\nstart ok\n");

    Semaphore *sem = new Semaphore(0);

    Thread *userT = new Thread(userFunc, sem);
    userT->start();
    //TCB  *userT;
    //thread_create(&userT, userFunc, null);// reinterpret_cast<void (*)(void *)>(userMain)
    //thread_dispatch();

    printString("main ce da ceka\n");
    sem->wait();

    //Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    printString("ciscenje za kraj\n");

    Scheduler::cleanUp();
    delete userT;
    delete TCB::maintcb;

    printString("main() finished\n");

    return 0;
}