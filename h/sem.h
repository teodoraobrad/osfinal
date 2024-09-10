//
// Created by teodora on 8/27/24.
//
#ifndef OS2024V6_SEM_H
#define OS2024V6_SEM_H

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
    explicit Sem(unsigned init = 1);

    ~Sem();

    static Sem *open(unsigned i);

    int wait();

    int signal();

    int close();

    int value() { return val; }
    bool isOn() { return on; };

private:
    //NodeS *blockedFirst, *blockedLast;
    TCB *blockedFirst, *blockedLast;
    bool on;
    int val;

};

#endif //OS2024V6_SEM_H