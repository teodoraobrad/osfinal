//
// Created by teodora on 6/12/24.
//

#ifndef OS2024V1_SYSCALL_CPP_HPP
#define OS2024V1_SYSCALL_CPP_HPP

#ifndef _syscall_cpp
#define _syscall_cpp

#include "syscall_c.h"

void *operator new(size_t);

void operator delete(void *p) noexcept;

void *operator new[](size_t);

void operator delete[](void *p) noexcept;

class Thread {
public:
    Thread(void (*body)(void *), void *arg);

    Thread(void (*body)(void *));

    virtual ~Thread();

    int start();

    static void dispatch();

    static int sleep(time_t time);

    static void pair(Thread* t1, Thread* t2);
    void synchronize();

    void join();

protected:
    Thread();

    virtual void run() {}

    static void wrapper(void *p);

private:
    thread_t myHandle;

    void (*body)(void *);

    void *arg;
};

class Semaphore {
public:
    Semaphore(unsigned init = 1);

    virtual ~Semaphore();

    int wait();

    int signal();

    int timedWait(time_t);

    int tryWait();

private:
    sem_t myHandle;
    //unsigned int val;
};






class PeriodicThread : public Thread {
public:
    void terminate();

protected:
    PeriodicThread(time_t period);

    virtual void periodicActivation() {}

private:
    time_t period;

};

class Console {
public:
    static char getc();

    static void putc(char);
};

#endif


#endif //OS2024V1_SYSCALL_CPP_HPP