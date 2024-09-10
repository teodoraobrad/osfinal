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

// Thread Control Block
class TCB {
public:
    ~TCB() {
        Scheduler::remove(this);
        delete[] stack;
    }

    bool isFinished() { return currentThreadState==State::FINISHED; }

    void setFinished() { currentThreadState=State::FINISHED;
        // finished = value;
    }

    void setState(State e) { currentThreadState=e;}

    uint64 getTimeSlice() const { return timeSlice; }

    int getId() const { return id; }

    void setId(int threadId) { id = threadId; }

    static uint64 getSTACK_SIZE() { return STACK_SIZE; }

    using Body = void (*)(void *);

    static TCB *createThread(Body body, void *arg, void *stack);

    static void yield();

    static TCB *running;
    static TCB *maintcb;

    void release();


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
        //this->finished = false;
        this->next= nullptr;
        this->nextBlocked= nullptr;
        this->holder= nullptr;
        id = globalId++;
        sysRegime = false;
        currentThreadState = State::CREATED;
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

    TCB* next;
    TCB* nextBlocked;
    Sem* holder;

    Body body;
    uint64 *stack;
    Context context;
    uint64 timeSlice;
    //bool finished;

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