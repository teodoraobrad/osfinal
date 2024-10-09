//
// Created by marko on 20.4.22..
// modified by teodora 2024
//

#ifndef OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_TCB_HPP
#define OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_TCB_HPP

#include "../lib/hw.h"
#include "../h/scheduler.hpp"
#include "../h/sem.h"

enum State {
    CREATED = 0, RUNNING = 1, BLOCKED = 3, SLEEPING = 4, FINISHED = 5, READY = 6
};

struct Barrier{
    Sem* door;
    Sem* mutex;
    int currnum;
    int maxnum;
};

class TCB {
public:
    ~TCB() {
        Scheduler::remove(this);
        delete[] stack;
        nextBlocked= nullptr;
        next= nullptr;
        holder= nullptr;
    }

    bool isFinished() { return currentThreadState == State::FINISHED; }

    void setFinished() {
        currentThreadState = State::FINISHED;
        // finished = value;
    }

    using Body = void (*)(void *);

    void setState(State e) { currentThreadState = e; }

    uint64 getTimeSlice() const { return timeSlice; }

    int getId() const { return id; }

    void setId(int threadId) { id = threadId; }

    Sem* semHolder() const { return holder; }

    int getNumOfChildren() const { return children; }

    void incNumOfCh() { children++; }
    void decNumOfCh() { children--; }

    TCB* getParent() const { return parent; }

    static uint64 getSTACK_SIZE() { return STACK_SIZE; }

    static TCB *createThread(Body body, void *arg, void *stack);

    static void yield();

    static void barrier();

    //mod sept
    static void pair(TCB* t1, TCB* t2);
    void sync();

    void release();

    static TCB *running;
    static TCB *maintcb;



    //mod sept
    TCB* par;
    bool dosao;
    Sem* semPar;

    void setpar(TCB* a);

private:

    explicit TCB(Body body, void *arg, void *s, uint64 timeSlice) {
        this->arg = arg;
        this->body = body;
        this->stack = (uint64 *) s;
        this->context = {
                body != nullptr ? (uint64) &threadWrapper : 0,
                stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
        };
        this->timeSlice = timeSlice;
        this->next = nullptr;
        this->nextBlocked = nullptr;
        this->holder = nullptr;
        this->parent=TCB::running;
        if(TCB::running!= nullptr&&body!= nullptr){
            TCB::running->incNumOfCh();
        }
        this->children=0;
        id = globalId++;
        sysRegime = false;
        //this->finished = false;
        currentThreadState = State::CREATED;

        this->par= nullptr;
        this->dosao= false;
        this->semPar= nullptr;

        if (body == nullptr) { currentThreadState = State::RUNNING; }
        if (body != nullptr && body != &Scheduler::idleFunc) { Scheduler::put(this); }
    }

    struct Context {
        uint64 ra;
        uint64 sp;
    };

    int id;
    static int globalId;
    State currentThreadState;
    void *arg;
    bool sysRegime;

    TCB *next;
    TCB *nextBlocked;
    Sem *holder;
    TCB *parent;

    int children;

    Body body;
    uint64 *stack;
    Context context;
    uint64 timeSlice;
    //bool finished;

    static Barrier* b;
    static bool barinit;

    static void join (TCB** handle);
    //void join(TCB* handle);//greska


    friend class Riscv;

    friend class Scheduler;

    friend class Sem;

    static void threadWrapper();

    static void contextSwitch(Context *oldContext, Context *runningContext);

    static uint64 timeSliceCounter;

    static uint64 constexpr STACK_SIZE = DEFAULT_STACK_SIZE;
    static uint64 constexpr TIME_SLICE = DEFAULT_TIME_SLICE;
};

#endif //OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_TCB_HPP