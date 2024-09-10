//
// Created by marko on 20.4.22..
// modified by teodora 2024
//

#ifndef OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_SCHEDULER_HPP
#define OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_SCHEDULER_HPP

class TCB;

class Scheduler {

private:
    static TCB *first;
    static TCB *last;

    Scheduler() {}

    ~Scheduler();

    Scheduler(const Scheduler &) = delete;

    Scheduler &operator=(const Scheduler &) = delete;

public:
    static Scheduler &getInstance() {
        static Scheduler instance;
        return instance;
    }

    static bool isEmpty() {
        return first == nullptr;
    }

    static TCB *get();

    static void put(TCB *);

    static void remove(TCB *);

    static void empty();

    static void cleanUp();

    static TCB *idle;

    static void idleFunc(void *arg);
};

#endif //OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_SCHEDULER_HPP