//
// Created by teodora on 6/13/24.
//
#include "../h/syscall_c.h"
#include "../lib/console.h"
#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../h/print.hpp"

inline void abi_invoke() {
    __asm__ volatile("ecall");
}

void *mem_alloc(size_t size) {
    if (size == 0) return nullptr;

    Riscv::w_a1(size);
    Riscv::w_a0(MEM_ALLOC);

    abi_invoke();

    void *ret = (void *) Riscv::r_a0();
    return ret;
}

int mem_free(void *ptr) {
    if (!ptr) { return 0; }

    Riscv::w_a1((uint64) ptr);
    Riscv::w_a0(MEM_FREE);

    abi_invoke();

    int ret = (Riscv::r_a0() == 0) ? 0 : -1;
    return ret;
}

int thread_create(thread_t *handle, void(*start_routine)(void *), void *arg) {
    if (!handle) { return 0; }

    uint64 *stack;
    if (start_routine != nullptr)
        stack = new uint64[TCB::getSTACK_SIZE()];
        // (uint64 *)mem_alloc(TCB::getSTACK_SIZE()* sizeof(uint64));//
    else stack = nullptr;

    Riscv::w_a4((uint64) stack);
    Riscv::w_a3((uint64) arg);
    Riscv::w_a2((uint64) start_routine);
    Riscv::w_a1((uint64) handle);
    Riscv::w_a0(THREAD_CREATE);

    abi_invoke();

    int ret = (Riscv::r_a0() == 0) ? 0 : -1;
    return ret;
}

void thread_dispatch() {

    Riscv::w_a0(THREAD_DISPATCH);

    abi_invoke();
}

int thread_exit() {

    Riscv::w_a0(THREAD_EXIT);

    abi_invoke();

    uint64 volatile ret = Riscv::r_a0();
    return (int) ret;
}

int sem_open(sem_t *handle, unsigned init) {
    if (!handle) { return 0; }

    Riscv::w_a2((uint64) init);
    Riscv::w_a1((uint64) handle);
    Riscv::w_a0(SEM_OPEN);

    abi_invoke();

    uint64 volatile ret = Riscv::r_a0();
    //  printStr("Kreiran sem\n");

    return (int) ret;
}

int sem_close(sem_t handle) {
    if (!handle) { return 0; }

    Riscv::w_a1((uint64) handle);
    Riscv::w_a0(SEM_CLOSE);

    abi_invoke();

    uint64 volatile ret = Riscv::r_a0();
    // printStr("Zatvoren sem\n");
    return (int) ret;
}

int sem_wait(sem_t id) {
    if (!id) { return 0; }

    Riscv::w_a1((uint64) id);
    Riscv::w_a0(SEM_WAIT);

    abi_invoke();

    uint64 volatile ret = Riscv::r_a0();
    //printStr("wait sem\n");
    return (int) ret;

}

int sem_signal(sem_t id) {
    if (!id) { return 0; }

    Riscv::w_a1((uint64) id);
    Riscv::w_a0(SEM_SIGNAL);

    abi_invoke();

    uint64 volatile ret = Riscv::r_a0();
    //   printStr("signal sem\n");
    return (int) ret;
}


int sem_trywait(sem_t id) {
    if (!id) { return 0; }

    Riscv::w_a1((uint64) id);
    Riscv::w_a0(SEM_TRYDWAIT);

    abi_invoke();

    uint64 volatile ret = Riscv::r_a0();

    return (int) ret;
}

void changeSysRegime() {

    Riscv::w_a0(CHANGEREGIME);

    abi_invoke();
}

void putc(char c) {
    Riscv::w_a1((uint64) c);
    Riscv::w_a0(PUTC);

    abi_invoke();
}

char getc() {
    Riscv::w_a0(GETC);

    abi_invoke();

    uint64 volatile ret = Riscv::r_a0();
    return (char) ret;
}


void modifikacijaFunk() {

    Riscv::w_a0(BARIERA);

    abi_invoke();
}
//mod sept
void pair(thread_t  t1, thread_t  t2){
    if (!t1) { return ; }
    if (!t2) { return ; }

    Riscv::w_a2((uint64) t2);
    Riscv::w_a1((uint64) t1);
    Riscv::w_a0(MODIFIKACIJA);

    abi_invoke();
}
void sync(){
    Riscv::w_a0(MODIFIKACIJA1);

    abi_invoke();
}





int time_sleep(time_t) {
    return 0;
}

int sem_timedwait(
        sem_t id,
        time_t timeout
) { return 0; }