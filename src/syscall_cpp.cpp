//
// Created by teodora on 8/9/24.
//
#include "../h/syscall_cpp.hpp"
//
// Created by marko on 20.4.22..
// modified by teodora 2024
//

using size_t = decltype(sizeof(0));

void *operator new(size_t n) {
    return mem_alloc(n);
}

void *operator new[](size_t n) {
    return mem_alloc(n);
}

void operator delete(void *p) noexcept {
    mem_free(p);
}

void operator delete[](void *p) noexcept {
    mem_free(p);
}

Thread::Thread() : myHandle(nullptr), body(nullptr), arg(nullptr) {}

Thread::Thread(void (*body)(void *)) : myHandle(nullptr), body(body), arg(nullptr) {}

Thread::Thread(void (*body)(void *), void *arg) : myHandle(nullptr), body(body), arg(arg) {}

Thread::~Thread() {}

void Thread::wrapper(void* n)
{
    Thread* t=(Thread*)n;
    t->run();
}

int Thread::start (){
    if (body)
        return thread_create(&myHandle, body, arg);
    else
        return thread_create(&myHandle, &Thread::wrapper, this);
}

void Thread::dispatch() {
    thread_dispatch();
}

Semaphore::Semaphore(unsigned init) : val(init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    sem_close(myHandle);
};

int Semaphore::wait() {
    return sem_wait(myHandle);
}

int Semaphore::signal() {
    return sem_signal(myHandle);
}





int Thread::sleep(time_t time){ return time_sleep(time); }

int Semaphore::timedWait(time_t t) {
    return sem_timedwait(myHandle, t);
}

int Semaphore::tryWait() {
    return sem_trywait(myHandle);
}

char Console::getc(){
 return ::getc();
}

void Console::putc(char c){
 ::putc(c);
}
