//
// Created by marko on 20.4.22..
// modified by teodora 2024
//

#include "../lib/console.h" //kad uradis konzolu skloni
#include "../h/print.hpp"
#include "../test/printing.hpp"

void printStr(char const *string) {
    //uint64 sstatus = Riscv::r_sstatus();
    //Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    /* while (*string != '\0') {
         __putc(*string);
         string++;
     }

 */
    printString(string);
    //Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
}

void printInt(uint64 integer) {
    // uint64 sstatus = Riscv::r_sstatus();
    // Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    printInt(integer, 10, 0);
    // Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
}

void printHexDigit(uint8 digit) {

    if (digit < 10) {
        putc('0' + digit);
    } else {
        putc('a' + (digit - 10));
    }
}

void printUint64Hex(uint64 num) {

    const int HEX_DIGITS = 16;
    char buffer[HEX_DIGITS];
    int index = HEX_DIGITS - 1;


    if (num == 0) {
        putc('0');
        return;
    }

    while (num > 0 && index >= 0) {
        buffer[index--] = "0123456789abcdef"[num & 0xF];
        num >>= 4;
    }

    while (index >= 0) {
        buffer[index--] = '0';
    }

    for (index = 0; index < HEX_DIGITS; ++index) {
        putc(buffer[index]);
    }
}

void printRegister(uint64 reg) {
    // uint64 sstatus = Riscv::r_sstatus();
    //  Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    printUint64Hex(reg);
    putc('\n');
    //  Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
}