//
// Created by marko on 20.4.22..
// modified by teodora 2024
//

#ifndef OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_PRINT_HPP
#define OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_PRINT_HPP

#include "../lib/hw.h"

#ifdef __cplusplus
extern "C" {
#endif

void printInt(uint64 integer);

void printRegister(uint64 reg);

void printStr(char const *string);

#ifdef __cplusplus
}
#endif

#endif //OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_PRINT_HPP