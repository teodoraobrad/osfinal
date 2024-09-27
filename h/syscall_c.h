//
// Created by teodora on 6/12/24.
//

#ifndef OS2024V1_SYSCALL_C_H
#define OS2024V1_SYSCALL_C_H

#include "../lib/hw.h"

class TCB;//error: unknown type name ‘class’
typedef TCB *thread_t;

class _sem;
typedef _sem *sem_t;

typedef unsigned long time_t;
const int EOF = -1;

#ifdef __cplusplus
extern "C" {
#endif

void abi_invoke();

void changeSysRegime();

void *mem_alloc(size_t size); //0x01
int mem_free(void *ptr); //0x02

int thread_create(thread_t *handle, void(*start_routine)(void *), void *arg); //0x11
void thread_dispatch(); //0x13
int thread_exit(); //0x12

int sem_open(sem_t *handle, unsigned init); //0x21
int sem_close(sem_t handle); //0x22
int sem_wait(sem_t id); //0x23
int sem_signal(sem_t id); //0x24
int sem_trywait(sem_t id);//0x26

void modifikacijaFunk();//0x08
//modifikacija sept
void pair(thread_t t1, thread_t t2);
void sync();


int sem_timedwait(
        sem_t id,
        time_t timeout
); //0x25
int time_sleep(time_t); //0x31

char getc(); //0x41
void putc(char); //0x42

#ifdef __cplusplus
}
#endif

#endif //OS2024V1_SYSCALL_C_HPP