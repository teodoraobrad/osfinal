//
// Created by marko on 20.4.22..
// modified by teodora 2024
//

#include "../h/tcb.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.h"
#include "../h/print.hpp"

TCB *TCB::running = nullptr;
TCB *TCB::maintcb= nullptr;
int TCB::globalId = 0;

uint64 TCB::timeSliceCounter = 0;

TCB* TCB::createThread(Body body, void *arg, void* stack) {

    return new TCB(body, arg, stack, TIME_SLICE);
}

void TCB::yield() {
    //printStr("yield");
    //printRegister((uint64)TCB::running);
    TCB *old = running;
    if (!old->isFinished()&&old->currentThreadState!=State::BLOCKED&&old->currentThreadState!=State::SLEEPING) {
        if(old!=Scheduler::idle)old->currentThreadState=State::READY;
        Scheduler::put(old); }
    running = Scheduler::get();
    running->currentThreadState=State::RUNNING;

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper() {

    Riscv::popSppSpie();

    running->body(running->arg);
    //prvo je skloni iz svega gde bi mogla biti

    thread_exit();
}

void TCB::release(){
    this->currentThreadState=State::READY;
    holder= nullptr;
    nextBlocked= nullptr;
    Scheduler::put(this);
}
