//
// Created by teodora on 8/29/24.
//

#ifndef OSFINAL_USERMAIN_H
#define OSFINAL_USERMAIN_H

#include "syscall_cpp.hpp"
extern void userMain();

void userFunc(void* a) {

    Semaphore* sem=(Semaphore *) a;
    userMain();
    sem->signal();
}

#endif //OSFINAL_USERMAIN_H
