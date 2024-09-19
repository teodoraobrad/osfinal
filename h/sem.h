//
// Created by teodora on 8/27/24.
//
#ifndef OS2024V6_SEM_H
#define OS2024V6_SEM_H

#include "../lib/hw.h"
/*
struct NodeS {
    TCB *curr;
    NodeS *next;

    NodeS(TCB* t, NodeS* n = nullptr) : curr(t), next(n) {}
};
*/
class TCB;

class Sem {
public:
    explicit Sem(uint64 init = 1);//unsigned int

    ~Sem();

    static Sem *open(uint64 i);//unsigned int

    int wait();

    int trywait();

    int signal();

    int close();

    int value() { return val; }

    bool isOn() { return on; };

private:
    //NodeS *blockedFirst, *blockedLast;
    TCB *blockedFirst, *blockedLast;
    bool on;
    int val; //signed by def

};

#endif //OS2024V6_SEM_H