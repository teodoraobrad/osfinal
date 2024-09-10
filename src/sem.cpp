//
// Created by os on 8/27/24.
//
#include "../h/sem.h"
#include "../h/tcb.hpp"
#include "../test/printing.hpp"

Sem::Sem(unsigned init) {
    val = init;
    on = true;
    blockedFirst= nullptr;
    blockedLast= nullptr;
}

Sem::~Sem() {
    close();
}

Sem *Sem::open(unsigned i) {
    Sem *s = new Sem(i);
    return s;
}

int Sem::wait() {
    if (!on) {
        return -1;
    }
    //printString("Cekaj na sem\n");
    //printInt(val);

    if (--val < 0) {
        TCB *n = TCB::running;
        n->holder= this;
        n->setState(State::BLOCKED);
        n->nextBlocked= nullptr;
        if (blockedFirst != nullptr) {
            blockedLast->nextBlocked = n;
            blockedLast = blockedLast->nextBlocked;
        } else {
            blockedFirst = blockedLast = n;
        }
       // printString("Blokirana, yieldovano\n");
        TCB::yield();
       // printString("Odblokirana\n");
    }
    if (!on) {
        return -1;
    }
    return 0;
}

int Sem::signal() {
    if (!on) {
        return -1;
    }
    //printString("Signal\n");
    //printInt(val);
    if (++val <= 0) {
        if (blockedLast == blockedFirst && blockedFirst != nullptr) {
            TCB *n = blockedFirst;
            blockedFirst = blockedLast = nullptr;
            n->release();
        }
        if (blockedFirst != nullptr) {
            TCB *n = blockedFirst;
            blockedFirst = blockedFirst->nextBlocked;
            n->release();
        }
    }
    return 0;
}

int Sem::close() {
    if (!on) {
        return -1;
    }

    while (blockedFirst != nullptr) {
        TCB *n = blockedFirst;
        blockedFirst = blockedFirst->nextBlocked;
        n->release();
        if (blockedFirst == nullptr) {
            blockedLast = blockedFirst;
        }
    }

    on = false;
    val = 0;

    return 0;
}

