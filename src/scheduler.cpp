//
// Created by marko on 20.4.22..
// modified by teodora 2024
//

#include "../h/scheduler.hpp"
#include "../h/tcb.hpp"
#include "../test/printing.hpp"
#include "../h/print.hpp"

TCB *Scheduler::idle = nullptr;
TCB *Scheduler::last = nullptr;
TCB *Scheduler::first = nullptr;

void Scheduler::idleFunc(void *arg) {
    while (1) {
        printString("spin\n");//
    }
}

TCB *Scheduler::get() {

    /*  printString("uzimam\n");
      TCB *n = first;
      while (n != nullptr) {
          printRegister((uint64) n);
          n = n->next;
      }
      printString("to je to\n");
      */

    if (first == nullptr) {
        return idle;
    }

    TCB *ret = first;

    if (first == last) {
        first = last = nullptr;
    } else {
        first = first->next;
    }
    ret->next = nullptr;

    /*   printString("a sad\n");
       n=first;
       while(n!= nullptr){
           printRegister((uint64)n);
           n=n->next;
       }
       printString("to je to\n");
   */
    return ret;
}

void Scheduler::put(TCB *tcb) {

/*    printString("stavljam\n");
    TCB *n = first;
    printRegister((uint64)tcb);
    printString("imam\n");

    while(n!= nullptr){
        printRegister((uint64)n);
        n=n->next;
    }
    printString("to je to\n");
*/
    if (tcb == idle || tcb == nullptr)return;

    tcb->next = nullptr;
    if (first == nullptr) {
        first = last = tcb;
    } else {
        last = last->next = tcb;
    }

    /*   n = first;
       printString("red ima\n");
       while (n != nullptr) {

           printRegister((uint64) n);
           n = n->next;
       }
       printString("to je to\n");
   */
}

void Scheduler::remove(TCB *t) {
    TCB *f = first;
    TCB *prev = nullptr;
    while (f != nullptr) {//&& f != last
        if (f == t) {
            if (prev != nullptr)prev->next = f->next;
            f->next = nullptr;
            break;
        }
        prev = f;
        f = f->next;
    }
}

Scheduler::~Scheduler() {
    cleanUp();
    delete idle;
}

void Scheduler::empty() {
    while (!isEmpty()) {
        Scheduler::get();
    }

}

void Scheduler::cleanUp() {
    while (!isEmpty()) {
        TCB *temp = Scheduler::get();
        delete temp;
    }

}