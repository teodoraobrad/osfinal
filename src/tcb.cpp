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
bool TCB::barinit= false;
Barrier* TCB::b= nullptr;

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
    running->setState(State::RUNNING);

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper() {

    Riscv::popSppSpie();

    running->body(running->arg);
    //prvo je skloni iz svega gde bi mogla biti

    thread_exit();
}

void TCB::release(){
    this->setState(State::READY);
    holder= nullptr;
    nextBlocked= nullptr;
    Scheduler::put(this);
}

void TCB::barrier() {

    if(!barinit){
        b=new Barrier;
        b->maxnum=3;
        b->currnum=0;
        b->mutex=new Sem(1);
        b->door=new Sem(0);
        barinit=1;
    }

    b->mutex->wait();

    b->currnum++;
    if(b->currnum==b->maxnum){

        for (int i=0;i<b->maxnum;i++)
            b->door->signal();

        b->currnum=0;
    }
    b->mutex->signal();

    b->door->wait();

}

//sept mod
void TCB::pair(TCB* t1, TCB* t2){
    t1->setpar(t2);
    t2->setpar(t1);

}

void TCB::sync(){
    if(this->par->dosao==false){
        dosao= true;
        semPar->wait();
    }else{
        dosao=true;
        this->par->semPar->signal();
    }
    dosao= false;
}

void TCB::setpar(TCB* a){
    this->par=a;
    this->semPar=new Sem(0);
}
/*
void TCB::join(thread_t* handle)
{
    while(!(*handle)->isFinished())
        TCB::yield();
}*/
/*
void TCB::join(TCB *handle) {
    if((handle)!= nullptr){
        while((handle)->isFinished()!=true){
            TCB::yield();
        }
    }
}*/
void TCB::join(TCB* *handle) {
    /*if((*handle)!= nullptr){
        while((*handle)->isFinished()!=true){
            TCB::yield();
        }
    }*/
    (*handle)->joinMe->wait();
}