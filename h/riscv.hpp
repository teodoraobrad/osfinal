//
// Created by marko on 20.4.22..
// modified by teodora 2024
//

#ifndef OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_RISCV_HPP
#define OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_RISCV_HPP

#include "../lib/hw.h"

#define IRQ_SOFTWARE_TIMER 0x8000000000000001UL //(0x01UL<<63)|(0x01UL)
#define IRQ_HARDWARE 0x8000000000000009UL
#define IRQ_ILLEGAL_INSTRUCTION 0x0000000000000002UL
#define IRQ_ILLEGAL_READ_ADDRESS 0x0000000000000005UL
#define IRQ_ILLEGAL_WRITE_ADDRESS 0x0000000000000007UL
#define IRQ_SYSCALL_UMODE 0x0000000000000008UL
#define IRQ_SYSCALL_SMODE 0x0000000000000009UL

#define MEM_ALLOC 0x01
#define MEM_FREE 0x02
#define THREAD_CREATE 0x11
#define THREAD_EXIT 0x12
#define THREAD_DISPATCH 0x13
#define SEM_OPEN 0x21
#define SEM_CLOSE 0x22
#define SEM_WAIT 0x23
#define SEM_SIGNAL 0x24
#define SEM_TIMEDWAIT 0x25
#define SEM_TRYDWAIT 0x26
#define TIME_SLEEP 0x31
#define GETC 0x41
#define PUTC 0X42
#define CHANGEREGIME 0X05

#define BARIERA 0x07
#define MODIFIKACIJA 0x08
#define MODIFIKACIJA1 0x09

#define CONSOLE 0xa


class Riscv {
public:

    static void terminateRiscv();

    // pop sstatus.spp and sstatus.spie bits (has to be a non inline function)
    static void popSppSpie();

    // read register scause
    static uint64 r_scause();

    // write register scause
    static void w_scause(uint64 scause);

    // read register sepc
    static uint64 r_sepc();

    // write register sepc
    static void w_sepc(uint64 sepc);

    // read register stvec
    static uint64 r_stvec();

    // write register stvec
    static void w_stvec(uint64 stvec);

    // read register stval
    static uint64 r_stval();

    // write register stval
    static void w_stval(uint64 stval);

    enum BitMaskSip {
        SIP_SSIP = (1 << 1),
        SIP_STIP = (1 << 5),
        SIP_SEIP = (1 << 9),
    };

    // mask set register sip
    static void ms_sip(uint64 mask);

    // mask clear register sip
    static void mc_sip(uint64 mask);

    // read register sip
    static uint64 r_sip();

    // write register sip
    static void w_sip(uint64 sip);

    enum BitMaskSstatus {
        SSTATUS_SIE = (1 << 1),
        SSTATUS_SPIE = (1 << 5),
        SSTATUS_SPP = (1 << 8),
    };

    // mask set register sstatus
    static void ms_sstatus(uint64 mask);

    // mask clear register sstatus
    static void mc_sstatus(uint64 mask);

    // read register sstatus
    static uint64 r_sstatus();

    // write register sstatus
    static void w_sstatus(uint64 sstatus);

    static uint64 r_a0();

    static uint64 r_a1();

    static uint64 r_a2();

    static uint64 r_a3();

    static uint64 r_a4();

    static uint64 r_ra();

    static void w_a0(uint64 val);

    static void w_a1(uint64 val);

    static void w_a2(uint64 val);

    static void w_a3(uint64 val);

    static void w_a4(uint64 val);

    static uint64 r_a0fromstack();

    static uint64 r_a1fromstack();

    static uint64 r_a2fromstack();

    static uint64 r_a3fromstack();

    static uint64 r_a4fromstack();

    static void w_a0onstack(uint64 val);

    static void w_a1onstack(uint64 val);

    static void w_a2onstack(uint64 val);

    static void w_a3onstack(uint64 val);

    static void w_a4onstack(uint64 val);

    // supervisor trap
    static void supervisorTrap();

private:

    // supervisor trap handler
    static void handleSupervisorTrap();

};


inline uint64 Riscv::r_a0() {
    uint64 volatile a0;
    __asm__ volatile ("mv %[val], a0" : [val] "=r"(a0));
    return a0;
}

inline uint64 Riscv::r_a0fromstack() {
    uint64 a0;
    __asm__ volatile (
            "ld %0, 80(fp)"
            : "=r" (a0)
            :
            :
            );
    return a0;
}

inline void Riscv::w_a0(uint64 val) {
    __asm__ volatile ("mv a0, %[val]": : [val] "r"(val));
}

inline void Riscv::w_a0onstack(uint64 val) {
    __asm__ volatile ("sd %[val], 10*8(fp)": : [val] "r"(val));
}

inline uint64 Riscv::r_a1() {
    uint64 volatile a1;
    __asm__ volatile ("mv %[val], a1" : [val] "=r"(a1));
    return a1;
}

inline uint64 Riscv::r_a1fromstack() {
    uint64 a1;
    __asm__ volatile (
            "ld %0, 88(fp)"
            : "=r" (a1)
            :
            :
            );
    return a1;
}

inline void Riscv::w_a1(uint64 val) {
    __asm__ volatile ("mv a1, %[val]": : [val] "r"(val));
}

inline void Riscv::w_a1onstack(uint64 val) {
    __asm__ volatile ("sd %[val], 11*8(fp)": : [val] "r"(val));
}

inline uint64 Riscv::r_a2() {
    uint64 volatile a2;
    __asm__ volatile ("mv %[val], a2":[val] "=r"(a2));
    return a2;
}

inline uint64 Riscv::r_a2fromstack() {
    uint64 a2;
    __asm__ volatile (
            "ld %0, 96(fp)"
            : "=r" (a2)
            :
            :
            );
    return a2;
}

inline void Riscv::w_a2(uint64 val) {
    __asm__ volatile ("mv a2, %[val]": : [val] "r"(val));
}

inline void Riscv::w_a2onstack(uint64 val) {
    __asm__ volatile ("sd %[val], 12*8(fp)": : [val] "r"(val));
}

inline uint64 Riscv::r_a3() {
    uint64 volatile a3;
    __asm__ volatile ("mv %[val], a3": [val] "=r"(a3));
    return a3;
}

inline uint64 Riscv::r_a3fromstack() {
    uint64 a3;
    __asm__ volatile (
            "ld %0, 104(fp)"
            : "=r" (a3)
            :
            :
            );
    return a3;
}

inline void Riscv::w_a3(uint64 val) {
    __asm__ volatile ("mv a3, %[val]": : [val] "r"(val));
}

inline void Riscv::w_a3onstack(uint64 val) {
    __asm__ volatile ("sd %[val], 13*8(fp)": : [val] "r"(val));
}

inline uint64 Riscv::r_a4() {
    uint64 volatile a4;
    __asm__ volatile ("mv %[val], a4": [val] "=r"(a4));
    return a4;
}

inline uint64 Riscv::r_a4fromstack() {
    uint64 a4;
    __asm__ volatile (
            "ld %0, 112(fp)"
            : "=r" (a4)
            :
            :
            );
    return a4;
}

inline void Riscv::w_a4(uint64 val) {
    __asm__ volatile ("mv a4, %[val]": : [val] "r"(val));
}

inline void Riscv::w_a4onstack(uint64 val) {
    __asm__ volatile ("sd %[val],14*8(fp) ": : [val] "r"(val));
}

inline uint64 Riscv::r_scause() {
    uint64 volatile scause;
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    return scause;
}

inline uint64 Riscv::r_ra() {
    uint64 volatile val;
    __asm__ volatile ("mv %[val], ra" : [val] "=r"(val));
    return val;
}

inline void Riscv::w_scause(uint64 scause) {
    __asm__ volatile ("csrw scause, %[scause]" : : [scause] "r"(scause));
}

inline uint64 Riscv::r_sepc() {
    uint64 volatile sepc;
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    return sepc;
}

inline void Riscv::w_sepc(uint64 sepc) {
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
}

inline uint64 Riscv::r_stvec() {
    uint64 volatile stvec;
    __asm__ volatile ("csrr %[stvec], stvec" : [stvec] "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
}

inline uint64 Riscv::r_stval() {
    uint64 volatile stval;
    __asm__ volatile ("csrr %[stval], stval" : [stval] "=r"(stval));
    return stval;
}

inline void Riscv::w_stval(uint64 stval) {
    __asm__ volatile ("csrw stval, %[stval]" : : [stval] "r"(stval));
}

inline void Riscv::ms_sip(uint64 mask) {
    __asm__ volatile ("csrs sip, %[mask]" : : [mask] "r"(mask));
}

inline void Riscv::mc_sip(uint64 mask) {
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
}

inline uint64 Riscv::r_sip() {
    uint64 volatile sip;
    __asm__ volatile ("csrr %[sip], sip" : [sip] "=r"(sip));
    return sip;
}

inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    return sstatus;
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
}

#endif //OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_RISCV_HPP