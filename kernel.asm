
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	90813103          	ld	sp,-1784(sp) # 8000b908 <_GLOBAL_OFFSET_TABLE_+0x30>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	6ac060ef          	jal	ra,800066c8 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv14supervisorTrapEv>:
.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:
    # push all registers to stack
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001004:	00013023          	sd	zero,0(sp)
    80001008:	00113423          	sd	ra,8(sp)
    8000100c:	00213823          	sd	sp,16(sp)
    80001010:	00313c23          	sd	gp,24(sp)
    80001014:	02413023          	sd	tp,32(sp)
    80001018:	02513423          	sd	t0,40(sp)
    8000101c:	02613823          	sd	t1,48(sp)
    80001020:	02713c23          	sd	t2,56(sp)
    80001024:	04813023          	sd	s0,64(sp)
    80001028:	04913423          	sd	s1,72(sp)
    8000102c:	04b13c23          	sd	a1,88(sp)
    80001030:	06c13023          	sd	a2,96(sp)
    80001034:	06d13423          	sd	a3,104(sp)
    80001038:	06e13823          	sd	a4,112(sp)
    8000103c:	06f13c23          	sd	a5,120(sp)
    80001040:	09013023          	sd	a6,128(sp)
    80001044:	09113423          	sd	a7,136(sp)
    80001048:	09213823          	sd	s2,144(sp)
    8000104c:	09313c23          	sd	s3,152(sp)
    80001050:	0b413023          	sd	s4,160(sp)
    80001054:	0b513423          	sd	s5,168(sp)
    80001058:	0b613823          	sd	s6,176(sp)
    8000105c:	0b713c23          	sd	s7,184(sp)
    80001060:	0d813023          	sd	s8,192(sp)
    80001064:	0d913423          	sd	s9,200(sp)
    80001068:	0da13823          	sd	s10,208(sp)
    8000106c:	0db13c23          	sd	s11,216(sp)
    80001070:	0fc13023          	sd	t3,224(sp)
    80001074:	0fd13423          	sd	t4,232(sp)
    80001078:	0fe13823          	sd	t5,240(sp)
    8000107c:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    80001080:	15c010ef          	jal	ra,800021dc <_ZN5Riscv20handleSupervisorTrapEv>


    # pop all registers from stack
    .irp index, 0,1,2,3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001084:	00013003          	ld	zero,0(sp)
    80001088:	00813083          	ld	ra,8(sp)
    8000108c:	01013103          	ld	sp,16(sp)
    80001090:	01813183          	ld	gp,24(sp)
    80001094:	02013203          	ld	tp,32(sp)
    80001098:	02813283          	ld	t0,40(sp)
    8000109c:	03013303          	ld	t1,48(sp)
    800010a0:	03813383          	ld	t2,56(sp)
    800010a4:	04013403          	ld	s0,64(sp)
    800010a8:	04813483          	ld	s1,72(sp)
    800010ac:	05813583          	ld	a1,88(sp)
    800010b0:	06013603          	ld	a2,96(sp)
    800010b4:	06813683          	ld	a3,104(sp)
    800010b8:	07013703          	ld	a4,112(sp)
    800010bc:	07813783          	ld	a5,120(sp)
    800010c0:	08013803          	ld	a6,128(sp)
    800010c4:	08813883          	ld	a7,136(sp)
    800010c8:	09013903          	ld	s2,144(sp)
    800010cc:	09813983          	ld	s3,152(sp)
    800010d0:	0a013a03          	ld	s4,160(sp)
    800010d4:	0a813a83          	ld	s5,168(sp)
    800010d8:	0b013b03          	ld	s6,176(sp)
    800010dc:	0b813b83          	ld	s7,184(sp)
    800010e0:	0c013c03          	ld	s8,192(sp)
    800010e4:	0c813c83          	ld	s9,200(sp)
    800010e8:	0d013d03          	ld	s10,208(sp)
    800010ec:	0d813d83          	ld	s11,216(sp)
    800010f0:	0e013e03          	ld	t3,224(sp)
    800010f4:	0e813e83          	ld	t4,232(sp)
    800010f8:	0f013f03          	ld	t5,240(sp)
    800010fc:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001100:	10010113          	addi	sp,sp,256

    80001104:	10200073          	sret
	...

0000000080001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    sd ra, 0 * 8(a0)
    80001110:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    80001114:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001118:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    8000111c:	0085b103          	ld	sp,8(a1)

    80001120:	00008067          	ret

0000000080001124 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001124:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001128:	00b29a63          	bne	t0,a1,8000113c <fail>
    sc.w t0, a2, (a0)      # Try to update.
    8000112c:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001130:	fe029ae3          	bnez	t0,80001124 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001134:	00000513          	li	a0,0
    jr ra                  # Return.
    80001138:	00008067          	ret

000000008000113c <fail>:
    fail:
    li a0, 1               # Set return to failure.
    8000113c:	00100513          	li	a0,1
    80001140:	00008067          	ret

0000000080001144 <_Z12modifikacijav>:
//
// Created by os on 9/16/24.
//
#include "../h/mod.hpp"

void modifikacija(){
    80001144:	ff010113          	addi	sp,sp,-16
    80001148:	00813423          	sd	s0,8(sp)
    8000114c:	01010413          	addi	s0,sp,16





    80001150:	00813403          	ld	s0,8(sp)
    80001154:	01010113          	addi	sp,sp,16
    80001158:	00008067          	ret

000000008000115c <mem_alloc>:
inline void abi_invoke() {
    __asm__ volatile("ecall");
}

void *mem_alloc(size_t size) {
    if (size == 0) return nullptr;
    8000115c:	02050c63          	beqz	a0,80001194 <mem_alloc+0x38>
void *mem_alloc(size_t size) {
    80001160:	fe010113          	addi	sp,sp,-32
    80001164:	00813c23          	sd	s0,24(sp)
    80001168:	02010413          	addi	s0,sp,32
            );
    return a1;
}

inline void Riscv::w_a1(uint64 val) {
    __asm__ volatile ("mv a1, %[val]": : [val] "r"(val));
    8000116c:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %[val]": : [val] "r"(val));
    80001170:	00100793          	li	a5,1
    80001174:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001178:	00000073          	ecall
    __asm__ volatile ("mv %[val], a0" : [val] "=r"(a0));
    8000117c:	00050793          	mv	a5,a0
    80001180:	fef43423          	sd	a5,-24(s0)
    return a0;
    80001184:	fe843503          	ld	a0,-24(s0)

    abi_invoke();

    void *ret = (void *) Riscv::r_a0();
    return ret;
}
    80001188:	01813403          	ld	s0,24(sp)
    8000118c:	02010113          	addi	sp,sp,32
    80001190:	00008067          	ret
    if (size == 0) return nullptr;
    80001194:	00000513          	li	a0,0
}
    80001198:	00008067          	ret

000000008000119c <mem_free>:

int mem_free(void *ptr) {
    if (!ptr) { return 0; }
    8000119c:	04050063          	beqz	a0,800011dc <mem_free+0x40>
int mem_free(void *ptr) {
    800011a0:	fe010113          	addi	sp,sp,-32
    800011a4:	00813c23          	sd	s0,24(sp)
    800011a8:	02010413          	addi	s0,sp,32
    __asm__ volatile ("mv a1, %[val]": : [val] "r"(val));
    800011ac:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %[val]": : [val] "r"(val));
    800011b0:	00200793          	li	a5,2
    800011b4:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800011b8:	00000073          	ecall
    __asm__ volatile ("mv %[val], a0" : [val] "=r"(a0));
    800011bc:	00050793          	mv	a5,a0
    800011c0:	fef43423          	sd	a5,-24(s0)
    return a0;
    800011c4:	fe843783          	ld	a5,-24(s0)
    Riscv::w_a1((uint64) ptr);
    Riscv::w_a0(MEM_FREE);

    abi_invoke();

    int ret = (Riscv::r_a0() == 0) ? 0 : -1;
    800011c8:	00079e63          	bnez	a5,800011e4 <mem_free+0x48>
    800011cc:	00000513          	li	a0,0
    return ret;
}
    800011d0:	01813403          	ld	s0,24(sp)
    800011d4:	02010113          	addi	sp,sp,32
    800011d8:	00008067          	ret
    if (!ptr) { return 0; }
    800011dc:	00000513          	li	a0,0
}
    800011e0:	00008067          	ret
    int ret = (Riscv::r_a0() == 0) ? 0 : -1;
    800011e4:	fff00513          	li	a0,-1
    800011e8:	fe9ff06f          	j	800011d0 <mem_free+0x34>

00000000800011ec <thread_create>:

int thread_create(thread_t *handle, void(*start_routine)(void *), void *arg) {
    if (!handle) { return 0; }
    800011ec:	08050863          	beqz	a0,8000127c <thread_create+0x90>
int thread_create(thread_t *handle, void(*start_routine)(void *), void *arg) {
    800011f0:	fc010113          	addi	sp,sp,-64
    800011f4:	02113c23          	sd	ra,56(sp)
    800011f8:	02813823          	sd	s0,48(sp)
    800011fc:	02913423          	sd	s1,40(sp)
    80001200:	03213023          	sd	s2,32(sp)
    80001204:	01313c23          	sd	s3,24(sp)
    80001208:	04010413          	addi	s0,sp,64
    8000120c:	00050493          	mv	s1,a0
    80001210:	00058913          	mv	s2,a1
    80001214:	00060993          	mv	s3,a2

    uint64 *stack;
    if (start_routine != nullptr)
    80001218:	04058e63          	beqz	a1,80001274 <thread_create+0x88>
        stack = new uint64[TCB::getSTACK_SIZE()];
    8000121c:	00008537          	lui	a0,0x8
    80001220:	00001097          	auipc	ra,0x1
    80001224:	c0c080e7          	jalr	-1012(ra) # 80001e2c <_Znam>
            );
    return a4;
}

inline void Riscv::w_a4(uint64 val) {
    __asm__ volatile ("mv a4, %[val]": : [val] "r"(val));
    80001228:	00050713          	mv	a4,a0
    __asm__ volatile ("mv a3, %[val]": : [val] "r"(val));
    8000122c:	00098693          	mv	a3,s3
    __asm__ volatile ("mv a2, %[val]": : [val] "r"(val));
    80001230:	00090613          	mv	a2,s2
    __asm__ volatile ("mv a1, %[val]": : [val] "r"(val));
    80001234:	00048593          	mv	a1,s1
    __asm__ volatile ("mv a0, %[val]": : [val] "r"(val));
    80001238:	01100793          	li	a5,17
    8000123c:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001240:	00000073          	ecall
    __asm__ volatile ("mv %[val], a0" : [val] "=r"(a0));
    80001244:	00050793          	mv	a5,a0
    80001248:	fcf43423          	sd	a5,-56(s0)
    return a0;
    8000124c:	fc843783          	ld	a5,-56(s0)
    Riscv::w_a1((uint64) handle);
    Riscv::w_a0(THREAD_CREATE);

    abi_invoke();

    int ret = (Riscv::r_a0() == 0) ? 0 : -1;
    80001250:	02079a63          	bnez	a5,80001284 <thread_create+0x98>
    80001254:	00000513          	li	a0,0
    return ret;
}
    80001258:	03813083          	ld	ra,56(sp)
    8000125c:	03013403          	ld	s0,48(sp)
    80001260:	02813483          	ld	s1,40(sp)
    80001264:	02013903          	ld	s2,32(sp)
    80001268:	01813983          	ld	s3,24(sp)
    8000126c:	04010113          	addi	sp,sp,64
    80001270:	00008067          	ret
    else stack = nullptr;
    80001274:	00000513          	li	a0,0
    80001278:	fb1ff06f          	j	80001228 <thread_create+0x3c>
    if (!handle) { return 0; }
    8000127c:	00000513          	li	a0,0
}
    80001280:	00008067          	ret
    int ret = (Riscv::r_a0() == 0) ? 0 : -1;
    80001284:	fff00513          	li	a0,-1
    80001288:	fd1ff06f          	j	80001258 <thread_create+0x6c>

000000008000128c <thread_dispatch>:

void thread_dispatch() {
    8000128c:	ff010113          	addi	sp,sp,-16
    80001290:	00813423          	sd	s0,8(sp)
    80001294:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a0, %[val]": : [val] "r"(val));
    80001298:	01300793          	li	a5,19
    8000129c:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800012a0:	00000073          	ecall

    Riscv::w_a0(THREAD_DISPATCH);

    abi_invoke();
}
    800012a4:	00813403          	ld	s0,8(sp)
    800012a8:	01010113          	addi	sp,sp,16
    800012ac:	00008067          	ret

00000000800012b0 <thread_exit>:

int thread_exit() {
    800012b0:	fe010113          	addi	sp,sp,-32
    800012b4:	00813c23          	sd	s0,24(sp)
    800012b8:	02010413          	addi	s0,sp,32
    800012bc:	01200793          	li	a5,18
    800012c0:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800012c4:	00000073          	ecall
    __asm__ volatile ("mv %[val], a0" : [val] "=r"(a0));
    800012c8:	00050793          	mv	a5,a0
    800012cc:	fef43023          	sd	a5,-32(s0)
    return a0;
    800012d0:	fe043783          	ld	a5,-32(s0)

    Riscv::w_a0(THREAD_EXIT);

    abi_invoke();

    uint64 volatile ret = Riscv::r_a0();
    800012d4:	fef43423          	sd	a5,-24(s0)
    return (int) ret;
    800012d8:	fe843503          	ld	a0,-24(s0)
}
    800012dc:	0005051b          	sext.w	a0,a0
    800012e0:	01813403          	ld	s0,24(sp)
    800012e4:	02010113          	addi	sp,sp,32
    800012e8:	00008067          	ret

00000000800012ec <sem_open>:

int sem_open(sem_t *handle, unsigned init) {
    if (!handle) { return 0; }
    800012ec:	04050863          	beqz	a0,8000133c <sem_open+0x50>
int sem_open(sem_t *handle, unsigned init) {
    800012f0:	fe010113          	addi	sp,sp,-32
    800012f4:	00813c23          	sd	s0,24(sp)
    800012f8:	02010413          	addi	s0,sp,32

    Riscv::w_a2((uint64) init);
    800012fc:	02059593          	slli	a1,a1,0x20
    80001300:	0205d593          	srli	a1,a1,0x20
    __asm__ volatile ("mv a2, %[val]": : [val] "r"(val));
    80001304:	00058613          	mv	a2,a1
    __asm__ volatile ("mv a1, %[val]": : [val] "r"(val));
    80001308:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %[val]": : [val] "r"(val));
    8000130c:	02100793          	li	a5,33
    80001310:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001314:	00000073          	ecall
    __asm__ volatile ("mv %[val], a0" : [val] "=r"(a0));
    80001318:	00050793          	mv	a5,a0
    8000131c:	fef43023          	sd	a5,-32(s0)
    return a0;
    80001320:	fe043783          	ld	a5,-32(s0)
    Riscv::w_a1((uint64) handle);
    Riscv::w_a0(SEM_OPEN);

    abi_invoke();

    uint64 volatile ret = Riscv::r_a0();
    80001324:	fef43423          	sd	a5,-24(s0)
    //  printStr("Kreiran sem\n");

    return (int) ret;
    80001328:	fe843503          	ld	a0,-24(s0)
    8000132c:	0005051b          	sext.w	a0,a0
}
    80001330:	01813403          	ld	s0,24(sp)
    80001334:	02010113          	addi	sp,sp,32
    80001338:	00008067          	ret
    if (!handle) { return 0; }
    8000133c:	00000513          	li	a0,0
}
    80001340:	00008067          	ret

0000000080001344 <sem_close>:

int sem_close(sem_t handle) {
    if (!handle) { return 0; }
    80001344:	04050263          	beqz	a0,80001388 <sem_close+0x44>
int sem_close(sem_t handle) {
    80001348:	fe010113          	addi	sp,sp,-32
    8000134c:	00813c23          	sd	s0,24(sp)
    80001350:	02010413          	addi	s0,sp,32
    __asm__ volatile ("mv a1, %[val]": : [val] "r"(val));
    80001354:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %[val]": : [val] "r"(val));
    80001358:	02200793          	li	a5,34
    8000135c:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001360:	00000073          	ecall
    __asm__ volatile ("mv %[val], a0" : [val] "=r"(a0));
    80001364:	00050793          	mv	a5,a0
    80001368:	fef43023          	sd	a5,-32(s0)
    return a0;
    8000136c:	fe043783          	ld	a5,-32(s0)
    Riscv::w_a1((uint64) handle);
    Riscv::w_a0(SEM_CLOSE);

    abi_invoke();

    uint64 volatile ret = Riscv::r_a0();
    80001370:	fef43423          	sd	a5,-24(s0)
    // printStr("Zatvoren sem\n");
    return (int) ret;
    80001374:	fe843503          	ld	a0,-24(s0)
    80001378:	0005051b          	sext.w	a0,a0
}
    8000137c:	01813403          	ld	s0,24(sp)
    80001380:	02010113          	addi	sp,sp,32
    80001384:	00008067          	ret
    if (!handle) { return 0; }
    80001388:	00000513          	li	a0,0
}
    8000138c:	00008067          	ret

0000000080001390 <sem_wait>:

int sem_wait(sem_t id) {
    if (!id) { return 0; }
    80001390:	04050263          	beqz	a0,800013d4 <sem_wait+0x44>
int sem_wait(sem_t id) {
    80001394:	fe010113          	addi	sp,sp,-32
    80001398:	00813c23          	sd	s0,24(sp)
    8000139c:	02010413          	addi	s0,sp,32
    __asm__ volatile ("mv a1, %[val]": : [val] "r"(val));
    800013a0:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %[val]": : [val] "r"(val));
    800013a4:	02300793          	li	a5,35
    800013a8:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800013ac:	00000073          	ecall
    __asm__ volatile ("mv %[val], a0" : [val] "=r"(a0));
    800013b0:	00050793          	mv	a5,a0
    800013b4:	fef43023          	sd	a5,-32(s0)
    return a0;
    800013b8:	fe043783          	ld	a5,-32(s0)
    Riscv::w_a1((uint64) id);
    Riscv::w_a0(SEM_WAIT);

    abi_invoke();

    uint64 volatile ret = Riscv::r_a0();
    800013bc:	fef43423          	sd	a5,-24(s0)
    //printStr("wait sem\n");
    return (int) ret;
    800013c0:	fe843503          	ld	a0,-24(s0)
    800013c4:	0005051b          	sext.w	a0,a0

}
    800013c8:	01813403          	ld	s0,24(sp)
    800013cc:	02010113          	addi	sp,sp,32
    800013d0:	00008067          	ret
    if (!id) { return 0; }
    800013d4:	00000513          	li	a0,0
}
    800013d8:	00008067          	ret

00000000800013dc <sem_signal>:

int sem_signal(sem_t id) {
    if (!id) { return 0; }
    800013dc:	04050263          	beqz	a0,80001420 <sem_signal+0x44>
int sem_signal(sem_t id) {
    800013e0:	fe010113          	addi	sp,sp,-32
    800013e4:	00813c23          	sd	s0,24(sp)
    800013e8:	02010413          	addi	s0,sp,32
    __asm__ volatile ("mv a1, %[val]": : [val] "r"(val));
    800013ec:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %[val]": : [val] "r"(val));
    800013f0:	02400793          	li	a5,36
    800013f4:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800013f8:	00000073          	ecall
    __asm__ volatile ("mv %[val], a0" : [val] "=r"(a0));
    800013fc:	00050793          	mv	a5,a0
    80001400:	fef43023          	sd	a5,-32(s0)
    return a0;
    80001404:	fe043783          	ld	a5,-32(s0)
    Riscv::w_a1((uint64) id);
    Riscv::w_a0(SEM_SIGNAL);

    abi_invoke();

    uint64 volatile ret = Riscv::r_a0();
    80001408:	fef43423          	sd	a5,-24(s0)
    //   printStr("signal sem\n");
    return (int) ret;
    8000140c:	fe843503          	ld	a0,-24(s0)
    80001410:	0005051b          	sext.w	a0,a0
}
    80001414:	01813403          	ld	s0,24(sp)
    80001418:	02010113          	addi	sp,sp,32
    8000141c:	00008067          	ret
    if (!id) { return 0; }
    80001420:	00000513          	li	a0,0
}
    80001424:	00008067          	ret

0000000080001428 <changeSysRegime>:

void changeSysRegime() {
    80001428:	ff010113          	addi	sp,sp,-16
    8000142c:	00813423          	sd	s0,8(sp)
    80001430:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a0, %[val]": : [val] "r"(val));
    80001434:	00500793          	li	a5,5
    80001438:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    8000143c:	00000073          	ecall

    Riscv::w_a0(CHANGEREGIME);

    abi_invoke();
}
    80001440:	00813403          	ld	s0,8(sp)
    80001444:	01010113          	addi	sp,sp,16
    80001448:	00008067          	ret

000000008000144c <putc>:

void putc(char c) {
    8000144c:	ff010113          	addi	sp,sp,-16
    80001450:	00813423          	sd	s0,8(sp)
    80001454:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %[val]": : [val] "r"(val));
    80001458:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %[val]": : [val] "r"(val));
    8000145c:	04200793          	li	a5,66
    80001460:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001464:	00000073          	ecall
    Riscv::w_a1((uint64) c);
    Riscv::w_a0(PUTC);

    abi_invoke();
}
    80001468:	00813403          	ld	s0,8(sp)
    8000146c:	01010113          	addi	sp,sp,16
    80001470:	00008067          	ret

0000000080001474 <getc>:

char getc() {
    80001474:	fe010113          	addi	sp,sp,-32
    80001478:	00813c23          	sd	s0,24(sp)
    8000147c:	02010413          	addi	s0,sp,32
    80001480:	04100793          	li	a5,65
    80001484:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001488:	00000073          	ecall
    __asm__ volatile ("mv %[val], a0" : [val] "=r"(a0));
    8000148c:	00050793          	mv	a5,a0
    80001490:	fef43023          	sd	a5,-32(s0)
    return a0;
    80001494:	fe043783          	ld	a5,-32(s0)
    Riscv::w_a0(GETC);

    abi_invoke();

    uint64 volatile ret = Riscv::r_a0();
    80001498:	fef43423          	sd	a5,-24(s0)
    return (char) ret;
    8000149c:	fe843503          	ld	a0,-24(s0)
}
    800014a0:	0ff57513          	andi	a0,a0,255
    800014a4:	01813403          	ld	s0,24(sp)
    800014a8:	02010113          	addi	sp,sp,32
    800014ac:	00008067          	ret

00000000800014b0 <sem_trywait>:





int sem_trywait(sem_t id) {
    800014b0:	ff010113          	addi	sp,sp,-16
    800014b4:	00813423          	sd	s0,8(sp)
    800014b8:	01010413          	addi	s0,sp,16
    return 0;
}
    800014bc:	00000513          	li	a0,0
    800014c0:	00813403          	ld	s0,8(sp)
    800014c4:	01010113          	addi	sp,sp,16
    800014c8:	00008067          	ret

00000000800014cc <time_sleep>:

int time_sleep(time_t) {
    800014cc:	ff010113          	addi	sp,sp,-16
    800014d0:	00813423          	sd	s0,8(sp)
    800014d4:	01010413          	addi	s0,sp,16
    return 0;
}
    800014d8:	00000513          	li	a0,0
    800014dc:	00813403          	ld	s0,8(sp)
    800014e0:	01010113          	addi	sp,sp,16
    800014e4:	00008067          	ret

00000000800014e8 <sem_timedwait>:

int sem_timedwait(
        sem_t id,
        time_t timeout
    800014e8:	ff010113          	addi	sp,sp,-16
    800014ec:	00813423          	sd	s0,8(sp)
    800014f0:	01010413          	addi	s0,sp,16
    800014f4:	00000513          	li	a0,0
    800014f8:	00813403          	ld	s0,8(sp)
    800014fc:	01010113          	addi	sp,sp,16
    80001500:	00008067          	ret

0000000080001504 <_ZL9fibonaccim>:
        }
    }
}

static uint64 fibonacci(uint64 n)
{
    80001504:	fe010113          	addi	sp,sp,-32
    80001508:	00113c23          	sd	ra,24(sp)
    8000150c:	00813823          	sd	s0,16(sp)
    80001510:	00913423          	sd	s1,8(sp)
    80001514:	01213023          	sd	s2,0(sp)
    80001518:	02010413          	addi	s0,sp,32
    8000151c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80001520:	00100793          	li	a5,1
    80001524:	02a7f863          	bgeu	a5,a0,80001554 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80001528:	00a00793          	li	a5,10
    8000152c:	02f577b3          	remu	a5,a0,a5
    80001530:	02078e63          	beqz	a5,8000156c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001534:	fff48513          	addi	a0,s1,-1
    80001538:	00000097          	auipc	ra,0x0
    8000153c:	fcc080e7          	jalr	-52(ra) # 80001504 <_ZL9fibonaccim>
    80001540:	00050913          	mv	s2,a0
    80001544:	ffe48513          	addi	a0,s1,-2
    80001548:	00000097          	auipc	ra,0x0
    8000154c:	fbc080e7          	jalr	-68(ra) # 80001504 <_ZL9fibonaccim>
    80001550:	00a90533          	add	a0,s2,a0
}
    80001554:	01813083          	ld	ra,24(sp)
    80001558:	01013403          	ld	s0,16(sp)
    8000155c:	00813483          	ld	s1,8(sp)
    80001560:	00013903          	ld	s2,0(sp)
    80001564:	02010113          	addi	sp,sp,32
    80001568:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000156c:	00000097          	auipc	ra,0x0
    80001570:	d20080e7          	jalr	-736(ra) # 8000128c <thread_dispatch>
    80001574:	fc1ff06f          	j	80001534 <_ZL9fibonaccim+0x30>

0000000080001578 <_Z11workerBodyAPv>:
{
    80001578:	fe010113          	addi	sp,sp,-32
    8000157c:	00113c23          	sd	ra,24(sp)
    80001580:	00813823          	sd	s0,16(sp)
    80001584:	00913423          	sd	s1,8(sp)
    80001588:	01213023          	sd	s2,0(sp)
    8000158c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++)
    80001590:	00000913          	li	s2,0
    80001594:	0380006f          	j	800015cc <_Z11workerBodyAPv+0x54>
            thread_dispatch();
    80001598:	00000097          	auipc	ra,0x0
    8000159c:	cf4080e7          	jalr	-780(ra) # 8000128c <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++)
    800015a0:	00148493          	addi	s1,s1,1
    800015a4:	000027b7          	lui	a5,0x2
    800015a8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800015ac:	0097ee63          	bltu	a5,s1,800015c8 <_Z11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++)
    800015b0:	00000713          	li	a4,0
    800015b4:	000077b7          	lui	a5,0x7
    800015b8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800015bc:	fce7eee3          	bltu	a5,a4,80001598 <_Z11workerBodyAPv+0x20>
    800015c0:	00170713          	addi	a4,a4,1
    800015c4:	ff1ff06f          	j	800015b4 <_Z11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++)
    800015c8:	00190913          	addi	s2,s2,1
    800015cc:	00900793          	li	a5,9
    800015d0:	0327ec63          	bltu	a5,s2,80001608 <_Z11workerBodyAPv+0x90>
        printString("A: i=");
    800015d4:	00008517          	auipc	a0,0x8
    800015d8:	a4c50513          	addi	a0,a0,-1460 # 80009020 <CONSOLE_STATUS+0x10>
    800015dc:	00004097          	auipc	ra,0x4
    800015e0:	e70080e7          	jalr	-400(ra) # 8000544c <_Z11printStringPKc>
        printInt(i);
    800015e4:	00090513          	mv	a0,s2
    800015e8:	00002097          	auipc	ra,0x2
    800015ec:	884080e7          	jalr	-1916(ra) # 80002e6c <printInt>
        printString("\n");
    800015f0:	00008517          	auipc	a0,0x8
    800015f4:	fd050513          	addi	a0,a0,-48 # 800095c0 <CONSOLE_STATUS+0x5b0>
    800015f8:	00004097          	auipc	ra,0x4
    800015fc:	e54080e7          	jalr	-428(ra) # 8000544c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    80001600:	00000493          	li	s1,0
    80001604:	fa1ff06f          	j	800015a4 <_Z11workerBodyAPv+0x2c>
}
    80001608:	01813083          	ld	ra,24(sp)
    8000160c:	01013403          	ld	s0,16(sp)
    80001610:	00813483          	ld	s1,8(sp)
    80001614:	00013903          	ld	s2,0(sp)
    80001618:	02010113          	addi	sp,sp,32
    8000161c:	00008067          	ret

0000000080001620 <_Z11workerBodyBPv>:
{
    80001620:	fe010113          	addi	sp,sp,-32
    80001624:	00113c23          	sd	ra,24(sp)
    80001628:	00813823          	sd	s0,16(sp)
    8000162c:	00913423          	sd	s1,8(sp)
    80001630:	01213023          	sd	s2,0(sp)
    80001634:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++)
    80001638:	00000913          	li	s2,0
    8000163c:	0380006f          	j	80001674 <_Z11workerBodyBPv+0x54>
            thread_dispatch();
    80001640:	00000097          	auipc	ra,0x0
    80001644:	c4c080e7          	jalr	-948(ra) # 8000128c <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++)
    80001648:	00148493          	addi	s1,s1,1
    8000164c:	000027b7          	lui	a5,0x2
    80001650:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001654:	0097ee63          	bltu	a5,s1,80001670 <_Z11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++)
    80001658:	00000713          	li	a4,0
    8000165c:	000077b7          	lui	a5,0x7
    80001660:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001664:	fce7eee3          	bltu	a5,a4,80001640 <_Z11workerBodyBPv+0x20>
    80001668:	00170713          	addi	a4,a4,1
    8000166c:	ff1ff06f          	j	8000165c <_Z11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++)
    80001670:	00190913          	addi	s2,s2,1
    80001674:	00f00793          	li	a5,15
    80001678:	0327ec63          	bltu	a5,s2,800016b0 <_Z11workerBodyBPv+0x90>
        printString("B: i=");
    8000167c:	00008517          	auipc	a0,0x8
    80001680:	9ac50513          	addi	a0,a0,-1620 # 80009028 <CONSOLE_STATUS+0x18>
    80001684:	00004097          	auipc	ra,0x4
    80001688:	dc8080e7          	jalr	-568(ra) # 8000544c <_Z11printStringPKc>
        printInt(i);
    8000168c:	00090513          	mv	a0,s2
    80001690:	00001097          	auipc	ra,0x1
    80001694:	7dc080e7          	jalr	2012(ra) # 80002e6c <printInt>
        printString("\n");
    80001698:	00008517          	auipc	a0,0x8
    8000169c:	f2850513          	addi	a0,a0,-216 # 800095c0 <CONSOLE_STATUS+0x5b0>
    800016a0:	00004097          	auipc	ra,0x4
    800016a4:	dac080e7          	jalr	-596(ra) # 8000544c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    800016a8:	00000493          	li	s1,0
    800016ac:	fa1ff06f          	j	8000164c <_Z11workerBodyBPv+0x2c>
}
    800016b0:	01813083          	ld	ra,24(sp)
    800016b4:	01013403          	ld	s0,16(sp)
    800016b8:	00813483          	ld	s1,8(sp)
    800016bc:	00013903          	ld	s2,0(sp)
    800016c0:	02010113          	addi	sp,sp,32
    800016c4:	00008067          	ret

00000000800016c8 <_Z11workerBodyCPv>:

void workerBodyC(void* arg)
{
    800016c8:	fe010113          	addi	sp,sp,-32
    800016cc:	00113c23          	sd	ra,24(sp)
    800016d0:	00813823          	sd	s0,16(sp)
    800016d4:	00913423          	sd	s1,8(sp)
    800016d8:	01213023          	sd	s2,0(sp)
    800016dc:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800016e0:	00000493          	li	s1,0
    800016e4:	0400006f          	j	80001724 <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++)
    {
        printString("C: i=");
    800016e8:	00008517          	auipc	a0,0x8
    800016ec:	94850513          	addi	a0,a0,-1720 # 80009030 <CONSOLE_STATUS+0x20>
    800016f0:	00004097          	auipc	ra,0x4
    800016f4:	d5c080e7          	jalr	-676(ra) # 8000544c <_Z11printStringPKc>
        printInt(i);
    800016f8:	00000613          	li	a2,0
    800016fc:	00a00593          	li	a1,10
    80001700:	00048513          	mv	a0,s1
    80001704:	00004097          	auipc	ra,0x4
    80001708:	ef8080e7          	jalr	-264(ra) # 800055fc <_Z8printIntiii>
        printString("\n");
    8000170c:	00008517          	auipc	a0,0x8
    80001710:	eb450513          	addi	a0,a0,-332 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80001714:	00004097          	auipc	ra,0x4
    80001718:	d38080e7          	jalr	-712(ra) # 8000544c <_Z11printStringPKc>
    for (; i < 3; i++)
    8000171c:	0014849b          	addiw	s1,s1,1
    80001720:	0ff4f493          	andi	s1,s1,255
    80001724:	00200793          	li	a5,2
    80001728:	fc97f0e3          	bgeu	a5,s1,800016e8 <_Z11workerBodyCPv+0x20>
    }

    printString("C: yield\n");
    8000172c:	00008517          	auipc	a0,0x8
    80001730:	90c50513          	addi	a0,a0,-1780 # 80009038 <CONSOLE_STATUS+0x28>
    80001734:	00004097          	auipc	ra,0x4
    80001738:	d18080e7          	jalr	-744(ra) # 8000544c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000173c:	00700313          	li	t1,7
    thread_dispatch();
    80001740:	00000097          	auipc	ra,0x0
    80001744:	b4c080e7          	jalr	-1204(ra) # 8000128c <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80001748:	00030913          	mv	s2,t1

    printString("C: t1=");
    8000174c:	00008517          	auipc	a0,0x8
    80001750:	8fc50513          	addi	a0,a0,-1796 # 80009048 <CONSOLE_STATUS+0x38>
    80001754:	00004097          	auipc	ra,0x4
    80001758:	cf8080e7          	jalr	-776(ra) # 8000544c <_Z11printStringPKc>
    printInt(t1);
    8000175c:	00090513          	mv	a0,s2
    80001760:	00001097          	auipc	ra,0x1
    80001764:	70c080e7          	jalr	1804(ra) # 80002e6c <printInt>
    printString("\n");
    80001768:	00008517          	auipc	a0,0x8
    8000176c:	e5850513          	addi	a0,a0,-424 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80001770:	00004097          	auipc	ra,0x4
    80001774:	cdc080e7          	jalr	-804(ra) # 8000544c <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80001778:	00c00513          	li	a0,12
    8000177c:	00000097          	auipc	ra,0x0
    80001780:	d88080e7          	jalr	-632(ra) # 80001504 <_ZL9fibonaccim>
    80001784:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    80001788:	00008517          	auipc	a0,0x8
    8000178c:	8c850513          	addi	a0,a0,-1848 # 80009050 <CONSOLE_STATUS+0x40>
    80001790:	00004097          	auipc	ra,0x4
    80001794:	cbc080e7          	jalr	-836(ra) # 8000544c <_Z11printStringPKc>
    printInt(result);
    80001798:	00090513          	mv	a0,s2
    8000179c:	00001097          	auipc	ra,0x1
    800017a0:	6d0080e7          	jalr	1744(ra) # 80002e6c <printInt>
    printString("\n");
    800017a4:	00008517          	auipc	a0,0x8
    800017a8:	e1c50513          	addi	a0,a0,-484 # 800095c0 <CONSOLE_STATUS+0x5b0>
    800017ac:	00004097          	auipc	ra,0x4
    800017b0:	ca0080e7          	jalr	-864(ra) # 8000544c <_Z11printStringPKc>
    800017b4:	0400006f          	j	800017f4 <_Z11workerBodyCPv+0x12c>

    for (; i < 6; i++)
    {
        printString("C: i=");
    800017b8:	00008517          	auipc	a0,0x8
    800017bc:	87850513          	addi	a0,a0,-1928 # 80009030 <CONSOLE_STATUS+0x20>
    800017c0:	00004097          	auipc	ra,0x4
    800017c4:	c8c080e7          	jalr	-884(ra) # 8000544c <_Z11printStringPKc>
        printInt(i);
    800017c8:	00000613          	li	a2,0
    800017cc:	00a00593          	li	a1,10
    800017d0:	00048513          	mv	a0,s1
    800017d4:	00004097          	auipc	ra,0x4
    800017d8:	e28080e7          	jalr	-472(ra) # 800055fc <_Z8printIntiii>
        printString("\n");
    800017dc:	00008517          	auipc	a0,0x8
    800017e0:	de450513          	addi	a0,a0,-540 # 800095c0 <CONSOLE_STATUS+0x5b0>
    800017e4:	00004097          	auipc	ra,0x4
    800017e8:	c68080e7          	jalr	-920(ra) # 8000544c <_Z11printStringPKc>
    for (; i < 6; i++)
    800017ec:	0014849b          	addiw	s1,s1,1
    800017f0:	0ff4f493          	andi	s1,s1,255
    800017f4:	00500793          	li	a5,5
    800017f8:	fc97f0e3          	bgeu	a5,s1,800017b8 <_Z11workerBodyCPv+0xf0>
    }
    thread_dispatch();//
    800017fc:	00000097          	auipc	ra,0x0
    80001800:	a90080e7          	jalr	-1392(ra) # 8000128c <thread_dispatch>
}
    80001804:	01813083          	ld	ra,24(sp)
    80001808:	01013403          	ld	s0,16(sp)
    8000180c:	00813483          	ld	s1,8(sp)
    80001810:	00013903          	ld	s2,0(sp)
    80001814:	02010113          	addi	sp,sp,32
    80001818:	00008067          	ret

000000008000181c <_Z11workerBodyDPv>:

void workerBodyD(void* arg)
{
    8000181c:	fe010113          	addi	sp,sp,-32
    80001820:	00113c23          	sd	ra,24(sp)
    80001824:	00813823          	sd	s0,16(sp)
    80001828:	00913423          	sd	s1,8(sp)
    8000182c:	01213023          	sd	s2,0(sp)
    80001830:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80001834:	00a00493          	li	s1,10
    80001838:	0400006f          	j	80001878 <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++)
    {
        printString("D: i=");
    8000183c:	00008517          	auipc	a0,0x8
    80001840:	82450513          	addi	a0,a0,-2012 # 80009060 <CONSOLE_STATUS+0x50>
    80001844:	00004097          	auipc	ra,0x4
    80001848:	c08080e7          	jalr	-1016(ra) # 8000544c <_Z11printStringPKc>
        printInt(i);
    8000184c:	00000613          	li	a2,0
    80001850:	00a00593          	li	a1,10
    80001854:	00048513          	mv	a0,s1
    80001858:	00004097          	auipc	ra,0x4
    8000185c:	da4080e7          	jalr	-604(ra) # 800055fc <_Z8printIntiii>
        printString("\n");
    80001860:	00008517          	auipc	a0,0x8
    80001864:	d6050513          	addi	a0,a0,-672 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80001868:	00004097          	auipc	ra,0x4
    8000186c:	be4080e7          	jalr	-1052(ra) # 8000544c <_Z11printStringPKc>
    for (; i < 13; i++)
    80001870:	0014849b          	addiw	s1,s1,1
    80001874:	0ff4f493          	andi	s1,s1,255
    80001878:	00c00793          	li	a5,12
    8000187c:	fc97f0e3          	bgeu	a5,s1,8000183c <_Z11workerBodyDPv+0x20>
    }

    printString("D: yield\n");
    80001880:	00007517          	auipc	a0,0x7
    80001884:	7e850513          	addi	a0,a0,2024 # 80009068 <CONSOLE_STATUS+0x58>
    80001888:	00004097          	auipc	ra,0x4
    8000188c:	bc4080e7          	jalr	-1084(ra) # 8000544c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001890:	00500313          	li	t1,5
    thread_dispatch();
    80001894:	00000097          	auipc	ra,0x0
    80001898:	9f8080e7          	jalr	-1544(ra) # 8000128c <thread_dispatch>

    uint64 result = fibonacci(16);
    8000189c:	01000513          	li	a0,16
    800018a0:	00000097          	auipc	ra,0x0
    800018a4:	c64080e7          	jalr	-924(ra) # 80001504 <_ZL9fibonaccim>
    800018a8:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    800018ac:	00007517          	auipc	a0,0x7
    800018b0:	7cc50513          	addi	a0,a0,1996 # 80009078 <CONSOLE_STATUS+0x68>
    800018b4:	00004097          	auipc	ra,0x4
    800018b8:	b98080e7          	jalr	-1128(ra) # 8000544c <_Z11printStringPKc>
    printInt(result);
    800018bc:	00090513          	mv	a0,s2
    800018c0:	00001097          	auipc	ra,0x1
    800018c4:	5ac080e7          	jalr	1452(ra) # 80002e6c <printInt>
    printString("\n");
    800018c8:	00008517          	auipc	a0,0x8
    800018cc:	cf850513          	addi	a0,a0,-776 # 800095c0 <CONSOLE_STATUS+0x5b0>
    800018d0:	00004097          	auipc	ra,0x4
    800018d4:	b7c080e7          	jalr	-1156(ra) # 8000544c <_Z11printStringPKc>
    800018d8:	0400006f          	j	80001918 <_Z11workerBodyDPv+0xfc>

    for (; i < 16; i++)
    {
        printString("D: i=");
    800018dc:	00007517          	auipc	a0,0x7
    800018e0:	78450513          	addi	a0,a0,1924 # 80009060 <CONSOLE_STATUS+0x50>
    800018e4:	00004097          	auipc	ra,0x4
    800018e8:	b68080e7          	jalr	-1176(ra) # 8000544c <_Z11printStringPKc>
        printInt(i);
    800018ec:	00000613          	li	a2,0
    800018f0:	00a00593          	li	a1,10
    800018f4:	00048513          	mv	a0,s1
    800018f8:	00004097          	auipc	ra,0x4
    800018fc:	d04080e7          	jalr	-764(ra) # 800055fc <_Z8printIntiii>
        printString("\n");
    80001900:	00008517          	auipc	a0,0x8
    80001904:	cc050513          	addi	a0,a0,-832 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80001908:	00004097          	auipc	ra,0x4
    8000190c:	b44080e7          	jalr	-1212(ra) # 8000544c <_Z11printStringPKc>
    for (; i < 16; i++)
    80001910:	0014849b          	addiw	s1,s1,1
    80001914:	0ff4f493          	andi	s1,s1,255
    80001918:	00f00793          	li	a5,15
    8000191c:	fc97f0e3          	bgeu	a5,s1,800018dc <_Z11workerBodyDPv+0xc0>
    }
    thread_dispatch();//
    80001920:	00000097          	auipc	ra,0x0
    80001924:	96c080e7          	jalr	-1684(ra) # 8000128c <thread_dispatch>
    80001928:	01813083          	ld	ra,24(sp)
    8000192c:	01013403          	ld	s0,16(sp)
    80001930:	00813483          	ld	s1,8(sp)
    80001934:	00013903          	ld	s2,0(sp)
    80001938:	02010113          	addi	sp,sp,32
    8000193c:	00008067          	ret

0000000080001940 <_Z8userFuncPv>:

#include "syscall_cpp.hpp"

extern void userMain();

void userFunc(void *a) {
    80001940:	fe010113          	addi	sp,sp,-32
    80001944:	00113c23          	sd	ra,24(sp)
    80001948:	00813823          	sd	s0,16(sp)
    8000194c:	00913423          	sd	s1,8(sp)
    80001950:	02010413          	addi	s0,sp,32
    80001954:	00050493          	mv	s1,a0

    Semaphore *sem = (Semaphore *) a;
    userMain();
    80001958:	00004097          	auipc	ra,0x4
    8000195c:	1bc080e7          	jalr	444(ra) # 80005b14 <_Z8userMainv>
    sem->signal();
    80001960:	00048513          	mv	a0,s1
    80001964:	00000097          	auipc	ra,0x0
    80001968:	71c080e7          	jalr	1820(ra) # 80002080 <_ZN9Semaphore6signalEv>
}
    8000196c:	01813083          	ld	ra,24(sp)
    80001970:	01013403          	ld	s0,16(sp)
    80001974:	00813483          	ld	s1,8(sp)
    80001978:	02010113          	addi	sp,sp,32
    8000197c:	00008067          	ret

0000000080001980 <main>:
#include "../h/tcb.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_cpp.hpp"
//#include "../h/MemoryAllocator.hpp"

int main() {
    80001980:	fe010113          	addi	sp,sp,-32
    80001984:	00113c23          	sd	ra,24(sp)
    80001988:	00813823          	sd	s0,16(sp)
    8000198c:	00913423          	sd	s1,8(sp)
    80001990:	01213023          	sd	s2,0(sp)
    80001994:	02010413          	addi	s0,sp,32

    //MemoryAllocator::initialize();

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80001998:	0000a797          	auipc	a5,0xa
    8000199c:	f507b783          	ld	a5,-176(a5) # 8000b8e8 <_GLOBAL_OFFSET_TABLE_+0x10>
    __asm__ volatile ("csrr %[stvec], stvec" : [stvec] "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    800019a0:	10579073          	csrw	stvec,a5
    //Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    Scheduler::idle = TCB::createThread(Scheduler::idleFunc, nullptr, new uint64[DEFAULT_STACK_SIZE]);
    800019a4:	00008537          	lui	a0,0x8
    800019a8:	00000097          	auipc	ra,0x0
    800019ac:	484080e7          	jalr	1156(ra) # 80001e2c <_Znam>
    800019b0:	00050613          	mv	a2,a0
    800019b4:	00000593          	li	a1,0
    800019b8:	0000a517          	auipc	a0,0xa
    800019bc:	f4853503          	ld	a0,-184(a0) # 8000b900 <_GLOBAL_OFFSET_TABLE_+0x28>
    800019c0:	00000097          	auipc	ra,0x0
    800019c4:	1d4080e7          	jalr	468(ra) # 80001b94 <_ZN3TCB12createThreadEPFvPvES0_S0_>
    800019c8:	0000a797          	auipc	a5,0xa
    800019cc:	f487b783          	ld	a5,-184(a5) # 8000b910 <_GLOBAL_OFFSET_TABLE_+0x38>
    800019d0:	00a7b023          	sd	a0,0(a5)
    //(uint64 *) mem_alloc(sizeof(uint64) * DEFAULT_STACK_SIZE));
    TCB::maintcb = TCB::createThread(nullptr, nullptr, nullptr);
    800019d4:	00000613          	li	a2,0
    800019d8:	00000593          	li	a1,0
    800019dc:	00000513          	li	a0,0
    800019e0:	00000097          	auipc	ra,0x0
    800019e4:	1b4080e7          	jalr	436(ra) # 80001b94 <_ZN3TCB12createThreadEPFvPvES0_S0_>
    800019e8:	0000a797          	auipc	a5,0xa
    800019ec:	f107b783          	ld	a5,-240(a5) # 8000b8f8 <_GLOBAL_OFFSET_TABLE_+0x20>
    800019f0:	00a7b023          	sd	a0,0(a5)
    TCB::running = TCB::maintcb;
    800019f4:	0000a797          	auipc	a5,0xa
    800019f8:	f247b783          	ld	a5,-220(a5) # 8000b918 <_GLOBAL_OFFSET_TABLE_+0x40>
    800019fc:	00a7b023          	sd	a0,0(a5)
    changeSysRegime();
    80001a00:	00000097          	auipc	ra,0x0
    80001a04:	a28080e7          	jalr	-1496(ra) # 80001428 <changeSysRegime>

    printString("\nstart ok\n");
    80001a08:	00007517          	auipc	a0,0x7
    80001a0c:	68050513          	addi	a0,a0,1664 # 80009088 <CONSOLE_STATUS+0x78>
    80001a10:	00004097          	auipc	ra,0x4
    80001a14:	a3c080e7          	jalr	-1476(ra) # 8000544c <_Z11printStringPKc>

    Semaphore *sem = new Semaphore(0);
    80001a18:	01800513          	li	a0,24
    80001a1c:	00000097          	auipc	ra,0x0
    80001a20:	3e8080e7          	jalr	1000(ra) # 80001e04 <_Znwm>
    80001a24:	00050913          	mv	s2,a0
    80001a28:	00000593          	li	a1,0
    80001a2c:	00000097          	auipc	ra,0x0
    80001a30:	5ec080e7          	jalr	1516(ra) # 80002018 <_ZN9SemaphoreC1Ej>

    Thread *userT = new Thread(userFunc, sem);
    80001a34:	02000513          	li	a0,32
    80001a38:	00000097          	auipc	ra,0x0
    80001a3c:	3cc080e7          	jalr	972(ra) # 80001e04 <_Znwm>
    80001a40:	00050493          	mv	s1,a0
    80001a44:	00090613          	mv	a2,s2
    80001a48:	00000597          	auipc	a1,0x0
    80001a4c:	ef858593          	addi	a1,a1,-264 # 80001940 <_Z8userFuncPv>
    80001a50:	00000097          	auipc	ra,0x0
    80001a54:	51c080e7          	jalr	1308(ra) # 80001f6c <_ZN6ThreadC1EPFvPvES0_>
    userT->start();
    80001a58:	00048513          	mv	a0,s1
    80001a5c:	00000097          	auipc	ra,0x0
    80001a60:	540080e7          	jalr	1344(ra) # 80001f9c <_ZN6Thread5startEv>
    //TCB  *userT;
    //thread_create(&userT, userFunc, null);// reinterpret_cast<void (*)(void *)>(userMain)
    //thread_dispatch();

    printString("main ce da ceka\n");
    80001a64:	00007517          	auipc	a0,0x7
    80001a68:	63450513          	addi	a0,a0,1588 # 80009098 <CONSOLE_STATUS+0x88>
    80001a6c:	00004097          	auipc	ra,0x4
    80001a70:	9e0080e7          	jalr	-1568(ra) # 8000544c <_Z11printStringPKc>
    sem->wait();
    80001a74:	00090513          	mv	a0,s2
    80001a78:	00000097          	auipc	ra,0x0
    80001a7c:	5dc080e7          	jalr	1500(ra) # 80002054 <_ZN9Semaphore4waitEv>

    //Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    printString("ciscenje za kraj\n");
    80001a80:	00007517          	auipc	a0,0x7
    80001a84:	63050513          	addi	a0,a0,1584 # 800090b0 <CONSOLE_STATUS+0xa0>
    80001a88:	00004097          	auipc	ra,0x4
    80001a8c:	9c4080e7          	jalr	-1596(ra) # 8000544c <_Z11printStringPKc>

    Scheduler::cleanUp();
    80001a90:	00001097          	auipc	ra,0x1
    80001a94:	f10080e7          	jalr	-240(ra) # 800029a0 <_ZN9Scheduler7cleanUpEv>
    delete userT;
    80001a98:	00048a63          	beqz	s1,80001aac <main+0x12c>
    80001a9c:	0004b783          	ld	a5,0(s1)
    80001aa0:	0087b783          	ld	a5,8(a5)
    80001aa4:	00048513          	mv	a0,s1
    80001aa8:	000780e7          	jalr	a5
    delete TCB::maintcb;
    80001aac:	0000a797          	auipc	a5,0xa
    80001ab0:	e4c7b783          	ld	a5,-436(a5) # 8000b8f8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001ab4:	0007b483          	ld	s1,0(a5)
    80001ab8:	02048663          	beqz	s1,80001ae4 <main+0x164>
};

class TCB {
public:
    ~TCB() {
        Scheduler::remove(this);
    80001abc:	00048513          	mv	a0,s1
    80001ac0:	00001097          	auipc	ra,0x1
    80001ac4:	e54080e7          	jalr	-428(ra) # 80002914 <_ZN9Scheduler6removeEP3TCB>
        delete[] stack;
    80001ac8:	0384b503          	ld	a0,56(s1)
    80001acc:	00050663          	beqz	a0,80001ad8 <main+0x158>
    80001ad0:	00000097          	auipc	ra,0x0
    80001ad4:	414080e7          	jalr	1044(ra) # 80001ee4 <_ZdaPv>
    80001ad8:	00048513          	mv	a0,s1
    80001adc:	00000097          	auipc	ra,0x0
    80001ae0:	378080e7          	jalr	888(ra) # 80001e54 <_ZdlPv>

    printString("main() finished\n");
    80001ae4:	00007517          	auipc	a0,0x7
    80001ae8:	5e450513          	addi	a0,a0,1508 # 800090c8 <CONSOLE_STATUS+0xb8>
    80001aec:	00004097          	auipc	ra,0x4
    80001af0:	960080e7          	jalr	-1696(ra) # 8000544c <_Z11printStringPKc>

    Riscv::terminateRiscv();
    80001af4:	00001097          	auipc	ra,0x1
    80001af8:	aa8080e7          	jalr	-1368(ra) # 8000259c <_ZN5Riscv14terminateRiscvEv>

    return 0;
    80001afc:	00000513          	li	a0,0
    80001b00:	01813083          	ld	ra,24(sp)
    80001b04:	01013403          	ld	s0,16(sp)
    80001b08:	00813483          	ld	s1,8(sp)
    80001b0c:	00013903          	ld	s2,0(sp)
    80001b10:	02010113          	addi	sp,sp,32
    80001b14:	00008067          	ret
    80001b18:	00050493          	mv	s1,a0
    Semaphore *sem = new Semaphore(0);
    80001b1c:	00090513          	mv	a0,s2
    80001b20:	00000097          	auipc	ra,0x0
    80001b24:	334080e7          	jalr	820(ra) # 80001e54 <_ZdlPv>
    80001b28:	00048513          	mv	a0,s1
    80001b2c:	0000b097          	auipc	ra,0xb
    80001b30:	fac080e7          	jalr	-84(ra) # 8000cad8 <_Unwind_Resume>
    80001b34:	00050913          	mv	s2,a0
    Thread *userT = new Thread(userFunc, sem);
    80001b38:	00048513          	mv	a0,s1
    80001b3c:	00000097          	auipc	ra,0x0
    80001b40:	318080e7          	jalr	792(ra) # 80001e54 <_ZdlPv>
    80001b44:	00090513          	mv	a0,s2
    80001b48:	0000b097          	auipc	ra,0xb
    80001b4c:	f90080e7          	jalr	-112(ra) # 8000cad8 <_Unwind_Resume>

0000000080001b50 <_ZN3TCB13threadWrapperEv>:
    running->setState(State::RUNNING);

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper() {
    80001b50:	ff010113          	addi	sp,sp,-16
    80001b54:	00113423          	sd	ra,8(sp)
    80001b58:	00813023          	sd	s0,0(sp)
    80001b5c:	01010413          	addi	s0,sp,16

    Riscv::popSppSpie();
    80001b60:	00000097          	auipc	ra,0x0
    80001b64:	634080e7          	jalr	1588(ra) # 80002194 <_ZN5Riscv10popSppSpieEv>

    running->body(running->arg);
    80001b68:	0000a797          	auipc	a5,0xa
    80001b6c:	e087b783          	ld	a5,-504(a5) # 8000b970 <_ZN3TCB7runningE>
    80001b70:	0307b703          	ld	a4,48(a5)
    80001b74:	0087b503          	ld	a0,8(a5)
    80001b78:	000700e7          	jalr	a4
    //prvo je skloni iz svega gde bi mogla biti

    thread_exit();
    80001b7c:	fffff097          	auipc	ra,0xfffff
    80001b80:	734080e7          	jalr	1844(ra) # 800012b0 <thread_exit>
}
    80001b84:	00813083          	ld	ra,8(sp)
    80001b88:	00013403          	ld	s0,0(sp)
    80001b8c:	01010113          	addi	sp,sp,16
    80001b90:	00008067          	ret

0000000080001b94 <_ZN3TCB12createThreadEPFvPvES0_S0_>:
TCB* TCB::createThread(Body body, void *arg, void* stack) {
    80001b94:	fd010113          	addi	sp,sp,-48
    80001b98:	02113423          	sd	ra,40(sp)
    80001b9c:	02813023          	sd	s0,32(sp)
    80001ba0:	00913c23          	sd	s1,24(sp)
    80001ba4:	01213823          	sd	s2,16(sp)
    80001ba8:	01313423          	sd	s3,8(sp)
    80001bac:	01413023          	sd	s4,0(sp)
    80001bb0:	03010413          	addi	s0,sp,48
    80001bb4:	00050913          	mv	s2,a0
    80001bb8:	00058a13          	mv	s4,a1
    80001bbc:	00060993          	mv	s3,a2
    return new TCB(body, arg, stack, TIME_SLICE);
    80001bc0:	05800513          	li	a0,88
    80001bc4:	00000097          	auipc	ra,0x0
    80001bc8:	240080e7          	jalr	576(ra) # 80001e04 <_Znwm>
    80001bcc:	00050493          	mv	s1,a0
    static TCB *maintcb;

private:

    explicit TCB(Body body, void *arg, void *s, uint64 timeSlice) {
        this->arg = arg;
    80001bd0:	01453423          	sd	s4,8(a0)
        this->body = body;
    80001bd4:	03253823          	sd	s2,48(a0)
        this->stack = (uint64 *) s;
    80001bd8:	03353c23          	sd	s3,56(a0)
        this->context = {
                body != nullptr ? (uint64) &threadWrapper : 0,
    80001bdc:	06090c63          	beqz	s2,80001c54 <_ZN3TCB12createThreadEPFvPvES0_S0_+0xc0>
    80001be0:	00000797          	auipc	a5,0x0
    80001be4:	f7078793          	addi	a5,a5,-144 # 80001b50 <_ZN3TCB13threadWrapperEv>
                stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001be8:	06098a63          	beqz	s3,80001c5c <_ZN3TCB12createThreadEPFvPvES0_S0_+0xc8>
    80001bec:	00008637          	lui	a2,0x8
    80001bf0:	00c989b3          	add	s3,s3,a2
        this->context = {
    80001bf4:	04f4b023          	sd	a5,64(s1)
    80001bf8:	0534b423          	sd	s3,72(s1)
        };
        this->timeSlice = timeSlice;
    80001bfc:	00200793          	li	a5,2
    80001c00:	04f4b823          	sd	a5,80(s1)
        this->next = nullptr;
    80001c04:	0004bc23          	sd	zero,24(s1)
        this->nextBlocked = nullptr;
    80001c08:	0204b023          	sd	zero,32(s1)
        this->holder = nullptr;
    80001c0c:	0204b423          	sd	zero,40(s1)
        id = globalId++;
    80001c10:	0000a717          	auipc	a4,0xa
    80001c14:	d6070713          	addi	a4,a4,-672 # 8000b970 <_ZN3TCB7runningE>
    80001c18:	00872783          	lw	a5,8(a4)
    80001c1c:	0017869b          	addiw	a3,a5,1
    80001c20:	00d72423          	sw	a3,8(a4)
    80001c24:	00f4a023          	sw	a5,0(s1)
        sysRegime = false;
    80001c28:	00048823          	sb	zero,16(s1)
        //this->finished = false;
        currentThreadState = State::CREATED;
    80001c2c:	0004a223          	sw	zero,4(s1)
        if (body == nullptr) { currentThreadState = State::RUNNING; }
    80001c30:	02090a63          	beqz	s2,80001c64 <_ZN3TCB12createThreadEPFvPvES0_S0_+0xd0>
        if (body != nullptr && body != &Scheduler::idleFunc) { Scheduler::put(this); }
    80001c34:	04090c63          	beqz	s2,80001c8c <_ZN3TCB12createThreadEPFvPvES0_S0_+0xf8>
    80001c38:	0000a797          	auipc	a5,0xa
    80001c3c:	cc87b783          	ld	a5,-824(a5) # 8000b900 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001c40:	04f90663          	beq	s2,a5,80001c8c <_ZN3TCB12createThreadEPFvPvES0_S0_+0xf8>
    80001c44:	00048513          	mv	a0,s1
    80001c48:	00001097          	auipc	ra,0x1
    80001c4c:	c6c080e7          	jalr	-916(ra) # 800028b4 <_ZN9Scheduler3putEP3TCB>
    80001c50:	03c0006f          	j	80001c8c <_ZN3TCB12createThreadEPFvPvES0_S0_+0xf8>
                body != nullptr ? (uint64) &threadWrapper : 0,
    80001c54:	00000793          	li	a5,0
    80001c58:	f91ff06f          	j	80001be8 <_ZN3TCB12createThreadEPFvPvES0_S0_+0x54>
                stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001c5c:	00000993          	li	s3,0
    80001c60:	f95ff06f          	j	80001bf4 <_ZN3TCB12createThreadEPFvPvES0_S0_+0x60>
        if (body == nullptr) { currentThreadState = State::RUNNING; }
    80001c64:	00100793          	li	a5,1
    80001c68:	00f4a223          	sw	a5,4(s1)
    80001c6c:	fc9ff06f          	j	80001c34 <_ZN3TCB12createThreadEPFvPvES0_S0_+0xa0>
    80001c70:	00050913          	mv	s2,a0
    80001c74:	00048513          	mv	a0,s1
    80001c78:	00000097          	auipc	ra,0x0
    80001c7c:	1dc080e7          	jalr	476(ra) # 80001e54 <_ZdlPv>
    80001c80:	00090513          	mv	a0,s2
    80001c84:	0000b097          	auipc	ra,0xb
    80001c88:	e54080e7          	jalr	-428(ra) # 8000cad8 <_Unwind_Resume>
}
    80001c8c:	00048513          	mv	a0,s1
    80001c90:	02813083          	ld	ra,40(sp)
    80001c94:	02013403          	ld	s0,32(sp)
    80001c98:	01813483          	ld	s1,24(sp)
    80001c9c:	01013903          	ld	s2,16(sp)
    80001ca0:	00813983          	ld	s3,8(sp)
    80001ca4:	00013a03          	ld	s4,0(sp)
    80001ca8:	03010113          	addi	sp,sp,48
    80001cac:	00008067          	ret

0000000080001cb0 <_ZN3TCB5yieldEv>:
void TCB::yield() {
    80001cb0:	fe010113          	addi	sp,sp,-32
    80001cb4:	00113c23          	sd	ra,24(sp)
    80001cb8:	00813823          	sd	s0,16(sp)
    80001cbc:	00913423          	sd	s1,8(sp)
    80001cc0:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80001cc4:	0000a497          	auipc	s1,0xa
    80001cc8:	cac4b483          	ld	s1,-852(s1) # 8000b970 <_ZN3TCB7runningE>
    bool isFinished() { return currentThreadState == State::FINISHED; }
    80001ccc:	0044a783          	lw	a5,4(s1)
    if (!old->isFinished()&&old->currentThreadState!=State::BLOCKED&&old->currentThreadState!=State::SLEEPING) {
    80001cd0:	00500713          	li	a4,5
    80001cd4:	02e78c63          	beq	a5,a4,80001d0c <_ZN3TCB5yieldEv+0x5c>
    80001cd8:	00300713          	li	a4,3
    80001cdc:	02e78863          	beq	a5,a4,80001d0c <_ZN3TCB5yieldEv+0x5c>
    80001ce0:	00400713          	li	a4,4
    80001ce4:	02e78463          	beq	a5,a4,80001d0c <_ZN3TCB5yieldEv+0x5c>
        if(old!=Scheduler::idle)old->currentThreadState=State::READY;
    80001ce8:	0000a797          	auipc	a5,0xa
    80001cec:	c287b783          	ld	a5,-984(a5) # 8000b910 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001cf0:	0007b783          	ld	a5,0(a5)
    80001cf4:	00978663          	beq	a5,s1,80001d00 <_ZN3TCB5yieldEv+0x50>
    80001cf8:	00600793          	li	a5,6
    80001cfc:	00f4a223          	sw	a5,4(s1)
        Scheduler::put(old); }
    80001d00:	00048513          	mv	a0,s1
    80001d04:	00001097          	auipc	ra,0x1
    80001d08:	bb0080e7          	jalr	-1104(ra) # 800028b4 <_ZN9Scheduler3putEP3TCB>
    running = Scheduler::get();
    80001d0c:	00001097          	auipc	ra,0x1
    80001d10:	b48080e7          	jalr	-1208(ra) # 80002854 <_ZN9Scheduler3getEv>
    80001d14:	0000a797          	auipc	a5,0xa
    80001d18:	c5c78793          	addi	a5,a5,-932 # 8000b970 <_ZN3TCB7runningE>
    80001d1c:	00a7b023          	sd	a0,0(a5)
    void setState(State e) { currentThreadState = e; }
    80001d20:	00100713          	li	a4,1
    80001d24:	00e52223          	sw	a4,4(a0)
    TCB::contextSwitch(&old->context, &running->context);
    80001d28:	0007b583          	ld	a1,0(a5)
    80001d2c:	04058593          	addi	a1,a1,64
    80001d30:	04048513          	addi	a0,s1,64
    80001d34:	fffff097          	auipc	ra,0xfffff
    80001d38:	3dc080e7          	jalr	988(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001d3c:	01813083          	ld	ra,24(sp)
    80001d40:	01013403          	ld	s0,16(sp)
    80001d44:	00813483          	ld	s1,8(sp)
    80001d48:	02010113          	addi	sp,sp,32
    80001d4c:	00008067          	ret

0000000080001d50 <_ZN3TCB7releaseEv>:

void TCB::release(){
    80001d50:	ff010113          	addi	sp,sp,-16
    80001d54:	00113423          	sd	ra,8(sp)
    80001d58:	00813023          	sd	s0,0(sp)
    80001d5c:	01010413          	addi	s0,sp,16
    80001d60:	00600713          	li	a4,6
    80001d64:	00e52223          	sw	a4,4(a0)
    this->setState(State::READY);
    holder= nullptr;
    80001d68:	02053423          	sd	zero,40(a0)
    nextBlocked= nullptr;
    80001d6c:	02053023          	sd	zero,32(a0)
    Scheduler::put(this);
    80001d70:	00001097          	auipc	ra,0x1
    80001d74:	b44080e7          	jalr	-1212(ra) # 800028b4 <_ZN9Scheduler3putEP3TCB>
}
    80001d78:	00813083          	ld	ra,8(sp)
    80001d7c:	00013403          	ld	s0,0(sp)
    80001d80:	01010113          	addi	sp,sp,16
    80001d84:	00008067          	ret

0000000080001d88 <_ZN6ThreadD1Ev>:

Thread::Thread(void (*body)(void *)) : myHandle(nullptr), body(body), arg(nullptr) {}

Thread::Thread(void (*body)(void *), void *arg) : myHandle(nullptr), body(body), arg(arg) {}

Thread::~Thread() {}
    80001d88:	ff010113          	addi	sp,sp,-16
    80001d8c:	00813423          	sd	s0,8(sp)
    80001d90:	01010413          	addi	s0,sp,16
    80001d94:	00813403          	ld	s0,8(sp)
    80001d98:	01010113          	addi	sp,sp,16
    80001d9c:	00008067          	ret

0000000080001da0 <_ZN6Thread7wrapperEPv>:

void Thread::wrapper(void* n)
{
    80001da0:	ff010113          	addi	sp,sp,-16
    80001da4:	00113423          	sd	ra,8(sp)
    80001da8:	00813023          	sd	s0,0(sp)
    80001dac:	01010413          	addi	s0,sp,16
    Thread* t=(Thread*)n;
    t->run();
    80001db0:	00053783          	ld	a5,0(a0)
    80001db4:	0107b783          	ld	a5,16(a5)
    80001db8:	000780e7          	jalr	a5
}
    80001dbc:	00813083          	ld	ra,8(sp)
    80001dc0:	00013403          	ld	s0,0(sp)
    80001dc4:	01010113          	addi	sp,sp,16
    80001dc8:	00008067          	ret

0000000080001dcc <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned init) : val(init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    80001dcc:	ff010113          	addi	sp,sp,-16
    80001dd0:	00113423          	sd	ra,8(sp)
    80001dd4:	00813023          	sd	s0,0(sp)
    80001dd8:	01010413          	addi	s0,sp,16
    80001ddc:	0000a797          	auipc	a5,0xa
    80001de0:	94478793          	addi	a5,a5,-1724 # 8000b720 <_ZTV9Semaphore+0x10>
    80001de4:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80001de8:	00853503          	ld	a0,8(a0)
    80001dec:	fffff097          	auipc	ra,0xfffff
    80001df0:	558080e7          	jalr	1368(ra) # 80001344 <sem_close>
};
    80001df4:	00813083          	ld	ra,8(sp)
    80001df8:	00013403          	ld	s0,0(sp)
    80001dfc:	01010113          	addi	sp,sp,16
    80001e00:	00008067          	ret

0000000080001e04 <_Znwm>:
void *operator new(size_t n) {
    80001e04:	ff010113          	addi	sp,sp,-16
    80001e08:	00113423          	sd	ra,8(sp)
    80001e0c:	00813023          	sd	s0,0(sp)
    80001e10:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001e14:	fffff097          	auipc	ra,0xfffff
    80001e18:	348080e7          	jalr	840(ra) # 8000115c <mem_alloc>
}
    80001e1c:	00813083          	ld	ra,8(sp)
    80001e20:	00013403          	ld	s0,0(sp)
    80001e24:	01010113          	addi	sp,sp,16
    80001e28:	00008067          	ret

0000000080001e2c <_Znam>:
void *operator new[](size_t n) {
    80001e2c:	ff010113          	addi	sp,sp,-16
    80001e30:	00113423          	sd	ra,8(sp)
    80001e34:	00813023          	sd	s0,0(sp)
    80001e38:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001e3c:	fffff097          	auipc	ra,0xfffff
    80001e40:	320080e7          	jalr	800(ra) # 8000115c <mem_alloc>
}
    80001e44:	00813083          	ld	ra,8(sp)
    80001e48:	00013403          	ld	s0,0(sp)
    80001e4c:	01010113          	addi	sp,sp,16
    80001e50:	00008067          	ret

0000000080001e54 <_ZdlPv>:
void operator delete(void *p) noexcept {
    80001e54:	ff010113          	addi	sp,sp,-16
    80001e58:	00113423          	sd	ra,8(sp)
    80001e5c:	00813023          	sd	s0,0(sp)
    80001e60:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001e64:	fffff097          	auipc	ra,0xfffff
    80001e68:	338080e7          	jalr	824(ra) # 8000119c <mem_free>
}
    80001e6c:	00813083          	ld	ra,8(sp)
    80001e70:	00013403          	ld	s0,0(sp)
    80001e74:	01010113          	addi	sp,sp,16
    80001e78:	00008067          	ret

0000000080001e7c <_ZN6ThreadD0Ev>:
Thread::~Thread() {}
    80001e7c:	ff010113          	addi	sp,sp,-16
    80001e80:	00113423          	sd	ra,8(sp)
    80001e84:	00813023          	sd	s0,0(sp)
    80001e88:	01010413          	addi	s0,sp,16
    80001e8c:	00000097          	auipc	ra,0x0
    80001e90:	fc8080e7          	jalr	-56(ra) # 80001e54 <_ZdlPv>
    80001e94:	00813083          	ld	ra,8(sp)
    80001e98:	00013403          	ld	s0,0(sp)
    80001e9c:	01010113          	addi	sp,sp,16
    80001ea0:	00008067          	ret

0000000080001ea4 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80001ea4:	fe010113          	addi	sp,sp,-32
    80001ea8:	00113c23          	sd	ra,24(sp)
    80001eac:	00813823          	sd	s0,16(sp)
    80001eb0:	00913423          	sd	s1,8(sp)
    80001eb4:	02010413          	addi	s0,sp,32
    80001eb8:	00050493          	mv	s1,a0
};
    80001ebc:	00000097          	auipc	ra,0x0
    80001ec0:	f10080e7          	jalr	-240(ra) # 80001dcc <_ZN9SemaphoreD1Ev>
    80001ec4:	00048513          	mv	a0,s1
    80001ec8:	00000097          	auipc	ra,0x0
    80001ecc:	f8c080e7          	jalr	-116(ra) # 80001e54 <_ZdlPv>
    80001ed0:	01813083          	ld	ra,24(sp)
    80001ed4:	01013403          	ld	s0,16(sp)
    80001ed8:	00813483          	ld	s1,8(sp)
    80001edc:	02010113          	addi	sp,sp,32
    80001ee0:	00008067          	ret

0000000080001ee4 <_ZdaPv>:
void operator delete[](void *p) noexcept {
    80001ee4:	ff010113          	addi	sp,sp,-16
    80001ee8:	00113423          	sd	ra,8(sp)
    80001eec:	00813023          	sd	s0,0(sp)
    80001ef0:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001ef4:	fffff097          	auipc	ra,0xfffff
    80001ef8:	2a8080e7          	jalr	680(ra) # 8000119c <mem_free>
}
    80001efc:	00813083          	ld	ra,8(sp)
    80001f00:	00013403          	ld	s0,0(sp)
    80001f04:	01010113          	addi	sp,sp,16
    80001f08:	00008067          	ret

0000000080001f0c <_ZN6ThreadC1Ev>:
Thread::Thread() : myHandle(nullptr), body(nullptr), arg(nullptr) {}
    80001f0c:	ff010113          	addi	sp,sp,-16
    80001f10:	00813423          	sd	s0,8(sp)
    80001f14:	01010413          	addi	s0,sp,16
    80001f18:	00009797          	auipc	a5,0x9
    80001f1c:	7e078793          	addi	a5,a5,2016 # 8000b6f8 <_ZTV6Thread+0x10>
    80001f20:	00f53023          	sd	a5,0(a0)
    80001f24:	00053423          	sd	zero,8(a0)
    80001f28:	00053823          	sd	zero,16(a0)
    80001f2c:	00053c23          	sd	zero,24(a0)
    80001f30:	00813403          	ld	s0,8(sp)
    80001f34:	01010113          	addi	sp,sp,16
    80001f38:	00008067          	ret

0000000080001f3c <_ZN6ThreadC1EPFvPvE>:
Thread::Thread(void (*body)(void *)) : myHandle(nullptr), body(body), arg(nullptr) {}
    80001f3c:	ff010113          	addi	sp,sp,-16
    80001f40:	00813423          	sd	s0,8(sp)
    80001f44:	01010413          	addi	s0,sp,16
    80001f48:	00009797          	auipc	a5,0x9
    80001f4c:	7b078793          	addi	a5,a5,1968 # 8000b6f8 <_ZTV6Thread+0x10>
    80001f50:	00f53023          	sd	a5,0(a0)
    80001f54:	00053423          	sd	zero,8(a0)
    80001f58:	00b53823          	sd	a1,16(a0)
    80001f5c:	00053c23          	sd	zero,24(a0)
    80001f60:	00813403          	ld	s0,8(sp)
    80001f64:	01010113          	addi	sp,sp,16
    80001f68:	00008067          	ret

0000000080001f6c <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) : myHandle(nullptr), body(body), arg(arg) {}
    80001f6c:	ff010113          	addi	sp,sp,-16
    80001f70:	00813423          	sd	s0,8(sp)
    80001f74:	01010413          	addi	s0,sp,16
    80001f78:	00009797          	auipc	a5,0x9
    80001f7c:	78078793          	addi	a5,a5,1920 # 8000b6f8 <_ZTV6Thread+0x10>
    80001f80:	00f53023          	sd	a5,0(a0)
    80001f84:	00053423          	sd	zero,8(a0)
    80001f88:	00b53823          	sd	a1,16(a0)
    80001f8c:	00c53c23          	sd	a2,24(a0)
    80001f90:	00813403          	ld	s0,8(sp)
    80001f94:	01010113          	addi	sp,sp,16
    80001f98:	00008067          	ret

0000000080001f9c <_ZN6Thread5startEv>:
int Thread::start (){
    80001f9c:	ff010113          	addi	sp,sp,-16
    80001fa0:	00113423          	sd	ra,8(sp)
    80001fa4:	00813023          	sd	s0,0(sp)
    80001fa8:	01010413          	addi	s0,sp,16
    if (body)
    80001fac:	01053583          	ld	a1,16(a0)
    80001fb0:	02058263          	beqz	a1,80001fd4 <_ZN6Thread5startEv+0x38>
        return thread_create(&myHandle, body, arg);
    80001fb4:	01853603          	ld	a2,24(a0)
    80001fb8:	00850513          	addi	a0,a0,8
    80001fbc:	fffff097          	auipc	ra,0xfffff
    80001fc0:	230080e7          	jalr	560(ra) # 800011ec <thread_create>
}
    80001fc4:	00813083          	ld	ra,8(sp)
    80001fc8:	00013403          	ld	s0,0(sp)
    80001fcc:	01010113          	addi	sp,sp,16
    80001fd0:	00008067          	ret
        return thread_create(&myHandle, &Thread::wrapper, this);
    80001fd4:	00050613          	mv	a2,a0
    80001fd8:	00000597          	auipc	a1,0x0
    80001fdc:	dc858593          	addi	a1,a1,-568 # 80001da0 <_ZN6Thread7wrapperEPv>
    80001fe0:	00850513          	addi	a0,a0,8
    80001fe4:	fffff097          	auipc	ra,0xfffff
    80001fe8:	208080e7          	jalr	520(ra) # 800011ec <thread_create>
    80001fec:	fd9ff06f          	j	80001fc4 <_ZN6Thread5startEv+0x28>

0000000080001ff0 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001ff0:	ff010113          	addi	sp,sp,-16
    80001ff4:	00113423          	sd	ra,8(sp)
    80001ff8:	00813023          	sd	s0,0(sp)
    80001ffc:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002000:	fffff097          	auipc	ra,0xfffff
    80002004:	28c080e7          	jalr	652(ra) # 8000128c <thread_dispatch>
}
    80002008:	00813083          	ld	ra,8(sp)
    8000200c:	00013403          	ld	s0,0(sp)
    80002010:	01010113          	addi	sp,sp,16
    80002014:	00008067          	ret

0000000080002018 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned init) : val(init) {
    80002018:	ff010113          	addi	sp,sp,-16
    8000201c:	00113423          	sd	ra,8(sp)
    80002020:	00813023          	sd	s0,0(sp)
    80002024:	01010413          	addi	s0,sp,16
    80002028:	00009797          	auipc	a5,0x9
    8000202c:	6f878793          	addi	a5,a5,1784 # 8000b720 <_ZTV9Semaphore+0x10>
    80002030:	00f53023          	sd	a5,0(a0)
    80002034:	00b52823          	sw	a1,16(a0)
    sem_open(&myHandle, init);
    80002038:	00850513          	addi	a0,a0,8
    8000203c:	fffff097          	auipc	ra,0xfffff
    80002040:	2b0080e7          	jalr	688(ra) # 800012ec <sem_open>
}
    80002044:	00813083          	ld	ra,8(sp)
    80002048:	00013403          	ld	s0,0(sp)
    8000204c:	01010113          	addi	sp,sp,16
    80002050:	00008067          	ret

0000000080002054 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    80002054:	ff010113          	addi	sp,sp,-16
    80002058:	00113423          	sd	ra,8(sp)
    8000205c:	00813023          	sd	s0,0(sp)
    80002060:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80002064:	00853503          	ld	a0,8(a0)
    80002068:	fffff097          	auipc	ra,0xfffff
    8000206c:	328080e7          	jalr	808(ra) # 80001390 <sem_wait>
}
    80002070:	00813083          	ld	ra,8(sp)
    80002074:	00013403          	ld	s0,0(sp)
    80002078:	01010113          	addi	sp,sp,16
    8000207c:	00008067          	ret

0000000080002080 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    80002080:	ff010113          	addi	sp,sp,-16
    80002084:	00113423          	sd	ra,8(sp)
    80002088:	00813023          	sd	s0,0(sp)
    8000208c:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80002090:	00853503          	ld	a0,8(a0)
    80002094:	fffff097          	auipc	ra,0xfffff
    80002098:	348080e7          	jalr	840(ra) # 800013dc <sem_signal>
}
    8000209c:	00813083          	ld	ra,8(sp)
    800020a0:	00013403          	ld	s0,0(sp)
    800020a4:	01010113          	addi	sp,sp,16
    800020a8:	00008067          	ret

00000000800020ac <_ZN6Thread5sleepEm>:





int Thread::sleep(time_t time){ return time_sleep(time); }
    800020ac:	ff010113          	addi	sp,sp,-16
    800020b0:	00113423          	sd	ra,8(sp)
    800020b4:	00813023          	sd	s0,0(sp)
    800020b8:	01010413          	addi	s0,sp,16
    800020bc:	fffff097          	auipc	ra,0xfffff
    800020c0:	410080e7          	jalr	1040(ra) # 800014cc <time_sleep>
    800020c4:	00813083          	ld	ra,8(sp)
    800020c8:	00013403          	ld	s0,0(sp)
    800020cc:	01010113          	addi	sp,sp,16
    800020d0:	00008067          	ret

00000000800020d4 <_ZN9Semaphore9timedWaitEm>:

int Semaphore::timedWait(time_t t) {
    800020d4:	ff010113          	addi	sp,sp,-16
    800020d8:	00113423          	sd	ra,8(sp)
    800020dc:	00813023          	sd	s0,0(sp)
    800020e0:	01010413          	addi	s0,sp,16
    return sem_timedwait(myHandle, t);
    800020e4:	00853503          	ld	a0,8(a0)
    800020e8:	fffff097          	auipc	ra,0xfffff
    800020ec:	400080e7          	jalr	1024(ra) # 800014e8 <sem_timedwait>
}
    800020f0:	00813083          	ld	ra,8(sp)
    800020f4:	00013403          	ld	s0,0(sp)
    800020f8:	01010113          	addi	sp,sp,16
    800020fc:	00008067          	ret

0000000080002100 <_ZN9Semaphore7tryWaitEv>:

int Semaphore::tryWait() {
    80002100:	ff010113          	addi	sp,sp,-16
    80002104:	00113423          	sd	ra,8(sp)
    80002108:	00813023          	sd	s0,0(sp)
    8000210c:	01010413          	addi	s0,sp,16
    return sem_trywait(myHandle);
    80002110:	00853503          	ld	a0,8(a0)
    80002114:	fffff097          	auipc	ra,0xfffff
    80002118:	39c080e7          	jalr	924(ra) # 800014b0 <sem_trywait>
}
    8000211c:	00813083          	ld	ra,8(sp)
    80002120:	00013403          	ld	s0,0(sp)
    80002124:	01010113          	addi	sp,sp,16
    80002128:	00008067          	ret

000000008000212c <_ZN7Console4getcEv>:

char Console::getc(){
    8000212c:	ff010113          	addi	sp,sp,-16
    80002130:	00113423          	sd	ra,8(sp)
    80002134:	00813023          	sd	s0,0(sp)
    80002138:	01010413          	addi	s0,sp,16
 return ::getc();
    8000213c:	fffff097          	auipc	ra,0xfffff
    80002140:	338080e7          	jalr	824(ra) # 80001474 <getc>
}
    80002144:	00813083          	ld	ra,8(sp)
    80002148:	00013403          	ld	s0,0(sp)
    8000214c:	01010113          	addi	sp,sp,16
    80002150:	00008067          	ret

0000000080002154 <_ZN7Console4putcEc>:

void Console::putc(char c){
    80002154:	ff010113          	addi	sp,sp,-16
    80002158:	00113423          	sd	ra,8(sp)
    8000215c:	00813023          	sd	s0,0(sp)
    80002160:	01010413          	addi	s0,sp,16
 ::putc(c);
    80002164:	fffff097          	auipc	ra,0xfffff
    80002168:	2e8080e7          	jalr	744(ra) # 8000144c <putc>
}
    8000216c:	00813083          	ld	ra,8(sp)
    80002170:	00013403          	ld	s0,0(sp)
    80002174:	01010113          	addi	sp,sp,16
    80002178:	00008067          	ret

000000008000217c <_ZN6Thread3runEv>:
    static int sleep(time_t time);

protected:
    Thread();

    virtual void run() {}
    8000217c:	ff010113          	addi	sp,sp,-16
    80002180:	00813423          	sd	s0,8(sp)
    80002184:	01010413          	addi	s0,sp,16
    80002188:	00813403          	ld	s0,8(sp)
    8000218c:	01010113          	addi	sp,sp,16
    80002190:	00008067          	ret

0000000080002194 <_ZN5Riscv10popSppSpieEv>:
#include "../h/print.hpp"
#include "../test/printing.hpp"

//#include "../h/MemoryAllocator.hpp"//SKLONI MEM.H

void Riscv::popSppSpie() {
    80002194:	ff010113          	addi	sp,sp,-16
    80002198:	00813423          	sd	s0,8(sp)
    8000219c:	01010413          	addi	s0,sp,16

    if (TCB::running->sysRegime) {
    800021a0:	00009797          	auipc	a5,0x9
    800021a4:	7787b783          	ld	a5,1912(a5) # 8000b918 <_GLOBAL_OFFSET_TABLE_+0x40>
    800021a8:	0007b783          	ld	a5,0(a5)
    800021ac:	0107c783          	lbu	a5,16(a5)
    800021b0:	02078063          	beqz	a5,800021d0 <_ZN5Riscv10popSppSpieEv+0x3c>
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800021b4:	10000793          	li	a5,256
    800021b8:	1007a073          	csrs	sstatus,a5
    else
    {
        mc_sstatus(SSTATUS_SPP);
    }

    __asm__ volatile("csrw sepc, ra");
    800021bc:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    800021c0:	10200073          	sret
}
    800021c4:	00813403          	ld	s0,8(sp)
    800021c8:	01010113          	addi	sp,sp,16
    800021cc:	00008067          	ret
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800021d0:	10000793          	li	a5,256
    800021d4:	1007b073          	csrc	sstatus,a5
}
    800021d8:	fe5ff06f          	j	800021bc <_ZN5Riscv10popSppSpieEv+0x28>

00000000800021dc <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap() {
    800021dc:	f2010113          	addi	sp,sp,-224
    800021e0:	0c113c23          	sd	ra,216(sp)
    800021e4:	0c813823          	sd	s0,208(sp)
    800021e8:	0c913423          	sd	s1,200(sp)
    800021ec:	0e010413          	addi	s0,sp,224
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    800021f0:	142027f3          	csrr	a5,scause
    800021f4:	faf43023          	sd	a5,-96(s0)
    return scause;
    800021f8:	fa043783          	ld	a5,-96(s0)

    uint64 volatile scause = r_scause();
    800021fc:	fcf43c23          	sd	a5,-40(s0)

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002200:	100027f3          	csrr	a5,sstatus
    80002204:	f8f43c23          	sd	a5,-104(s0)
    return sstatus;
    80002208:	f9843783          	ld	a5,-104(s0)
    uint64 volatile sstatus = r_sstatus();
    8000220c:	fcf43823          	sd	a5,-48(s0)
    __asm__ volatile ("mv %[val], a0" : [val] "=r"(a0));
    80002210:	00050793          	mv	a5,a0
    80002214:	f8f43823          	sd	a5,-112(s0)
    return a0;
    80002218:	f9043783          	ld	a5,-112(s0)
    uint64 volatile a0arg = r_a0();
    8000221c:	fcf43423          	sd	a5,-56(s0)

    switch (scause) {
    80002220:	fd843783          	ld	a5,-40(s0)
    80002224:	fff00713          	li	a4,-1
    80002228:	03f71713          	slli	a4,a4,0x3f
    8000222c:	00170713          	addi	a4,a4,1
    80002230:	28e78263          	beq	a5,a4,800024b4 <_ZN5Riscv20handleSupervisorTrapEv+0x2d8>
    80002234:	fff00713          	li	a4,-1
    80002238:	03f71713          	slli	a4,a4,0x3f
    8000223c:	00170713          	addi	a4,a4,1
    80002240:	04f76663          	bltu	a4,a5,8000228c <_ZN5Riscv20handleSupervisorTrapEv+0xb0>
    80002244:	ff878793          	addi	a5,a5,-8
    80002248:	00100713          	li	a4,1
    8000224c:	2cf76863          	bltu	a4,a5,8000251c <_ZN5Riscv20handleSupervisorTrapEv+0x340>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002250:	141027f3          	csrr	a5,sepc
    80002254:	faf43423          	sd	a5,-88(s0)
    return sepc;
    80002258:	fa843783          	ld	a5,-88(s0)
        case IRQ_SYSCALL_UMODE:
        case IRQ_SYSCALL_SMODE: {

            uint64 volatile sepc = r_sepc() + 4;
    8000225c:	00478793          	addi	a5,a5,4
    80002260:	f2f43423          	sd	a5,-216(s0)
            //if(a0arg!=PUTC&&a0arg!=GETC)printRegister(a0arg);
            switch (a0arg) {
    80002264:	fc843783          	ld	a5,-56(s0)
    80002268:	04200713          	li	a4,66
    8000226c:	22f76a63          	bltu	a4,a5,800024a0 <_ZN5Riscv20handleSupervisorTrapEv+0x2c4>
    80002270:	00279793          	slli	a5,a5,0x2
    80002274:	00007717          	auipc	a4,0x7
    80002278:	ee470713          	addi	a4,a4,-284 # 80009158 <CONSOLE_STATUS+0x148>
    8000227c:	00e787b3          	add	a5,a5,a4
    80002280:	0007a783          	lw	a5,0(a5)
    80002284:	00e787b3          	add	a5,a5,a4
    80002288:	00078067          	jr	a5
    switch (scause) {
    8000228c:	fff00713          	li	a4,-1
    80002290:	03f71713          	slli	a4,a4,0x3f
    80002294:	00970713          	addi	a4,a4,9
    80002298:	28e79263          	bne	a5,a4,8000251c <_ZN5Riscv20handleSupervisorTrapEv+0x340>
            w_sepc(sepc);
        }
            break;
        case IRQ_HARDWARE: {

            console_handler();
    8000229c:	00006097          	auipc	ra,0x6
    800022a0:	788080e7          	jalr	1928(ra) # 80008a24 <console_handler>

        }
            break;
    }

}
    800022a4:	0d813083          	ld	ra,216(sp)
    800022a8:	0d013403          	ld	s0,208(sp)
    800022ac:	0c813483          	ld	s1,200(sp)
    800022b0:	0e010113          	addi	sp,sp,224
    800022b4:	00008067          	ret
            );
    800022b8:	05843783          	ld	a5,88(s0)
                    uint64 volatile a1reg = r_a1fromstack();
    800022bc:	f2f43823          	sd	a5,-208(s0)
                    a0arg = (uint64) __mem_alloc(a1reg); //SKLONI MEM.H
    800022c0:	f3043503          	ld	a0,-208(s0)
    800022c4:	00006097          	auipc	ra,0x6
    800022c8:	594080e7          	jalr	1428(ra) # 80008858 <__mem_alloc>
    800022cc:	fca43423          	sd	a0,-56(s0)
                    Riscv::w_a0(a0arg);
    800022d0:	fc843783          	ld	a5,-56(s0)
    __asm__ volatile ("mv a0, %[val]": : [val] "r"(val));
    800022d4:	00078513          	mv	a0,a5
            w_sstatus(sstatus);
    800022d8:	fd043783          	ld	a5,-48(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800022dc:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    800022e0:	f2843783          	ld	a5,-216(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800022e4:	14179073          	csrw	sepc,a5
}
    800022e8:	fbdff06f          	j	800022a4 <_ZN5Riscv20handleSupervisorTrapEv+0xc8>
            );
    800022ec:	05843783          	ld	a5,88(s0)
                    uint64 volatile a1reg = r_a1fromstack();
    800022f0:	f2f43c23          	sd	a5,-200(s0)
                    uint64 retCast = (uint64) __mem_free((void *) a1reg);
    800022f4:	f3843503          	ld	a0,-200(s0)
    800022f8:	00006097          	auipc	ra,0x6
    800022fc:	494080e7          	jalr	1172(ra) # 8000878c <__mem_free>
    __asm__ volatile ("mv a0, %[val]": : [val] "r"(val));
    80002300:	00050513          	mv	a0,a0
}
    80002304:	fd5ff06f          	j	800022d8 <_ZN5Riscv20handleSupervisorTrapEv+0xfc>
            );
    80002308:	05843783          	ld	a5,88(s0)
                    uint64 volatile a1reg = (uint64) r_a1fromstack();
    8000230c:	f4f43023          	sd	a5,-192(s0)
            );
    80002310:	06043783          	ld	a5,96(s0)
                    TCB::Body volatile a2reg = (TCB::Body) r_a2fromstack();
    80002314:	f4f43423          	sd	a5,-184(s0)
            );
    80002318:	06843783          	ld	a5,104(s0)
                    void *volatile a3reg = (void *) r_a3fromstack();
    8000231c:	f4f43823          	sd	a5,-176(s0)
            );
    80002320:	07043783          	ld	a5,112(s0)
                    void *volatile a4reg = (void *) r_a4fromstack();
    80002324:	f4f43c23          	sd	a5,-168(s0)
                    (*(TCB **) a1reg) = TCB::createThread(a2reg, a3reg, a4reg);
    80002328:	f4843503          	ld	a0,-184(s0)
    8000232c:	f5043583          	ld	a1,-176(s0)
    80002330:	f5843603          	ld	a2,-168(s0)
    80002334:	f4043483          	ld	s1,-192(s0)
    80002338:	00000097          	auipc	ra,0x0
    8000233c:	85c080e7          	jalr	-1956(ra) # 80001b94 <_ZN3TCB12createThreadEPFvPvES0_S0_>
    80002340:	00a4b023          	sd	a0,0(s1)
                    w_a1onstack(a1reg);
    80002344:	f4043783          	ld	a5,-192(s0)
    __asm__ volatile ("sd %[val], 11*8(fp)": : [val] "r"(val));
    80002348:	04f43c23          	sd	a5,88(s0)
                    if (a1reg != 0)a0arg = 0; else a0arg = -1;
    8000234c:	f4043783          	ld	a5,-192(s0)
    80002350:	00078a63          	beqz	a5,80002364 <_ZN5Riscv20handleSupervisorTrapEv+0x188>
    80002354:	fc043423          	sd	zero,-56(s0)
                    w_a0(a0arg);
    80002358:	fc843783          	ld	a5,-56(s0)
    __asm__ volatile ("mv a0, %[val]": : [val] "r"(val));
    8000235c:	00078513          	mv	a0,a5
}
    80002360:	f79ff06f          	j	800022d8 <_ZN5Riscv20handleSupervisorTrapEv+0xfc>
                    if (a1reg != 0)a0arg = 0; else a0arg = -1;
    80002364:	fff00793          	li	a5,-1
    80002368:	fcf43423          	sd	a5,-56(s0)
    8000236c:	fedff06f          	j	80002358 <_ZN5Riscv20handleSupervisorTrapEv+0x17c>
                    TCB::running->setFinished();
    80002370:	00009797          	auipc	a5,0x9
    80002374:	5a87b783          	ld	a5,1448(a5) # 8000b918 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002378:	0007b783          	ld	a5,0(a5)
        currentThreadState = State::FINISHED;
    8000237c:	00500713          	li	a4,5
    80002380:	00e7a223          	sw	a4,4(a5)
                    TCB::yield();
    80002384:	00000097          	auipc	ra,0x0
    80002388:	92c080e7          	jalr	-1748(ra) # 80001cb0 <_ZN3TCB5yieldEv>
    __asm__ volatile ("mv a0, %[val]": : [val] "r"(val));
    8000238c:	00100793          	li	a5,1
    80002390:	00078513          	mv	a0,a5
}
    80002394:	f45ff06f          	j	800022d8 <_ZN5Riscv20handleSupervisorTrapEv+0xfc>
                    TCB::timeSliceCounter = 0;
    80002398:	00009797          	auipc	a5,0x9
    8000239c:	5587b783          	ld	a5,1368(a5) # 8000b8f0 <_GLOBAL_OFFSET_TABLE_+0x18>
    800023a0:	0007b023          	sd	zero,0(a5)
                    TCB::yield();
    800023a4:	00000097          	auipc	ra,0x0
    800023a8:	90c080e7          	jalr	-1780(ra) # 80001cb0 <_ZN3TCB5yieldEv>
                    break;
    800023ac:	f2dff06f          	j	800022d8 <_ZN5Riscv20handleSupervisorTrapEv+0xfc>
            );
    800023b0:	06043783          	ld	a5,96(s0)
                    unsigned volatile a2reg = (unsigned) r_a2fromstack();
    800023b4:	0007879b          	sext.w	a5,a5
    800023b8:	f2f42223          	sw	a5,-220(s0)
            );
    800023bc:	05843783          	ld	a5,88(s0)
                    uint64 volatile a1reg = (uint64) r_a1fromstack();
    800023c0:	f6f43023          	sd	a5,-160(s0)
                    (*(Sem **) a1reg) = Sem::open((unsigned )a2reg);
    800023c4:	f2442503          	lw	a0,-220(s0)
    800023c8:	f6043483          	ld	s1,-160(s0)
    800023cc:	0005051b          	sext.w	a0,a0
    800023d0:	00000097          	auipc	ra,0x0
    800023d4:	220080e7          	jalr	544(ra) # 800025f0 <_ZN3Sem4openEj>
    800023d8:	00a4b023          	sd	a0,0(s1)
                    w_a1onstack(a1reg);
    800023dc:	f6043783          	ld	a5,-160(s0)
    __asm__ volatile ("sd %[val], 11*8(fp)": : [val] "r"(val));
    800023e0:	04f43c23          	sd	a5,88(s0)
                    if (a1reg != 0)a0arg = 0; else a0arg = -1;
    800023e4:	f6043783          	ld	a5,-160(s0)
    800023e8:	00078a63          	beqz	a5,800023fc <_ZN5Riscv20handleSupervisorTrapEv+0x220>
    800023ec:	fc043423          	sd	zero,-56(s0)
                    w_a0(a0arg);
    800023f0:	fc843783          	ld	a5,-56(s0)
    __asm__ volatile ("mv a0, %[val]": : [val] "r"(val));
    800023f4:	00078513          	mv	a0,a5
}
    800023f8:	ee1ff06f          	j	800022d8 <_ZN5Riscv20handleSupervisorTrapEv+0xfc>
                    if (a1reg != 0)a0arg = 0; else a0arg = -1;
    800023fc:	fff00793          	li	a5,-1
    80002400:	fcf43423          	sd	a5,-56(s0)
    80002404:	fedff06f          	j	800023f0 <_ZN5Riscv20handleSupervisorTrapEv+0x214>
            );
    80002408:	05843783          	ld	a5,88(s0)
                    uint64 volatile a1reg = r_a1fromstack();
    8000240c:	f6f43423          	sd	a5,-152(s0)
                    Sem *s = (Sem *) a1reg;
    80002410:	f6843503          	ld	a0,-152(s0)
                    uint64 retCast = (uint64) s->close();
    80002414:	00000097          	auipc	ra,0x0
    80002418:	384080e7          	jalr	900(ra) # 80002798 <_ZN3Sem5closeEv>
    __asm__ volatile ("mv a0, %[val]": : [val] "r"(val));
    8000241c:	00050513          	mv	a0,a0
}
    80002420:	eb9ff06f          	j	800022d8 <_ZN5Riscv20handleSupervisorTrapEv+0xfc>
            );
    80002424:	05843783          	ld	a5,88(s0)
                    uint64 volatile a1reg = r_a1fromstack();
    80002428:	f6f43823          	sd	a5,-144(s0)
                    uint64 retCast = (uint64) ((Sem *) a1reg)->wait();
    8000242c:	f7043503          	ld	a0,-144(s0)
    80002430:	00000097          	auipc	ra,0x0
    80002434:	214080e7          	jalr	532(ra) # 80002644 <_ZN3Sem4waitEv>
    __asm__ volatile ("mv a0, %[val]": : [val] "r"(val));
    80002438:	00050513          	mv	a0,a0
}
    8000243c:	e9dff06f          	j	800022d8 <_ZN5Riscv20handleSupervisorTrapEv+0xfc>
            );
    80002440:	05843783          	ld	a5,88(s0)
                    uint64 volatile a1reg = r_a1fromstack();
    80002444:	f6f43c23          	sd	a5,-136(s0)
                    Sem *s = (Sem *) a1reg;
    80002448:	f7843503          	ld	a0,-136(s0)
                    uint64 retCast = (uint64) s->signal();
    8000244c:	00000097          	auipc	ra,0x0
    80002450:	2ac080e7          	jalr	684(ra) # 800026f8 <_ZN3Sem6signalEv>
    __asm__ volatile ("mv a0, %[val]": : [val] "r"(val));
    80002454:	00050513          	mv	a0,a0
}
    80002458:	e81ff06f          	j	800022d8 <_ZN5Riscv20handleSupervisorTrapEv+0xfc>
                    char c=__getc();
    8000245c:	00006097          	auipc	ra,0x6
    80002460:	590080e7          	jalr	1424(ra) # 800089ec <__getc>
    __asm__ volatile ("mv a0, %[val]": : [val] "r"(val));
    80002464:	00050513          	mv	a0,a0
}
    80002468:	e71ff06f          	j	800022d8 <_ZN5Riscv20handleSupervisorTrapEv+0xfc>
            );
    8000246c:	05843783          	ld	a5,88(s0)
                    uint64 volatile a1reg = r_a1fromstack();
    80002470:	f8f43023          	sd	a5,-128(s0)
                    char c=(char)a1reg;
    80002474:	f8043503          	ld	a0,-128(s0)
                    __putc(c);
    80002478:	0ff57513          	andi	a0,a0,255
    8000247c:	00006097          	auipc	ra,0x6
    80002480:	534080e7          	jalr	1332(ra) # 800089b0 <__putc>
                    break;
    80002484:	e55ff06f          	j	800022d8 <_ZN5Riscv20handleSupervisorTrapEv+0xfc>
                    TCB::running->sysRegime=true;
    80002488:	00009797          	auipc	a5,0x9
    8000248c:	4907b783          	ld	a5,1168(a5) # 8000b918 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002490:	0007b783          	ld	a5,0(a5)
    80002494:	00100713          	li	a4,1
    80002498:	00e78823          	sb	a4,16(a5)
                    break;
    8000249c:	e3dff06f          	j	800022d8 <_ZN5Riscv20handleSupervisorTrapEv+0xfc>
                    printString("Prosledjen code za syscall koji nije na listi za obradu.\n");
    800024a0:	00007517          	auipc	a0,0x7
    800024a4:	c4050513          	addi	a0,a0,-960 # 800090e0 <CONSOLE_STATUS+0xd0>
    800024a8:	00003097          	auipc	ra,0x3
    800024ac:	fa4080e7          	jalr	-92(ra) # 8000544c <_Z11printStringPKc>
                    break;
    800024b0:	e29ff06f          	j	800022d8 <_ZN5Riscv20handleSupervisorTrapEv+0xfc>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    800024b4:	00200793          	li	a5,2
    800024b8:	1447b073          	csrc	sip,a5
            TCB::timeSliceCounter++;
    800024bc:	00009717          	auipc	a4,0x9
    800024c0:	43473703          	ld	a4,1076(a4) # 8000b8f0 <_GLOBAL_OFFSET_TABLE_+0x18>
    800024c4:	00073783          	ld	a5,0(a4)
    800024c8:	00178793          	addi	a5,a5,1
    800024cc:	00f73023          	sd	a5,0(a4)
            if (TCB::timeSliceCounter >= TCB::running->getTimeSlice()) {
    800024d0:	00009717          	auipc	a4,0x9
    800024d4:	44873703          	ld	a4,1096(a4) # 8000b918 <_GLOBAL_OFFSET_TABLE_+0x40>
    800024d8:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const { return timeSlice; }
    800024dc:	05073703          	ld	a4,80(a4)
    800024e0:	dce7e2e3          	bltu	a5,a4,800022a4 <_ZN5Riscv20handleSupervisorTrapEv+0xc8>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800024e4:	141027f3          	csrr	a5,sepc
    800024e8:	faf43823          	sd	a5,-80(s0)
    return sepc;
    800024ec:	fb043783          	ld	a5,-80(s0)
                uint64 volatile sepc = r_sepc();
    800024f0:	f8f43423          	sd	a5,-120(s0)
                TCB::timeSliceCounter = 0;
    800024f4:	00009797          	auipc	a5,0x9
    800024f8:	3fc7b783          	ld	a5,1020(a5) # 8000b8f0 <_GLOBAL_OFFSET_TABLE_+0x18>
    800024fc:	0007b023          	sd	zero,0(a5)
                TCB::yield();///TCB::dispatch();
    80002500:	fffff097          	auipc	ra,0xfffff
    80002504:	7b0080e7          	jalr	1968(ra) # 80001cb0 <_ZN3TCB5yieldEv>
                w_sstatus(sstatus);
    80002508:	fd043783          	ld	a5,-48(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    8000250c:	10079073          	csrw	sstatus,a5
                w_sepc(sepc);
    80002510:	f8843783          	ld	a5,-120(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002514:	14179073          	csrw	sepc,a5
}
    80002518:	d8dff06f          	j	800022a4 <_ZN5Riscv20handleSupervisorTrapEv+0xc8>
            printString("Unexpected trap cause\n");
    8000251c:	00007517          	auipc	a0,0x7
    80002520:	c0450513          	addi	a0,a0,-1020 # 80009120 <CONSOLE_STATUS+0x110>
    80002524:	00003097          	auipc	ra,0x3
    80002528:	f28080e7          	jalr	-216(ra) # 8000544c <_Z11printStringPKc>
            printString("scause: ");
    8000252c:	00007517          	auipc	a0,0x7
    80002530:	c0c50513          	addi	a0,a0,-1012 # 80009138 <CONSOLE_STATUS+0x128>
    80002534:	00003097          	auipc	ra,0x3
    80002538:	f18080e7          	jalr	-232(ra) # 8000544c <_Z11printStringPKc>
            printRegister(scause);
    8000253c:	fd843503          	ld	a0,-40(s0)
    80002540:	00001097          	auipc	ra,0x1
    80002544:	a60080e7          	jalr	-1440(ra) # 80002fa0 <printRegister>
    __asm__ volatile ("csrr %[stval], stval" : [stval] "=r"(stval));
    80002548:	143027f3          	csrr	a5,stval
    8000254c:	fcf43023          	sd	a5,-64(s0)
    return stval;
    80002550:	fc043483          	ld	s1,-64(s0)
            printString("stval: ");
    80002554:	00007517          	auipc	a0,0x7
    80002558:	bf450513          	addi	a0,a0,-1036 # 80009148 <CONSOLE_STATUS+0x138>
    8000255c:	00003097          	auipc	ra,0x3
    80002560:	ef0080e7          	jalr	-272(ra) # 8000544c <_Z11printStringPKc>
            printRegister(stval);
    80002564:	00048513          	mv	a0,s1
    80002568:	00001097          	auipc	ra,0x1
    8000256c:	a38080e7          	jalr	-1480(ra) # 80002fa0 <printRegister>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002570:	141027f3          	csrr	a5,sepc
    80002574:	faf43c23          	sd	a5,-72(s0)
    return sepc;
    80002578:	fb843483          	ld	s1,-72(s0)
            printString("sepc: ");
    8000257c:	00007517          	auipc	a0,0x7
    80002580:	bd450513          	addi	a0,a0,-1068 # 80009150 <CONSOLE_STATUS+0x140>
    80002584:	00003097          	auipc	ra,0x3
    80002588:	ec8080e7          	jalr	-312(ra) # 8000544c <_Z11printStringPKc>
            printRegister(sepc);
    8000258c:	00048513          	mv	a0,s1
    80002590:	00001097          	auipc	ra,0x1
    80002594:	a10080e7          	jalr	-1520(ra) # 80002fa0 <printRegister>
}
    80002598:	d0dff06f          	j	800022a4 <_ZN5Riscv20handleSupervisorTrapEv+0xc8>

000000008000259c <_ZN5Riscv14terminateRiscvEv>:

void Riscv::terminateRiscv() {
    8000259c:	ff010113          	addi	sp,sp,-16
    800025a0:	00813423          	sd	s0,8(sp)
    800025a4:	01010413          	addi	s0,sp,16

    *(int*)0x100000 = 0x5555;
    800025a8:	00100737          	lui	a4,0x100
    800025ac:	000057b7          	lui	a5,0x5
    800025b0:	5557879b          	addiw	a5,a5,1365
    800025b4:	00f72023          	sw	a5,0(a4) # 100000 <_entry-0x7ff00000>
    "lui t0, 0x10000\n"
    "addi t0, t0, 0x0000\n"
    "li t1, 0x5555\n"
    "sw t1, 0(t0)\n"
    );*/
    800025b8:	00813403          	ld	s0,8(sp)
    800025bc:	01010113          	addi	sp,sp,16
    800025c0:	00008067          	ret

00000000800025c4 <_ZN3SemC1Ej>:
//
#include "../h/sem.h"
#include "../h/tcb.hpp"
#include "../test/printing.hpp"

Sem::Sem(unsigned int init) {//
    800025c4:	ff010113          	addi	sp,sp,-16
    800025c8:	00813423          	sd	s0,8(sp)
    800025cc:	01010413          	addi	s0,sp,16
    val = init;
    800025d0:	00b52a23          	sw	a1,20(a0)
    on = true;
    800025d4:	00100793          	li	a5,1
    800025d8:	00f50823          	sb	a5,16(a0)
    blockedFirst= nullptr;
    800025dc:	00053023          	sd	zero,0(a0)
    blockedLast= nullptr;
    800025e0:	00053423          	sd	zero,8(a0)
}
    800025e4:	00813403          	ld	s0,8(sp)
    800025e8:	01010113          	addi	sp,sp,16
    800025ec:	00008067          	ret

00000000800025f0 <_ZN3Sem4openEj>:

Sem::~Sem() {
    close();
}

Sem *Sem::open(unsigned i) {//
    800025f0:	fe010113          	addi	sp,sp,-32
    800025f4:	00113c23          	sd	ra,24(sp)
    800025f8:	00813823          	sd	s0,16(sp)
    800025fc:	00913423          	sd	s1,8(sp)
    80002600:	01213023          	sd	s2,0(sp)
    80002604:	02010413          	addi	s0,sp,32
    80002608:	00050913          	mv	s2,a0
    Sem *s = new Sem(i);
    8000260c:	01800513          	li	a0,24
    80002610:	fffff097          	auipc	ra,0xfffff
    80002614:	7f4080e7          	jalr	2036(ra) # 80001e04 <_Znwm>
    80002618:	00050493          	mv	s1,a0
    8000261c:	00090593          	mv	a1,s2
    80002620:	00000097          	auipc	ra,0x0
    80002624:	fa4080e7          	jalr	-92(ra) # 800025c4 <_ZN3SemC1Ej>
    return s;
}
    80002628:	00048513          	mv	a0,s1
    8000262c:	01813083          	ld	ra,24(sp)
    80002630:	01013403          	ld	s0,16(sp)
    80002634:	00813483          	ld	s1,8(sp)
    80002638:	00013903          	ld	s2,0(sp)
    8000263c:	02010113          	addi	sp,sp,32
    80002640:	00008067          	ret

0000000080002644 <_ZN3Sem4waitEv>:

int Sem::wait() {
    if (!on) {
    80002644:	01054783          	lbu	a5,16(a0)
    80002648:	0a078063          	beqz	a5,800026e8 <_ZN3Sem4waitEv+0xa4>
int Sem::wait() {
    8000264c:	fe010113          	addi	sp,sp,-32
    80002650:	00113c23          	sd	ra,24(sp)
    80002654:	00813823          	sd	s0,16(sp)
    80002658:	00913423          	sd	s1,8(sp)
    8000265c:	02010413          	addi	s0,sp,32
    80002660:	00050493          	mv	s1,a0
        return -1;
    }
    //printString("Cekaj na sem\n");
    //printInt(val);

    if (--val < 0) {
    80002664:	01452783          	lw	a5,20(a0)
    80002668:	fff7879b          	addiw	a5,a5,-1
    8000266c:	00f52a23          	sw	a5,20(a0)
    80002670:	02079713          	slli	a4,a5,0x20
    80002674:	02074263          	bltz	a4,80002698 <_ZN3Sem4waitEv+0x54>
        }
       // printString("Blokirana, yieldovano\n");
        TCB::yield();
       // printString("Odblokirana\n");
    }
    if (!on) {
    80002678:	0104c783          	lbu	a5,16(s1)
    8000267c:	06078a63          	beqz	a5,800026f0 <_ZN3Sem4waitEv+0xac>
        return -1;
    }
    return 0;
    80002680:	00000513          	li	a0,0
}
    80002684:	01813083          	ld	ra,24(sp)
    80002688:	01013403          	ld	s0,16(sp)
    8000268c:	00813483          	ld	s1,8(sp)
    80002690:	02010113          	addi	sp,sp,32
    80002694:	00008067          	ret
        TCB *n = TCB::running;
    80002698:	00009797          	auipc	a5,0x9
    8000269c:	2807b783          	ld	a5,640(a5) # 8000b918 <_GLOBAL_OFFSET_TABLE_+0x40>
    800026a0:	0007b783          	ld	a5,0(a5)
        n->holder= this;
    800026a4:	02a7b423          	sd	a0,40(a5)
    void setState(State e) { currentThreadState = e; }
    800026a8:	00300713          	li	a4,3
    800026ac:	00e7a223          	sw	a4,4(a5)
        n->nextBlocked= nullptr;
    800026b0:	0207b023          	sd	zero,32(a5)
        if (blockedFirst != nullptr) {
    800026b4:	00053703          	ld	a4,0(a0)
    800026b8:	02070263          	beqz	a4,800026dc <_ZN3Sem4waitEv+0x98>
            blockedLast->nextBlocked = n;
    800026bc:	00853703          	ld	a4,8(a0)
    800026c0:	02f73023          	sd	a5,32(a4)
            blockedLast = blockedLast->nextBlocked;
    800026c4:	00853783          	ld	a5,8(a0)
    800026c8:	0207b783          	ld	a5,32(a5)
    800026cc:	00f53423          	sd	a5,8(a0)
        TCB::yield();
    800026d0:	fffff097          	auipc	ra,0xfffff
    800026d4:	5e0080e7          	jalr	1504(ra) # 80001cb0 <_ZN3TCB5yieldEv>
    800026d8:	fa1ff06f          	j	80002678 <_ZN3Sem4waitEv+0x34>
            blockedFirst = blockedLast = n;
    800026dc:	00f53423          	sd	a5,8(a0)
    800026e0:	00f53023          	sd	a5,0(a0)
    800026e4:	fedff06f          	j	800026d0 <_ZN3Sem4waitEv+0x8c>
        return -1;
    800026e8:	fff00513          	li	a0,-1
}
    800026ec:	00008067          	ret
        return -1;
    800026f0:	fff00513          	li	a0,-1
    800026f4:	f91ff06f          	j	80002684 <_ZN3Sem4waitEv+0x40>

00000000800026f8 <_ZN3Sem6signalEv>:

int Sem::signal() {
    if (!on) {
    800026f8:	01054783          	lbu	a5,16(a0)
    800026fc:	08078663          	beqz	a5,80002788 <_ZN3Sem6signalEv+0x90>
int Sem::signal() {
    80002700:	fe010113          	addi	sp,sp,-32
    80002704:	00113c23          	sd	ra,24(sp)
    80002708:	00813823          	sd	s0,16(sp)
    8000270c:	00913423          	sd	s1,8(sp)
    80002710:	02010413          	addi	s0,sp,32
    80002714:	00050493          	mv	s1,a0
        return -1;
    }
    //printString("Signal\n");
    //printInt(val);
    if (++val <= 0) {
    80002718:	01452783          	lw	a5,20(a0)
    8000271c:	0017879b          	addiw	a5,a5,1
    80002720:	0007871b          	sext.w	a4,a5
    80002724:	00f52a23          	sw	a5,20(a0)
    80002728:	00e05e63          	blez	a4,80002744 <_ZN3Sem6signalEv+0x4c>
            TCB *n = blockedFirst;
            blockedFirst = blockedFirst->nextBlocked;
            n->release();
        }
    }
    return 0;
    8000272c:	00000513          	li	a0,0
}
    80002730:	01813083          	ld	ra,24(sp)
    80002734:	01013403          	ld	s0,16(sp)
    80002738:	00813483          	ld	s1,8(sp)
    8000273c:	02010113          	addi	sp,sp,32
    80002740:	00008067          	ret
        if (blockedLast == blockedFirst && blockedFirst != nullptr) {
    80002744:	00853783          	ld	a5,8(a0)
    80002748:	00053503          	ld	a0,0(a0)
    8000274c:	02a78263          	beq	a5,a0,80002770 <_ZN3Sem6signalEv+0x78>
        if (blockedFirst != nullptr) {
    80002750:	0004b503          	ld	a0,0(s1)
    80002754:	02050e63          	beqz	a0,80002790 <_ZN3Sem6signalEv+0x98>
            blockedFirst = blockedFirst->nextBlocked;
    80002758:	02053783          	ld	a5,32(a0)
    8000275c:	00f4b023          	sd	a5,0(s1)
            n->release();
    80002760:	fffff097          	auipc	ra,0xfffff
    80002764:	5f0080e7          	jalr	1520(ra) # 80001d50 <_ZN3TCB7releaseEv>
    return 0;
    80002768:	00000513          	li	a0,0
    8000276c:	fc5ff06f          	j	80002730 <_ZN3Sem6signalEv+0x38>
        if (blockedLast == blockedFirst && blockedFirst != nullptr) {
    80002770:	fe0500e3          	beqz	a0,80002750 <_ZN3Sem6signalEv+0x58>
            blockedFirst = blockedLast = nullptr;
    80002774:	0004b423          	sd	zero,8(s1)
    80002778:	0004b023          	sd	zero,0(s1)
            n->release();
    8000277c:	fffff097          	auipc	ra,0xfffff
    80002780:	5d4080e7          	jalr	1492(ra) # 80001d50 <_ZN3TCB7releaseEv>
    80002784:	fcdff06f          	j	80002750 <_ZN3Sem6signalEv+0x58>
        return -1;
    80002788:	fff00513          	li	a0,-1
}
    8000278c:	00008067          	ret
    return 0;
    80002790:	00000513          	li	a0,0
    80002794:	f9dff06f          	j	80002730 <_ZN3Sem6signalEv+0x38>

0000000080002798 <_ZN3Sem5closeEv>:

int Sem::close() {
    80002798:	fe010113          	addi	sp,sp,-32
    8000279c:	00113c23          	sd	ra,24(sp)
    800027a0:	00813823          	sd	s0,16(sp)
    800027a4:	00913423          	sd	s1,8(sp)
    800027a8:	02010413          	addi	s0,sp,32
    800027ac:	00050493          	mv	s1,a0
    if (!on) {
    800027b0:	01054783          	lbu	a5,16(a0)
    800027b4:	04078663          	beqz	a5,80002800 <_ZN3Sem5closeEv+0x68>
        return -1;
    }

    while (blockedFirst != nullptr) {
    800027b8:	0004b503          	ld	a0,0(s1)
    800027bc:	02050263          	beqz	a0,800027e0 <_ZN3Sem5closeEv+0x48>
        TCB *n = blockedFirst;
        blockedFirst = blockedFirst->nextBlocked;
    800027c0:	02053783          	ld	a5,32(a0)
    800027c4:	00f4b023          	sd	a5,0(s1)
        n->release();
    800027c8:	fffff097          	auipc	ra,0xfffff
    800027cc:	588080e7          	jalr	1416(ra) # 80001d50 <_ZN3TCB7releaseEv>
        if (blockedFirst == nullptr) {
    800027d0:	0004b783          	ld	a5,0(s1)
    800027d4:	fe0792e3          	bnez	a5,800027b8 <_ZN3Sem5closeEv+0x20>
            blockedLast = blockedFirst;
    800027d8:	00f4b423          	sd	a5,8(s1)
    800027dc:	fddff06f          	j	800027b8 <_ZN3Sem5closeEv+0x20>
        }
    }

    on = false;
    800027e0:	00048823          	sb	zero,16(s1)
    val = 0;
    800027e4:	0004aa23          	sw	zero,20(s1)

    return 0;
    800027e8:	00000513          	li	a0,0
}
    800027ec:	01813083          	ld	ra,24(sp)
    800027f0:	01013403          	ld	s0,16(sp)
    800027f4:	00813483          	ld	s1,8(sp)
    800027f8:	02010113          	addi	sp,sp,32
    800027fc:	00008067          	ret
        return -1;
    80002800:	fff00513          	li	a0,-1
    80002804:	fe9ff06f          	j	800027ec <_ZN3Sem5closeEv+0x54>

0000000080002808 <_ZN3SemD1Ev>:
Sem::~Sem() {
    80002808:	ff010113          	addi	sp,sp,-16
    8000280c:	00113423          	sd	ra,8(sp)
    80002810:	00813023          	sd	s0,0(sp)
    80002814:	01010413          	addi	s0,sp,16
    close();
    80002818:	00000097          	auipc	ra,0x0
    8000281c:	f80080e7          	jalr	-128(ra) # 80002798 <_ZN3Sem5closeEv>
}
    80002820:	00813083          	ld	ra,8(sp)
    80002824:	00013403          	ld	s0,0(sp)
    80002828:	01010113          	addi	sp,sp,16
    8000282c:	00008067          	ret

0000000080002830 <_ZN9Scheduler8idleFuncEPv>:

TCB *Scheduler::idle = nullptr;
TCB *Scheduler::last = nullptr;
TCB *Scheduler::first = nullptr;

void Scheduler::idleFunc(void *arg) {
    80002830:	ff010113          	addi	sp,sp,-16
    80002834:	00113423          	sd	ra,8(sp)
    80002838:	00813023          	sd	s0,0(sp)
    8000283c:	01010413          	addi	s0,sp,16
    while (1) {
        printString("spin\n");//
    80002840:	00007517          	auipc	a0,0x7
    80002844:	a2850513          	addi	a0,a0,-1496 # 80009268 <CONSOLE_STATUS+0x258>
    80002848:	00003097          	auipc	ra,0x3
    8000284c:	c04080e7          	jalr	-1020(ra) # 8000544c <_Z11printStringPKc>
    while (1) {
    80002850:	ff1ff06f          	j	80002840 <_ZN9Scheduler8idleFuncEPv+0x10>

0000000080002854 <_ZN9Scheduler3getEv>:
    }
}

TCB *Scheduler::get() {
    80002854:	ff010113          	addi	sp,sp,-16
    80002858:	00813423          	sd	s0,8(sp)
    8000285c:	01010413          	addi	s0,sp,16
          n = n->next;
      }
      printString("to je to\n");
      */

    if (first == nullptr) {
    80002860:	00009517          	auipc	a0,0x9
    80002864:	13053503          	ld	a0,304(a0) # 8000b990 <_ZN9Scheduler5firstE>
    80002868:	02050663          	beqz	a0,80002894 <_ZN9Scheduler3getEv+0x40>
        return idle;
    }

    TCB *ret = first;

    if (first == last) {
    8000286c:	00009797          	auipc	a5,0x9
    80002870:	1347b783          	ld	a5,308(a5) # 8000b9a0 <_ZN9Scheduler4lastE>
    80002874:	02f50663          	beq	a0,a5,800028a0 <_ZN9Scheduler3getEv+0x4c>
        first = last = nullptr;
    } else {
        first = first->next;
    80002878:	01853783          	ld	a5,24(a0)
    8000287c:	00009717          	auipc	a4,0x9
    80002880:	10f73a23          	sd	a5,276(a4) # 8000b990 <_ZN9Scheduler5firstE>
    }
    ret->next = nullptr;
    80002884:	00053c23          	sd	zero,24(a0)
           n=n->next;
       }
       printString("to je to\n");
   */
    return ret;
}
    80002888:	00813403          	ld	s0,8(sp)
    8000288c:	01010113          	addi	sp,sp,16
    80002890:	00008067          	ret
        return idle;
    80002894:	00009517          	auipc	a0,0x9
    80002898:	10453503          	ld	a0,260(a0) # 8000b998 <_ZN9Scheduler4idleE>
    8000289c:	fedff06f          	j	80002888 <_ZN9Scheduler3getEv+0x34>
        first = last = nullptr;
    800028a0:	00009797          	auipc	a5,0x9
    800028a4:	0f078793          	addi	a5,a5,240 # 8000b990 <_ZN9Scheduler5firstE>
    800028a8:	0007b823          	sd	zero,16(a5)
    800028ac:	0007b023          	sd	zero,0(a5)
    800028b0:	fd5ff06f          	j	80002884 <_ZN9Scheduler3getEv+0x30>

00000000800028b4 <_ZN9Scheduler3putEP3TCB>:

void Scheduler::put(TCB *tcb) {
    800028b4:	ff010113          	addi	sp,sp,-16
    800028b8:	00813423          	sd	s0,8(sp)
    800028bc:	01010413          	addi	s0,sp,16
        printRegister((uint64)n);
        n=n->next;
    }
    printString("to je to\n");
*/
    if (tcb == idle || tcb == nullptr)return;
    800028c0:	00009797          	auipc	a5,0x9
    800028c4:	0d87b783          	ld	a5,216(a5) # 8000b998 <_ZN9Scheduler4idleE>
    800028c8:	02a78663          	beq	a5,a0,800028f4 <_ZN9Scheduler3putEP3TCB+0x40>
    800028cc:	02050463          	beqz	a0,800028f4 <_ZN9Scheduler3putEP3TCB+0x40>

    tcb->next = nullptr;
    800028d0:	00053c23          	sd	zero,24(a0)
    if (first == nullptr) {
    800028d4:	00009797          	auipc	a5,0x9
    800028d8:	0bc7b783          	ld	a5,188(a5) # 8000b990 <_ZN9Scheduler5firstE>
    800028dc:	02078263          	beqz	a5,80002900 <_ZN9Scheduler3putEP3TCB+0x4c>
        first = last = tcb;
    } else {
        last = last->next = tcb;
    800028e0:	00009797          	auipc	a5,0x9
    800028e4:	0b078793          	addi	a5,a5,176 # 8000b990 <_ZN9Scheduler5firstE>
    800028e8:	0107b703          	ld	a4,16(a5)
    800028ec:	00a73c23          	sd	a0,24(a4)
    800028f0:	00a7b823          	sd	a0,16(a5)
           printRegister((uint64) n);
           n = n->next;
       }
       printString("to je to\n");
   */
}
    800028f4:	00813403          	ld	s0,8(sp)
    800028f8:	01010113          	addi	sp,sp,16
    800028fc:	00008067          	ret
        first = last = tcb;
    80002900:	00009797          	auipc	a5,0x9
    80002904:	09078793          	addi	a5,a5,144 # 8000b990 <_ZN9Scheduler5firstE>
    80002908:	00a7b823          	sd	a0,16(a5)
    8000290c:	00a7b023          	sd	a0,0(a5)
    80002910:	fe5ff06f          	j	800028f4 <_ZN9Scheduler3putEP3TCB+0x40>

0000000080002914 <_ZN9Scheduler6removeEP3TCB>:

void Scheduler::remove(TCB *t) {
    80002914:	ff010113          	addi	sp,sp,-16
    80002918:	00813423          	sd	s0,8(sp)
    8000291c:	01010413          	addi	s0,sp,16
    TCB *f = first;
    80002920:	00009797          	auipc	a5,0x9
    80002924:	0707b783          	ld	a5,112(a5) # 8000b990 <_ZN9Scheduler5firstE>
    TCB *prev = nullptr;
    80002928:	00000713          	li	a4,0
    while (f != nullptr) {//&& f != last
    8000292c:	02078263          	beqz	a5,80002950 <_ZN9Scheduler6removeEP3TCB+0x3c>
        if (f == t) {
    80002930:	00a78863          	beq	a5,a0,80002940 <_ZN9Scheduler6removeEP3TCB+0x2c>
            if (prev != nullptr)prev->next = f->next;
            f->next = nullptr;
            break;
        }
        prev = f;
    80002934:	00078713          	mv	a4,a5
        f = f->next;
    80002938:	0187b783          	ld	a5,24(a5)
    while (f != nullptr) {//&& f != last
    8000293c:	ff1ff06f          	j	8000292c <_ZN9Scheduler6removeEP3TCB+0x18>
            if (prev != nullptr)prev->next = f->next;
    80002940:	00070663          	beqz	a4,8000294c <_ZN9Scheduler6removeEP3TCB+0x38>
    80002944:	0187b683          	ld	a3,24(a5)
    80002948:	00d73c23          	sd	a3,24(a4)
            f->next = nullptr;
    8000294c:	0007bc23          	sd	zero,24(a5)
    }
}
    80002950:	00813403          	ld	s0,8(sp)
    80002954:	01010113          	addi	sp,sp,16
    80002958:	00008067          	ret

000000008000295c <_ZN9Scheduler5emptyEv>:
        static Scheduler instance;
        return instance;
    }

    static bool isEmpty() {
        return first == nullptr;
    8000295c:	00009797          	auipc	a5,0x9
    80002960:	0347b783          	ld	a5,52(a5) # 8000b990 <_ZN9Scheduler5firstE>
    cleanUp();
    delete idle;
}

void Scheduler::empty() {
    while (!isEmpty()) {
    80002964:	02078c63          	beqz	a5,8000299c <_ZN9Scheduler5emptyEv+0x40>
void Scheduler::empty() {
    80002968:	ff010113          	addi	sp,sp,-16
    8000296c:	00113423          	sd	ra,8(sp)
    80002970:	00813023          	sd	s0,0(sp)
    80002974:	01010413          	addi	s0,sp,16
        Scheduler::get();
    80002978:	00000097          	auipc	ra,0x0
    8000297c:	edc080e7          	jalr	-292(ra) # 80002854 <_ZN9Scheduler3getEv>
    80002980:	00009797          	auipc	a5,0x9
    80002984:	0107b783          	ld	a5,16(a5) # 8000b990 <_ZN9Scheduler5firstE>
    while (!isEmpty()) {
    80002988:	fe0798e3          	bnez	a5,80002978 <_ZN9Scheduler5emptyEv+0x1c>
    }

}
    8000298c:	00813083          	ld	ra,8(sp)
    80002990:	00013403          	ld	s0,0(sp)
    80002994:	01010113          	addi	sp,sp,16
    80002998:	00008067          	ret
    8000299c:	00008067          	ret

00000000800029a0 <_ZN9Scheduler7cleanUpEv>:
    800029a0:	00009797          	auipc	a5,0x9
    800029a4:	ff07b783          	ld	a5,-16(a5) # 8000b990 <_ZN9Scheduler5firstE>

void Scheduler::cleanUp() {
    while (!isEmpty()) {
    800029a8:	06078863          	beqz	a5,80002a18 <_ZN9Scheduler7cleanUpEv+0x78>
void Scheduler::cleanUp() {
    800029ac:	fe010113          	addi	sp,sp,-32
    800029b0:	00113c23          	sd	ra,24(sp)
    800029b4:	00813823          	sd	s0,16(sp)
    800029b8:	00913423          	sd	s1,8(sp)
    800029bc:	02010413          	addi	s0,sp,32
        TCB *temp = Scheduler::get();
    800029c0:	00000097          	auipc	ra,0x0
    800029c4:	e94080e7          	jalr	-364(ra) # 80002854 <_ZN9Scheduler3getEv>
    800029c8:	00050493          	mv	s1,a0
        delete temp;
    800029cc:	02051263          	bnez	a0,800029f0 <_ZN9Scheduler7cleanUpEv+0x50>
    800029d0:	00009797          	auipc	a5,0x9
    800029d4:	fc07b783          	ld	a5,-64(a5) # 8000b990 <_ZN9Scheduler5firstE>
    while (!isEmpty()) {
    800029d8:	fe0794e3          	bnez	a5,800029c0 <_ZN9Scheduler7cleanUpEv+0x20>
    }

    800029dc:	01813083          	ld	ra,24(sp)
    800029e0:	01013403          	ld	s0,16(sp)
    800029e4:	00813483          	ld	s1,8(sp)
    800029e8:	02010113          	addi	sp,sp,32
    800029ec:	00008067          	ret
        Scheduler::remove(this);
    800029f0:	00000097          	auipc	ra,0x0
    800029f4:	f24080e7          	jalr	-220(ra) # 80002914 <_ZN9Scheduler6removeEP3TCB>
        delete[] stack;
    800029f8:	0384b503          	ld	a0,56(s1)
    800029fc:	00050663          	beqz	a0,80002a08 <_ZN9Scheduler7cleanUpEv+0x68>
    80002a00:	fffff097          	auipc	ra,0xfffff
    80002a04:	4e4080e7          	jalr	1252(ra) # 80001ee4 <_ZdaPv>
        delete temp;
    80002a08:	00048513          	mv	a0,s1
    80002a0c:	fffff097          	auipc	ra,0xfffff
    80002a10:	448080e7          	jalr	1096(ra) # 80001e54 <_ZdlPv>
    80002a14:	fbdff06f          	j	800029d0 <_ZN9Scheduler7cleanUpEv+0x30>
    80002a18:	00008067          	ret

0000000080002a1c <_ZN9SchedulerD1Ev>:
Scheduler::~Scheduler() {
    80002a1c:	fe010113          	addi	sp,sp,-32
    80002a20:	00113c23          	sd	ra,24(sp)
    80002a24:	00813823          	sd	s0,16(sp)
    80002a28:	00913423          	sd	s1,8(sp)
    80002a2c:	02010413          	addi	s0,sp,32
    cleanUp();
    80002a30:	00000097          	auipc	ra,0x0
    80002a34:	f70080e7          	jalr	-144(ra) # 800029a0 <_ZN9Scheduler7cleanUpEv>
    delete idle;
    80002a38:	00009497          	auipc	s1,0x9
    80002a3c:	f604b483          	ld	s1,-160(s1) # 8000b998 <_ZN9Scheduler4idleE>
    80002a40:	02048663          	beqz	s1,80002a6c <_ZN9SchedulerD1Ev+0x50>
        Scheduler::remove(this);
    80002a44:	00048513          	mv	a0,s1
    80002a48:	00000097          	auipc	ra,0x0
    80002a4c:	ecc080e7          	jalr	-308(ra) # 80002914 <_ZN9Scheduler6removeEP3TCB>
        delete[] stack;
    80002a50:	0384b503          	ld	a0,56(s1)
    80002a54:	00050663          	beqz	a0,80002a60 <_ZN9SchedulerD1Ev+0x44>
    80002a58:	fffff097          	auipc	ra,0xfffff
    80002a5c:	48c080e7          	jalr	1164(ra) # 80001ee4 <_ZdaPv>
    80002a60:	00048513          	mv	a0,s1
    80002a64:	fffff097          	auipc	ra,0xfffff
    80002a68:	3f0080e7          	jalr	1008(ra) # 80001e54 <_ZdlPv>
}
    80002a6c:	01813083          	ld	ra,24(sp)
    80002a70:	01013403          	ld	s0,16(sp)
    80002a74:	00813483          	ld	s1,8(sp)
    80002a78:	02010113          	addi	sp,sp,32
    80002a7c:	00008067          	ret

0000000080002a80 <_ZN15MemoryAllocator9mem_allocEm>:

MemoryBlock *MemoryAllocator::base = nullptr;
char *MemoryAllocator::baseAddress = nullptr;
size_t MemoryAllocator::freeSpaceInBlks = 0;

void *MemoryAllocator::mem_alloc(size_t size) { //numofBlocks +1
    80002a80:	ff010113          	addi	sp,sp,-16
    80002a84:	00813423          	sd	s0,8(sp)
    80002a88:	01010413          	addi	s0,sp,16
//best-fit
//lock
    if (size <= 0) {
    80002a8c:	10050263          	beqz	a0,80002b90 <_ZN15MemoryAllocator9mem_allocEm+0x110>
    80002a90:	00050693          	mv	a3,a0
        //unlock
        return nullptr;
    }
    if (size > freeSpaceInBlks) {
    80002a94:	00009597          	auipc	a1,0x9
    80002a98:	f145b583          	ld	a1,-236(a1) # 8000b9a8 <_ZN15MemoryAllocator15freeSpaceInBlksE>
    80002a9c:	0ea5ee63          	bltu	a1,a0,80002b98 <_ZN15MemoryAllocator9mem_allocEm+0x118>
        //unlock
        return nullptr;
    }

    if (base == nullptr) {
    80002aa0:	00009517          	auipc	a0,0x9
    80002aa4:	f1053503          	ld	a0,-240(a0) # 8000b9b0 <_ZN15MemoryAllocator4baseE>
    80002aa8:	0a050a63          	beqz	a0,80002b5c <_ZN15MemoryAllocator9mem_allocEm+0xdc>
        return nullptr;
    }

    MemoryBlock *curr = base;
    MemoryBlock *toReturn = nullptr;
    size_t remainBest = freeSpaceInBlks;
    80002aac:	00058613          	mv	a2,a1
    MemoryBlock *toReturn = nullptr;
    80002ab0:	00000713          	li	a4,0
    80002ab4:	0100006f          	j	80002ac4 <_ZN15MemoryAllocator9mem_allocEm+0x44>

                } else {

                    if (toReturn == nullptr) {
                        toReturn = curr;
                        remainBest = remain;
    80002ab8:	00078613          	mv	a2,a5
                        toReturn = curr;
    80002abc:	00050713          	mv	a4,a0
                        }
                    }
                }
            }
        }
        curr = curr->next;
    80002ac0:	00053503          	ld	a0,0(a0)
    while (curr != nullptr) {
    80002ac4:	02050c63          	beqz	a0,80002afc <_ZN15MemoryAllocator9mem_allocEm+0x7c>
        if (!curr->allocated) {
    80002ac8:	01854783          	lbu	a5,24(a0)
    80002acc:	fe079ae3          	bnez	a5,80002ac0 <_ZN15MemoryAllocator9mem_allocEm+0x40>
            size_t remain = curr->size - size - 1;
    80002ad0:	01053783          	ld	a5,16(a0)
    80002ad4:	40d787b3          	sub	a5,a5,a3
    80002ad8:	fff78793          	addi	a5,a5,-1
                if (remain == 0) {
    80002adc:	00078c63          	beqz	a5,80002af4 <_ZN15MemoryAllocator9mem_allocEm+0x74>
                    if (toReturn == nullptr) {
    80002ae0:	fc070ce3          	beqz	a4,80002ab8 <_ZN15MemoryAllocator9mem_allocEm+0x38>
                        if (remainBest > remain) {
    80002ae4:	fcc7fee3          	bgeu	a5,a2,80002ac0 <_ZN15MemoryAllocator9mem_allocEm+0x40>
                            remainBest = remain;
    80002ae8:	00078613          	mv	a2,a5
                            toReturn = curr;
    80002aec:	00050713          	mv	a4,a0
    80002af0:	fd1ff06f          	j	80002ac0 <_ZN15MemoryAllocator9mem_allocEm+0x40>
                    remainBest = 0;
    80002af4:	00078613          	mv	a2,a5
                    toReturn = curr;
    80002af8:	00050713          	mv	a4,a0
    }

    if (toReturn == nullptr) {
    80002afc:	0a070263          	beqz	a4,80002ba0 <_ZN15MemoryAllocator9mem_allocEm+0x120>
        //unlock
        return nullptr;
    }

    toReturn->allocated = true;
    80002b00:	00100793          	li	a5,1
    80002b04:	00f70c23          	sb	a5,24(a4)
    freeSpaceInBlks = freeSpaceInBlks - size - 1;//numofBlocks+1
    80002b08:	40d585b3          	sub	a1,a1,a3
    80002b0c:	fff58593          	addi	a1,a1,-1
    80002b10:	00009797          	auipc	a5,0x9
    80002b14:	e8b7bc23          	sd	a1,-360(a5) # 8000b9a8 <_ZN15MemoryAllocator15freeSpaceInBlksE>

    if (remainBest == 0) {
    80002b18:	04060863          	beqz	a2,80002b68 <_ZN15MemoryAllocator9mem_allocEm+0xe8>
        //unlock
        return (void *) ((char *) ((char *) toReturn + sizeof(MemoryBlock)));//MEM_BLOCK_SIZE
    }

    if (remainBest == 1) {
    80002b1c:	00100793          	li	a5,1
    80002b20:	04f60863          	beq	a2,a5,80002b70 <_ZN15MemoryAllocator9mem_allocEm+0xf0>
        toReturn->size++;
        //unlock
        return (void *) ((char *) ((char *) toReturn + sizeof(MemoryBlock)));//MEM_BLOCK_SIZE
    }

    size_t s = toReturn->size;
    80002b24:	01073603          	ld	a2,16(a4)

    MemoryBlock *fragment = (MemoryBlock *) ((char *) toReturn + (size + 1) * MEM_BLOCK_SIZE);
    80002b28:	00168593          	addi	a1,a3,1
    80002b2c:	00659793          	slli	a5,a1,0x6
    80002b30:	00f707b3          	add	a5,a4,a5
    fragment->next = toReturn->next;
    80002b34:	00073503          	ld	a0,0(a4)
    80002b38:	00a7b023          	sd	a0,0(a5)
    fragment->prev = toReturn;
    80002b3c:	00e7b423          	sd	a4,8(a5)
    fragment->size = s - size - 1;
    80002b40:	40d606b3          	sub	a3,a2,a3
    80002b44:	fff68693          	addi	a3,a3,-1
    80002b48:	00d7b823          	sd	a3,16(a5)
    fragment->allocated = false;
    80002b4c:	00078c23          	sb	zero,24(a5)
    toReturn->next = fragment;
    80002b50:	00f73023          	sd	a5,0(a4)
    toReturn->size = size + 1;
    80002b54:	00b73823          	sd	a1,16(a4)
//unlocl

    return (void *) ((char *) toReturn + sizeof(MemoryBlock));//MEM_BLOCK_SIZE
    80002b58:	02070513          	addi	a0,a4,32
}
    80002b5c:	00813403          	ld	s0,8(sp)
    80002b60:	01010113          	addi	sp,sp,16
    80002b64:	00008067          	ret
        return (void *) ((char *) ((char *) toReturn + sizeof(MemoryBlock)));//MEM_BLOCK_SIZE
    80002b68:	02070513          	addi	a0,a4,32
    80002b6c:	ff1ff06f          	j	80002b5c <_ZN15MemoryAllocator9mem_allocEm+0xdc>
        freeSpaceInBlks = freeSpaceInBlks - 1;
    80002b70:	fff58593          	addi	a1,a1,-1
    80002b74:	00009797          	auipc	a5,0x9
    80002b78:	e2b7ba23          	sd	a1,-460(a5) # 8000b9a8 <_ZN15MemoryAllocator15freeSpaceInBlksE>
        toReturn->size++;
    80002b7c:	01073783          	ld	a5,16(a4)
    80002b80:	00178793          	addi	a5,a5,1
    80002b84:	00f73823          	sd	a5,16(a4)
        return (void *) ((char *) ((char *) toReturn + sizeof(MemoryBlock)));//MEM_BLOCK_SIZE
    80002b88:	02070513          	addi	a0,a4,32
    80002b8c:	fd1ff06f          	j	80002b5c <_ZN15MemoryAllocator9mem_allocEm+0xdc>
        return nullptr;
    80002b90:	00000513          	li	a0,0
    80002b94:	fc9ff06f          	j	80002b5c <_ZN15MemoryAllocator9mem_allocEm+0xdc>
        return nullptr;
    80002b98:	00000513          	li	a0,0
    80002b9c:	fc1ff06f          	j	80002b5c <_ZN15MemoryAllocator9mem_allocEm+0xdc>
        return nullptr;
    80002ba0:	00070513          	mv	a0,a4
    80002ba4:	fb9ff06f          	j	80002b5c <_ZN15MemoryAllocator9mem_allocEm+0xdc>

0000000080002ba8 <_ZN15MemoryAllocator5mergeEPv>:
    return -1;
//unlock

}

void MemoryAllocator::merge(void *curr) {
    80002ba8:	ff010113          	addi	sp,sp,-16
    80002bac:	00813423          	sd	s0,8(sp)
    80002bb0:	01010413          	addi	s0,sp,16
    if (curr == nullptr) return;
    80002bb4:	04050c63          	beqz	a0,80002c0c <_ZN15MemoryAllocator5mergeEPv+0x64>
    MemoryBlock *cur = (MemoryBlock *) curr;
    if (cur->next != nullptr && !((cur->next)->allocated)) {
    80002bb8:	00053783          	ld	a5,0(a0)
    80002bbc:	02078263          	beqz	a5,80002be0 <_ZN15MemoryAllocator5mergeEPv+0x38>
    80002bc0:	0187c703          	lbu	a4,24(a5)
    80002bc4:	00071e63          	bnez	a4,80002be0 <_ZN15MemoryAllocator5mergeEPv+0x38>
        cur->size = cur->next->size + cur->size;
    80002bc8:	0107b703          	ld	a4,16(a5)
    80002bcc:	01053683          	ld	a3,16(a0)
    80002bd0:	00d70733          	add	a4,a4,a3
    80002bd4:	00e53823          	sd	a4,16(a0)
        cur->next = cur->next->next;
    80002bd8:	0007b783          	ld	a5,0(a5)
    80002bdc:	00f53023          	sd	a5,0(a0)
    }
    if (cur->prev != nullptr && !((cur->prev)->allocated)) {
    80002be0:	00853783          	ld	a5,8(a0)
    80002be4:	02078463          	beqz	a5,80002c0c <_ZN15MemoryAllocator5mergeEPv+0x64>
    80002be8:	0187c703          	lbu	a4,24(a5)
    80002bec:	02071063          	bnez	a4,80002c0c <_ZN15MemoryAllocator5mergeEPv+0x64>
        cur->prev->size = cur->prev->size + cur->size;
    80002bf0:	0107b703          	ld	a4,16(a5)
    80002bf4:	01053683          	ld	a3,16(a0)
    80002bf8:	00d70733          	add	a4,a4,a3
    80002bfc:	00e7b823          	sd	a4,16(a5)
        cur->prev->next = cur->next;
    80002c00:	00853783          	ld	a5,8(a0)
    80002c04:	00053703          	ld	a4,0(a0)
    80002c08:	00e7b023          	sd	a4,0(a5)
    }

}
    80002c0c:	00813403          	ld	s0,8(sp)
    80002c10:	01010113          	addi	sp,sp,16
    80002c14:	00008067          	ret

0000000080002c18 <_ZN15MemoryAllocator8mem_freeEPv>:
    if (!ptr) return 0;
    80002c18:	08050a63          	beqz	a0,80002cac <_ZN15MemoryAllocator8mem_freeEPv+0x94>
    80002c1c:	00050713          	mv	a4,a0
    if ((char *) ptr < (char *) HEAP_START_ADDR)return -1;
    80002c20:	00009797          	auipc	a5,0x9
    80002c24:	cc07b783          	ld	a5,-832(a5) # 8000b8e0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002c28:	0007b783          	ld	a5,0(a5)
    80002c2c:	08f56463          	bltu	a0,a5,80002cb4 <_ZN15MemoryAllocator8mem_freeEPv+0x9c>
    if ((char *) ptr > (char *) HEAP_END_ADDR)return -2;
    80002c30:	00009797          	auipc	a5,0x9
    80002c34:	cf07b783          	ld	a5,-784(a5) # 8000b920 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002c38:	0007b783          	ld	a5,0(a5)
    80002c3c:	08a7e063          	bltu	a5,a0,80002cbc <_ZN15MemoryAllocator8mem_freeEPv+0xa4>
    MemoryBlock *curr = base;
    80002c40:	00009517          	auipc	a0,0x9
    80002c44:	d7053503          	ld	a0,-656(a0) # 8000b9b0 <_ZN15MemoryAllocator4baseE>
    MemoryBlock *find = (MemoryBlock *) ((char *) ptr - sizeof(MemoryBlock));//-MEM_BLOCK_SIZE
    80002c48:	fe070713          	addi	a4,a4,-32
    80002c4c:	0080006f          	j	80002c54 <_ZN15MemoryAllocator8mem_freeEPv+0x3c>
    for (; (char *) find > (char *) curr && curr->next != nullptr; curr = curr->next);
    80002c50:	00078513          	mv	a0,a5
    80002c54:	00e57663          	bgeu	a0,a4,80002c60 <_ZN15MemoryAllocator8mem_freeEPv+0x48>
    80002c58:	00053783          	ld	a5,0(a0)
    80002c5c:	fe079ae3          	bnez	a5,80002c50 <_ZN15MemoryAllocator8mem_freeEPv+0x38>
    if ((char *) find == (char *) curr) {
    80002c60:	06e51263          	bne	a0,a4,80002cc4 <_ZN15MemoryAllocator8mem_freeEPv+0xac>
int MemoryAllocator::mem_free(void *ptr) {
    80002c64:	ff010113          	addi	sp,sp,-16
    80002c68:	00113423          	sd	ra,8(sp)
    80002c6c:	00813023          	sd	s0,0(sp)
    80002c70:	01010413          	addi	s0,sp,16
        curr->allocated = false;
    80002c74:	00050c23          	sb	zero,24(a0)
        freeSpaceInBlks += curr->size;
    80002c78:	01053683          	ld	a3,16(a0)
    80002c7c:	00009717          	auipc	a4,0x9
    80002c80:	d2c70713          	addi	a4,a4,-724 # 8000b9a8 <_ZN15MemoryAllocator15freeSpaceInBlksE>
    80002c84:	00073783          	ld	a5,0(a4)
    80002c88:	00d787b3          	add	a5,a5,a3
    80002c8c:	00f73023          	sd	a5,0(a4)
        merge(curr);
    80002c90:	00000097          	auipc	ra,0x0
    80002c94:	f18080e7          	jalr	-232(ra) # 80002ba8 <_ZN15MemoryAllocator5mergeEPv>
        return 0;
    80002c98:	00000513          	li	a0,0
}
    80002c9c:	00813083          	ld	ra,8(sp)
    80002ca0:	00013403          	ld	s0,0(sp)
    80002ca4:	01010113          	addi	sp,sp,16
    80002ca8:	00008067          	ret
    if (!ptr) return 0;
    80002cac:	00000513          	li	a0,0
    80002cb0:	00008067          	ret
    if ((char *) ptr < (char *) HEAP_START_ADDR)return -1;
    80002cb4:	fff00513          	li	a0,-1
    80002cb8:	00008067          	ret
    if ((char *) ptr > (char *) HEAP_END_ADDR)return -2;
    80002cbc:	ffe00513          	li	a0,-2
    80002cc0:	00008067          	ret
    return -1;
    80002cc4:	fff00513          	li	a0,-1
}
    80002cc8:	00008067          	ret

0000000080002ccc <_ZN15MemoryAllocator9print_blkEP11MemoryBlock>:

void MemoryAllocator::print_blk(MemoryBlock *blk) {
    80002ccc:	fe010113          	addi	sp,sp,-32
    80002cd0:	00113c23          	sd	ra,24(sp)
    80002cd4:	00813823          	sd	s0,16(sp)
    80002cd8:	00913423          	sd	s1,8(sp)
    80002cdc:	02010413          	addi	s0,sp,32
    80002ce0:	00050493          	mv	s1,a0

    printStr("blk:\t\0");
    80002ce4:	00006517          	auipc	a0,0x6
    80002ce8:	58c50513          	addi	a0,a0,1420 # 80009270 <CONSOLE_STATUS+0x260>
    80002cec:	00000097          	auipc	ra,0x0
    80002cf0:	158080e7          	jalr	344(ra) # 80002e44 <printStr>
    printInt((unsigned long) blk);
    80002cf4:	00048513          	mv	a0,s1
    80002cf8:	00000097          	auipc	ra,0x0
    80002cfc:	174080e7          	jalr	372(ra) # 80002e6c <printInt>
    printStr("\nnext:\t\0");
    80002d00:	00006517          	auipc	a0,0x6
    80002d04:	57850513          	addi	a0,a0,1400 # 80009278 <CONSOLE_STATUS+0x268>
    80002d08:	00000097          	auipc	ra,0x0
    80002d0c:	13c080e7          	jalr	316(ra) # 80002e44 <printStr>
    printInt((unsigned long) blk->next);
    80002d10:	0004b503          	ld	a0,0(s1)
    80002d14:	00000097          	auipc	ra,0x0
    80002d18:	158080e7          	jalr	344(ra) # 80002e6c <printInt>
    printStr("\nprev:\t\0");
    80002d1c:	00006517          	auipc	a0,0x6
    80002d20:	56c50513          	addi	a0,a0,1388 # 80009288 <CONSOLE_STATUS+0x278>
    80002d24:	00000097          	auipc	ra,0x0
    80002d28:	120080e7          	jalr	288(ra) # 80002e44 <printStr>
    printInt((unsigned long) blk->prev);
    80002d2c:	0084b503          	ld	a0,8(s1)
    80002d30:	00000097          	auipc	ra,0x0
    80002d34:	13c080e7          	jalr	316(ra) # 80002e6c <printInt>
    printStr("\nsize:\t\0");
    80002d38:	00006517          	auipc	a0,0x6
    80002d3c:	56050513          	addi	a0,a0,1376 # 80009298 <CONSOLE_STATUS+0x288>
    80002d40:	00000097          	auipc	ra,0x0
    80002d44:	104080e7          	jalr	260(ra) # 80002e44 <printStr>
    printInt(blk->size);
    80002d48:	0104b503          	ld	a0,16(s1)
    80002d4c:	00000097          	auipc	ra,0x0
    80002d50:	120080e7          	jalr	288(ra) # 80002e6c <printInt>
    printStr("\nstat:\t\0");
    80002d54:	00006517          	auipc	a0,0x6
    80002d58:	55450513          	addi	a0,a0,1364 # 800092a8 <CONSOLE_STATUS+0x298>
    80002d5c:	00000097          	auipc	ra,0x0
    80002d60:	0e8080e7          	jalr	232(ra) # 80002e44 <printStr>
    printInt(blk->allocated);
    80002d64:	0184c503          	lbu	a0,24(s1)
    80002d68:	00000097          	auipc	ra,0x0
    80002d6c:	104080e7          	jalr	260(ra) # 80002e6c <printInt>
    printStr("\n");
    80002d70:	00007517          	auipc	a0,0x7
    80002d74:	85050513          	addi	a0,a0,-1968 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80002d78:	00000097          	auipc	ra,0x0
    80002d7c:	0cc080e7          	jalr	204(ra) # 80002e44 <printStr>
}
    80002d80:	01813083          	ld	ra,24(sp)
    80002d84:	01013403          	ld	s0,16(sp)
    80002d88:	00813483          	ld	s1,8(sp)
    80002d8c:	02010113          	addi	sp,sp,32
    80002d90:	00008067          	ret

0000000080002d94 <_ZN15MemoryAllocator15print_allocatorEv>:

void MemoryAllocator::print_allocator() {
    80002d94:	fe010113          	addi	sp,sp,-32
    80002d98:	00113c23          	sd	ra,24(sp)
    80002d9c:	00813823          	sd	s0,16(sp)
    80002da0:	00913423          	sd	s1,8(sp)
    80002da4:	02010413          	addi	s0,sp,32
    printInt(freeSpaceInBlks);
    80002da8:	00009497          	auipc	s1,0x9
    80002dac:	c0048493          	addi	s1,s1,-1024 # 8000b9a8 <_ZN15MemoryAllocator15freeSpaceInBlksE>
    80002db0:	0004b503          	ld	a0,0(s1)
    80002db4:	00000097          	auipc	ra,0x0
    80002db8:	0b8080e7          	jalr	184(ra) # 80002e6c <printInt>
    printStr("\n");
    80002dbc:	00007517          	auipc	a0,0x7
    80002dc0:	80450513          	addi	a0,a0,-2044 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80002dc4:	00000097          	auipc	ra,0x0
    80002dc8:	080080e7          	jalr	128(ra) # 80002e44 <printStr>
    printInt((uint64) baseAddress);
    80002dcc:	0104b503          	ld	a0,16(s1)
    80002dd0:	00000097          	auipc	ra,0x0
    80002dd4:	09c080e7          	jalr	156(ra) # 80002e6c <printInt>
    printStr("\n");
    80002dd8:	00006517          	auipc	a0,0x6
    80002ddc:	7e850513          	addi	a0,a0,2024 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80002de0:	00000097          	auipc	ra,0x0
    80002de4:	064080e7          	jalr	100(ra) # 80002e44 <printStr>
    printInt((uint64) base);
    80002de8:	0084b503          	ld	a0,8(s1)
    80002dec:	00000097          	auipc	ra,0x0
    80002df0:	080080e7          	jalr	128(ra) # 80002e6c <printInt>
    printStr("\n");
    80002df4:	00006517          	auipc	a0,0x6
    80002df8:	7cc50513          	addi	a0,a0,1996 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80002dfc:	00000097          	auipc	ra,0x0
    80002e00:	048080e7          	jalr	72(ra) # 80002e44 <printStr>
    for (MemoryBlock *curr = base; curr; curr = curr->next) {
    80002e04:	0084b483          	ld	s1,8(s1)
    80002e08:	02048463          	beqz	s1,80002e30 <_ZN15MemoryAllocator15print_allocatorEv+0x9c>
        print_blk(curr);
    80002e0c:	00048513          	mv	a0,s1
    80002e10:	00000097          	auipc	ra,0x0
    80002e14:	ebc080e7          	jalr	-324(ra) # 80002ccc <_ZN15MemoryAllocator9print_blkEP11MemoryBlock>
        printStr("\n");
    80002e18:	00006517          	auipc	a0,0x6
    80002e1c:	7a850513          	addi	a0,a0,1960 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80002e20:	00000097          	auipc	ra,0x0
    80002e24:	024080e7          	jalr	36(ra) # 80002e44 <printStr>
    for (MemoryBlock *curr = base; curr; curr = curr->next) {
    80002e28:	0004b483          	ld	s1,0(s1)
    80002e2c:	fddff06f          	j	80002e08 <_ZN15MemoryAllocator15print_allocatorEv+0x74>
    }
    80002e30:	01813083          	ld	ra,24(sp)
    80002e34:	01013403          	ld	s0,16(sp)
    80002e38:	00813483          	ld	s1,8(sp)
    80002e3c:	02010113          	addi	sp,sp,32
    80002e40:	00008067          	ret

0000000080002e44 <printStr>:

#include "../lib/console.h" //kad uradis konzolu skloni
#include "../h/print.hpp"
#include "../test/printing.hpp"

void printStr(char const *string) {
    80002e44:	ff010113          	addi	sp,sp,-16
    80002e48:	00113423          	sd	ra,8(sp)
    80002e4c:	00813023          	sd	s0,0(sp)
    80002e50:	01010413          	addi	s0,sp,16
         __putc(*string);
         string++;
     }

 */
    printString(string);
    80002e54:	00002097          	auipc	ra,0x2
    80002e58:	5f8080e7          	jalr	1528(ra) # 8000544c <_Z11printStringPKc>
    //Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
}
    80002e5c:	00813083          	ld	ra,8(sp)
    80002e60:	00013403          	ld	s0,0(sp)
    80002e64:	01010113          	addi	sp,sp,16
    80002e68:	00008067          	ret

0000000080002e6c <printInt>:

void printInt(uint64 integer) {
    80002e6c:	ff010113          	addi	sp,sp,-16
    80002e70:	00113423          	sd	ra,8(sp)
    80002e74:	00813023          	sd	s0,0(sp)
    80002e78:	01010413          	addi	s0,sp,16
    // uint64 sstatus = Riscv::r_sstatus();
    // Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    printInt(integer, 10, 0);
    80002e7c:	00000613          	li	a2,0
    80002e80:	00a00593          	li	a1,10
    80002e84:	0005051b          	sext.w	a0,a0
    80002e88:	00002097          	auipc	ra,0x2
    80002e8c:	774080e7          	jalr	1908(ra) # 800055fc <_Z8printIntiii>
    // Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
}
    80002e90:	00813083          	ld	ra,8(sp)
    80002e94:	00013403          	ld	s0,0(sp)
    80002e98:	01010113          	addi	sp,sp,16
    80002e9c:	00008067          	ret

0000000080002ea0 <_Z13printHexDigith>:

void printHexDigit(uint8 digit) {
    80002ea0:	ff010113          	addi	sp,sp,-16
    80002ea4:	00113423          	sd	ra,8(sp)
    80002ea8:	00813023          	sd	s0,0(sp)
    80002eac:	01010413          	addi	s0,sp,16

    if (digit < 10) {
    80002eb0:	00900793          	li	a5,9
    80002eb4:	02a7e263          	bltu	a5,a0,80002ed8 <_Z13printHexDigith+0x38>
        putc('0' + digit);
    80002eb8:	0305051b          	addiw	a0,a0,48
    80002ebc:	0ff57513          	andi	a0,a0,255
    80002ec0:	ffffe097          	auipc	ra,0xffffe
    80002ec4:	58c080e7          	jalr	1420(ra) # 8000144c <putc>
    } else {
        putc('a' + (digit - 10));
    }
}
    80002ec8:	00813083          	ld	ra,8(sp)
    80002ecc:	00013403          	ld	s0,0(sp)
    80002ed0:	01010113          	addi	sp,sp,16
    80002ed4:	00008067          	ret
        putc('a' + (digit - 10));
    80002ed8:	0575051b          	addiw	a0,a0,87
    80002edc:	0ff57513          	andi	a0,a0,255
    80002ee0:	ffffe097          	auipc	ra,0xffffe
    80002ee4:	56c080e7          	jalr	1388(ra) # 8000144c <putc>
}
    80002ee8:	fe1ff06f          	j	80002ec8 <_Z13printHexDigith+0x28>

0000000080002eec <_Z14printUint64Hexm>:

void printUint64Hex(uint64 num) {
    80002eec:	fd010113          	addi	sp,sp,-48
    80002ef0:	02113423          	sd	ra,40(sp)
    80002ef4:	02813023          	sd	s0,32(sp)
    80002ef8:	00913c23          	sd	s1,24(sp)
    80002efc:	03010413          	addi	s0,sp,48
    const int HEX_DIGITS = 16;
    char buffer[HEX_DIGITS];
    int index = HEX_DIGITS - 1;


    if (num == 0) {
    80002f00:	02050e63          	beqz	a0,80002f3c <_Z14printUint64Hexm+0x50>
    int index = HEX_DIGITS - 1;
    80002f04:	00f00793          	li	a5,15
        putc('0');
        return;
    }

    while (num > 0 && index >= 0) {
    80002f08:	04050a63          	beqz	a0,80002f5c <_Z14printUint64Hexm+0x70>
    80002f0c:	0407c863          	bltz	a5,80002f5c <_Z14printUint64Hexm+0x70>
        buffer[index--] = "0123456789abcdef"[num & 0xF];
    80002f10:	00f57693          	andi	a3,a0,15
    80002f14:	00006717          	auipc	a4,0x6
    80002f18:	3a470713          	addi	a4,a4,932 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80002f1c:	00d70733          	add	a4,a4,a3
    80002f20:	00074683          	lbu	a3,0(a4)
    80002f24:	fe040713          	addi	a4,s0,-32
    80002f28:	00f70733          	add	a4,a4,a5
    80002f2c:	fed70823          	sb	a3,-16(a4)
        num >>= 4;
    80002f30:	00455513          	srli	a0,a0,0x4
        buffer[index--] = "0123456789abcdef"[num & 0xF];
    80002f34:	fff7879b          	addiw	a5,a5,-1
    while (num > 0 && index >= 0) {
    80002f38:	fd1ff06f          	j	80002f08 <_Z14printUint64Hexm+0x1c>
        putc('0');
    80002f3c:	03000513          	li	a0,48
    80002f40:	ffffe097          	auipc	ra,0xffffe
    80002f44:	50c080e7          	jalr	1292(ra) # 8000144c <putc>
    }

    for (index = 0; index < HEX_DIGITS; ++index) {
        putc(buffer[index]);
    }
}
    80002f48:	02813083          	ld	ra,40(sp)
    80002f4c:	02013403          	ld	s0,32(sp)
    80002f50:	01813483          	ld	s1,24(sp)
    80002f54:	03010113          	addi	sp,sp,48
    80002f58:	00008067          	ret
    while (index >= 0) {
    80002f5c:	0007ce63          	bltz	a5,80002f78 <_Z14printUint64Hexm+0x8c>
        buffer[index--] = '0';
    80002f60:	fe040713          	addi	a4,s0,-32
    80002f64:	00f70733          	add	a4,a4,a5
    80002f68:	03000693          	li	a3,48
    80002f6c:	fed70823          	sb	a3,-16(a4)
    80002f70:	fff7879b          	addiw	a5,a5,-1
    while (index >= 0) {
    80002f74:	fe9ff06f          	j	80002f5c <_Z14printUint64Hexm+0x70>
    for (index = 0; index < HEX_DIGITS; ++index) {
    80002f78:	00000493          	li	s1,0
    80002f7c:	00f00793          	li	a5,15
    80002f80:	fc97c4e3          	blt	a5,s1,80002f48 <_Z14printUint64Hexm+0x5c>
        putc(buffer[index]);
    80002f84:	fe040793          	addi	a5,s0,-32
    80002f88:	009787b3          	add	a5,a5,s1
    80002f8c:	ff07c503          	lbu	a0,-16(a5)
    80002f90:	ffffe097          	auipc	ra,0xffffe
    80002f94:	4bc080e7          	jalr	1212(ra) # 8000144c <putc>
    for (index = 0; index < HEX_DIGITS; ++index) {
    80002f98:	0014849b          	addiw	s1,s1,1
    80002f9c:	fe1ff06f          	j	80002f7c <_Z14printUint64Hexm+0x90>

0000000080002fa0 <printRegister>:

void printRegister(uint64 reg) {
    80002fa0:	ff010113          	addi	sp,sp,-16
    80002fa4:	00113423          	sd	ra,8(sp)
    80002fa8:	00813023          	sd	s0,0(sp)
    80002fac:	01010413          	addi	s0,sp,16
    // uint64 sstatus = Riscv::r_sstatus();
    //  Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    printUint64Hex(reg);
    80002fb0:	00000097          	auipc	ra,0x0
    80002fb4:	f3c080e7          	jalr	-196(ra) # 80002eec <_Z14printUint64Hexm>
    putc('\n');
    80002fb8:	00a00513          	li	a0,10
    80002fbc:	ffffe097          	auipc	ra,0xffffe
    80002fc0:	490080e7          	jalr	1168(ra) # 8000144c <putc>
    //  Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80002fc4:	00813083          	ld	ra,8(sp)
    80002fc8:	00013403          	ld	s0,0(sp)
    80002fcc:	01010113          	addi	sp,sp,16
    80002fd0:	00008067          	ret

0000000080002fd4 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80002fd4:	fe010113          	addi	sp,sp,-32
    80002fd8:	00113c23          	sd	ra,24(sp)
    80002fdc:	00813823          	sd	s0,16(sp)
    80002fe0:	00913423          	sd	s1,8(sp)
    80002fe4:	01213023          	sd	s2,0(sp)
    80002fe8:	02010413          	addi	s0,sp,32
    80002fec:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80002ff0:	00000913          	li	s2,0
    80002ff4:	00c0006f          	j	80003000 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x30) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002ff8:	ffffe097          	auipc	ra,0xffffe
    80002ffc:	294080e7          	jalr	660(ra) # 8000128c <thread_dispatch>
    while ((key = getc()) != 0x30) {
    80003000:	ffffe097          	auipc	ra,0xffffe
    80003004:	474080e7          	jalr	1140(ra) # 80001474 <getc>
    80003008:	0005059b          	sext.w	a1,a0
    8000300c:	03000793          	li	a5,48
    80003010:	02f58a63          	beq	a1,a5,80003044 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80003014:	0084b503          	ld	a0,8(s1)
    80003018:	00003097          	auipc	ra,0x3
    8000301c:	42c080e7          	jalr	1068(ra) # 80006444 <_ZN6Buffer3putEi>
        i++;
    80003020:	0019071b          	addiw	a4,s2,1
    80003024:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003028:	0004a683          	lw	a3,0(s1)
    8000302c:	0026979b          	slliw	a5,a3,0x2
    80003030:	00d787bb          	addw	a5,a5,a3
    80003034:	0017979b          	slliw	a5,a5,0x1
    80003038:	02f767bb          	remw	a5,a4,a5
    8000303c:	fc0792e3          	bnez	a5,80003000 <_ZL16producerKeyboardPv+0x2c>
    80003040:	fb9ff06f          	j	80002ff8 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80003044:	00100793          	li	a5,1
    80003048:	00009717          	auipc	a4,0x9
    8000304c:	96f72c23          	sw	a5,-1672(a4) # 8000b9c0 <_ZL9threadEnd>
    data->buffer->put('!');
    80003050:	02100593          	li	a1,33
    80003054:	0084b503          	ld	a0,8(s1)
    80003058:	00003097          	auipc	ra,0x3
    8000305c:	3ec080e7          	jalr	1004(ra) # 80006444 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80003060:	0104b503          	ld	a0,16(s1)
    80003064:	ffffe097          	auipc	ra,0xffffe
    80003068:	378080e7          	jalr	888(ra) # 800013dc <sem_signal>
}
    8000306c:	01813083          	ld	ra,24(sp)
    80003070:	01013403          	ld	s0,16(sp)
    80003074:	00813483          	ld	s1,8(sp)
    80003078:	00013903          	ld	s2,0(sp)
    8000307c:	02010113          	addi	sp,sp,32
    80003080:	00008067          	ret

0000000080003084 <_ZL8producerPv>:

static void producer(void *arg) {
    80003084:	fe010113          	addi	sp,sp,-32
    80003088:	00113c23          	sd	ra,24(sp)
    8000308c:	00813823          	sd	s0,16(sp)
    80003090:	00913423          	sd	s1,8(sp)
    80003094:	01213023          	sd	s2,0(sp)
    80003098:	02010413          	addi	s0,sp,32
    8000309c:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800030a0:	00000913          	li	s2,0
    800030a4:	00c0006f          	j	800030b0 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800030a8:	ffffe097          	auipc	ra,0xffffe
    800030ac:	1e4080e7          	jalr	484(ra) # 8000128c <thread_dispatch>
    while (!threadEnd) {
    800030b0:	00009797          	auipc	a5,0x9
    800030b4:	9107a783          	lw	a5,-1776(a5) # 8000b9c0 <_ZL9threadEnd>
    800030b8:	02079e63          	bnez	a5,800030f4 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    800030bc:	0004a583          	lw	a1,0(s1)
    800030c0:	0305859b          	addiw	a1,a1,48
    800030c4:	0084b503          	ld	a0,8(s1)
    800030c8:	00003097          	auipc	ra,0x3
    800030cc:	37c080e7          	jalr	892(ra) # 80006444 <_ZN6Buffer3putEi>
        i++;
    800030d0:	0019071b          	addiw	a4,s2,1
    800030d4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800030d8:	0004a683          	lw	a3,0(s1)
    800030dc:	0026979b          	slliw	a5,a3,0x2
    800030e0:	00d787bb          	addw	a5,a5,a3
    800030e4:	0017979b          	slliw	a5,a5,0x1
    800030e8:	02f767bb          	remw	a5,a4,a5
    800030ec:	fc0792e3          	bnez	a5,800030b0 <_ZL8producerPv+0x2c>
    800030f0:	fb9ff06f          	j	800030a8 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    800030f4:	0104b503          	ld	a0,16(s1)
    800030f8:	ffffe097          	auipc	ra,0xffffe
    800030fc:	2e4080e7          	jalr	740(ra) # 800013dc <sem_signal>
}
    80003100:	01813083          	ld	ra,24(sp)
    80003104:	01013403          	ld	s0,16(sp)
    80003108:	00813483          	ld	s1,8(sp)
    8000310c:	00013903          	ld	s2,0(sp)
    80003110:	02010113          	addi	sp,sp,32
    80003114:	00008067          	ret

0000000080003118 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80003118:	fd010113          	addi	sp,sp,-48
    8000311c:	02113423          	sd	ra,40(sp)
    80003120:	02813023          	sd	s0,32(sp)
    80003124:	00913c23          	sd	s1,24(sp)
    80003128:	01213823          	sd	s2,16(sp)
    8000312c:	01313423          	sd	s3,8(sp)
    80003130:	03010413          	addi	s0,sp,48
    80003134:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003138:	00000993          	li	s3,0
    8000313c:	01c0006f          	j	80003158 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80003140:	ffffe097          	auipc	ra,0xffffe
    80003144:	14c080e7          	jalr	332(ra) # 8000128c <thread_dispatch>
    80003148:	0500006f          	j	80003198 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    8000314c:	00a00513          	li	a0,10
    80003150:	ffffe097          	auipc	ra,0xffffe
    80003154:	2fc080e7          	jalr	764(ra) # 8000144c <putc>
    while (!threadEnd) {
    80003158:	00009797          	auipc	a5,0x9
    8000315c:	8687a783          	lw	a5,-1944(a5) # 8000b9c0 <_ZL9threadEnd>
    80003160:	06079063          	bnez	a5,800031c0 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80003164:	00893503          	ld	a0,8(s2)
    80003168:	00003097          	auipc	ra,0x3
    8000316c:	36c080e7          	jalr	876(ra) # 800064d4 <_ZN6Buffer3getEv>
        i++;
    80003170:	0019849b          	addiw	s1,s3,1
    80003174:	0004899b          	sext.w	s3,s1
        putc(key);
    80003178:	0ff57513          	andi	a0,a0,255
    8000317c:	ffffe097          	auipc	ra,0xffffe
    80003180:	2d0080e7          	jalr	720(ra) # 8000144c <putc>
        if (i % (5 * data->id) == 0) {
    80003184:	00092703          	lw	a4,0(s2)
    80003188:	0027179b          	slliw	a5,a4,0x2
    8000318c:	00e787bb          	addw	a5,a5,a4
    80003190:	02f4e7bb          	remw	a5,s1,a5
    80003194:	fa0786e3          	beqz	a5,80003140 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80003198:	05000793          	li	a5,80
    8000319c:	02f4e4bb          	remw	s1,s1,a5
    800031a0:	fa049ce3          	bnez	s1,80003158 <_ZL8consumerPv+0x40>
    800031a4:	fa9ff06f          	j	8000314c <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    800031a8:	00893503          	ld	a0,8(s2)
    800031ac:	00003097          	auipc	ra,0x3
    800031b0:	328080e7          	jalr	808(ra) # 800064d4 <_ZN6Buffer3getEv>
        putc(key);
    800031b4:	0ff57513          	andi	a0,a0,255
    800031b8:	ffffe097          	auipc	ra,0xffffe
    800031bc:	294080e7          	jalr	660(ra) # 8000144c <putc>
    while (data->buffer->getCnt() > 0) {
    800031c0:	00893503          	ld	a0,8(s2)
    800031c4:	00003097          	auipc	ra,0x3
    800031c8:	39c080e7          	jalr	924(ra) # 80006560 <_ZN6Buffer6getCntEv>
    800031cc:	fca04ee3          	bgtz	a0,800031a8 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    800031d0:	01093503          	ld	a0,16(s2)
    800031d4:	ffffe097          	auipc	ra,0xffffe
    800031d8:	208080e7          	jalr	520(ra) # 800013dc <sem_signal>
}
    800031dc:	02813083          	ld	ra,40(sp)
    800031e0:	02013403          	ld	s0,32(sp)
    800031e4:	01813483          	ld	s1,24(sp)
    800031e8:	01013903          	ld	s2,16(sp)
    800031ec:	00813983          	ld	s3,8(sp)
    800031f0:	03010113          	addi	sp,sp,48
    800031f4:	00008067          	ret

00000000800031f8 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    800031f8:	f9010113          	addi	sp,sp,-112
    800031fc:	06113423          	sd	ra,104(sp)
    80003200:	06813023          	sd	s0,96(sp)
    80003204:	04913c23          	sd	s1,88(sp)
    80003208:	05213823          	sd	s2,80(sp)
    8000320c:	05313423          	sd	s3,72(sp)
    80003210:	05413023          	sd	s4,64(sp)
    80003214:	03513c23          	sd	s5,56(sp)
    80003218:	03613823          	sd	s6,48(sp)
    8000321c:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80003220:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003224:	00006517          	auipc	a0,0x6
    80003228:	0ac50513          	addi	a0,a0,172 # 800092d0 <CONSOLE_STATUS+0x2c0>
    8000322c:	00002097          	auipc	ra,0x2
    80003230:	220080e7          	jalr	544(ra) # 8000544c <_Z11printStringPKc>
    getString(input, 30);
    80003234:	01e00593          	li	a1,30
    80003238:	fa040493          	addi	s1,s0,-96
    8000323c:	00048513          	mv	a0,s1
    80003240:	00002097          	auipc	ra,0x2
    80003244:	294080e7          	jalr	660(ra) # 800054d4 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003248:	00048513          	mv	a0,s1
    8000324c:	00002097          	auipc	ra,0x2
    80003250:	360080e7          	jalr	864(ra) # 800055ac <_Z11stringToIntPKc>
    80003254:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003258:	00006517          	auipc	a0,0x6
    8000325c:	09850513          	addi	a0,a0,152 # 800092f0 <CONSOLE_STATUS+0x2e0>
    80003260:	00002097          	auipc	ra,0x2
    80003264:	1ec080e7          	jalr	492(ra) # 8000544c <_Z11printStringPKc>
    getString(input, 30);
    80003268:	01e00593          	li	a1,30
    8000326c:	00048513          	mv	a0,s1
    80003270:	00002097          	auipc	ra,0x2
    80003274:	264080e7          	jalr	612(ra) # 800054d4 <_Z9getStringPci>
    n = stringToInt(input);
    80003278:	00048513          	mv	a0,s1
    8000327c:	00002097          	auipc	ra,0x2
    80003280:	330080e7          	jalr	816(ra) # 800055ac <_Z11stringToIntPKc>
    80003284:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003288:	00006517          	auipc	a0,0x6
    8000328c:	08850513          	addi	a0,a0,136 # 80009310 <CONSOLE_STATUS+0x300>
    80003290:	00002097          	auipc	ra,0x2
    80003294:	1bc080e7          	jalr	444(ra) # 8000544c <_Z11printStringPKc>
    80003298:	00000613          	li	a2,0
    8000329c:	00a00593          	li	a1,10
    800032a0:	00090513          	mv	a0,s2
    800032a4:	00002097          	auipc	ra,0x2
    800032a8:	358080e7          	jalr	856(ra) # 800055fc <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800032ac:	00006517          	auipc	a0,0x6
    800032b0:	07c50513          	addi	a0,a0,124 # 80009328 <CONSOLE_STATUS+0x318>
    800032b4:	00002097          	auipc	ra,0x2
    800032b8:	198080e7          	jalr	408(ra) # 8000544c <_Z11printStringPKc>
    800032bc:	00000613          	li	a2,0
    800032c0:	00a00593          	li	a1,10
    800032c4:	00048513          	mv	a0,s1
    800032c8:	00002097          	auipc	ra,0x2
    800032cc:	334080e7          	jalr	820(ra) # 800055fc <_Z8printIntiii>
    printString(".\n");
    800032d0:	00006517          	auipc	a0,0x6
    800032d4:	07050513          	addi	a0,a0,112 # 80009340 <CONSOLE_STATUS+0x330>
    800032d8:	00002097          	auipc	ra,0x2
    800032dc:	174080e7          	jalr	372(ra) # 8000544c <_Z11printStringPKc>
    if(threadNum > n) {
    800032e0:	0324c463          	blt	s1,s2,80003308 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    800032e4:	03205c63          	blez	s2,8000331c <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    800032e8:	03800513          	li	a0,56
    800032ec:	fffff097          	auipc	ra,0xfffff
    800032f0:	b18080e7          	jalr	-1256(ra) # 80001e04 <_Znwm>
    800032f4:	00050a13          	mv	s4,a0
    800032f8:	00048593          	mv	a1,s1
    800032fc:	00003097          	auipc	ra,0x3
    80003300:	0ac080e7          	jalr	172(ra) # 800063a8 <_ZN6BufferC1Ei>
    80003304:	0300006f          	j	80003334 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003308:	00006517          	auipc	a0,0x6
    8000330c:	04050513          	addi	a0,a0,64 # 80009348 <CONSOLE_STATUS+0x338>
    80003310:	00002097          	auipc	ra,0x2
    80003314:	13c080e7          	jalr	316(ra) # 8000544c <_Z11printStringPKc>
        return;
    80003318:	0140006f          	j	8000332c <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    8000331c:	00006517          	auipc	a0,0x6
    80003320:	06c50513          	addi	a0,a0,108 # 80009388 <CONSOLE_STATUS+0x378>
    80003324:	00002097          	auipc	ra,0x2
    80003328:	128080e7          	jalr	296(ra) # 8000544c <_Z11printStringPKc>
        return;
    8000332c:	000b0113          	mv	sp,s6
    80003330:	1500006f          	j	80003480 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003334:	00000593          	li	a1,0
    80003338:	00008517          	auipc	a0,0x8
    8000333c:	69050513          	addi	a0,a0,1680 # 8000b9c8 <_ZL10waitForAll>
    80003340:	ffffe097          	auipc	ra,0xffffe
    80003344:	fac080e7          	jalr	-84(ra) # 800012ec <sem_open>
    thread_t threads[threadNum];
    80003348:	00391793          	slli	a5,s2,0x3
    8000334c:	00f78793          	addi	a5,a5,15
    80003350:	ff07f793          	andi	a5,a5,-16
    80003354:	40f10133          	sub	sp,sp,a5
    80003358:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    8000335c:	0019071b          	addiw	a4,s2,1
    80003360:	00171793          	slli	a5,a4,0x1
    80003364:	00e787b3          	add	a5,a5,a4
    80003368:	00379793          	slli	a5,a5,0x3
    8000336c:	00f78793          	addi	a5,a5,15
    80003370:	ff07f793          	andi	a5,a5,-16
    80003374:	40f10133          	sub	sp,sp,a5
    80003378:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    8000337c:	00191613          	slli	a2,s2,0x1
    80003380:	012607b3          	add	a5,a2,s2
    80003384:	00379793          	slli	a5,a5,0x3
    80003388:	00f987b3          	add	a5,s3,a5
    8000338c:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003390:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003394:	00008717          	auipc	a4,0x8
    80003398:	63473703          	ld	a4,1588(a4) # 8000b9c8 <_ZL10waitForAll>
    8000339c:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    800033a0:	00078613          	mv	a2,a5
    800033a4:	00000597          	auipc	a1,0x0
    800033a8:	d7458593          	addi	a1,a1,-652 # 80003118 <_ZL8consumerPv>
    800033ac:	f9840513          	addi	a0,s0,-104
    800033b0:	ffffe097          	auipc	ra,0xffffe
    800033b4:	e3c080e7          	jalr	-452(ra) # 800011ec <thread_create>
    for (int i = 0; i < threadNum; i++) {
    800033b8:	00000493          	li	s1,0
    800033bc:	0280006f          	j	800033e4 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    800033c0:	00000597          	auipc	a1,0x0
    800033c4:	c1458593          	addi	a1,a1,-1004 # 80002fd4 <_ZL16producerKeyboardPv>
                      data + i);
    800033c8:	00179613          	slli	a2,a5,0x1
    800033cc:	00f60633          	add	a2,a2,a5
    800033d0:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    800033d4:	00c98633          	add	a2,s3,a2
    800033d8:	ffffe097          	auipc	ra,0xffffe
    800033dc:	e14080e7          	jalr	-492(ra) # 800011ec <thread_create>
    for (int i = 0; i < threadNum; i++) {
    800033e0:	0014849b          	addiw	s1,s1,1
    800033e4:	0524d263          	bge	s1,s2,80003428 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    800033e8:	00149793          	slli	a5,s1,0x1
    800033ec:	009787b3          	add	a5,a5,s1
    800033f0:	00379793          	slli	a5,a5,0x3
    800033f4:	00f987b3          	add	a5,s3,a5
    800033f8:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800033fc:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80003400:	00008717          	auipc	a4,0x8
    80003404:	5c873703          	ld	a4,1480(a4) # 8000b9c8 <_ZL10waitForAll>
    80003408:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    8000340c:	00048793          	mv	a5,s1
    80003410:	00349513          	slli	a0,s1,0x3
    80003414:	00aa8533          	add	a0,s5,a0
    80003418:	fa9054e3          	blez	s1,800033c0 <_Z22producerConsumer_C_APIv+0x1c8>
    8000341c:	00000597          	auipc	a1,0x0
    80003420:	c6858593          	addi	a1,a1,-920 # 80003084 <_ZL8producerPv>
    80003424:	fa5ff06f          	j	800033c8 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003428:	ffffe097          	auipc	ra,0xffffe
    8000342c:	e64080e7          	jalr	-412(ra) # 8000128c <thread_dispatch>
    for (int i = 0; i <= threadNum; i++) {
    80003430:	00000493          	li	s1,0
    80003434:	00994e63          	blt	s2,s1,80003450 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003438:	00008517          	auipc	a0,0x8
    8000343c:	59053503          	ld	a0,1424(a0) # 8000b9c8 <_ZL10waitForAll>
    80003440:	ffffe097          	auipc	ra,0xffffe
    80003444:	f50080e7          	jalr	-176(ra) # 80001390 <sem_wait>
    for (int i = 0; i <= threadNum; i++) {
    80003448:	0014849b          	addiw	s1,s1,1
    8000344c:	fe9ff06f          	j	80003434 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003450:	00008517          	auipc	a0,0x8
    80003454:	57853503          	ld	a0,1400(a0) # 8000b9c8 <_ZL10waitForAll>
    80003458:	ffffe097          	auipc	ra,0xffffe
    8000345c:	eec080e7          	jalr	-276(ra) # 80001344 <sem_close>
    delete buffer;
    80003460:	000a0e63          	beqz	s4,8000347c <_Z22producerConsumer_C_APIv+0x284>
    80003464:	000a0513          	mv	a0,s4
    80003468:	00003097          	auipc	ra,0x3
    8000346c:	180080e7          	jalr	384(ra) # 800065e8 <_ZN6BufferD1Ev>
    80003470:	000a0513          	mv	a0,s4
    80003474:	fffff097          	auipc	ra,0xfffff
    80003478:	9e0080e7          	jalr	-1568(ra) # 80001e54 <_ZdlPv>
    8000347c:	000b0113          	mv	sp,s6

}
    80003480:	f9040113          	addi	sp,s0,-112
    80003484:	06813083          	ld	ra,104(sp)
    80003488:	06013403          	ld	s0,96(sp)
    8000348c:	05813483          	ld	s1,88(sp)
    80003490:	05013903          	ld	s2,80(sp)
    80003494:	04813983          	ld	s3,72(sp)
    80003498:	04013a03          	ld	s4,64(sp)
    8000349c:	03813a83          	ld	s5,56(sp)
    800034a0:	03013b03          	ld	s6,48(sp)
    800034a4:	07010113          	addi	sp,sp,112
    800034a8:	00008067          	ret
    800034ac:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    800034b0:	000a0513          	mv	a0,s4
    800034b4:	fffff097          	auipc	ra,0xfffff
    800034b8:	9a0080e7          	jalr	-1632(ra) # 80001e54 <_ZdlPv>
    800034bc:	00048513          	mv	a0,s1
    800034c0:	00009097          	auipc	ra,0x9
    800034c4:	618080e7          	jalr	1560(ra) # 8000cad8 <_Unwind_Resume>

00000000800034c8 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800034c8:	fe010113          	addi	sp,sp,-32
    800034cc:	00113c23          	sd	ra,24(sp)
    800034d0:	00813823          	sd	s0,16(sp)
    800034d4:	00913423          	sd	s1,8(sp)
    800034d8:	01213023          	sd	s2,0(sp)
    800034dc:	02010413          	addi	s0,sp,32
    800034e0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800034e4:	00100793          	li	a5,1
    800034e8:	02a7f863          	bgeu	a5,a0,80003518 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800034ec:	00a00793          	li	a5,10
    800034f0:	02f577b3          	remu	a5,a0,a5
    800034f4:	02078e63          	beqz	a5,80003530 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800034f8:	fff48513          	addi	a0,s1,-1
    800034fc:	00000097          	auipc	ra,0x0
    80003500:	fcc080e7          	jalr	-52(ra) # 800034c8 <_ZL9fibonaccim>
    80003504:	00050913          	mv	s2,a0
    80003508:	ffe48513          	addi	a0,s1,-2
    8000350c:	00000097          	auipc	ra,0x0
    80003510:	fbc080e7          	jalr	-68(ra) # 800034c8 <_ZL9fibonaccim>
    80003514:	00a90533          	add	a0,s2,a0
}
    80003518:	01813083          	ld	ra,24(sp)
    8000351c:	01013403          	ld	s0,16(sp)
    80003520:	00813483          	ld	s1,8(sp)
    80003524:	00013903          	ld	s2,0(sp)
    80003528:	02010113          	addi	sp,sp,32
    8000352c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003530:	ffffe097          	auipc	ra,0xffffe
    80003534:	d5c080e7          	jalr	-676(ra) # 8000128c <thread_dispatch>
    80003538:	fc1ff06f          	j	800034f8 <_ZL9fibonaccim+0x30>

000000008000353c <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    8000353c:	fe010113          	addi	sp,sp,-32
    80003540:	00113c23          	sd	ra,24(sp)
    80003544:	00813823          	sd	s0,16(sp)
    80003548:	00913423          	sd	s1,8(sp)
    8000354c:	01213023          	sd	s2,0(sp)
    80003550:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003554:	00000913          	li	s2,0
    80003558:	0380006f          	j	80003590 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    8000355c:	ffffe097          	auipc	ra,0xffffe
    80003560:	d30080e7          	jalr	-720(ra) # 8000128c <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80003564:	00148493          	addi	s1,s1,1
    80003568:	000027b7          	lui	a5,0x2
    8000356c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003570:	0097ee63          	bltu	a5,s1,8000358c <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003574:	00000713          	li	a4,0
    80003578:	000077b7          	lui	a5,0x7
    8000357c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003580:	fce7eee3          	bltu	a5,a4,8000355c <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003584:	00170713          	addi	a4,a4,1
    80003588:	ff1ff06f          	j	80003578 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000358c:	00190913          	addi	s2,s2,1
    80003590:	00900793          	li	a5,9
    80003594:	0527e063          	bltu	a5,s2,800035d4 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003598:	00006517          	auipc	a0,0x6
    8000359c:	a8850513          	addi	a0,a0,-1400 # 80009020 <CONSOLE_STATUS+0x10>
    800035a0:	00002097          	auipc	ra,0x2
    800035a4:	eac080e7          	jalr	-340(ra) # 8000544c <_Z11printStringPKc>
    800035a8:	00000613          	li	a2,0
    800035ac:	00a00593          	li	a1,10
    800035b0:	0009051b          	sext.w	a0,s2
    800035b4:	00002097          	auipc	ra,0x2
    800035b8:	048080e7          	jalr	72(ra) # 800055fc <_Z8printIntiii>
    800035bc:	00006517          	auipc	a0,0x6
    800035c0:	00450513          	addi	a0,a0,4 # 800095c0 <CONSOLE_STATUS+0x5b0>
    800035c4:	00002097          	auipc	ra,0x2
    800035c8:	e88080e7          	jalr	-376(ra) # 8000544c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800035cc:	00000493          	li	s1,0
    800035d0:	f99ff06f          	j	80003568 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    800035d4:	00006517          	auipc	a0,0x6
    800035d8:	de450513          	addi	a0,a0,-540 # 800093b8 <CONSOLE_STATUS+0x3a8>
    800035dc:	00002097          	auipc	ra,0x2
    800035e0:	e70080e7          	jalr	-400(ra) # 8000544c <_Z11printStringPKc>
    finishedA = true;
    800035e4:	00100793          	li	a5,1
    800035e8:	00008717          	auipc	a4,0x8
    800035ec:	3ef70423          	sb	a5,1000(a4) # 8000b9d0 <_ZL9finishedA>
}
    800035f0:	01813083          	ld	ra,24(sp)
    800035f4:	01013403          	ld	s0,16(sp)
    800035f8:	00813483          	ld	s1,8(sp)
    800035fc:	00013903          	ld	s2,0(sp)
    80003600:	02010113          	addi	sp,sp,32
    80003604:	00008067          	ret

0000000080003608 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003608:	fe010113          	addi	sp,sp,-32
    8000360c:	00113c23          	sd	ra,24(sp)
    80003610:	00813823          	sd	s0,16(sp)
    80003614:	00913423          	sd	s1,8(sp)
    80003618:	01213023          	sd	s2,0(sp)
    8000361c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003620:	00000913          	li	s2,0
    80003624:	0380006f          	j	8000365c <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003628:	ffffe097          	auipc	ra,0xffffe
    8000362c:	c64080e7          	jalr	-924(ra) # 8000128c <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80003630:	00148493          	addi	s1,s1,1
    80003634:	000027b7          	lui	a5,0x2
    80003638:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000363c:	0097ee63          	bltu	a5,s1,80003658 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003640:	00000713          	li	a4,0
    80003644:	000077b7          	lui	a5,0x7
    80003648:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000364c:	fce7eee3          	bltu	a5,a4,80003628 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003650:	00170713          	addi	a4,a4,1
    80003654:	ff1ff06f          	j	80003644 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003658:	00190913          	addi	s2,s2,1
    8000365c:	00f00793          	li	a5,15
    80003660:	0527e063          	bltu	a5,s2,800036a0 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003664:	00006517          	auipc	a0,0x6
    80003668:	9c450513          	addi	a0,a0,-1596 # 80009028 <CONSOLE_STATUS+0x18>
    8000366c:	00002097          	auipc	ra,0x2
    80003670:	de0080e7          	jalr	-544(ra) # 8000544c <_Z11printStringPKc>
    80003674:	00000613          	li	a2,0
    80003678:	00a00593          	li	a1,10
    8000367c:	0009051b          	sext.w	a0,s2
    80003680:	00002097          	auipc	ra,0x2
    80003684:	f7c080e7          	jalr	-132(ra) # 800055fc <_Z8printIntiii>
    80003688:	00006517          	auipc	a0,0x6
    8000368c:	f3850513          	addi	a0,a0,-200 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80003690:	00002097          	auipc	ra,0x2
    80003694:	dbc080e7          	jalr	-580(ra) # 8000544c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003698:	00000493          	li	s1,0
    8000369c:	f99ff06f          	j	80003634 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    800036a0:	00006517          	auipc	a0,0x6
    800036a4:	d2850513          	addi	a0,a0,-728 # 800093c8 <CONSOLE_STATUS+0x3b8>
    800036a8:	00002097          	auipc	ra,0x2
    800036ac:	da4080e7          	jalr	-604(ra) # 8000544c <_Z11printStringPKc>
    finishedB = true;
    800036b0:	00100793          	li	a5,1
    800036b4:	00008717          	auipc	a4,0x8
    800036b8:	30f70ea3          	sb	a5,797(a4) # 8000b9d1 <_ZL9finishedB>
    thread_dispatch();
    800036bc:	ffffe097          	auipc	ra,0xffffe
    800036c0:	bd0080e7          	jalr	-1072(ra) # 8000128c <thread_dispatch>
}
    800036c4:	01813083          	ld	ra,24(sp)
    800036c8:	01013403          	ld	s0,16(sp)
    800036cc:	00813483          	ld	s1,8(sp)
    800036d0:	00013903          	ld	s2,0(sp)
    800036d4:	02010113          	addi	sp,sp,32
    800036d8:	00008067          	ret

00000000800036dc <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    800036dc:	fe010113          	addi	sp,sp,-32
    800036e0:	00113c23          	sd	ra,24(sp)
    800036e4:	00813823          	sd	s0,16(sp)
    800036e8:	00913423          	sd	s1,8(sp)
    800036ec:	01213023          	sd	s2,0(sp)
    800036f0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800036f4:	00000493          	li	s1,0
    800036f8:	0400006f          	j	80003738 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800036fc:	00006517          	auipc	a0,0x6
    80003700:	93450513          	addi	a0,a0,-1740 # 80009030 <CONSOLE_STATUS+0x20>
    80003704:	00002097          	auipc	ra,0x2
    80003708:	d48080e7          	jalr	-696(ra) # 8000544c <_Z11printStringPKc>
    8000370c:	00000613          	li	a2,0
    80003710:	00a00593          	li	a1,10
    80003714:	00048513          	mv	a0,s1
    80003718:	00002097          	auipc	ra,0x2
    8000371c:	ee4080e7          	jalr	-284(ra) # 800055fc <_Z8printIntiii>
    80003720:	00006517          	auipc	a0,0x6
    80003724:	ea050513          	addi	a0,a0,-352 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80003728:	00002097          	auipc	ra,0x2
    8000372c:	d24080e7          	jalr	-732(ra) # 8000544c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003730:	0014849b          	addiw	s1,s1,1
    80003734:	0ff4f493          	andi	s1,s1,255
    80003738:	00200793          	li	a5,2
    8000373c:	fc97f0e3          	bgeu	a5,s1,800036fc <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003740:	00006517          	auipc	a0,0x6
    80003744:	c9850513          	addi	a0,a0,-872 # 800093d8 <CONSOLE_STATUS+0x3c8>
    80003748:	00002097          	auipc	ra,0x2
    8000374c:	d04080e7          	jalr	-764(ra) # 8000544c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003750:	00700313          	li	t1,7
    thread_dispatch();
    80003754:	ffffe097          	auipc	ra,0xffffe
    80003758:	b38080e7          	jalr	-1224(ra) # 8000128c <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000375c:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003760:	00006517          	auipc	a0,0x6
    80003764:	8e850513          	addi	a0,a0,-1816 # 80009048 <CONSOLE_STATUS+0x38>
    80003768:	00002097          	auipc	ra,0x2
    8000376c:	ce4080e7          	jalr	-796(ra) # 8000544c <_Z11printStringPKc>
    80003770:	00000613          	li	a2,0
    80003774:	00a00593          	li	a1,10
    80003778:	0009051b          	sext.w	a0,s2
    8000377c:	00002097          	auipc	ra,0x2
    80003780:	e80080e7          	jalr	-384(ra) # 800055fc <_Z8printIntiii>
    80003784:	00006517          	auipc	a0,0x6
    80003788:	e3c50513          	addi	a0,a0,-452 # 800095c0 <CONSOLE_STATUS+0x5b0>
    8000378c:	00002097          	auipc	ra,0x2
    80003790:	cc0080e7          	jalr	-832(ra) # 8000544c <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003794:	00c00513          	li	a0,12
    80003798:	00000097          	auipc	ra,0x0
    8000379c:	d30080e7          	jalr	-720(ra) # 800034c8 <_ZL9fibonaccim>
    800037a0:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800037a4:	00006517          	auipc	a0,0x6
    800037a8:	8ac50513          	addi	a0,a0,-1876 # 80009050 <CONSOLE_STATUS+0x40>
    800037ac:	00002097          	auipc	ra,0x2
    800037b0:	ca0080e7          	jalr	-864(ra) # 8000544c <_Z11printStringPKc>
    800037b4:	00000613          	li	a2,0
    800037b8:	00a00593          	li	a1,10
    800037bc:	0009051b          	sext.w	a0,s2
    800037c0:	00002097          	auipc	ra,0x2
    800037c4:	e3c080e7          	jalr	-452(ra) # 800055fc <_Z8printIntiii>
    800037c8:	00006517          	auipc	a0,0x6
    800037cc:	df850513          	addi	a0,a0,-520 # 800095c0 <CONSOLE_STATUS+0x5b0>
    800037d0:	00002097          	auipc	ra,0x2
    800037d4:	c7c080e7          	jalr	-900(ra) # 8000544c <_Z11printStringPKc>
    800037d8:	0400006f          	j	80003818 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800037dc:	00006517          	auipc	a0,0x6
    800037e0:	85450513          	addi	a0,a0,-1964 # 80009030 <CONSOLE_STATUS+0x20>
    800037e4:	00002097          	auipc	ra,0x2
    800037e8:	c68080e7          	jalr	-920(ra) # 8000544c <_Z11printStringPKc>
    800037ec:	00000613          	li	a2,0
    800037f0:	00a00593          	li	a1,10
    800037f4:	00048513          	mv	a0,s1
    800037f8:	00002097          	auipc	ra,0x2
    800037fc:	e04080e7          	jalr	-508(ra) # 800055fc <_Z8printIntiii>
    80003800:	00006517          	auipc	a0,0x6
    80003804:	dc050513          	addi	a0,a0,-576 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80003808:	00002097          	auipc	ra,0x2
    8000380c:	c44080e7          	jalr	-956(ra) # 8000544c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003810:	0014849b          	addiw	s1,s1,1
    80003814:	0ff4f493          	andi	s1,s1,255
    80003818:	00500793          	li	a5,5
    8000381c:	fc97f0e3          	bgeu	a5,s1,800037dc <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80003820:	00006517          	auipc	a0,0x6
    80003824:	b9850513          	addi	a0,a0,-1128 # 800093b8 <CONSOLE_STATUS+0x3a8>
    80003828:	00002097          	auipc	ra,0x2
    8000382c:	c24080e7          	jalr	-988(ra) # 8000544c <_Z11printStringPKc>
    finishedC = true;
    80003830:	00100793          	li	a5,1
    80003834:	00008717          	auipc	a4,0x8
    80003838:	18f70f23          	sb	a5,414(a4) # 8000b9d2 <_ZL9finishedC>
    thread_dispatch();
    8000383c:	ffffe097          	auipc	ra,0xffffe
    80003840:	a50080e7          	jalr	-1456(ra) # 8000128c <thread_dispatch>
}
    80003844:	01813083          	ld	ra,24(sp)
    80003848:	01013403          	ld	s0,16(sp)
    8000384c:	00813483          	ld	s1,8(sp)
    80003850:	00013903          	ld	s2,0(sp)
    80003854:	02010113          	addi	sp,sp,32
    80003858:	00008067          	ret

000000008000385c <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    8000385c:	fe010113          	addi	sp,sp,-32
    80003860:	00113c23          	sd	ra,24(sp)
    80003864:	00813823          	sd	s0,16(sp)
    80003868:	00913423          	sd	s1,8(sp)
    8000386c:	01213023          	sd	s2,0(sp)
    80003870:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003874:	00a00493          	li	s1,10
    80003878:	0400006f          	j	800038b8 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000387c:	00005517          	auipc	a0,0x5
    80003880:	7e450513          	addi	a0,a0,2020 # 80009060 <CONSOLE_STATUS+0x50>
    80003884:	00002097          	auipc	ra,0x2
    80003888:	bc8080e7          	jalr	-1080(ra) # 8000544c <_Z11printStringPKc>
    8000388c:	00000613          	li	a2,0
    80003890:	00a00593          	li	a1,10
    80003894:	00048513          	mv	a0,s1
    80003898:	00002097          	auipc	ra,0x2
    8000389c:	d64080e7          	jalr	-668(ra) # 800055fc <_Z8printIntiii>
    800038a0:	00006517          	auipc	a0,0x6
    800038a4:	d2050513          	addi	a0,a0,-736 # 800095c0 <CONSOLE_STATUS+0x5b0>
    800038a8:	00002097          	auipc	ra,0x2
    800038ac:	ba4080e7          	jalr	-1116(ra) # 8000544c <_Z11printStringPKc>
    for (; i < 13; i++) {
    800038b0:	0014849b          	addiw	s1,s1,1
    800038b4:	0ff4f493          	andi	s1,s1,255
    800038b8:	00c00793          	li	a5,12
    800038bc:	fc97f0e3          	bgeu	a5,s1,8000387c <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    800038c0:	00006517          	auipc	a0,0x6
    800038c4:	b2850513          	addi	a0,a0,-1240 # 800093e8 <CONSOLE_STATUS+0x3d8>
    800038c8:	00002097          	auipc	ra,0x2
    800038cc:	b84080e7          	jalr	-1148(ra) # 8000544c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800038d0:	00500313          	li	t1,5
    thread_dispatch();
    800038d4:	ffffe097          	auipc	ra,0xffffe
    800038d8:	9b8080e7          	jalr	-1608(ra) # 8000128c <thread_dispatch>

    uint64 result = fibonacci(16);
    800038dc:	01000513          	li	a0,16
    800038e0:	00000097          	auipc	ra,0x0
    800038e4:	be8080e7          	jalr	-1048(ra) # 800034c8 <_ZL9fibonaccim>
    800038e8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800038ec:	00005517          	auipc	a0,0x5
    800038f0:	78c50513          	addi	a0,a0,1932 # 80009078 <CONSOLE_STATUS+0x68>
    800038f4:	00002097          	auipc	ra,0x2
    800038f8:	b58080e7          	jalr	-1192(ra) # 8000544c <_Z11printStringPKc>
    800038fc:	00000613          	li	a2,0
    80003900:	00a00593          	li	a1,10
    80003904:	0009051b          	sext.w	a0,s2
    80003908:	00002097          	auipc	ra,0x2
    8000390c:	cf4080e7          	jalr	-780(ra) # 800055fc <_Z8printIntiii>
    80003910:	00006517          	auipc	a0,0x6
    80003914:	cb050513          	addi	a0,a0,-848 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80003918:	00002097          	auipc	ra,0x2
    8000391c:	b34080e7          	jalr	-1228(ra) # 8000544c <_Z11printStringPKc>
    80003920:	0400006f          	j	80003960 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003924:	00005517          	auipc	a0,0x5
    80003928:	73c50513          	addi	a0,a0,1852 # 80009060 <CONSOLE_STATUS+0x50>
    8000392c:	00002097          	auipc	ra,0x2
    80003930:	b20080e7          	jalr	-1248(ra) # 8000544c <_Z11printStringPKc>
    80003934:	00000613          	li	a2,0
    80003938:	00a00593          	li	a1,10
    8000393c:	00048513          	mv	a0,s1
    80003940:	00002097          	auipc	ra,0x2
    80003944:	cbc080e7          	jalr	-836(ra) # 800055fc <_Z8printIntiii>
    80003948:	00006517          	auipc	a0,0x6
    8000394c:	c7850513          	addi	a0,a0,-904 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80003950:	00002097          	auipc	ra,0x2
    80003954:	afc080e7          	jalr	-1284(ra) # 8000544c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003958:	0014849b          	addiw	s1,s1,1
    8000395c:	0ff4f493          	andi	s1,s1,255
    80003960:	00f00793          	li	a5,15
    80003964:	fc97f0e3          	bgeu	a5,s1,80003924 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003968:	00006517          	auipc	a0,0x6
    8000396c:	a9050513          	addi	a0,a0,-1392 # 800093f8 <CONSOLE_STATUS+0x3e8>
    80003970:	00002097          	auipc	ra,0x2
    80003974:	adc080e7          	jalr	-1316(ra) # 8000544c <_Z11printStringPKc>
    finishedD = true;
    80003978:	00100793          	li	a5,1
    8000397c:	00008717          	auipc	a4,0x8
    80003980:	04f70ba3          	sb	a5,87(a4) # 8000b9d3 <_ZL9finishedD>
    thread_dispatch();
    80003984:	ffffe097          	auipc	ra,0xffffe
    80003988:	908080e7          	jalr	-1784(ra) # 8000128c <thread_dispatch>
}
    8000398c:	01813083          	ld	ra,24(sp)
    80003990:	01013403          	ld	s0,16(sp)
    80003994:	00813483          	ld	s1,8(sp)
    80003998:	00013903          	ld	s2,0(sp)
    8000399c:	02010113          	addi	sp,sp,32
    800039a0:	00008067          	ret

00000000800039a4 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    800039a4:	fc010113          	addi	sp,sp,-64
    800039a8:	02113c23          	sd	ra,56(sp)
    800039ac:	02813823          	sd	s0,48(sp)
    800039b0:	02913423          	sd	s1,40(sp)
    800039b4:	03213023          	sd	s2,32(sp)
    800039b8:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    800039bc:	02000513          	li	a0,32
    800039c0:	ffffe097          	auipc	ra,0xffffe
    800039c4:	444080e7          	jalr	1092(ra) # 80001e04 <_Znwm>
    800039c8:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    800039cc:	ffffe097          	auipc	ra,0xffffe
    800039d0:	540080e7          	jalr	1344(ra) # 80001f0c <_ZN6ThreadC1Ev>
    800039d4:	00008797          	auipc	a5,0x8
    800039d8:	d6c78793          	addi	a5,a5,-660 # 8000b740 <_ZTV7WorkerA+0x10>
    800039dc:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    800039e0:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    800039e4:	00006517          	auipc	a0,0x6
    800039e8:	a2450513          	addi	a0,a0,-1500 # 80009408 <CONSOLE_STATUS+0x3f8>
    800039ec:	00002097          	auipc	ra,0x2
    800039f0:	a60080e7          	jalr	-1440(ra) # 8000544c <_Z11printStringPKc>

    threads[1] = new WorkerB();
    800039f4:	02000513          	li	a0,32
    800039f8:	ffffe097          	auipc	ra,0xffffe
    800039fc:	40c080e7          	jalr	1036(ra) # 80001e04 <_Znwm>
    80003a00:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003a04:	ffffe097          	auipc	ra,0xffffe
    80003a08:	508080e7          	jalr	1288(ra) # 80001f0c <_ZN6ThreadC1Ev>
    80003a0c:	00008797          	auipc	a5,0x8
    80003a10:	d5c78793          	addi	a5,a5,-676 # 8000b768 <_ZTV7WorkerB+0x10>
    80003a14:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80003a18:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003a1c:	00006517          	auipc	a0,0x6
    80003a20:	a0450513          	addi	a0,a0,-1532 # 80009420 <CONSOLE_STATUS+0x410>
    80003a24:	00002097          	auipc	ra,0x2
    80003a28:	a28080e7          	jalr	-1496(ra) # 8000544c <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003a2c:	02000513          	li	a0,32
    80003a30:	ffffe097          	auipc	ra,0xffffe
    80003a34:	3d4080e7          	jalr	980(ra) # 80001e04 <_Znwm>
    80003a38:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003a3c:	ffffe097          	auipc	ra,0xffffe
    80003a40:	4d0080e7          	jalr	1232(ra) # 80001f0c <_ZN6ThreadC1Ev>
    80003a44:	00008797          	auipc	a5,0x8
    80003a48:	d4c78793          	addi	a5,a5,-692 # 8000b790 <_ZTV7WorkerC+0x10>
    80003a4c:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003a50:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003a54:	00006517          	auipc	a0,0x6
    80003a58:	9e450513          	addi	a0,a0,-1564 # 80009438 <CONSOLE_STATUS+0x428>
    80003a5c:	00002097          	auipc	ra,0x2
    80003a60:	9f0080e7          	jalr	-1552(ra) # 8000544c <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003a64:	02000513          	li	a0,32
    80003a68:	ffffe097          	auipc	ra,0xffffe
    80003a6c:	39c080e7          	jalr	924(ra) # 80001e04 <_Znwm>
    80003a70:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003a74:	ffffe097          	auipc	ra,0xffffe
    80003a78:	498080e7          	jalr	1176(ra) # 80001f0c <_ZN6ThreadC1Ev>
    80003a7c:	00008797          	auipc	a5,0x8
    80003a80:	d3c78793          	addi	a5,a5,-708 # 8000b7b8 <_ZTV7WorkerD+0x10>
    80003a84:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80003a88:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003a8c:	00006517          	auipc	a0,0x6
    80003a90:	9c450513          	addi	a0,a0,-1596 # 80009450 <CONSOLE_STATUS+0x440>
    80003a94:	00002097          	auipc	ra,0x2
    80003a98:	9b8080e7          	jalr	-1608(ra) # 8000544c <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003a9c:	00000493          	li	s1,0
    80003aa0:	00300793          	li	a5,3
    80003aa4:	0297c663          	blt	a5,s1,80003ad0 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003aa8:	00349793          	slli	a5,s1,0x3
    80003aac:	fe040713          	addi	a4,s0,-32
    80003ab0:	00f707b3          	add	a5,a4,a5
    80003ab4:	fe07b503          	ld	a0,-32(a5)
    80003ab8:	ffffe097          	auipc	ra,0xffffe
    80003abc:	4e4080e7          	jalr	1252(ra) # 80001f9c <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003ac0:	0014849b          	addiw	s1,s1,1
    80003ac4:	fddff06f          	j	80003aa0 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80003ac8:	ffffe097          	auipc	ra,0xffffe
    80003acc:	528080e7          	jalr	1320(ra) # 80001ff0 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003ad0:	00008797          	auipc	a5,0x8
    80003ad4:	f007c783          	lbu	a5,-256(a5) # 8000b9d0 <_ZL9finishedA>
    80003ad8:	fe0788e3          	beqz	a5,80003ac8 <_Z20Threads_CPP_API_testv+0x124>
    80003adc:	00008797          	auipc	a5,0x8
    80003ae0:	ef57c783          	lbu	a5,-267(a5) # 8000b9d1 <_ZL9finishedB>
    80003ae4:	fe0782e3          	beqz	a5,80003ac8 <_Z20Threads_CPP_API_testv+0x124>
    80003ae8:	00008797          	auipc	a5,0x8
    80003aec:	eea7c783          	lbu	a5,-278(a5) # 8000b9d2 <_ZL9finishedC>
    80003af0:	fc078ce3          	beqz	a5,80003ac8 <_Z20Threads_CPP_API_testv+0x124>
    80003af4:	00008797          	auipc	a5,0x8
    80003af8:	edf7c783          	lbu	a5,-289(a5) # 8000b9d3 <_ZL9finishedD>
    80003afc:	fc0786e3          	beqz	a5,80003ac8 <_Z20Threads_CPP_API_testv+0x124>
    80003b00:	fc040493          	addi	s1,s0,-64
    80003b04:	0080006f          	j	80003b0c <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80003b08:	00848493          	addi	s1,s1,8
    80003b0c:	fe040793          	addi	a5,s0,-32
    80003b10:	08f48663          	beq	s1,a5,80003b9c <_Z20Threads_CPP_API_testv+0x1f8>
    80003b14:	0004b503          	ld	a0,0(s1)
    80003b18:	fe0508e3          	beqz	a0,80003b08 <_Z20Threads_CPP_API_testv+0x164>
    80003b1c:	00053783          	ld	a5,0(a0)
    80003b20:	0087b783          	ld	a5,8(a5)
    80003b24:	000780e7          	jalr	a5
    80003b28:	fe1ff06f          	j	80003b08 <_Z20Threads_CPP_API_testv+0x164>
    80003b2c:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80003b30:	00048513          	mv	a0,s1
    80003b34:	ffffe097          	auipc	ra,0xffffe
    80003b38:	320080e7          	jalr	800(ra) # 80001e54 <_ZdlPv>
    80003b3c:	00090513          	mv	a0,s2
    80003b40:	00009097          	auipc	ra,0x9
    80003b44:	f98080e7          	jalr	-104(ra) # 8000cad8 <_Unwind_Resume>
    80003b48:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003b4c:	00048513          	mv	a0,s1
    80003b50:	ffffe097          	auipc	ra,0xffffe
    80003b54:	304080e7          	jalr	772(ra) # 80001e54 <_ZdlPv>
    80003b58:	00090513          	mv	a0,s2
    80003b5c:	00009097          	auipc	ra,0x9
    80003b60:	f7c080e7          	jalr	-132(ra) # 8000cad8 <_Unwind_Resume>
    80003b64:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80003b68:	00048513          	mv	a0,s1
    80003b6c:	ffffe097          	auipc	ra,0xffffe
    80003b70:	2e8080e7          	jalr	744(ra) # 80001e54 <_ZdlPv>
    80003b74:	00090513          	mv	a0,s2
    80003b78:	00009097          	auipc	ra,0x9
    80003b7c:	f60080e7          	jalr	-160(ra) # 8000cad8 <_Unwind_Resume>
    80003b80:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003b84:	00048513          	mv	a0,s1
    80003b88:	ffffe097          	auipc	ra,0xffffe
    80003b8c:	2cc080e7          	jalr	716(ra) # 80001e54 <_ZdlPv>
    80003b90:	00090513          	mv	a0,s2
    80003b94:	00009097          	auipc	ra,0x9
    80003b98:	f44080e7          	jalr	-188(ra) # 8000cad8 <_Unwind_Resume>
}
    80003b9c:	03813083          	ld	ra,56(sp)
    80003ba0:	03013403          	ld	s0,48(sp)
    80003ba4:	02813483          	ld	s1,40(sp)
    80003ba8:	02013903          	ld	s2,32(sp)
    80003bac:	04010113          	addi	sp,sp,64
    80003bb0:	00008067          	ret

0000000080003bb4 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003bb4:	ff010113          	addi	sp,sp,-16
    80003bb8:	00113423          	sd	ra,8(sp)
    80003bbc:	00813023          	sd	s0,0(sp)
    80003bc0:	01010413          	addi	s0,sp,16
    80003bc4:	00008797          	auipc	a5,0x8
    80003bc8:	b7c78793          	addi	a5,a5,-1156 # 8000b740 <_ZTV7WorkerA+0x10>
    80003bcc:	00f53023          	sd	a5,0(a0)
    80003bd0:	ffffe097          	auipc	ra,0xffffe
    80003bd4:	1b8080e7          	jalr	440(ra) # 80001d88 <_ZN6ThreadD1Ev>
    80003bd8:	00813083          	ld	ra,8(sp)
    80003bdc:	00013403          	ld	s0,0(sp)
    80003be0:	01010113          	addi	sp,sp,16
    80003be4:	00008067          	ret

0000000080003be8 <_ZN7WorkerAD0Ev>:
    80003be8:	fe010113          	addi	sp,sp,-32
    80003bec:	00113c23          	sd	ra,24(sp)
    80003bf0:	00813823          	sd	s0,16(sp)
    80003bf4:	00913423          	sd	s1,8(sp)
    80003bf8:	02010413          	addi	s0,sp,32
    80003bfc:	00050493          	mv	s1,a0
    80003c00:	00008797          	auipc	a5,0x8
    80003c04:	b4078793          	addi	a5,a5,-1216 # 8000b740 <_ZTV7WorkerA+0x10>
    80003c08:	00f53023          	sd	a5,0(a0)
    80003c0c:	ffffe097          	auipc	ra,0xffffe
    80003c10:	17c080e7          	jalr	380(ra) # 80001d88 <_ZN6ThreadD1Ev>
    80003c14:	00048513          	mv	a0,s1
    80003c18:	ffffe097          	auipc	ra,0xffffe
    80003c1c:	23c080e7          	jalr	572(ra) # 80001e54 <_ZdlPv>
    80003c20:	01813083          	ld	ra,24(sp)
    80003c24:	01013403          	ld	s0,16(sp)
    80003c28:	00813483          	ld	s1,8(sp)
    80003c2c:	02010113          	addi	sp,sp,32
    80003c30:	00008067          	ret

0000000080003c34 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003c34:	ff010113          	addi	sp,sp,-16
    80003c38:	00113423          	sd	ra,8(sp)
    80003c3c:	00813023          	sd	s0,0(sp)
    80003c40:	01010413          	addi	s0,sp,16
    80003c44:	00008797          	auipc	a5,0x8
    80003c48:	b2478793          	addi	a5,a5,-1244 # 8000b768 <_ZTV7WorkerB+0x10>
    80003c4c:	00f53023          	sd	a5,0(a0)
    80003c50:	ffffe097          	auipc	ra,0xffffe
    80003c54:	138080e7          	jalr	312(ra) # 80001d88 <_ZN6ThreadD1Ev>
    80003c58:	00813083          	ld	ra,8(sp)
    80003c5c:	00013403          	ld	s0,0(sp)
    80003c60:	01010113          	addi	sp,sp,16
    80003c64:	00008067          	ret

0000000080003c68 <_ZN7WorkerBD0Ev>:
    80003c68:	fe010113          	addi	sp,sp,-32
    80003c6c:	00113c23          	sd	ra,24(sp)
    80003c70:	00813823          	sd	s0,16(sp)
    80003c74:	00913423          	sd	s1,8(sp)
    80003c78:	02010413          	addi	s0,sp,32
    80003c7c:	00050493          	mv	s1,a0
    80003c80:	00008797          	auipc	a5,0x8
    80003c84:	ae878793          	addi	a5,a5,-1304 # 8000b768 <_ZTV7WorkerB+0x10>
    80003c88:	00f53023          	sd	a5,0(a0)
    80003c8c:	ffffe097          	auipc	ra,0xffffe
    80003c90:	0fc080e7          	jalr	252(ra) # 80001d88 <_ZN6ThreadD1Ev>
    80003c94:	00048513          	mv	a0,s1
    80003c98:	ffffe097          	auipc	ra,0xffffe
    80003c9c:	1bc080e7          	jalr	444(ra) # 80001e54 <_ZdlPv>
    80003ca0:	01813083          	ld	ra,24(sp)
    80003ca4:	01013403          	ld	s0,16(sp)
    80003ca8:	00813483          	ld	s1,8(sp)
    80003cac:	02010113          	addi	sp,sp,32
    80003cb0:	00008067          	ret

0000000080003cb4 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003cb4:	ff010113          	addi	sp,sp,-16
    80003cb8:	00113423          	sd	ra,8(sp)
    80003cbc:	00813023          	sd	s0,0(sp)
    80003cc0:	01010413          	addi	s0,sp,16
    80003cc4:	00008797          	auipc	a5,0x8
    80003cc8:	acc78793          	addi	a5,a5,-1332 # 8000b790 <_ZTV7WorkerC+0x10>
    80003ccc:	00f53023          	sd	a5,0(a0)
    80003cd0:	ffffe097          	auipc	ra,0xffffe
    80003cd4:	0b8080e7          	jalr	184(ra) # 80001d88 <_ZN6ThreadD1Ev>
    80003cd8:	00813083          	ld	ra,8(sp)
    80003cdc:	00013403          	ld	s0,0(sp)
    80003ce0:	01010113          	addi	sp,sp,16
    80003ce4:	00008067          	ret

0000000080003ce8 <_ZN7WorkerCD0Ev>:
    80003ce8:	fe010113          	addi	sp,sp,-32
    80003cec:	00113c23          	sd	ra,24(sp)
    80003cf0:	00813823          	sd	s0,16(sp)
    80003cf4:	00913423          	sd	s1,8(sp)
    80003cf8:	02010413          	addi	s0,sp,32
    80003cfc:	00050493          	mv	s1,a0
    80003d00:	00008797          	auipc	a5,0x8
    80003d04:	a9078793          	addi	a5,a5,-1392 # 8000b790 <_ZTV7WorkerC+0x10>
    80003d08:	00f53023          	sd	a5,0(a0)
    80003d0c:	ffffe097          	auipc	ra,0xffffe
    80003d10:	07c080e7          	jalr	124(ra) # 80001d88 <_ZN6ThreadD1Ev>
    80003d14:	00048513          	mv	a0,s1
    80003d18:	ffffe097          	auipc	ra,0xffffe
    80003d1c:	13c080e7          	jalr	316(ra) # 80001e54 <_ZdlPv>
    80003d20:	01813083          	ld	ra,24(sp)
    80003d24:	01013403          	ld	s0,16(sp)
    80003d28:	00813483          	ld	s1,8(sp)
    80003d2c:	02010113          	addi	sp,sp,32
    80003d30:	00008067          	ret

0000000080003d34 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80003d34:	ff010113          	addi	sp,sp,-16
    80003d38:	00113423          	sd	ra,8(sp)
    80003d3c:	00813023          	sd	s0,0(sp)
    80003d40:	01010413          	addi	s0,sp,16
    80003d44:	00008797          	auipc	a5,0x8
    80003d48:	a7478793          	addi	a5,a5,-1420 # 8000b7b8 <_ZTV7WorkerD+0x10>
    80003d4c:	00f53023          	sd	a5,0(a0)
    80003d50:	ffffe097          	auipc	ra,0xffffe
    80003d54:	038080e7          	jalr	56(ra) # 80001d88 <_ZN6ThreadD1Ev>
    80003d58:	00813083          	ld	ra,8(sp)
    80003d5c:	00013403          	ld	s0,0(sp)
    80003d60:	01010113          	addi	sp,sp,16
    80003d64:	00008067          	ret

0000000080003d68 <_ZN7WorkerDD0Ev>:
    80003d68:	fe010113          	addi	sp,sp,-32
    80003d6c:	00113c23          	sd	ra,24(sp)
    80003d70:	00813823          	sd	s0,16(sp)
    80003d74:	00913423          	sd	s1,8(sp)
    80003d78:	02010413          	addi	s0,sp,32
    80003d7c:	00050493          	mv	s1,a0
    80003d80:	00008797          	auipc	a5,0x8
    80003d84:	a3878793          	addi	a5,a5,-1480 # 8000b7b8 <_ZTV7WorkerD+0x10>
    80003d88:	00f53023          	sd	a5,0(a0)
    80003d8c:	ffffe097          	auipc	ra,0xffffe
    80003d90:	ffc080e7          	jalr	-4(ra) # 80001d88 <_ZN6ThreadD1Ev>
    80003d94:	00048513          	mv	a0,s1
    80003d98:	ffffe097          	auipc	ra,0xffffe
    80003d9c:	0bc080e7          	jalr	188(ra) # 80001e54 <_ZdlPv>
    80003da0:	01813083          	ld	ra,24(sp)
    80003da4:	01013403          	ld	s0,16(sp)
    80003da8:	00813483          	ld	s1,8(sp)
    80003dac:	02010113          	addi	sp,sp,32
    80003db0:	00008067          	ret

0000000080003db4 <_ZN7WorkerA3runEv>:
    void run() override {
    80003db4:	ff010113          	addi	sp,sp,-16
    80003db8:	00113423          	sd	ra,8(sp)
    80003dbc:	00813023          	sd	s0,0(sp)
    80003dc0:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80003dc4:	00000593          	li	a1,0
    80003dc8:	fffff097          	auipc	ra,0xfffff
    80003dcc:	774080e7          	jalr	1908(ra) # 8000353c <_ZN7WorkerA11workerBodyAEPv>
    }
    80003dd0:	00813083          	ld	ra,8(sp)
    80003dd4:	00013403          	ld	s0,0(sp)
    80003dd8:	01010113          	addi	sp,sp,16
    80003ddc:	00008067          	ret

0000000080003de0 <_ZN7WorkerB3runEv>:
    void run() override {
    80003de0:	ff010113          	addi	sp,sp,-16
    80003de4:	00113423          	sd	ra,8(sp)
    80003de8:	00813023          	sd	s0,0(sp)
    80003dec:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80003df0:	00000593          	li	a1,0
    80003df4:	00000097          	auipc	ra,0x0
    80003df8:	814080e7          	jalr	-2028(ra) # 80003608 <_ZN7WorkerB11workerBodyBEPv>
    }
    80003dfc:	00813083          	ld	ra,8(sp)
    80003e00:	00013403          	ld	s0,0(sp)
    80003e04:	01010113          	addi	sp,sp,16
    80003e08:	00008067          	ret

0000000080003e0c <_ZN7WorkerC3runEv>:
    void run() override {
    80003e0c:	ff010113          	addi	sp,sp,-16
    80003e10:	00113423          	sd	ra,8(sp)
    80003e14:	00813023          	sd	s0,0(sp)
    80003e18:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80003e1c:	00000593          	li	a1,0
    80003e20:	00000097          	auipc	ra,0x0
    80003e24:	8bc080e7          	jalr	-1860(ra) # 800036dc <_ZN7WorkerC11workerBodyCEPv>
    }
    80003e28:	00813083          	ld	ra,8(sp)
    80003e2c:	00013403          	ld	s0,0(sp)
    80003e30:	01010113          	addi	sp,sp,16
    80003e34:	00008067          	ret

0000000080003e38 <_ZN7WorkerD3runEv>:
    void run() override {
    80003e38:	ff010113          	addi	sp,sp,-16
    80003e3c:	00113423          	sd	ra,8(sp)
    80003e40:	00813023          	sd	s0,0(sp)
    80003e44:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80003e48:	00000593          	li	a1,0
    80003e4c:	00000097          	auipc	ra,0x0
    80003e50:	a10080e7          	jalr	-1520(ra) # 8000385c <_ZN7WorkerD11workerBodyDEPv>
    }
    80003e54:	00813083          	ld	ra,8(sp)
    80003e58:	00013403          	ld	s0,0(sp)
    80003e5c:	01010113          	addi	sp,sp,16
    80003e60:	00008067          	ret

0000000080003e64 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80003e64:	f8010113          	addi	sp,sp,-128
    80003e68:	06113c23          	sd	ra,120(sp)
    80003e6c:	06813823          	sd	s0,112(sp)
    80003e70:	06913423          	sd	s1,104(sp)
    80003e74:	07213023          	sd	s2,96(sp)
    80003e78:	05313c23          	sd	s3,88(sp)
    80003e7c:	05413823          	sd	s4,80(sp)
    80003e80:	05513423          	sd	s5,72(sp)
    80003e84:	05613023          	sd	s6,64(sp)
    80003e88:	03713c23          	sd	s7,56(sp)
    80003e8c:	03813823          	sd	s8,48(sp)
    80003e90:	03913423          	sd	s9,40(sp)
    80003e94:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80003e98:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80003e9c:	00005517          	auipc	a0,0x5
    80003ea0:	43450513          	addi	a0,a0,1076 # 800092d0 <CONSOLE_STATUS+0x2c0>
    80003ea4:	00001097          	auipc	ra,0x1
    80003ea8:	5a8080e7          	jalr	1448(ra) # 8000544c <_Z11printStringPKc>
    getString(input, 30);
    80003eac:	01e00593          	li	a1,30
    80003eb0:	f8040493          	addi	s1,s0,-128
    80003eb4:	00048513          	mv	a0,s1
    80003eb8:	00001097          	auipc	ra,0x1
    80003ebc:	61c080e7          	jalr	1564(ra) # 800054d4 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003ec0:	00048513          	mv	a0,s1
    80003ec4:	00001097          	auipc	ra,0x1
    80003ec8:	6e8080e7          	jalr	1768(ra) # 800055ac <_Z11stringToIntPKc>
    80003ecc:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80003ed0:	00005517          	auipc	a0,0x5
    80003ed4:	42050513          	addi	a0,a0,1056 # 800092f0 <CONSOLE_STATUS+0x2e0>
    80003ed8:	00001097          	auipc	ra,0x1
    80003edc:	574080e7          	jalr	1396(ra) # 8000544c <_Z11printStringPKc>
    getString(input, 30);
    80003ee0:	01e00593          	li	a1,30
    80003ee4:	00048513          	mv	a0,s1
    80003ee8:	00001097          	auipc	ra,0x1
    80003eec:	5ec080e7          	jalr	1516(ra) # 800054d4 <_Z9getStringPci>
    n = stringToInt(input);
    80003ef0:	00048513          	mv	a0,s1
    80003ef4:	00001097          	auipc	ra,0x1
    80003ef8:	6b8080e7          	jalr	1720(ra) # 800055ac <_Z11stringToIntPKc>
    80003efc:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80003f00:	00005517          	auipc	a0,0x5
    80003f04:	41050513          	addi	a0,a0,1040 # 80009310 <CONSOLE_STATUS+0x300>
    80003f08:	00001097          	auipc	ra,0x1
    80003f0c:	544080e7          	jalr	1348(ra) # 8000544c <_Z11printStringPKc>
    printInt(threadNum);
    80003f10:	00000613          	li	a2,0
    80003f14:	00a00593          	li	a1,10
    80003f18:	00098513          	mv	a0,s3
    80003f1c:	00001097          	auipc	ra,0x1
    80003f20:	6e0080e7          	jalr	1760(ra) # 800055fc <_Z8printIntiii>
    printString(" i velicina bafera ");
    80003f24:	00005517          	auipc	a0,0x5
    80003f28:	40450513          	addi	a0,a0,1028 # 80009328 <CONSOLE_STATUS+0x318>
    80003f2c:	00001097          	auipc	ra,0x1
    80003f30:	520080e7          	jalr	1312(ra) # 8000544c <_Z11printStringPKc>
    printInt(n);
    80003f34:	00000613          	li	a2,0
    80003f38:	00a00593          	li	a1,10
    80003f3c:	00048513          	mv	a0,s1
    80003f40:	00001097          	auipc	ra,0x1
    80003f44:	6bc080e7          	jalr	1724(ra) # 800055fc <_Z8printIntiii>
    printString(".\n");
    80003f48:	00005517          	auipc	a0,0x5
    80003f4c:	3f850513          	addi	a0,a0,1016 # 80009340 <CONSOLE_STATUS+0x330>
    80003f50:	00001097          	auipc	ra,0x1
    80003f54:	4fc080e7          	jalr	1276(ra) # 8000544c <_Z11printStringPKc>
    if (threadNum > n) {
    80003f58:	0334c463          	blt	s1,s3,80003f80 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80003f5c:	03305c63          	blez	s3,80003f94 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80003f60:	03800513          	li	a0,56
    80003f64:	ffffe097          	auipc	ra,0xffffe
    80003f68:	ea0080e7          	jalr	-352(ra) # 80001e04 <_Znwm>
    80003f6c:	00050a93          	mv	s5,a0
    80003f70:	00048593          	mv	a1,s1
    80003f74:	00001097          	auipc	ra,0x1
    80003f78:	7a8080e7          	jalr	1960(ra) # 8000571c <_ZN9BufferCPPC1Ei>
    80003f7c:	0300006f          	j	80003fac <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003f80:	00005517          	auipc	a0,0x5
    80003f84:	3c850513          	addi	a0,a0,968 # 80009348 <CONSOLE_STATUS+0x338>
    80003f88:	00001097          	auipc	ra,0x1
    80003f8c:	4c4080e7          	jalr	1220(ra) # 8000544c <_Z11printStringPKc>
        return;
    80003f90:	0140006f          	j	80003fa4 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003f94:	00005517          	auipc	a0,0x5
    80003f98:	3f450513          	addi	a0,a0,1012 # 80009388 <CONSOLE_STATUS+0x378>
    80003f9c:	00001097          	auipc	ra,0x1
    80003fa0:	4b0080e7          	jalr	1200(ra) # 8000544c <_Z11printStringPKc>
        return;
    80003fa4:	000c0113          	mv	sp,s8
    80003fa8:	2140006f          	j	800041bc <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80003fac:	01800513          	li	a0,24
    80003fb0:	ffffe097          	auipc	ra,0xffffe
    80003fb4:	e54080e7          	jalr	-428(ra) # 80001e04 <_Znwm>
    80003fb8:	00050913          	mv	s2,a0
    80003fbc:	00000593          	li	a1,0
    80003fc0:	ffffe097          	auipc	ra,0xffffe
    80003fc4:	058080e7          	jalr	88(ra) # 80002018 <_ZN9SemaphoreC1Ej>
    80003fc8:	00008797          	auipc	a5,0x8
    80003fcc:	a127bc23          	sd	s2,-1512(a5) # 8000b9e0 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80003fd0:	00399793          	slli	a5,s3,0x3
    80003fd4:	00f78793          	addi	a5,a5,15
    80003fd8:	ff07f793          	andi	a5,a5,-16
    80003fdc:	40f10133          	sub	sp,sp,a5
    80003fe0:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80003fe4:	0019871b          	addiw	a4,s3,1
    80003fe8:	00171793          	slli	a5,a4,0x1
    80003fec:	00e787b3          	add	a5,a5,a4
    80003ff0:	00379793          	slli	a5,a5,0x3
    80003ff4:	00f78793          	addi	a5,a5,15
    80003ff8:	ff07f793          	andi	a5,a5,-16
    80003ffc:	40f10133          	sub	sp,sp,a5
    80004000:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80004004:	00199493          	slli	s1,s3,0x1
    80004008:	013484b3          	add	s1,s1,s3
    8000400c:	00349493          	slli	s1,s1,0x3
    80004010:	009b04b3          	add	s1,s6,s1
    80004014:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80004018:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    8000401c:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004020:	02800513          	li	a0,40
    80004024:	ffffe097          	auipc	ra,0xffffe
    80004028:	de0080e7          	jalr	-544(ra) # 80001e04 <_Znwm>
    8000402c:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80004030:	ffffe097          	auipc	ra,0xffffe
    80004034:	edc080e7          	jalr	-292(ra) # 80001f0c <_ZN6ThreadC1Ev>
    80004038:	00007797          	auipc	a5,0x7
    8000403c:	7f878793          	addi	a5,a5,2040 # 8000b830 <_ZTV8Consumer+0x10>
    80004040:	00fbb023          	sd	a5,0(s7)
    80004044:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80004048:	000b8513          	mv	a0,s7
    8000404c:	ffffe097          	auipc	ra,0xffffe
    80004050:	f50080e7          	jalr	-176(ra) # 80001f9c <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80004054:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80004058:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    8000405c:	00008797          	auipc	a5,0x8
    80004060:	9847b783          	ld	a5,-1660(a5) # 8000b9e0 <_ZL10waitForAll>
    80004064:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004068:	02800513          	li	a0,40
    8000406c:	ffffe097          	auipc	ra,0xffffe
    80004070:	d98080e7          	jalr	-616(ra) # 80001e04 <_Znwm>
    80004074:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80004078:	ffffe097          	auipc	ra,0xffffe
    8000407c:	e94080e7          	jalr	-364(ra) # 80001f0c <_ZN6ThreadC1Ev>
    80004080:	00007797          	auipc	a5,0x7
    80004084:	76078793          	addi	a5,a5,1888 # 8000b7e0 <_ZTV16ProducerKeyborad+0x10>
    80004088:	00f4b023          	sd	a5,0(s1)
    8000408c:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004090:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80004094:	00048513          	mv	a0,s1
    80004098:	ffffe097          	auipc	ra,0xffffe
    8000409c:	f04080e7          	jalr	-252(ra) # 80001f9c <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800040a0:	00100913          	li	s2,1
    800040a4:	0300006f          	j	800040d4 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800040a8:	00007797          	auipc	a5,0x7
    800040ac:	76078793          	addi	a5,a5,1888 # 8000b808 <_ZTV8Producer+0x10>
    800040b0:	00fcb023          	sd	a5,0(s9)
    800040b4:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    800040b8:	00391793          	slli	a5,s2,0x3
    800040bc:	00fa07b3          	add	a5,s4,a5
    800040c0:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    800040c4:	000c8513          	mv	a0,s9
    800040c8:	ffffe097          	auipc	ra,0xffffe
    800040cc:	ed4080e7          	jalr	-300(ra) # 80001f9c <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800040d0:	0019091b          	addiw	s2,s2,1
    800040d4:	05395263          	bge	s2,s3,80004118 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    800040d8:	00191493          	slli	s1,s2,0x1
    800040dc:	012484b3          	add	s1,s1,s2
    800040e0:	00349493          	slli	s1,s1,0x3
    800040e4:	009b04b3          	add	s1,s6,s1
    800040e8:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    800040ec:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    800040f0:	00008797          	auipc	a5,0x8
    800040f4:	8f07b783          	ld	a5,-1808(a5) # 8000b9e0 <_ZL10waitForAll>
    800040f8:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    800040fc:	02800513          	li	a0,40
    80004100:	ffffe097          	auipc	ra,0xffffe
    80004104:	d04080e7          	jalr	-764(ra) # 80001e04 <_Znwm>
    80004108:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    8000410c:	ffffe097          	auipc	ra,0xffffe
    80004110:	e00080e7          	jalr	-512(ra) # 80001f0c <_ZN6ThreadC1Ev>
    80004114:	f95ff06f          	j	800040a8 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80004118:	ffffe097          	auipc	ra,0xffffe
    8000411c:	ed8080e7          	jalr	-296(ra) # 80001ff0 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004120:	00000493          	li	s1,0
    80004124:	0099ce63          	blt	s3,s1,80004140 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80004128:	00008517          	auipc	a0,0x8
    8000412c:	8b853503          	ld	a0,-1864(a0) # 8000b9e0 <_ZL10waitForAll>
    80004130:	ffffe097          	auipc	ra,0xffffe
    80004134:	f24080e7          	jalr	-220(ra) # 80002054 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004138:	0014849b          	addiw	s1,s1,1
    8000413c:	fe9ff06f          	j	80004124 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80004140:	00008517          	auipc	a0,0x8
    80004144:	8a053503          	ld	a0,-1888(a0) # 8000b9e0 <_ZL10waitForAll>
    80004148:	00050863          	beqz	a0,80004158 <_Z20testConsumerProducerv+0x2f4>
    8000414c:	00053783          	ld	a5,0(a0)
    80004150:	0087b783          	ld	a5,8(a5)
    80004154:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80004158:	00000493          	li	s1,0
    8000415c:	0080006f          	j	80004164 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80004160:	0014849b          	addiw	s1,s1,1
    80004164:	0334d263          	bge	s1,s3,80004188 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80004168:	00349793          	slli	a5,s1,0x3
    8000416c:	00fa07b3          	add	a5,s4,a5
    80004170:	0007b503          	ld	a0,0(a5)
    80004174:	fe0506e3          	beqz	a0,80004160 <_Z20testConsumerProducerv+0x2fc>
    80004178:	00053783          	ld	a5,0(a0)
    8000417c:	0087b783          	ld	a5,8(a5)
    80004180:	000780e7          	jalr	a5
    80004184:	fddff06f          	j	80004160 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80004188:	000b8a63          	beqz	s7,8000419c <_Z20testConsumerProducerv+0x338>
    8000418c:	000bb783          	ld	a5,0(s7)
    80004190:	0087b783          	ld	a5,8(a5)
    80004194:	000b8513          	mv	a0,s7
    80004198:	000780e7          	jalr	a5
    delete buffer;
    8000419c:	000a8e63          	beqz	s5,800041b8 <_Z20testConsumerProducerv+0x354>
    800041a0:	000a8513          	mv	a0,s5
    800041a4:	00002097          	auipc	ra,0x2
    800041a8:	870080e7          	jalr	-1936(ra) # 80005a14 <_ZN9BufferCPPD1Ev>
    800041ac:	000a8513          	mv	a0,s5
    800041b0:	ffffe097          	auipc	ra,0xffffe
    800041b4:	ca4080e7          	jalr	-860(ra) # 80001e54 <_ZdlPv>
    800041b8:	000c0113          	mv	sp,s8
}
    800041bc:	f8040113          	addi	sp,s0,-128
    800041c0:	07813083          	ld	ra,120(sp)
    800041c4:	07013403          	ld	s0,112(sp)
    800041c8:	06813483          	ld	s1,104(sp)
    800041cc:	06013903          	ld	s2,96(sp)
    800041d0:	05813983          	ld	s3,88(sp)
    800041d4:	05013a03          	ld	s4,80(sp)
    800041d8:	04813a83          	ld	s5,72(sp)
    800041dc:	04013b03          	ld	s6,64(sp)
    800041e0:	03813b83          	ld	s7,56(sp)
    800041e4:	03013c03          	ld	s8,48(sp)
    800041e8:	02813c83          	ld	s9,40(sp)
    800041ec:	08010113          	addi	sp,sp,128
    800041f0:	00008067          	ret
    800041f4:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800041f8:	000a8513          	mv	a0,s5
    800041fc:	ffffe097          	auipc	ra,0xffffe
    80004200:	c58080e7          	jalr	-936(ra) # 80001e54 <_ZdlPv>
    80004204:	00048513          	mv	a0,s1
    80004208:	00009097          	auipc	ra,0x9
    8000420c:	8d0080e7          	jalr	-1840(ra) # 8000cad8 <_Unwind_Resume>
    80004210:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80004214:	00090513          	mv	a0,s2
    80004218:	ffffe097          	auipc	ra,0xffffe
    8000421c:	c3c080e7          	jalr	-964(ra) # 80001e54 <_ZdlPv>
    80004220:	00048513          	mv	a0,s1
    80004224:	00009097          	auipc	ra,0x9
    80004228:	8b4080e7          	jalr	-1868(ra) # 8000cad8 <_Unwind_Resume>
    8000422c:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004230:	000b8513          	mv	a0,s7
    80004234:	ffffe097          	auipc	ra,0xffffe
    80004238:	c20080e7          	jalr	-992(ra) # 80001e54 <_ZdlPv>
    8000423c:	00048513          	mv	a0,s1
    80004240:	00009097          	auipc	ra,0x9
    80004244:	898080e7          	jalr	-1896(ra) # 8000cad8 <_Unwind_Resume>
    80004248:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    8000424c:	00048513          	mv	a0,s1
    80004250:	ffffe097          	auipc	ra,0xffffe
    80004254:	c04080e7          	jalr	-1020(ra) # 80001e54 <_ZdlPv>
    80004258:	00090513          	mv	a0,s2
    8000425c:	00009097          	auipc	ra,0x9
    80004260:	87c080e7          	jalr	-1924(ra) # 8000cad8 <_Unwind_Resume>
    80004264:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80004268:	000c8513          	mv	a0,s9
    8000426c:	ffffe097          	auipc	ra,0xffffe
    80004270:	be8080e7          	jalr	-1048(ra) # 80001e54 <_ZdlPv>
    80004274:	00048513          	mv	a0,s1
    80004278:	00009097          	auipc	ra,0x9
    8000427c:	860080e7          	jalr	-1952(ra) # 8000cad8 <_Unwind_Resume>

0000000080004280 <_ZN8Consumer3runEv>:
    void run() override {
    80004280:	fd010113          	addi	sp,sp,-48
    80004284:	02113423          	sd	ra,40(sp)
    80004288:	02813023          	sd	s0,32(sp)
    8000428c:	00913c23          	sd	s1,24(sp)
    80004290:	01213823          	sd	s2,16(sp)
    80004294:	01313423          	sd	s3,8(sp)
    80004298:	03010413          	addi	s0,sp,48
    8000429c:	00050913          	mv	s2,a0
        int i = 0;
    800042a0:	00000993          	li	s3,0
    800042a4:	0100006f          	j	800042b4 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    800042a8:	00a00513          	li	a0,10
    800042ac:	ffffe097          	auipc	ra,0xffffe
    800042b0:	ea8080e7          	jalr	-344(ra) # 80002154 <_ZN7Console4putcEc>
        while (!threadEnd) {
    800042b4:	00007797          	auipc	a5,0x7
    800042b8:	7247a783          	lw	a5,1828(a5) # 8000b9d8 <_ZL9threadEnd>
    800042bc:	04079a63          	bnez	a5,80004310 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    800042c0:	02093783          	ld	a5,32(s2)
    800042c4:	0087b503          	ld	a0,8(a5)
    800042c8:	00001097          	auipc	ra,0x1
    800042cc:	638080e7          	jalr	1592(ra) # 80005900 <_ZN9BufferCPP3getEv>
            i++;
    800042d0:	0019849b          	addiw	s1,s3,1
    800042d4:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    800042d8:	0ff57513          	andi	a0,a0,255
    800042dc:	ffffe097          	auipc	ra,0xffffe
    800042e0:	e78080e7          	jalr	-392(ra) # 80002154 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    800042e4:	05000793          	li	a5,80
    800042e8:	02f4e4bb          	remw	s1,s1,a5
    800042ec:	fc0494e3          	bnez	s1,800042b4 <_ZN8Consumer3runEv+0x34>
    800042f0:	fb9ff06f          	j	800042a8 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    800042f4:	02093783          	ld	a5,32(s2)
    800042f8:	0087b503          	ld	a0,8(a5)
    800042fc:	00001097          	auipc	ra,0x1
    80004300:	604080e7          	jalr	1540(ra) # 80005900 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80004304:	0ff57513          	andi	a0,a0,255
    80004308:	ffffe097          	auipc	ra,0xffffe
    8000430c:	e4c080e7          	jalr	-436(ra) # 80002154 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80004310:	02093783          	ld	a5,32(s2)
    80004314:	0087b503          	ld	a0,8(a5)
    80004318:	00001097          	auipc	ra,0x1
    8000431c:	674080e7          	jalr	1652(ra) # 8000598c <_ZN9BufferCPP6getCntEv>
    80004320:	fca04ae3          	bgtz	a0,800042f4 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004324:	02093783          	ld	a5,32(s2)
    80004328:	0107b503          	ld	a0,16(a5)
    8000432c:	ffffe097          	auipc	ra,0xffffe
    80004330:	d54080e7          	jalr	-684(ra) # 80002080 <_ZN9Semaphore6signalEv>
    }
    80004334:	02813083          	ld	ra,40(sp)
    80004338:	02013403          	ld	s0,32(sp)
    8000433c:	01813483          	ld	s1,24(sp)
    80004340:	01013903          	ld	s2,16(sp)
    80004344:	00813983          	ld	s3,8(sp)
    80004348:	03010113          	addi	sp,sp,48
    8000434c:	00008067          	ret

0000000080004350 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004350:	ff010113          	addi	sp,sp,-16
    80004354:	00113423          	sd	ra,8(sp)
    80004358:	00813023          	sd	s0,0(sp)
    8000435c:	01010413          	addi	s0,sp,16
    80004360:	00007797          	auipc	a5,0x7
    80004364:	4d078793          	addi	a5,a5,1232 # 8000b830 <_ZTV8Consumer+0x10>
    80004368:	00f53023          	sd	a5,0(a0)
    8000436c:	ffffe097          	auipc	ra,0xffffe
    80004370:	a1c080e7          	jalr	-1508(ra) # 80001d88 <_ZN6ThreadD1Ev>
    80004374:	00813083          	ld	ra,8(sp)
    80004378:	00013403          	ld	s0,0(sp)
    8000437c:	01010113          	addi	sp,sp,16
    80004380:	00008067          	ret

0000000080004384 <_ZN8ConsumerD0Ev>:
    80004384:	fe010113          	addi	sp,sp,-32
    80004388:	00113c23          	sd	ra,24(sp)
    8000438c:	00813823          	sd	s0,16(sp)
    80004390:	00913423          	sd	s1,8(sp)
    80004394:	02010413          	addi	s0,sp,32
    80004398:	00050493          	mv	s1,a0
    8000439c:	00007797          	auipc	a5,0x7
    800043a0:	49478793          	addi	a5,a5,1172 # 8000b830 <_ZTV8Consumer+0x10>
    800043a4:	00f53023          	sd	a5,0(a0)
    800043a8:	ffffe097          	auipc	ra,0xffffe
    800043ac:	9e0080e7          	jalr	-1568(ra) # 80001d88 <_ZN6ThreadD1Ev>
    800043b0:	00048513          	mv	a0,s1
    800043b4:	ffffe097          	auipc	ra,0xffffe
    800043b8:	aa0080e7          	jalr	-1376(ra) # 80001e54 <_ZdlPv>
    800043bc:	01813083          	ld	ra,24(sp)
    800043c0:	01013403          	ld	s0,16(sp)
    800043c4:	00813483          	ld	s1,8(sp)
    800043c8:	02010113          	addi	sp,sp,32
    800043cc:	00008067          	ret

00000000800043d0 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    800043d0:	ff010113          	addi	sp,sp,-16
    800043d4:	00113423          	sd	ra,8(sp)
    800043d8:	00813023          	sd	s0,0(sp)
    800043dc:	01010413          	addi	s0,sp,16
    800043e0:	00007797          	auipc	a5,0x7
    800043e4:	40078793          	addi	a5,a5,1024 # 8000b7e0 <_ZTV16ProducerKeyborad+0x10>
    800043e8:	00f53023          	sd	a5,0(a0)
    800043ec:	ffffe097          	auipc	ra,0xffffe
    800043f0:	99c080e7          	jalr	-1636(ra) # 80001d88 <_ZN6ThreadD1Ev>
    800043f4:	00813083          	ld	ra,8(sp)
    800043f8:	00013403          	ld	s0,0(sp)
    800043fc:	01010113          	addi	sp,sp,16
    80004400:	00008067          	ret

0000000080004404 <_ZN16ProducerKeyboradD0Ev>:
    80004404:	fe010113          	addi	sp,sp,-32
    80004408:	00113c23          	sd	ra,24(sp)
    8000440c:	00813823          	sd	s0,16(sp)
    80004410:	00913423          	sd	s1,8(sp)
    80004414:	02010413          	addi	s0,sp,32
    80004418:	00050493          	mv	s1,a0
    8000441c:	00007797          	auipc	a5,0x7
    80004420:	3c478793          	addi	a5,a5,964 # 8000b7e0 <_ZTV16ProducerKeyborad+0x10>
    80004424:	00f53023          	sd	a5,0(a0)
    80004428:	ffffe097          	auipc	ra,0xffffe
    8000442c:	960080e7          	jalr	-1696(ra) # 80001d88 <_ZN6ThreadD1Ev>
    80004430:	00048513          	mv	a0,s1
    80004434:	ffffe097          	auipc	ra,0xffffe
    80004438:	a20080e7          	jalr	-1504(ra) # 80001e54 <_ZdlPv>
    8000443c:	01813083          	ld	ra,24(sp)
    80004440:	01013403          	ld	s0,16(sp)
    80004444:	00813483          	ld	s1,8(sp)
    80004448:	02010113          	addi	sp,sp,32
    8000444c:	00008067          	ret

0000000080004450 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004450:	ff010113          	addi	sp,sp,-16
    80004454:	00113423          	sd	ra,8(sp)
    80004458:	00813023          	sd	s0,0(sp)
    8000445c:	01010413          	addi	s0,sp,16
    80004460:	00007797          	auipc	a5,0x7
    80004464:	3a878793          	addi	a5,a5,936 # 8000b808 <_ZTV8Producer+0x10>
    80004468:	00f53023          	sd	a5,0(a0)
    8000446c:	ffffe097          	auipc	ra,0xffffe
    80004470:	91c080e7          	jalr	-1764(ra) # 80001d88 <_ZN6ThreadD1Ev>
    80004474:	00813083          	ld	ra,8(sp)
    80004478:	00013403          	ld	s0,0(sp)
    8000447c:	01010113          	addi	sp,sp,16
    80004480:	00008067          	ret

0000000080004484 <_ZN8ProducerD0Ev>:
    80004484:	fe010113          	addi	sp,sp,-32
    80004488:	00113c23          	sd	ra,24(sp)
    8000448c:	00813823          	sd	s0,16(sp)
    80004490:	00913423          	sd	s1,8(sp)
    80004494:	02010413          	addi	s0,sp,32
    80004498:	00050493          	mv	s1,a0
    8000449c:	00007797          	auipc	a5,0x7
    800044a0:	36c78793          	addi	a5,a5,876 # 8000b808 <_ZTV8Producer+0x10>
    800044a4:	00f53023          	sd	a5,0(a0)
    800044a8:	ffffe097          	auipc	ra,0xffffe
    800044ac:	8e0080e7          	jalr	-1824(ra) # 80001d88 <_ZN6ThreadD1Ev>
    800044b0:	00048513          	mv	a0,s1
    800044b4:	ffffe097          	auipc	ra,0xffffe
    800044b8:	9a0080e7          	jalr	-1632(ra) # 80001e54 <_ZdlPv>
    800044bc:	01813083          	ld	ra,24(sp)
    800044c0:	01013403          	ld	s0,16(sp)
    800044c4:	00813483          	ld	s1,8(sp)
    800044c8:	02010113          	addi	sp,sp,32
    800044cc:	00008067          	ret

00000000800044d0 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    800044d0:	fe010113          	addi	sp,sp,-32
    800044d4:	00113c23          	sd	ra,24(sp)
    800044d8:	00813823          	sd	s0,16(sp)
    800044dc:	00913423          	sd	s1,8(sp)
    800044e0:	02010413          	addi	s0,sp,32
    800044e4:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x30) {
    800044e8:	ffffd097          	auipc	ra,0xffffd
    800044ec:	f8c080e7          	jalr	-116(ra) # 80001474 <getc>
    800044f0:	0005059b          	sext.w	a1,a0
    800044f4:	03000793          	li	a5,48
    800044f8:	00f58c63          	beq	a1,a5,80004510 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    800044fc:	0204b783          	ld	a5,32(s1)
    80004500:	0087b503          	ld	a0,8(a5)
    80004504:	00001097          	auipc	ra,0x1
    80004508:	36c080e7          	jalr	876(ra) # 80005870 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x30) {
    8000450c:	fddff06f          	j	800044e8 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004510:	00100793          	li	a5,1
    80004514:	00007717          	auipc	a4,0x7
    80004518:	4cf72223          	sw	a5,1220(a4) # 8000b9d8 <_ZL9threadEnd>
        td->buffer->put('!');
    8000451c:	0204b783          	ld	a5,32(s1)
    80004520:	02100593          	li	a1,33
    80004524:	0087b503          	ld	a0,8(a5)
    80004528:	00001097          	auipc	ra,0x1
    8000452c:	348080e7          	jalr	840(ra) # 80005870 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004530:	0204b783          	ld	a5,32(s1)
    80004534:	0107b503          	ld	a0,16(a5)
    80004538:	ffffe097          	auipc	ra,0xffffe
    8000453c:	b48080e7          	jalr	-1208(ra) # 80002080 <_ZN9Semaphore6signalEv>
    }
    80004540:	01813083          	ld	ra,24(sp)
    80004544:	01013403          	ld	s0,16(sp)
    80004548:	00813483          	ld	s1,8(sp)
    8000454c:	02010113          	addi	sp,sp,32
    80004550:	00008067          	ret

0000000080004554 <_ZN8Producer3runEv>:
    void run() override {
    80004554:	fe010113          	addi	sp,sp,-32
    80004558:	00113c23          	sd	ra,24(sp)
    8000455c:	00813823          	sd	s0,16(sp)
    80004560:	00913423          	sd	s1,8(sp)
    80004564:	01213023          	sd	s2,0(sp)
    80004568:	02010413          	addi	s0,sp,32
    8000456c:	00050493          	mv	s1,a0
        int i = 0;
    80004570:	00000913          	li	s2,0
        while (!threadEnd) {
    80004574:	00007797          	auipc	a5,0x7
    80004578:	4647a783          	lw	a5,1124(a5) # 8000b9d8 <_ZL9threadEnd>
    8000457c:	04079263          	bnez	a5,800045c0 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004580:	0204b783          	ld	a5,32(s1)
    80004584:	0007a583          	lw	a1,0(a5)
    80004588:	0305859b          	addiw	a1,a1,48
    8000458c:	0087b503          	ld	a0,8(a5)
    80004590:	00001097          	auipc	ra,0x1
    80004594:	2e0080e7          	jalr	736(ra) # 80005870 <_ZN9BufferCPP3putEi>
            i++;
    80004598:	0019071b          	addiw	a4,s2,1
    8000459c:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    800045a0:	0204b783          	ld	a5,32(s1)
    800045a4:	0007a783          	lw	a5,0(a5)
    800045a8:	00e787bb          	addw	a5,a5,a4
    800045ac:	00500513          	li	a0,5
    800045b0:	02a7e53b          	remw	a0,a5,a0
    800045b4:	ffffe097          	auipc	ra,0xffffe
    800045b8:	af8080e7          	jalr	-1288(ra) # 800020ac <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    800045bc:	fb9ff06f          	j	80004574 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    800045c0:	0204b783          	ld	a5,32(s1)
    800045c4:	0107b503          	ld	a0,16(a5)
    800045c8:	ffffe097          	auipc	ra,0xffffe
    800045cc:	ab8080e7          	jalr	-1352(ra) # 80002080 <_ZN9Semaphore6signalEv>
    }
    800045d0:	01813083          	ld	ra,24(sp)
    800045d4:	01013403          	ld	s0,16(sp)
    800045d8:	00813483          	ld	s1,8(sp)
    800045dc:	00013903          	ld	s2,0(sp)
    800045e0:	02010113          	addi	sp,sp,32
    800045e4:	00008067          	ret

00000000800045e8 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800045e8:	fe010113          	addi	sp,sp,-32
    800045ec:	00113c23          	sd	ra,24(sp)
    800045f0:	00813823          	sd	s0,16(sp)
    800045f4:	00913423          	sd	s1,8(sp)
    800045f8:	01213023          	sd	s2,0(sp)
    800045fc:	02010413          	addi	s0,sp,32
    80004600:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004604:	00100793          	li	a5,1
    80004608:	02a7f863          	bgeu	a5,a0,80004638 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    8000460c:	00a00793          	li	a5,10
    80004610:	02f577b3          	remu	a5,a0,a5
    80004614:	02078e63          	beqz	a5,80004650 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004618:	fff48513          	addi	a0,s1,-1
    8000461c:	00000097          	auipc	ra,0x0
    80004620:	fcc080e7          	jalr	-52(ra) # 800045e8 <_ZL9fibonaccim>
    80004624:	00050913          	mv	s2,a0
    80004628:	ffe48513          	addi	a0,s1,-2
    8000462c:	00000097          	auipc	ra,0x0
    80004630:	fbc080e7          	jalr	-68(ra) # 800045e8 <_ZL9fibonaccim>
    80004634:	00a90533          	add	a0,s2,a0
}
    80004638:	01813083          	ld	ra,24(sp)
    8000463c:	01013403          	ld	s0,16(sp)
    80004640:	00813483          	ld	s1,8(sp)
    80004644:	00013903          	ld	s2,0(sp)
    80004648:	02010113          	addi	sp,sp,32
    8000464c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004650:	ffffd097          	auipc	ra,0xffffd
    80004654:	c3c080e7          	jalr	-964(ra) # 8000128c <thread_dispatch>
    80004658:	fc1ff06f          	j	80004618 <_ZL9fibonaccim+0x30>

000000008000465c <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    8000465c:	fe010113          	addi	sp,sp,-32
    80004660:	00113c23          	sd	ra,24(sp)
    80004664:	00813823          	sd	s0,16(sp)
    80004668:	00913423          	sd	s1,8(sp)
    8000466c:	01213023          	sd	s2,0(sp)
    80004670:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004674:	00a00493          	li	s1,10
    80004678:	0400006f          	j	800046b8 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000467c:	00005517          	auipc	a0,0x5
    80004680:	9e450513          	addi	a0,a0,-1564 # 80009060 <CONSOLE_STATUS+0x50>
    80004684:	00001097          	auipc	ra,0x1
    80004688:	dc8080e7          	jalr	-568(ra) # 8000544c <_Z11printStringPKc>
    8000468c:	00000613          	li	a2,0
    80004690:	00a00593          	li	a1,10
    80004694:	00048513          	mv	a0,s1
    80004698:	00001097          	auipc	ra,0x1
    8000469c:	f64080e7          	jalr	-156(ra) # 800055fc <_Z8printIntiii>
    800046a0:	00005517          	auipc	a0,0x5
    800046a4:	f2050513          	addi	a0,a0,-224 # 800095c0 <CONSOLE_STATUS+0x5b0>
    800046a8:	00001097          	auipc	ra,0x1
    800046ac:	da4080e7          	jalr	-604(ra) # 8000544c <_Z11printStringPKc>
    for (; i < 13; i++) {
    800046b0:	0014849b          	addiw	s1,s1,1
    800046b4:	0ff4f493          	andi	s1,s1,255
    800046b8:	00c00793          	li	a5,12
    800046bc:	fc97f0e3          	bgeu	a5,s1,8000467c <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800046c0:	00005517          	auipc	a0,0x5
    800046c4:	d2850513          	addi	a0,a0,-728 # 800093e8 <CONSOLE_STATUS+0x3d8>
    800046c8:	00001097          	auipc	ra,0x1
    800046cc:	d84080e7          	jalr	-636(ra) # 8000544c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800046d0:	00500313          	li	t1,5
    thread_dispatch();
    800046d4:	ffffd097          	auipc	ra,0xffffd
    800046d8:	bb8080e7          	jalr	-1096(ra) # 8000128c <thread_dispatch>

    uint64 result = fibonacci(16);
    800046dc:	01000513          	li	a0,16
    800046e0:	00000097          	auipc	ra,0x0
    800046e4:	f08080e7          	jalr	-248(ra) # 800045e8 <_ZL9fibonaccim>
    800046e8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800046ec:	00005517          	auipc	a0,0x5
    800046f0:	98c50513          	addi	a0,a0,-1652 # 80009078 <CONSOLE_STATUS+0x68>
    800046f4:	00001097          	auipc	ra,0x1
    800046f8:	d58080e7          	jalr	-680(ra) # 8000544c <_Z11printStringPKc>
    800046fc:	00000613          	li	a2,0
    80004700:	00a00593          	li	a1,10
    80004704:	0009051b          	sext.w	a0,s2
    80004708:	00001097          	auipc	ra,0x1
    8000470c:	ef4080e7          	jalr	-268(ra) # 800055fc <_Z8printIntiii>
    80004710:	00005517          	auipc	a0,0x5
    80004714:	eb050513          	addi	a0,a0,-336 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80004718:	00001097          	auipc	ra,0x1
    8000471c:	d34080e7          	jalr	-716(ra) # 8000544c <_Z11printStringPKc>
    80004720:	0400006f          	j	80004760 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004724:	00005517          	auipc	a0,0x5
    80004728:	93c50513          	addi	a0,a0,-1732 # 80009060 <CONSOLE_STATUS+0x50>
    8000472c:	00001097          	auipc	ra,0x1
    80004730:	d20080e7          	jalr	-736(ra) # 8000544c <_Z11printStringPKc>
    80004734:	00000613          	li	a2,0
    80004738:	00a00593          	li	a1,10
    8000473c:	00048513          	mv	a0,s1
    80004740:	00001097          	auipc	ra,0x1
    80004744:	ebc080e7          	jalr	-324(ra) # 800055fc <_Z8printIntiii>
    80004748:	00005517          	auipc	a0,0x5
    8000474c:	e7850513          	addi	a0,a0,-392 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80004750:	00001097          	auipc	ra,0x1
    80004754:	cfc080e7          	jalr	-772(ra) # 8000544c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004758:	0014849b          	addiw	s1,s1,1
    8000475c:	0ff4f493          	andi	s1,s1,255
    80004760:	00f00793          	li	a5,15
    80004764:	fc97f0e3          	bgeu	a5,s1,80004724 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004768:	00005517          	auipc	a0,0x5
    8000476c:	c9050513          	addi	a0,a0,-880 # 800093f8 <CONSOLE_STATUS+0x3e8>
    80004770:	00001097          	auipc	ra,0x1
    80004774:	cdc080e7          	jalr	-804(ra) # 8000544c <_Z11printStringPKc>
    finishedD = true;
    80004778:	00100793          	li	a5,1
    8000477c:	00007717          	auipc	a4,0x7
    80004780:	26f70623          	sb	a5,620(a4) # 8000b9e8 <_ZL9finishedD>
    thread_dispatch();
    80004784:	ffffd097          	auipc	ra,0xffffd
    80004788:	b08080e7          	jalr	-1272(ra) # 8000128c <thread_dispatch>
}
    8000478c:	01813083          	ld	ra,24(sp)
    80004790:	01013403          	ld	s0,16(sp)
    80004794:	00813483          	ld	s1,8(sp)
    80004798:	00013903          	ld	s2,0(sp)
    8000479c:	02010113          	addi	sp,sp,32
    800047a0:	00008067          	ret

00000000800047a4 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800047a4:	fe010113          	addi	sp,sp,-32
    800047a8:	00113c23          	sd	ra,24(sp)
    800047ac:	00813823          	sd	s0,16(sp)
    800047b0:	00913423          	sd	s1,8(sp)
    800047b4:	01213023          	sd	s2,0(sp)
    800047b8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800047bc:	00000493          	li	s1,0
    800047c0:	0400006f          	j	80004800 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800047c4:	00005517          	auipc	a0,0x5
    800047c8:	86c50513          	addi	a0,a0,-1940 # 80009030 <CONSOLE_STATUS+0x20>
    800047cc:	00001097          	auipc	ra,0x1
    800047d0:	c80080e7          	jalr	-896(ra) # 8000544c <_Z11printStringPKc>
    800047d4:	00000613          	li	a2,0
    800047d8:	00a00593          	li	a1,10
    800047dc:	00048513          	mv	a0,s1
    800047e0:	00001097          	auipc	ra,0x1
    800047e4:	e1c080e7          	jalr	-484(ra) # 800055fc <_Z8printIntiii>
    800047e8:	00005517          	auipc	a0,0x5
    800047ec:	dd850513          	addi	a0,a0,-552 # 800095c0 <CONSOLE_STATUS+0x5b0>
    800047f0:	00001097          	auipc	ra,0x1
    800047f4:	c5c080e7          	jalr	-932(ra) # 8000544c <_Z11printStringPKc>
    for (; i < 3; i++) {
    800047f8:	0014849b          	addiw	s1,s1,1
    800047fc:	0ff4f493          	andi	s1,s1,255
    80004800:	00200793          	li	a5,2
    80004804:	fc97f0e3          	bgeu	a5,s1,800047c4 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004808:	00005517          	auipc	a0,0x5
    8000480c:	bd050513          	addi	a0,a0,-1072 # 800093d8 <CONSOLE_STATUS+0x3c8>
    80004810:	00001097          	auipc	ra,0x1
    80004814:	c3c080e7          	jalr	-964(ra) # 8000544c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004818:	00700313          	li	t1,7
    thread_dispatch();
    8000481c:	ffffd097          	auipc	ra,0xffffd
    80004820:	a70080e7          	jalr	-1424(ra) # 8000128c <thread_dispatch>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004824:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004828:	00005517          	auipc	a0,0x5
    8000482c:	82050513          	addi	a0,a0,-2016 # 80009048 <CONSOLE_STATUS+0x38>
    80004830:	00001097          	auipc	ra,0x1
    80004834:	c1c080e7          	jalr	-996(ra) # 8000544c <_Z11printStringPKc>
    80004838:	00000613          	li	a2,0
    8000483c:	00a00593          	li	a1,10
    80004840:	0009051b          	sext.w	a0,s2
    80004844:	00001097          	auipc	ra,0x1
    80004848:	db8080e7          	jalr	-584(ra) # 800055fc <_Z8printIntiii>
    8000484c:	00005517          	auipc	a0,0x5
    80004850:	d7450513          	addi	a0,a0,-652 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80004854:	00001097          	auipc	ra,0x1
    80004858:	bf8080e7          	jalr	-1032(ra) # 8000544c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    8000485c:	00c00513          	li	a0,12
    80004860:	00000097          	auipc	ra,0x0
    80004864:	d88080e7          	jalr	-632(ra) # 800045e8 <_ZL9fibonaccim>
    80004868:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    8000486c:	00004517          	auipc	a0,0x4
    80004870:	7e450513          	addi	a0,a0,2020 # 80009050 <CONSOLE_STATUS+0x40>
    80004874:	00001097          	auipc	ra,0x1
    80004878:	bd8080e7          	jalr	-1064(ra) # 8000544c <_Z11printStringPKc>
    8000487c:	00000613          	li	a2,0
    80004880:	00a00593          	li	a1,10
    80004884:	0009051b          	sext.w	a0,s2
    80004888:	00001097          	auipc	ra,0x1
    8000488c:	d74080e7          	jalr	-652(ra) # 800055fc <_Z8printIntiii>
    80004890:	00005517          	auipc	a0,0x5
    80004894:	d3050513          	addi	a0,a0,-720 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80004898:	00001097          	auipc	ra,0x1
    8000489c:	bb4080e7          	jalr	-1100(ra) # 8000544c <_Z11printStringPKc>
    800048a0:	0400006f          	j	800048e0 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800048a4:	00004517          	auipc	a0,0x4
    800048a8:	78c50513          	addi	a0,a0,1932 # 80009030 <CONSOLE_STATUS+0x20>
    800048ac:	00001097          	auipc	ra,0x1
    800048b0:	ba0080e7          	jalr	-1120(ra) # 8000544c <_Z11printStringPKc>
    800048b4:	00000613          	li	a2,0
    800048b8:	00a00593          	li	a1,10
    800048bc:	00048513          	mv	a0,s1
    800048c0:	00001097          	auipc	ra,0x1
    800048c4:	d3c080e7          	jalr	-708(ra) # 800055fc <_Z8printIntiii>
    800048c8:	00005517          	auipc	a0,0x5
    800048cc:	cf850513          	addi	a0,a0,-776 # 800095c0 <CONSOLE_STATUS+0x5b0>
    800048d0:	00001097          	auipc	ra,0x1
    800048d4:	b7c080e7          	jalr	-1156(ra) # 8000544c <_Z11printStringPKc>
    for (; i < 6; i++) {
    800048d8:	0014849b          	addiw	s1,s1,1
    800048dc:	0ff4f493          	andi	s1,s1,255
    800048e0:	00500793          	li	a5,5
    800048e4:	fc97f0e3          	bgeu	a5,s1,800048a4 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800048e8:	00005517          	auipc	a0,0x5
    800048ec:	ad050513          	addi	a0,a0,-1328 # 800093b8 <CONSOLE_STATUS+0x3a8>
    800048f0:	00001097          	auipc	ra,0x1
    800048f4:	b5c080e7          	jalr	-1188(ra) # 8000544c <_Z11printStringPKc>
    finishedC = true;
    800048f8:	00100793          	li	a5,1
    800048fc:	00007717          	auipc	a4,0x7
    80004900:	0ef706a3          	sb	a5,237(a4) # 8000b9e9 <_ZL9finishedC>
    thread_dispatch();
    80004904:	ffffd097          	auipc	ra,0xffffd
    80004908:	988080e7          	jalr	-1656(ra) # 8000128c <thread_dispatch>
}
    8000490c:	01813083          	ld	ra,24(sp)
    80004910:	01013403          	ld	s0,16(sp)
    80004914:	00813483          	ld	s1,8(sp)
    80004918:	00013903          	ld	s2,0(sp)
    8000491c:	02010113          	addi	sp,sp,32
    80004920:	00008067          	ret

0000000080004924 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004924:	fe010113          	addi	sp,sp,-32
    80004928:	00113c23          	sd	ra,24(sp)
    8000492c:	00813823          	sd	s0,16(sp)
    80004930:	00913423          	sd	s1,8(sp)
    80004934:	01213023          	sd	s2,0(sp)
    80004938:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000493c:	00000913          	li	s2,0
    80004940:	0380006f          	j	80004978 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80004944:	ffffd097          	auipc	ra,0xffffd
    80004948:	948080e7          	jalr	-1720(ra) # 8000128c <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    8000494c:	00148493          	addi	s1,s1,1
    80004950:	000027b7          	lui	a5,0x2
    80004954:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004958:	0097ee63          	bltu	a5,s1,80004974 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000495c:	00000713          	li	a4,0
    80004960:	000077b7          	lui	a5,0x7
    80004964:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004968:	fce7eee3          	bltu	a5,a4,80004944 <_ZL11workerBodyBPv+0x20>
    8000496c:	00170713          	addi	a4,a4,1
    80004970:	ff1ff06f          	j	80004960 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004974:	00190913          	addi	s2,s2,1
    80004978:	00f00793          	li	a5,15
    8000497c:	0527e063          	bltu	a5,s2,800049bc <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004980:	00004517          	auipc	a0,0x4
    80004984:	6a850513          	addi	a0,a0,1704 # 80009028 <CONSOLE_STATUS+0x18>
    80004988:	00001097          	auipc	ra,0x1
    8000498c:	ac4080e7          	jalr	-1340(ra) # 8000544c <_Z11printStringPKc>
    80004990:	00000613          	li	a2,0
    80004994:	00a00593          	li	a1,10
    80004998:	0009051b          	sext.w	a0,s2
    8000499c:	00001097          	auipc	ra,0x1
    800049a0:	c60080e7          	jalr	-928(ra) # 800055fc <_Z8printIntiii>
    800049a4:	00005517          	auipc	a0,0x5
    800049a8:	c1c50513          	addi	a0,a0,-996 # 800095c0 <CONSOLE_STATUS+0x5b0>
    800049ac:	00001097          	auipc	ra,0x1
    800049b0:	aa0080e7          	jalr	-1376(ra) # 8000544c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800049b4:	00000493          	li	s1,0
    800049b8:	f99ff06f          	j	80004950 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    800049bc:	00005517          	auipc	a0,0x5
    800049c0:	a0c50513          	addi	a0,a0,-1524 # 800093c8 <CONSOLE_STATUS+0x3b8>
    800049c4:	00001097          	auipc	ra,0x1
    800049c8:	a88080e7          	jalr	-1400(ra) # 8000544c <_Z11printStringPKc>
    finishedB = true;
    800049cc:	00100793          	li	a5,1
    800049d0:	00007717          	auipc	a4,0x7
    800049d4:	00f70d23          	sb	a5,26(a4) # 8000b9ea <_ZL9finishedB>
    thread_dispatch();
    800049d8:	ffffd097          	auipc	ra,0xffffd
    800049dc:	8b4080e7          	jalr	-1868(ra) # 8000128c <thread_dispatch>
}
    800049e0:	01813083          	ld	ra,24(sp)
    800049e4:	01013403          	ld	s0,16(sp)
    800049e8:	00813483          	ld	s1,8(sp)
    800049ec:	00013903          	ld	s2,0(sp)
    800049f0:	02010113          	addi	sp,sp,32
    800049f4:	00008067          	ret

00000000800049f8 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800049f8:	fe010113          	addi	sp,sp,-32
    800049fc:	00113c23          	sd	ra,24(sp)
    80004a00:	00813823          	sd	s0,16(sp)
    80004a04:	00913423          	sd	s1,8(sp)
    80004a08:	01213023          	sd	s2,0(sp)
    80004a0c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004a10:	00000913          	li	s2,0
    80004a14:	0380006f          	j	80004a4c <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80004a18:	ffffd097          	auipc	ra,0xffffd
    80004a1c:	874080e7          	jalr	-1932(ra) # 8000128c <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80004a20:	00148493          	addi	s1,s1,1
    80004a24:	000027b7          	lui	a5,0x2
    80004a28:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004a2c:	0097ee63          	bltu	a5,s1,80004a48 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004a30:	00000713          	li	a4,0
    80004a34:	000077b7          	lui	a5,0x7
    80004a38:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004a3c:	fce7eee3          	bltu	a5,a4,80004a18 <_ZL11workerBodyAPv+0x20>
    80004a40:	00170713          	addi	a4,a4,1
    80004a44:	ff1ff06f          	j	80004a34 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004a48:	00190913          	addi	s2,s2,1
    80004a4c:	00900793          	li	a5,9
    80004a50:	0527e063          	bltu	a5,s2,80004a90 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004a54:	00004517          	auipc	a0,0x4
    80004a58:	5cc50513          	addi	a0,a0,1484 # 80009020 <CONSOLE_STATUS+0x10>
    80004a5c:	00001097          	auipc	ra,0x1
    80004a60:	9f0080e7          	jalr	-1552(ra) # 8000544c <_Z11printStringPKc>
    80004a64:	00000613          	li	a2,0
    80004a68:	00a00593          	li	a1,10
    80004a6c:	0009051b          	sext.w	a0,s2
    80004a70:	00001097          	auipc	ra,0x1
    80004a74:	b8c080e7          	jalr	-1140(ra) # 800055fc <_Z8printIntiii>
    80004a78:	00005517          	auipc	a0,0x5
    80004a7c:	b4850513          	addi	a0,a0,-1208 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80004a80:	00001097          	auipc	ra,0x1
    80004a84:	9cc080e7          	jalr	-1588(ra) # 8000544c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004a88:	00000493          	li	s1,0
    80004a8c:	f99ff06f          	j	80004a24 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80004a90:	00005517          	auipc	a0,0x5
    80004a94:	92850513          	addi	a0,a0,-1752 # 800093b8 <CONSOLE_STATUS+0x3a8>
    80004a98:	00001097          	auipc	ra,0x1
    80004a9c:	9b4080e7          	jalr	-1612(ra) # 8000544c <_Z11printStringPKc>
    finishedA = true;
    80004aa0:	00100793          	li	a5,1
    80004aa4:	00007717          	auipc	a4,0x7
    80004aa8:	f4f703a3          	sb	a5,-185(a4) # 8000b9eb <_ZL9finishedA>
}
    80004aac:	01813083          	ld	ra,24(sp)
    80004ab0:	01013403          	ld	s0,16(sp)
    80004ab4:	00813483          	ld	s1,8(sp)
    80004ab8:	00013903          	ld	s2,0(sp)
    80004abc:	02010113          	addi	sp,sp,32
    80004ac0:	00008067          	ret

0000000080004ac4 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004ac4:	fd010113          	addi	sp,sp,-48
    80004ac8:	02113423          	sd	ra,40(sp)
    80004acc:	02813023          	sd	s0,32(sp)
    80004ad0:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004ad4:	00000613          	li	a2,0
    80004ad8:	00000597          	auipc	a1,0x0
    80004adc:	f2058593          	addi	a1,a1,-224 # 800049f8 <_ZL11workerBodyAPv>
    80004ae0:	fd040513          	addi	a0,s0,-48
    80004ae4:	ffffc097          	auipc	ra,0xffffc
    80004ae8:	708080e7          	jalr	1800(ra) # 800011ec <thread_create>
    printString("ThreadA created\n");
    80004aec:	00005517          	auipc	a0,0x5
    80004af0:	91c50513          	addi	a0,a0,-1764 # 80009408 <CONSOLE_STATUS+0x3f8>
    80004af4:	00001097          	auipc	ra,0x1
    80004af8:	958080e7          	jalr	-1704(ra) # 8000544c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004afc:	00000613          	li	a2,0
    80004b00:	00000597          	auipc	a1,0x0
    80004b04:	e2458593          	addi	a1,a1,-476 # 80004924 <_ZL11workerBodyBPv>
    80004b08:	fd840513          	addi	a0,s0,-40
    80004b0c:	ffffc097          	auipc	ra,0xffffc
    80004b10:	6e0080e7          	jalr	1760(ra) # 800011ec <thread_create>
    printString("ThreadB created\n");
    80004b14:	00005517          	auipc	a0,0x5
    80004b18:	90c50513          	addi	a0,a0,-1780 # 80009420 <CONSOLE_STATUS+0x410>
    80004b1c:	00001097          	auipc	ra,0x1
    80004b20:	930080e7          	jalr	-1744(ra) # 8000544c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004b24:	00000613          	li	a2,0
    80004b28:	00000597          	auipc	a1,0x0
    80004b2c:	c7c58593          	addi	a1,a1,-900 # 800047a4 <_ZL11workerBodyCPv>
    80004b30:	fe040513          	addi	a0,s0,-32
    80004b34:	ffffc097          	auipc	ra,0xffffc
    80004b38:	6b8080e7          	jalr	1720(ra) # 800011ec <thread_create>
    printString("ThreadC created\n");
    80004b3c:	00005517          	auipc	a0,0x5
    80004b40:	8fc50513          	addi	a0,a0,-1796 # 80009438 <CONSOLE_STATUS+0x428>
    80004b44:	00001097          	auipc	ra,0x1
    80004b48:	908080e7          	jalr	-1784(ra) # 8000544c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004b4c:	00000613          	li	a2,0
    80004b50:	00000597          	auipc	a1,0x0
    80004b54:	b0c58593          	addi	a1,a1,-1268 # 8000465c <_ZL11workerBodyDPv>
    80004b58:	fe840513          	addi	a0,s0,-24
    80004b5c:	ffffc097          	auipc	ra,0xffffc
    80004b60:	690080e7          	jalr	1680(ra) # 800011ec <thread_create>
    printString("ThreadD created\n");
    80004b64:	00005517          	auipc	a0,0x5
    80004b68:	8ec50513          	addi	a0,a0,-1812 # 80009450 <CONSOLE_STATUS+0x440>
    80004b6c:	00001097          	auipc	ra,0x1
    80004b70:	8e0080e7          	jalr	-1824(ra) # 8000544c <_Z11printStringPKc>
    80004b74:	00c0006f          	j	80004b80 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004b78:	ffffc097          	auipc	ra,0xffffc
    80004b7c:	714080e7          	jalr	1812(ra) # 8000128c <thread_dispatch>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004b80:	00007797          	auipc	a5,0x7
    80004b84:	e6b7c783          	lbu	a5,-405(a5) # 8000b9eb <_ZL9finishedA>
    80004b88:	fe0788e3          	beqz	a5,80004b78 <_Z18Threads_C_API_testv+0xb4>
    80004b8c:	00007797          	auipc	a5,0x7
    80004b90:	e5e7c783          	lbu	a5,-418(a5) # 8000b9ea <_ZL9finishedB>
    80004b94:	fe0782e3          	beqz	a5,80004b78 <_Z18Threads_C_API_testv+0xb4>
    80004b98:	00007797          	auipc	a5,0x7
    80004b9c:	e517c783          	lbu	a5,-431(a5) # 8000b9e9 <_ZL9finishedC>
    80004ba0:	fc078ce3          	beqz	a5,80004b78 <_Z18Threads_C_API_testv+0xb4>
    80004ba4:	00007797          	auipc	a5,0x7
    80004ba8:	e447c783          	lbu	a5,-444(a5) # 8000b9e8 <_ZL9finishedD>
    80004bac:	fc0786e3          	beqz	a5,80004b78 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80004bb0:	02813083          	ld	ra,40(sp)
    80004bb4:	02013403          	ld	s0,32(sp)
    80004bb8:	03010113          	addi	sp,sp,48
    80004bbc:	00008067          	ret

0000000080004bc0 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80004bc0:	fd010113          	addi	sp,sp,-48
    80004bc4:	02113423          	sd	ra,40(sp)
    80004bc8:	02813023          	sd	s0,32(sp)
    80004bcc:	00913c23          	sd	s1,24(sp)
    80004bd0:	01213823          	sd	s2,16(sp)
    80004bd4:	01313423          	sd	s3,8(sp)
    80004bd8:	03010413          	addi	s0,sp,48
    80004bdc:	00050993          	mv	s3,a0
    80004be0:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004be4:	00000913          	li	s2,0
    80004be8:	00c0006f          	j	80004bf4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x30) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004bec:	ffffd097          	auipc	ra,0xffffd
    80004bf0:	404080e7          	jalr	1028(ra) # 80001ff0 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x30) {
    80004bf4:	ffffd097          	auipc	ra,0xffffd
    80004bf8:	880080e7          	jalr	-1920(ra) # 80001474 <getc>
    80004bfc:	0005059b          	sext.w	a1,a0
    80004c00:	03000793          	li	a5,48
    80004c04:	02f58a63          	beq	a1,a5,80004c38 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004c08:	0084b503          	ld	a0,8(s1)
    80004c0c:	00001097          	auipc	ra,0x1
    80004c10:	c64080e7          	jalr	-924(ra) # 80005870 <_ZN9BufferCPP3putEi>
        i++;
    80004c14:	0019071b          	addiw	a4,s2,1
    80004c18:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004c1c:	0004a683          	lw	a3,0(s1)
    80004c20:	0026979b          	slliw	a5,a3,0x2
    80004c24:	00d787bb          	addw	a5,a5,a3
    80004c28:	0017979b          	slliw	a5,a5,0x1
    80004c2c:	02f767bb          	remw	a5,a4,a5
    80004c30:	fc0792e3          	bnez	a5,80004bf4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004c34:	fb9ff06f          	j	80004bec <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80004c38:	00100793          	li	a5,1
    80004c3c:	00007717          	auipc	a4,0x7
    80004c40:	daf72a23          	sw	a5,-588(a4) # 8000b9f0 <_ZL9threadEnd>
    td->buffer->put('!');
    80004c44:	0209b783          	ld	a5,32(s3)
    80004c48:	02100593          	li	a1,33
    80004c4c:	0087b503          	ld	a0,8(a5)
    80004c50:	00001097          	auipc	ra,0x1
    80004c54:	c20080e7          	jalr	-992(ra) # 80005870 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80004c58:	0104b503          	ld	a0,16(s1)
    80004c5c:	ffffd097          	auipc	ra,0xffffd
    80004c60:	424080e7          	jalr	1060(ra) # 80002080 <_ZN9Semaphore6signalEv>
}
    80004c64:	02813083          	ld	ra,40(sp)
    80004c68:	02013403          	ld	s0,32(sp)
    80004c6c:	01813483          	ld	s1,24(sp)
    80004c70:	01013903          	ld	s2,16(sp)
    80004c74:	00813983          	ld	s3,8(sp)
    80004c78:	03010113          	addi	sp,sp,48
    80004c7c:	00008067          	ret

0000000080004c80 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80004c80:	fe010113          	addi	sp,sp,-32
    80004c84:	00113c23          	sd	ra,24(sp)
    80004c88:	00813823          	sd	s0,16(sp)
    80004c8c:	00913423          	sd	s1,8(sp)
    80004c90:	01213023          	sd	s2,0(sp)
    80004c94:	02010413          	addi	s0,sp,32
    80004c98:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004c9c:	00000913          	li	s2,0
    80004ca0:	00c0006f          	j	80004cac <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004ca4:	ffffd097          	auipc	ra,0xffffd
    80004ca8:	34c080e7          	jalr	844(ra) # 80001ff0 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80004cac:	00007797          	auipc	a5,0x7
    80004cb0:	d447a783          	lw	a5,-700(a5) # 8000b9f0 <_ZL9threadEnd>
    80004cb4:	02079e63          	bnez	a5,80004cf0 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80004cb8:	0004a583          	lw	a1,0(s1)
    80004cbc:	0305859b          	addiw	a1,a1,48
    80004cc0:	0084b503          	ld	a0,8(s1)
    80004cc4:	00001097          	auipc	ra,0x1
    80004cc8:	bac080e7          	jalr	-1108(ra) # 80005870 <_ZN9BufferCPP3putEi>
        i++;
    80004ccc:	0019071b          	addiw	a4,s2,1
    80004cd0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004cd4:	0004a683          	lw	a3,0(s1)
    80004cd8:	0026979b          	slliw	a5,a3,0x2
    80004cdc:	00d787bb          	addw	a5,a5,a3
    80004ce0:	0017979b          	slliw	a5,a5,0x1
    80004ce4:	02f767bb          	remw	a5,a4,a5
    80004ce8:	fc0792e3          	bnez	a5,80004cac <_ZN12ProducerSync8producerEPv+0x2c>
    80004cec:	fb9ff06f          	j	80004ca4 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80004cf0:	0104b503          	ld	a0,16(s1)
    80004cf4:	ffffd097          	auipc	ra,0xffffd
    80004cf8:	38c080e7          	jalr	908(ra) # 80002080 <_ZN9Semaphore6signalEv>
}
    80004cfc:	01813083          	ld	ra,24(sp)
    80004d00:	01013403          	ld	s0,16(sp)
    80004d04:	00813483          	ld	s1,8(sp)
    80004d08:	00013903          	ld	s2,0(sp)
    80004d0c:	02010113          	addi	sp,sp,32
    80004d10:	00008067          	ret

0000000080004d14 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004d14:	fd010113          	addi	sp,sp,-48
    80004d18:	02113423          	sd	ra,40(sp)
    80004d1c:	02813023          	sd	s0,32(sp)
    80004d20:	00913c23          	sd	s1,24(sp)
    80004d24:	01213823          	sd	s2,16(sp)
    80004d28:	01313423          	sd	s3,8(sp)
    80004d2c:	01413023          	sd	s4,0(sp)
    80004d30:	03010413          	addi	s0,sp,48
    80004d34:	00050993          	mv	s3,a0
    80004d38:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004d3c:	00000a13          	li	s4,0
    80004d40:	01c0006f          	j	80004d5c <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80004d44:	ffffd097          	auipc	ra,0xffffd
    80004d48:	2ac080e7          	jalr	684(ra) # 80001ff0 <_ZN6Thread8dispatchEv>
    80004d4c:	0500006f          	j	80004d9c <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80004d50:	00a00513          	li	a0,10
    80004d54:	ffffc097          	auipc	ra,0xffffc
    80004d58:	6f8080e7          	jalr	1784(ra) # 8000144c <putc>
    while (!threadEnd) {
    80004d5c:	00007797          	auipc	a5,0x7
    80004d60:	c947a783          	lw	a5,-876(a5) # 8000b9f0 <_ZL9threadEnd>
    80004d64:	06079263          	bnez	a5,80004dc8 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80004d68:	00893503          	ld	a0,8(s2)
    80004d6c:	00001097          	auipc	ra,0x1
    80004d70:	b94080e7          	jalr	-1132(ra) # 80005900 <_ZN9BufferCPP3getEv>
        i++;
    80004d74:	001a049b          	addiw	s1,s4,1
    80004d78:	00048a1b          	sext.w	s4,s1
        putc(key);
    80004d7c:	0ff57513          	andi	a0,a0,255
    80004d80:	ffffc097          	auipc	ra,0xffffc
    80004d84:	6cc080e7          	jalr	1740(ra) # 8000144c <putc>
        if (i % (5 * data->id) == 0) {
    80004d88:	00092703          	lw	a4,0(s2)
    80004d8c:	0027179b          	slliw	a5,a4,0x2
    80004d90:	00e787bb          	addw	a5,a5,a4
    80004d94:	02f4e7bb          	remw	a5,s1,a5
    80004d98:	fa0786e3          	beqz	a5,80004d44 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80004d9c:	05000793          	li	a5,80
    80004da0:	02f4e4bb          	remw	s1,s1,a5
    80004da4:	fa049ce3          	bnez	s1,80004d5c <_ZN12ConsumerSync8consumerEPv+0x48>
    80004da8:	fa9ff06f          	j	80004d50 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80004dac:	0209b783          	ld	a5,32(s3)
    80004db0:	0087b503          	ld	a0,8(a5)
    80004db4:	00001097          	auipc	ra,0x1
    80004db8:	b4c080e7          	jalr	-1204(ra) # 80005900 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80004dbc:	0ff57513          	andi	a0,a0,255
    80004dc0:	ffffd097          	auipc	ra,0xffffd
    80004dc4:	394080e7          	jalr	916(ra) # 80002154 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80004dc8:	0209b783          	ld	a5,32(s3)
    80004dcc:	0087b503          	ld	a0,8(a5)
    80004dd0:	00001097          	auipc	ra,0x1
    80004dd4:	bbc080e7          	jalr	-1092(ra) # 8000598c <_ZN9BufferCPP6getCntEv>
    80004dd8:	fca04ae3          	bgtz	a0,80004dac <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80004ddc:	01093503          	ld	a0,16(s2)
    80004de0:	ffffd097          	auipc	ra,0xffffd
    80004de4:	2a0080e7          	jalr	672(ra) # 80002080 <_ZN9Semaphore6signalEv>
}
    80004de8:	02813083          	ld	ra,40(sp)
    80004dec:	02013403          	ld	s0,32(sp)
    80004df0:	01813483          	ld	s1,24(sp)
    80004df4:	01013903          	ld	s2,16(sp)
    80004df8:	00813983          	ld	s3,8(sp)
    80004dfc:	00013a03          	ld	s4,0(sp)
    80004e00:	03010113          	addi	sp,sp,48
    80004e04:	00008067          	ret

0000000080004e08 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80004e08:	f8010113          	addi	sp,sp,-128
    80004e0c:	06113c23          	sd	ra,120(sp)
    80004e10:	06813823          	sd	s0,112(sp)
    80004e14:	06913423          	sd	s1,104(sp)
    80004e18:	07213023          	sd	s2,96(sp)
    80004e1c:	05313c23          	sd	s3,88(sp)
    80004e20:	05413823          	sd	s4,80(sp)
    80004e24:	05513423          	sd	s5,72(sp)
    80004e28:	05613023          	sd	s6,64(sp)
    80004e2c:	03713c23          	sd	s7,56(sp)
    80004e30:	03813823          	sd	s8,48(sp)
    80004e34:	03913423          	sd	s9,40(sp)
    80004e38:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80004e3c:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80004e40:	00004517          	auipc	a0,0x4
    80004e44:	49050513          	addi	a0,a0,1168 # 800092d0 <CONSOLE_STATUS+0x2c0>
    80004e48:	00000097          	auipc	ra,0x0
    80004e4c:	604080e7          	jalr	1540(ra) # 8000544c <_Z11printStringPKc>
    getString(input, 30);
    80004e50:	01e00593          	li	a1,30
    80004e54:	f8040493          	addi	s1,s0,-128
    80004e58:	00048513          	mv	a0,s1
    80004e5c:	00000097          	auipc	ra,0x0
    80004e60:	678080e7          	jalr	1656(ra) # 800054d4 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004e64:	00048513          	mv	a0,s1
    80004e68:	00000097          	auipc	ra,0x0
    80004e6c:	744080e7          	jalr	1860(ra) # 800055ac <_Z11stringToIntPKc>
    80004e70:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80004e74:	00004517          	auipc	a0,0x4
    80004e78:	47c50513          	addi	a0,a0,1148 # 800092f0 <CONSOLE_STATUS+0x2e0>
    80004e7c:	00000097          	auipc	ra,0x0
    80004e80:	5d0080e7          	jalr	1488(ra) # 8000544c <_Z11printStringPKc>
    getString(input, 30);
    80004e84:	01e00593          	li	a1,30
    80004e88:	00048513          	mv	a0,s1
    80004e8c:	00000097          	auipc	ra,0x0
    80004e90:	648080e7          	jalr	1608(ra) # 800054d4 <_Z9getStringPci>
    n = stringToInt(input);
    80004e94:	00048513          	mv	a0,s1
    80004e98:	00000097          	auipc	ra,0x0
    80004e9c:	714080e7          	jalr	1812(ra) # 800055ac <_Z11stringToIntPKc>
    80004ea0:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80004ea4:	00004517          	auipc	a0,0x4
    80004ea8:	46c50513          	addi	a0,a0,1132 # 80009310 <CONSOLE_STATUS+0x300>
    80004eac:	00000097          	auipc	ra,0x0
    80004eb0:	5a0080e7          	jalr	1440(ra) # 8000544c <_Z11printStringPKc>
    80004eb4:	00000613          	li	a2,0
    80004eb8:	00a00593          	li	a1,10
    80004ebc:	00090513          	mv	a0,s2
    80004ec0:	00000097          	auipc	ra,0x0
    80004ec4:	73c080e7          	jalr	1852(ra) # 800055fc <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004ec8:	00004517          	auipc	a0,0x4
    80004ecc:	46050513          	addi	a0,a0,1120 # 80009328 <CONSOLE_STATUS+0x318>
    80004ed0:	00000097          	auipc	ra,0x0
    80004ed4:	57c080e7          	jalr	1404(ra) # 8000544c <_Z11printStringPKc>
    80004ed8:	00000613          	li	a2,0
    80004edc:	00a00593          	li	a1,10
    80004ee0:	00048513          	mv	a0,s1
    80004ee4:	00000097          	auipc	ra,0x0
    80004ee8:	718080e7          	jalr	1816(ra) # 800055fc <_Z8printIntiii>
    printString(".\n");
    80004eec:	00004517          	auipc	a0,0x4
    80004ef0:	45450513          	addi	a0,a0,1108 # 80009340 <CONSOLE_STATUS+0x330>
    80004ef4:	00000097          	auipc	ra,0x0
    80004ef8:	558080e7          	jalr	1368(ra) # 8000544c <_Z11printStringPKc>
    if(threadNum > n) {
    80004efc:	0324c463          	blt	s1,s2,80004f24 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80004f00:	03205c63          	blez	s2,80004f38 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004f04:	03800513          	li	a0,56
    80004f08:	ffffd097          	auipc	ra,0xffffd
    80004f0c:	efc080e7          	jalr	-260(ra) # 80001e04 <_Znwm>
    80004f10:	00050a93          	mv	s5,a0
    80004f14:	00048593          	mv	a1,s1
    80004f18:	00001097          	auipc	ra,0x1
    80004f1c:	804080e7          	jalr	-2044(ra) # 8000571c <_ZN9BufferCPPC1Ei>
    80004f20:	0300006f          	j	80004f50 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004f24:	00004517          	auipc	a0,0x4
    80004f28:	42450513          	addi	a0,a0,1060 # 80009348 <CONSOLE_STATUS+0x338>
    80004f2c:	00000097          	auipc	ra,0x0
    80004f30:	520080e7          	jalr	1312(ra) # 8000544c <_Z11printStringPKc>
        return;
    80004f34:	0140006f          	j	80004f48 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004f38:	00004517          	auipc	a0,0x4
    80004f3c:	45050513          	addi	a0,a0,1104 # 80009388 <CONSOLE_STATUS+0x378>
    80004f40:	00000097          	auipc	ra,0x0
    80004f44:	50c080e7          	jalr	1292(ra) # 8000544c <_Z11printStringPKc>
        return;
    80004f48:	000b8113          	mv	sp,s7
    80004f4c:	2380006f          	j	80005184 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80004f50:	01800513          	li	a0,24
    80004f54:	ffffd097          	auipc	ra,0xffffd
    80004f58:	eb0080e7          	jalr	-336(ra) # 80001e04 <_Znwm>
    80004f5c:	00050493          	mv	s1,a0
    80004f60:	00000593          	li	a1,0
    80004f64:	ffffd097          	auipc	ra,0xffffd
    80004f68:	0b4080e7          	jalr	180(ra) # 80002018 <_ZN9SemaphoreC1Ej>
    80004f6c:	00007797          	auipc	a5,0x7
    80004f70:	a897b623          	sd	s1,-1396(a5) # 8000b9f8 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80004f74:	00391793          	slli	a5,s2,0x3
    80004f78:	00f78793          	addi	a5,a5,15
    80004f7c:	ff07f793          	andi	a5,a5,-16
    80004f80:	40f10133          	sub	sp,sp,a5
    80004f84:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80004f88:	0019071b          	addiw	a4,s2,1
    80004f8c:	00171793          	slli	a5,a4,0x1
    80004f90:	00e787b3          	add	a5,a5,a4
    80004f94:	00379793          	slli	a5,a5,0x3
    80004f98:	00f78793          	addi	a5,a5,15
    80004f9c:	ff07f793          	andi	a5,a5,-16
    80004fa0:	40f10133          	sub	sp,sp,a5
    80004fa4:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80004fa8:	00191c13          	slli	s8,s2,0x1
    80004fac:	012c07b3          	add	a5,s8,s2
    80004fb0:	00379793          	slli	a5,a5,0x3
    80004fb4:	00fa07b3          	add	a5,s4,a5
    80004fb8:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004fbc:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80004fc0:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80004fc4:	02800513          	li	a0,40
    80004fc8:	ffffd097          	auipc	ra,0xffffd
    80004fcc:	e3c080e7          	jalr	-452(ra) # 80001e04 <_Znwm>
    80004fd0:	00050b13          	mv	s6,a0
    80004fd4:	012c0c33          	add	s8,s8,s2
    80004fd8:	003c1c13          	slli	s8,s8,0x3
    80004fdc:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80004fe0:	ffffd097          	auipc	ra,0xffffd
    80004fe4:	f2c080e7          	jalr	-212(ra) # 80001f0c <_ZN6ThreadC1Ev>
    80004fe8:	00007797          	auipc	a5,0x7
    80004fec:	8c078793          	addi	a5,a5,-1856 # 8000b8a8 <_ZTV12ConsumerSync+0x10>
    80004ff0:	00fb3023          	sd	a5,0(s6)
    80004ff4:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80004ff8:	000b0513          	mv	a0,s6
    80004ffc:	ffffd097          	auipc	ra,0xffffd
    80005000:	fa0080e7          	jalr	-96(ra) # 80001f9c <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005004:	00000493          	li	s1,0
    80005008:	0380006f          	j	80005040 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    8000500c:	00007797          	auipc	a5,0x7
    80005010:	87478793          	addi	a5,a5,-1932 # 8000b880 <_ZTV12ProducerSync+0x10>
    80005014:	00fcb023          	sd	a5,0(s9)
    80005018:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    8000501c:	00349793          	slli	a5,s1,0x3
    80005020:	00f987b3          	add	a5,s3,a5
    80005024:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80005028:	00349793          	slli	a5,s1,0x3
    8000502c:	00f987b3          	add	a5,s3,a5
    80005030:	0007b503          	ld	a0,0(a5)
    80005034:	ffffd097          	auipc	ra,0xffffd
    80005038:	f68080e7          	jalr	-152(ra) # 80001f9c <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    8000503c:	0014849b          	addiw	s1,s1,1
    80005040:	0b24d063          	bge	s1,s2,800050e0 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80005044:	00149793          	slli	a5,s1,0x1
    80005048:	009787b3          	add	a5,a5,s1
    8000504c:	00379793          	slli	a5,a5,0x3
    80005050:	00fa07b3          	add	a5,s4,a5
    80005054:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80005058:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    8000505c:	00007717          	auipc	a4,0x7
    80005060:	99c73703          	ld	a4,-1636(a4) # 8000b9f8 <_ZL10waitForAll>
    80005064:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80005068:	02905863          	blez	s1,80005098 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    8000506c:	02800513          	li	a0,40
    80005070:	ffffd097          	auipc	ra,0xffffd
    80005074:	d94080e7          	jalr	-620(ra) # 80001e04 <_Znwm>
    80005078:	00050c93          	mv	s9,a0
    8000507c:	00149c13          	slli	s8,s1,0x1
    80005080:	009c0c33          	add	s8,s8,s1
    80005084:	003c1c13          	slli	s8,s8,0x3
    80005088:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    8000508c:	ffffd097          	auipc	ra,0xffffd
    80005090:	e80080e7          	jalr	-384(ra) # 80001f0c <_ZN6ThreadC1Ev>
    80005094:	f79ff06f          	j	8000500c <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80005098:	02800513          	li	a0,40
    8000509c:	ffffd097          	auipc	ra,0xffffd
    800050a0:	d68080e7          	jalr	-664(ra) # 80001e04 <_Znwm>
    800050a4:	00050c93          	mv	s9,a0
    800050a8:	00149c13          	slli	s8,s1,0x1
    800050ac:	009c0c33          	add	s8,s8,s1
    800050b0:	003c1c13          	slli	s8,s8,0x3
    800050b4:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    800050b8:	ffffd097          	auipc	ra,0xffffd
    800050bc:	e54080e7          	jalr	-428(ra) # 80001f0c <_ZN6ThreadC1Ev>
    800050c0:	00006797          	auipc	a5,0x6
    800050c4:	79878793          	addi	a5,a5,1944 # 8000b858 <_ZTV16ProducerKeyboard+0x10>
    800050c8:	00fcb023          	sd	a5,0(s9)
    800050cc:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    800050d0:	00349793          	slli	a5,s1,0x3
    800050d4:	00f987b3          	add	a5,s3,a5
    800050d8:	0197b023          	sd	s9,0(a5)
    800050dc:	f4dff06f          	j	80005028 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    800050e0:	ffffd097          	auipc	ra,0xffffd
    800050e4:	f10080e7          	jalr	-240(ra) # 80001ff0 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    800050e8:	00000493          	li	s1,0
    800050ec:	00994e63          	blt	s2,s1,80005108 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    800050f0:	00007517          	auipc	a0,0x7
    800050f4:	90853503          	ld	a0,-1784(a0) # 8000b9f8 <_ZL10waitForAll>
    800050f8:	ffffd097          	auipc	ra,0xffffd
    800050fc:	f5c080e7          	jalr	-164(ra) # 80002054 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80005100:	0014849b          	addiw	s1,s1,1
    80005104:	fe9ff06f          	j	800050ec <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80005108:	00000493          	li	s1,0
    8000510c:	0080006f          	j	80005114 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80005110:	0014849b          	addiw	s1,s1,1
    80005114:	0324d263          	bge	s1,s2,80005138 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80005118:	00349793          	slli	a5,s1,0x3
    8000511c:	00f987b3          	add	a5,s3,a5
    80005120:	0007b503          	ld	a0,0(a5)
    80005124:	fe0506e3          	beqz	a0,80005110 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80005128:	00053783          	ld	a5,0(a0)
    8000512c:	0087b783          	ld	a5,8(a5)
    80005130:	000780e7          	jalr	a5
    80005134:	fddff06f          	j	80005110 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80005138:	000b0a63          	beqz	s6,8000514c <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    8000513c:	000b3783          	ld	a5,0(s6)
    80005140:	0087b783          	ld	a5,8(a5)
    80005144:	000b0513          	mv	a0,s6
    80005148:	000780e7          	jalr	a5
    delete waitForAll;
    8000514c:	00007517          	auipc	a0,0x7
    80005150:	8ac53503          	ld	a0,-1876(a0) # 8000b9f8 <_ZL10waitForAll>
    80005154:	00050863          	beqz	a0,80005164 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80005158:	00053783          	ld	a5,0(a0)
    8000515c:	0087b783          	ld	a5,8(a5)
    80005160:	000780e7          	jalr	a5
    delete buffer;
    80005164:	000a8e63          	beqz	s5,80005180 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80005168:	000a8513          	mv	a0,s5
    8000516c:	00001097          	auipc	ra,0x1
    80005170:	8a8080e7          	jalr	-1880(ra) # 80005a14 <_ZN9BufferCPPD1Ev>
    80005174:	000a8513          	mv	a0,s5
    80005178:	ffffd097          	auipc	ra,0xffffd
    8000517c:	cdc080e7          	jalr	-804(ra) # 80001e54 <_ZdlPv>
    80005180:	000b8113          	mv	sp,s7

}
    80005184:	f8040113          	addi	sp,s0,-128
    80005188:	07813083          	ld	ra,120(sp)
    8000518c:	07013403          	ld	s0,112(sp)
    80005190:	06813483          	ld	s1,104(sp)
    80005194:	06013903          	ld	s2,96(sp)
    80005198:	05813983          	ld	s3,88(sp)
    8000519c:	05013a03          	ld	s4,80(sp)
    800051a0:	04813a83          	ld	s5,72(sp)
    800051a4:	04013b03          	ld	s6,64(sp)
    800051a8:	03813b83          	ld	s7,56(sp)
    800051ac:	03013c03          	ld	s8,48(sp)
    800051b0:	02813c83          	ld	s9,40(sp)
    800051b4:	08010113          	addi	sp,sp,128
    800051b8:	00008067          	ret
    800051bc:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800051c0:	000a8513          	mv	a0,s5
    800051c4:	ffffd097          	auipc	ra,0xffffd
    800051c8:	c90080e7          	jalr	-880(ra) # 80001e54 <_ZdlPv>
    800051cc:	00048513          	mv	a0,s1
    800051d0:	00008097          	auipc	ra,0x8
    800051d4:	908080e7          	jalr	-1784(ra) # 8000cad8 <_Unwind_Resume>
    800051d8:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    800051dc:	00048513          	mv	a0,s1
    800051e0:	ffffd097          	auipc	ra,0xffffd
    800051e4:	c74080e7          	jalr	-908(ra) # 80001e54 <_ZdlPv>
    800051e8:	00090513          	mv	a0,s2
    800051ec:	00008097          	auipc	ra,0x8
    800051f0:	8ec080e7          	jalr	-1812(ra) # 8000cad8 <_Unwind_Resume>
    800051f4:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    800051f8:	000b0513          	mv	a0,s6
    800051fc:	ffffd097          	auipc	ra,0xffffd
    80005200:	c58080e7          	jalr	-936(ra) # 80001e54 <_ZdlPv>
    80005204:	00048513          	mv	a0,s1
    80005208:	00008097          	auipc	ra,0x8
    8000520c:	8d0080e7          	jalr	-1840(ra) # 8000cad8 <_Unwind_Resume>
    80005210:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80005214:	000c8513          	mv	a0,s9
    80005218:	ffffd097          	auipc	ra,0xffffd
    8000521c:	c3c080e7          	jalr	-964(ra) # 80001e54 <_ZdlPv>
    80005220:	00048513          	mv	a0,s1
    80005224:	00008097          	auipc	ra,0x8
    80005228:	8b4080e7          	jalr	-1868(ra) # 8000cad8 <_Unwind_Resume>
    8000522c:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80005230:	000c8513          	mv	a0,s9
    80005234:	ffffd097          	auipc	ra,0xffffd
    80005238:	c20080e7          	jalr	-992(ra) # 80001e54 <_ZdlPv>
    8000523c:	00048513          	mv	a0,s1
    80005240:	00008097          	auipc	ra,0x8
    80005244:	898080e7          	jalr	-1896(ra) # 8000cad8 <_Unwind_Resume>

0000000080005248 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005248:	ff010113          	addi	sp,sp,-16
    8000524c:	00113423          	sd	ra,8(sp)
    80005250:	00813023          	sd	s0,0(sp)
    80005254:	01010413          	addi	s0,sp,16
    80005258:	00006797          	auipc	a5,0x6
    8000525c:	65078793          	addi	a5,a5,1616 # 8000b8a8 <_ZTV12ConsumerSync+0x10>
    80005260:	00f53023          	sd	a5,0(a0)
    80005264:	ffffd097          	auipc	ra,0xffffd
    80005268:	b24080e7          	jalr	-1244(ra) # 80001d88 <_ZN6ThreadD1Ev>
    8000526c:	00813083          	ld	ra,8(sp)
    80005270:	00013403          	ld	s0,0(sp)
    80005274:	01010113          	addi	sp,sp,16
    80005278:	00008067          	ret

000000008000527c <_ZN12ConsumerSyncD0Ev>:
    8000527c:	fe010113          	addi	sp,sp,-32
    80005280:	00113c23          	sd	ra,24(sp)
    80005284:	00813823          	sd	s0,16(sp)
    80005288:	00913423          	sd	s1,8(sp)
    8000528c:	02010413          	addi	s0,sp,32
    80005290:	00050493          	mv	s1,a0
    80005294:	00006797          	auipc	a5,0x6
    80005298:	61478793          	addi	a5,a5,1556 # 8000b8a8 <_ZTV12ConsumerSync+0x10>
    8000529c:	00f53023          	sd	a5,0(a0)
    800052a0:	ffffd097          	auipc	ra,0xffffd
    800052a4:	ae8080e7          	jalr	-1304(ra) # 80001d88 <_ZN6ThreadD1Ev>
    800052a8:	00048513          	mv	a0,s1
    800052ac:	ffffd097          	auipc	ra,0xffffd
    800052b0:	ba8080e7          	jalr	-1112(ra) # 80001e54 <_ZdlPv>
    800052b4:	01813083          	ld	ra,24(sp)
    800052b8:	01013403          	ld	s0,16(sp)
    800052bc:	00813483          	ld	s1,8(sp)
    800052c0:	02010113          	addi	sp,sp,32
    800052c4:	00008067          	ret

00000000800052c8 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    800052c8:	ff010113          	addi	sp,sp,-16
    800052cc:	00113423          	sd	ra,8(sp)
    800052d0:	00813023          	sd	s0,0(sp)
    800052d4:	01010413          	addi	s0,sp,16
    800052d8:	00006797          	auipc	a5,0x6
    800052dc:	5a878793          	addi	a5,a5,1448 # 8000b880 <_ZTV12ProducerSync+0x10>
    800052e0:	00f53023          	sd	a5,0(a0)
    800052e4:	ffffd097          	auipc	ra,0xffffd
    800052e8:	aa4080e7          	jalr	-1372(ra) # 80001d88 <_ZN6ThreadD1Ev>
    800052ec:	00813083          	ld	ra,8(sp)
    800052f0:	00013403          	ld	s0,0(sp)
    800052f4:	01010113          	addi	sp,sp,16
    800052f8:	00008067          	ret

00000000800052fc <_ZN12ProducerSyncD0Ev>:
    800052fc:	fe010113          	addi	sp,sp,-32
    80005300:	00113c23          	sd	ra,24(sp)
    80005304:	00813823          	sd	s0,16(sp)
    80005308:	00913423          	sd	s1,8(sp)
    8000530c:	02010413          	addi	s0,sp,32
    80005310:	00050493          	mv	s1,a0
    80005314:	00006797          	auipc	a5,0x6
    80005318:	56c78793          	addi	a5,a5,1388 # 8000b880 <_ZTV12ProducerSync+0x10>
    8000531c:	00f53023          	sd	a5,0(a0)
    80005320:	ffffd097          	auipc	ra,0xffffd
    80005324:	a68080e7          	jalr	-1432(ra) # 80001d88 <_ZN6ThreadD1Ev>
    80005328:	00048513          	mv	a0,s1
    8000532c:	ffffd097          	auipc	ra,0xffffd
    80005330:	b28080e7          	jalr	-1240(ra) # 80001e54 <_ZdlPv>
    80005334:	01813083          	ld	ra,24(sp)
    80005338:	01013403          	ld	s0,16(sp)
    8000533c:	00813483          	ld	s1,8(sp)
    80005340:	02010113          	addi	sp,sp,32
    80005344:	00008067          	ret

0000000080005348 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005348:	ff010113          	addi	sp,sp,-16
    8000534c:	00113423          	sd	ra,8(sp)
    80005350:	00813023          	sd	s0,0(sp)
    80005354:	01010413          	addi	s0,sp,16
    80005358:	00006797          	auipc	a5,0x6
    8000535c:	50078793          	addi	a5,a5,1280 # 8000b858 <_ZTV16ProducerKeyboard+0x10>
    80005360:	00f53023          	sd	a5,0(a0)
    80005364:	ffffd097          	auipc	ra,0xffffd
    80005368:	a24080e7          	jalr	-1500(ra) # 80001d88 <_ZN6ThreadD1Ev>
    8000536c:	00813083          	ld	ra,8(sp)
    80005370:	00013403          	ld	s0,0(sp)
    80005374:	01010113          	addi	sp,sp,16
    80005378:	00008067          	ret

000000008000537c <_ZN16ProducerKeyboardD0Ev>:
    8000537c:	fe010113          	addi	sp,sp,-32
    80005380:	00113c23          	sd	ra,24(sp)
    80005384:	00813823          	sd	s0,16(sp)
    80005388:	00913423          	sd	s1,8(sp)
    8000538c:	02010413          	addi	s0,sp,32
    80005390:	00050493          	mv	s1,a0
    80005394:	00006797          	auipc	a5,0x6
    80005398:	4c478793          	addi	a5,a5,1220 # 8000b858 <_ZTV16ProducerKeyboard+0x10>
    8000539c:	00f53023          	sd	a5,0(a0)
    800053a0:	ffffd097          	auipc	ra,0xffffd
    800053a4:	9e8080e7          	jalr	-1560(ra) # 80001d88 <_ZN6ThreadD1Ev>
    800053a8:	00048513          	mv	a0,s1
    800053ac:	ffffd097          	auipc	ra,0xffffd
    800053b0:	aa8080e7          	jalr	-1368(ra) # 80001e54 <_ZdlPv>
    800053b4:	01813083          	ld	ra,24(sp)
    800053b8:	01013403          	ld	s0,16(sp)
    800053bc:	00813483          	ld	s1,8(sp)
    800053c0:	02010113          	addi	sp,sp,32
    800053c4:	00008067          	ret

00000000800053c8 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    800053c8:	ff010113          	addi	sp,sp,-16
    800053cc:	00113423          	sd	ra,8(sp)
    800053d0:	00813023          	sd	s0,0(sp)
    800053d4:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    800053d8:	02053583          	ld	a1,32(a0)
    800053dc:	fffff097          	auipc	ra,0xfffff
    800053e0:	7e4080e7          	jalr	2020(ra) # 80004bc0 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    800053e4:	00813083          	ld	ra,8(sp)
    800053e8:	00013403          	ld	s0,0(sp)
    800053ec:	01010113          	addi	sp,sp,16
    800053f0:	00008067          	ret

00000000800053f4 <_ZN12ProducerSync3runEv>:
    void run() override {
    800053f4:	ff010113          	addi	sp,sp,-16
    800053f8:	00113423          	sd	ra,8(sp)
    800053fc:	00813023          	sd	s0,0(sp)
    80005400:	01010413          	addi	s0,sp,16
        producer(td);
    80005404:	02053583          	ld	a1,32(a0)
    80005408:	00000097          	auipc	ra,0x0
    8000540c:	878080e7          	jalr	-1928(ra) # 80004c80 <_ZN12ProducerSync8producerEPv>
    }
    80005410:	00813083          	ld	ra,8(sp)
    80005414:	00013403          	ld	s0,0(sp)
    80005418:	01010113          	addi	sp,sp,16
    8000541c:	00008067          	ret

0000000080005420 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005420:	ff010113          	addi	sp,sp,-16
    80005424:	00113423          	sd	ra,8(sp)
    80005428:	00813023          	sd	s0,0(sp)
    8000542c:	01010413          	addi	s0,sp,16
        consumer(td);
    80005430:	02053583          	ld	a1,32(a0)
    80005434:	00000097          	auipc	ra,0x0
    80005438:	8e0080e7          	jalr	-1824(ra) # 80004d14 <_ZN12ConsumerSync8consumerEPv>
    }
    8000543c:	00813083          	ld	ra,8(sp)
    80005440:	00013403          	ld	s0,0(sp)
    80005444:	01010113          	addi	sp,sp,16
    80005448:	00008067          	ret

000000008000544c <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    8000544c:	fe010113          	addi	sp,sp,-32
    80005450:	00113c23          	sd	ra,24(sp)
    80005454:	00813823          	sd	s0,16(sp)
    80005458:	00913423          	sd	s1,8(sp)
    8000545c:	02010413          	addi	s0,sp,32
    80005460:	00050493          	mv	s1,a0
    LOCK();
    80005464:	00100613          	li	a2,1
    80005468:	00000593          	li	a1,0
    8000546c:	00006517          	auipc	a0,0x6
    80005470:	59450513          	addi	a0,a0,1428 # 8000ba00 <lockPrint>
    80005474:	ffffc097          	auipc	ra,0xffffc
    80005478:	cb0080e7          	jalr	-848(ra) # 80001124 <copy_and_swap>
    8000547c:	00050863          	beqz	a0,8000548c <_Z11printStringPKc+0x40>
    80005480:	ffffc097          	auipc	ra,0xffffc
    80005484:	e0c080e7          	jalr	-500(ra) # 8000128c <thread_dispatch>
    80005488:	fddff06f          	j	80005464 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    8000548c:	0004c503          	lbu	a0,0(s1)
    80005490:	00050a63          	beqz	a0,800054a4 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005494:	ffffc097          	auipc	ra,0xffffc
    80005498:	fb8080e7          	jalr	-72(ra) # 8000144c <putc>
        string++;
    8000549c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800054a0:	fedff06f          	j	8000548c <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    800054a4:	00000613          	li	a2,0
    800054a8:	00100593          	li	a1,1
    800054ac:	00006517          	auipc	a0,0x6
    800054b0:	55450513          	addi	a0,a0,1364 # 8000ba00 <lockPrint>
    800054b4:	ffffc097          	auipc	ra,0xffffc
    800054b8:	c70080e7          	jalr	-912(ra) # 80001124 <copy_and_swap>
    800054bc:	fe0514e3          	bnez	a0,800054a4 <_Z11printStringPKc+0x58>
}
    800054c0:	01813083          	ld	ra,24(sp)
    800054c4:	01013403          	ld	s0,16(sp)
    800054c8:	00813483          	ld	s1,8(sp)
    800054cc:	02010113          	addi	sp,sp,32
    800054d0:	00008067          	ret

00000000800054d4 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800054d4:	fd010113          	addi	sp,sp,-48
    800054d8:	02113423          	sd	ra,40(sp)
    800054dc:	02813023          	sd	s0,32(sp)
    800054e0:	00913c23          	sd	s1,24(sp)
    800054e4:	01213823          	sd	s2,16(sp)
    800054e8:	01313423          	sd	s3,8(sp)
    800054ec:	01413023          	sd	s4,0(sp)
    800054f0:	03010413          	addi	s0,sp,48
    800054f4:	00050993          	mv	s3,a0
    800054f8:	00058a13          	mv	s4,a1
    LOCK();
    800054fc:	00100613          	li	a2,1
    80005500:	00000593          	li	a1,0
    80005504:	00006517          	auipc	a0,0x6
    80005508:	4fc50513          	addi	a0,a0,1276 # 8000ba00 <lockPrint>
    8000550c:	ffffc097          	auipc	ra,0xffffc
    80005510:	c18080e7          	jalr	-1000(ra) # 80001124 <copy_and_swap>
    80005514:	00050863          	beqz	a0,80005524 <_Z9getStringPci+0x50>
    80005518:	ffffc097          	auipc	ra,0xffffc
    8000551c:	d74080e7          	jalr	-652(ra) # 8000128c <thread_dispatch>
    80005520:	fddff06f          	j	800054fc <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005524:	00000913          	li	s2,0
    80005528:	00090493          	mv	s1,s2
    8000552c:	0019091b          	addiw	s2,s2,1
    80005530:	03495a63          	bge	s2,s4,80005564 <_Z9getStringPci+0x90>
        cc = getc();
    80005534:	ffffc097          	auipc	ra,0xffffc
    80005538:	f40080e7          	jalr	-192(ra) # 80001474 <getc>
        if(cc < 1)
    8000553c:	02050463          	beqz	a0,80005564 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80005540:	009984b3          	add	s1,s3,s1
    80005544:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005548:	00a00793          	li	a5,10
    8000554c:	00f50a63          	beq	a0,a5,80005560 <_Z9getStringPci+0x8c>
    80005550:	00d00793          	li	a5,13
    80005554:	fcf51ae3          	bne	a0,a5,80005528 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80005558:	00090493          	mv	s1,s2
    8000555c:	0080006f          	j	80005564 <_Z9getStringPci+0x90>
    80005560:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005564:	009984b3          	add	s1,s3,s1
    80005568:	00048023          	sb	zero,0(s1)

    UNLOCK();
    8000556c:	00000613          	li	a2,0
    80005570:	00100593          	li	a1,1
    80005574:	00006517          	auipc	a0,0x6
    80005578:	48c50513          	addi	a0,a0,1164 # 8000ba00 <lockPrint>
    8000557c:	ffffc097          	auipc	ra,0xffffc
    80005580:	ba8080e7          	jalr	-1112(ra) # 80001124 <copy_and_swap>
    80005584:	fe0514e3          	bnez	a0,8000556c <_Z9getStringPci+0x98>
    return buf;
}
    80005588:	00098513          	mv	a0,s3
    8000558c:	02813083          	ld	ra,40(sp)
    80005590:	02013403          	ld	s0,32(sp)
    80005594:	01813483          	ld	s1,24(sp)
    80005598:	01013903          	ld	s2,16(sp)
    8000559c:	00813983          	ld	s3,8(sp)
    800055a0:	00013a03          	ld	s4,0(sp)
    800055a4:	03010113          	addi	sp,sp,48
    800055a8:	00008067          	ret

00000000800055ac <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800055ac:	ff010113          	addi	sp,sp,-16
    800055b0:	00813423          	sd	s0,8(sp)
    800055b4:	01010413          	addi	s0,sp,16
    800055b8:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800055bc:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800055c0:	0006c603          	lbu	a2,0(a3)
    800055c4:	fd06071b          	addiw	a4,a2,-48
    800055c8:	0ff77713          	andi	a4,a4,255
    800055cc:	00900793          	li	a5,9
    800055d0:	02e7e063          	bltu	a5,a4,800055f0 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800055d4:	0025179b          	slliw	a5,a0,0x2
    800055d8:	00a787bb          	addw	a5,a5,a0
    800055dc:	0017979b          	slliw	a5,a5,0x1
    800055e0:	00168693          	addi	a3,a3,1
    800055e4:	00c787bb          	addw	a5,a5,a2
    800055e8:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800055ec:	fd5ff06f          	j	800055c0 <_Z11stringToIntPKc+0x14>
    return n;
}
    800055f0:	00813403          	ld	s0,8(sp)
    800055f4:	01010113          	addi	sp,sp,16
    800055f8:	00008067          	ret

00000000800055fc <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800055fc:	fc010113          	addi	sp,sp,-64
    80005600:	02113c23          	sd	ra,56(sp)
    80005604:	02813823          	sd	s0,48(sp)
    80005608:	02913423          	sd	s1,40(sp)
    8000560c:	03213023          	sd	s2,32(sp)
    80005610:	01313c23          	sd	s3,24(sp)
    80005614:	04010413          	addi	s0,sp,64
    80005618:	00050493          	mv	s1,a0
    8000561c:	00058913          	mv	s2,a1
    80005620:	00060993          	mv	s3,a2
    LOCK();
    80005624:	00100613          	li	a2,1
    80005628:	00000593          	li	a1,0
    8000562c:	00006517          	auipc	a0,0x6
    80005630:	3d450513          	addi	a0,a0,980 # 8000ba00 <lockPrint>
    80005634:	ffffc097          	auipc	ra,0xffffc
    80005638:	af0080e7          	jalr	-1296(ra) # 80001124 <copy_and_swap>
    8000563c:	00050863          	beqz	a0,8000564c <_Z8printIntiii+0x50>
    80005640:	ffffc097          	auipc	ra,0xffffc
    80005644:	c4c080e7          	jalr	-948(ra) # 8000128c <thread_dispatch>
    80005648:	fddff06f          	j	80005624 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    8000564c:	00098463          	beqz	s3,80005654 <_Z8printIntiii+0x58>
    80005650:	0804c463          	bltz	s1,800056d8 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005654:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005658:	00000593          	li	a1,0
    }

    i = 0;
    8000565c:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005660:	0009079b          	sext.w	a5,s2
    80005664:	0325773b          	remuw	a4,a0,s2
    80005668:	00048613          	mv	a2,s1
    8000566c:	0014849b          	addiw	s1,s1,1
    80005670:	02071693          	slli	a3,a4,0x20
    80005674:	0206d693          	srli	a3,a3,0x20
    80005678:	00006717          	auipc	a4,0x6
    8000567c:	24870713          	addi	a4,a4,584 # 8000b8c0 <digits>
    80005680:	00d70733          	add	a4,a4,a3
    80005684:	00074683          	lbu	a3,0(a4)
    80005688:	fd040713          	addi	a4,s0,-48
    8000568c:	00c70733          	add	a4,a4,a2
    80005690:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005694:	0005071b          	sext.w	a4,a0
    80005698:	0325553b          	divuw	a0,a0,s2
    8000569c:	fcf772e3          	bgeu	a4,a5,80005660 <_Z8printIntiii+0x64>
    if(neg)
    800056a0:	00058c63          	beqz	a1,800056b8 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    800056a4:	fd040793          	addi	a5,s0,-48
    800056a8:	009784b3          	add	s1,a5,s1
    800056ac:	02d00793          	li	a5,45
    800056b0:	fef48823          	sb	a5,-16(s1)
    800056b4:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800056b8:	fff4849b          	addiw	s1,s1,-1
    800056bc:	0204c463          	bltz	s1,800056e4 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    800056c0:	fd040793          	addi	a5,s0,-48
    800056c4:	009787b3          	add	a5,a5,s1
    800056c8:	ff07c503          	lbu	a0,-16(a5)
    800056cc:	ffffc097          	auipc	ra,0xffffc
    800056d0:	d80080e7          	jalr	-640(ra) # 8000144c <putc>
    800056d4:	fe5ff06f          	j	800056b8 <_Z8printIntiii+0xbc>
        x = -xx;
    800056d8:	4090053b          	negw	a0,s1
        neg = 1;
    800056dc:	00100593          	li	a1,1
        x = -xx;
    800056e0:	f7dff06f          	j	8000565c <_Z8printIntiii+0x60>

    UNLOCK();
    800056e4:	00000613          	li	a2,0
    800056e8:	00100593          	li	a1,1
    800056ec:	00006517          	auipc	a0,0x6
    800056f0:	31450513          	addi	a0,a0,788 # 8000ba00 <lockPrint>
    800056f4:	ffffc097          	auipc	ra,0xffffc
    800056f8:	a30080e7          	jalr	-1488(ra) # 80001124 <copy_and_swap>
    800056fc:	fe0514e3          	bnez	a0,800056e4 <_Z8printIntiii+0xe8>
    80005700:	03813083          	ld	ra,56(sp)
    80005704:	03013403          	ld	s0,48(sp)
    80005708:	02813483          	ld	s1,40(sp)
    8000570c:	02013903          	ld	s2,32(sp)
    80005710:	01813983          	ld	s3,24(sp)
    80005714:	04010113          	addi	sp,sp,64
    80005718:	00008067          	ret

000000008000571c <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    8000571c:	fd010113          	addi	sp,sp,-48
    80005720:	02113423          	sd	ra,40(sp)
    80005724:	02813023          	sd	s0,32(sp)
    80005728:	00913c23          	sd	s1,24(sp)
    8000572c:	01213823          	sd	s2,16(sp)
    80005730:	01313423          	sd	s3,8(sp)
    80005734:	03010413          	addi	s0,sp,48
    80005738:	00050493          	mv	s1,a0
    8000573c:	00058913          	mv	s2,a1
    80005740:	0015879b          	addiw	a5,a1,1
    80005744:	0007851b          	sext.w	a0,a5
    80005748:	00f4a023          	sw	a5,0(s1)
    8000574c:	0004a823          	sw	zero,16(s1)
    80005750:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005754:	00251513          	slli	a0,a0,0x2
    80005758:	ffffc097          	auipc	ra,0xffffc
    8000575c:	a04080e7          	jalr	-1532(ra) # 8000115c <mem_alloc>
    80005760:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005764:	01800513          	li	a0,24
    80005768:	ffffc097          	auipc	ra,0xffffc
    8000576c:	69c080e7          	jalr	1692(ra) # 80001e04 <_Znwm>
    80005770:	00050993          	mv	s3,a0
    80005774:	00000593          	li	a1,0
    80005778:	ffffd097          	auipc	ra,0xffffd
    8000577c:	8a0080e7          	jalr	-1888(ra) # 80002018 <_ZN9SemaphoreC1Ej>
    80005780:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005784:	01800513          	li	a0,24
    80005788:	ffffc097          	auipc	ra,0xffffc
    8000578c:	67c080e7          	jalr	1660(ra) # 80001e04 <_Znwm>
    80005790:	00050993          	mv	s3,a0
    80005794:	00090593          	mv	a1,s2
    80005798:	ffffd097          	auipc	ra,0xffffd
    8000579c:	880080e7          	jalr	-1920(ra) # 80002018 <_ZN9SemaphoreC1Ej>
    800057a0:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    800057a4:	01800513          	li	a0,24
    800057a8:	ffffc097          	auipc	ra,0xffffc
    800057ac:	65c080e7          	jalr	1628(ra) # 80001e04 <_Znwm>
    800057b0:	00050913          	mv	s2,a0
    800057b4:	00100593          	li	a1,1
    800057b8:	ffffd097          	auipc	ra,0xffffd
    800057bc:	860080e7          	jalr	-1952(ra) # 80002018 <_ZN9SemaphoreC1Ej>
    800057c0:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    800057c4:	01800513          	li	a0,24
    800057c8:	ffffc097          	auipc	ra,0xffffc
    800057cc:	63c080e7          	jalr	1596(ra) # 80001e04 <_Znwm>
    800057d0:	00050913          	mv	s2,a0
    800057d4:	00100593          	li	a1,1
    800057d8:	ffffd097          	auipc	ra,0xffffd
    800057dc:	840080e7          	jalr	-1984(ra) # 80002018 <_ZN9SemaphoreC1Ej>
    800057e0:	0324b823          	sd	s2,48(s1)
}
    800057e4:	02813083          	ld	ra,40(sp)
    800057e8:	02013403          	ld	s0,32(sp)
    800057ec:	01813483          	ld	s1,24(sp)
    800057f0:	01013903          	ld	s2,16(sp)
    800057f4:	00813983          	ld	s3,8(sp)
    800057f8:	03010113          	addi	sp,sp,48
    800057fc:	00008067          	ret
    80005800:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005804:	00098513          	mv	a0,s3
    80005808:	ffffc097          	auipc	ra,0xffffc
    8000580c:	64c080e7          	jalr	1612(ra) # 80001e54 <_ZdlPv>
    80005810:	00048513          	mv	a0,s1
    80005814:	00007097          	auipc	ra,0x7
    80005818:	2c4080e7          	jalr	708(ra) # 8000cad8 <_Unwind_Resume>
    8000581c:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005820:	00098513          	mv	a0,s3
    80005824:	ffffc097          	auipc	ra,0xffffc
    80005828:	630080e7          	jalr	1584(ra) # 80001e54 <_ZdlPv>
    8000582c:	00048513          	mv	a0,s1
    80005830:	00007097          	auipc	ra,0x7
    80005834:	2a8080e7          	jalr	680(ra) # 8000cad8 <_Unwind_Resume>
    80005838:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    8000583c:	00090513          	mv	a0,s2
    80005840:	ffffc097          	auipc	ra,0xffffc
    80005844:	614080e7          	jalr	1556(ra) # 80001e54 <_ZdlPv>
    80005848:	00048513          	mv	a0,s1
    8000584c:	00007097          	auipc	ra,0x7
    80005850:	28c080e7          	jalr	652(ra) # 8000cad8 <_Unwind_Resume>
    80005854:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005858:	00090513          	mv	a0,s2
    8000585c:	ffffc097          	auipc	ra,0xffffc
    80005860:	5f8080e7          	jalr	1528(ra) # 80001e54 <_ZdlPv>
    80005864:	00048513          	mv	a0,s1
    80005868:	00007097          	auipc	ra,0x7
    8000586c:	270080e7          	jalr	624(ra) # 8000cad8 <_Unwind_Resume>

0000000080005870 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005870:	fe010113          	addi	sp,sp,-32
    80005874:	00113c23          	sd	ra,24(sp)
    80005878:	00813823          	sd	s0,16(sp)
    8000587c:	00913423          	sd	s1,8(sp)
    80005880:	01213023          	sd	s2,0(sp)
    80005884:	02010413          	addi	s0,sp,32
    80005888:	00050493          	mv	s1,a0
    8000588c:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005890:	01853503          	ld	a0,24(a0)
    80005894:	ffffc097          	auipc	ra,0xffffc
    80005898:	7c0080e7          	jalr	1984(ra) # 80002054 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    8000589c:	0304b503          	ld	a0,48(s1)
    800058a0:	ffffc097          	auipc	ra,0xffffc
    800058a4:	7b4080e7          	jalr	1972(ra) # 80002054 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800058a8:	0084b783          	ld	a5,8(s1)
    800058ac:	0144a703          	lw	a4,20(s1)
    800058b0:	00271713          	slli	a4,a4,0x2
    800058b4:	00e787b3          	add	a5,a5,a4
    800058b8:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800058bc:	0144a783          	lw	a5,20(s1)
    800058c0:	0017879b          	addiw	a5,a5,1
    800058c4:	0004a703          	lw	a4,0(s1)
    800058c8:	02e7e7bb          	remw	a5,a5,a4
    800058cc:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800058d0:	0304b503          	ld	a0,48(s1)
    800058d4:	ffffc097          	auipc	ra,0xffffc
    800058d8:	7ac080e7          	jalr	1964(ra) # 80002080 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    800058dc:	0204b503          	ld	a0,32(s1)
    800058e0:	ffffc097          	auipc	ra,0xffffc
    800058e4:	7a0080e7          	jalr	1952(ra) # 80002080 <_ZN9Semaphore6signalEv>

}
    800058e8:	01813083          	ld	ra,24(sp)
    800058ec:	01013403          	ld	s0,16(sp)
    800058f0:	00813483          	ld	s1,8(sp)
    800058f4:	00013903          	ld	s2,0(sp)
    800058f8:	02010113          	addi	sp,sp,32
    800058fc:	00008067          	ret

0000000080005900 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005900:	fe010113          	addi	sp,sp,-32
    80005904:	00113c23          	sd	ra,24(sp)
    80005908:	00813823          	sd	s0,16(sp)
    8000590c:	00913423          	sd	s1,8(sp)
    80005910:	01213023          	sd	s2,0(sp)
    80005914:	02010413          	addi	s0,sp,32
    80005918:	00050493          	mv	s1,a0
    itemAvailable->wait();
    8000591c:	02053503          	ld	a0,32(a0)
    80005920:	ffffc097          	auipc	ra,0xffffc
    80005924:	734080e7          	jalr	1844(ra) # 80002054 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005928:	0284b503          	ld	a0,40(s1)
    8000592c:	ffffc097          	auipc	ra,0xffffc
    80005930:	728080e7          	jalr	1832(ra) # 80002054 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005934:	0084b703          	ld	a4,8(s1)
    80005938:	0104a783          	lw	a5,16(s1)
    8000593c:	00279693          	slli	a3,a5,0x2
    80005940:	00d70733          	add	a4,a4,a3
    80005944:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005948:	0017879b          	addiw	a5,a5,1
    8000594c:	0004a703          	lw	a4,0(s1)
    80005950:	02e7e7bb          	remw	a5,a5,a4
    80005954:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005958:	0284b503          	ld	a0,40(s1)
    8000595c:	ffffc097          	auipc	ra,0xffffc
    80005960:	724080e7          	jalr	1828(ra) # 80002080 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005964:	0184b503          	ld	a0,24(s1)
    80005968:	ffffc097          	auipc	ra,0xffffc
    8000596c:	718080e7          	jalr	1816(ra) # 80002080 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005970:	00090513          	mv	a0,s2
    80005974:	01813083          	ld	ra,24(sp)
    80005978:	01013403          	ld	s0,16(sp)
    8000597c:	00813483          	ld	s1,8(sp)
    80005980:	00013903          	ld	s2,0(sp)
    80005984:	02010113          	addi	sp,sp,32
    80005988:	00008067          	ret

000000008000598c <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    8000598c:	fe010113          	addi	sp,sp,-32
    80005990:	00113c23          	sd	ra,24(sp)
    80005994:	00813823          	sd	s0,16(sp)
    80005998:	00913423          	sd	s1,8(sp)
    8000599c:	01213023          	sd	s2,0(sp)
    800059a0:	02010413          	addi	s0,sp,32
    800059a4:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800059a8:	02853503          	ld	a0,40(a0)
    800059ac:	ffffc097          	auipc	ra,0xffffc
    800059b0:	6a8080e7          	jalr	1704(ra) # 80002054 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    800059b4:	0304b503          	ld	a0,48(s1)
    800059b8:	ffffc097          	auipc	ra,0xffffc
    800059bc:	69c080e7          	jalr	1692(ra) # 80002054 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    800059c0:	0144a783          	lw	a5,20(s1)
    800059c4:	0104a903          	lw	s2,16(s1)
    800059c8:	0327ce63          	blt	a5,s2,80005a04 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    800059cc:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    800059d0:	0304b503          	ld	a0,48(s1)
    800059d4:	ffffc097          	auipc	ra,0xffffc
    800059d8:	6ac080e7          	jalr	1708(ra) # 80002080 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    800059dc:	0284b503          	ld	a0,40(s1)
    800059e0:	ffffc097          	auipc	ra,0xffffc
    800059e4:	6a0080e7          	jalr	1696(ra) # 80002080 <_ZN9Semaphore6signalEv>

    return ret;
}
    800059e8:	00090513          	mv	a0,s2
    800059ec:	01813083          	ld	ra,24(sp)
    800059f0:	01013403          	ld	s0,16(sp)
    800059f4:	00813483          	ld	s1,8(sp)
    800059f8:	00013903          	ld	s2,0(sp)
    800059fc:	02010113          	addi	sp,sp,32
    80005a00:	00008067          	ret
        ret = cap - head + tail;
    80005a04:	0004a703          	lw	a4,0(s1)
    80005a08:	4127093b          	subw	s2,a4,s2
    80005a0c:	00f9093b          	addw	s2,s2,a5
    80005a10:	fc1ff06f          	j	800059d0 <_ZN9BufferCPP6getCntEv+0x44>

0000000080005a14 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005a14:	fe010113          	addi	sp,sp,-32
    80005a18:	00113c23          	sd	ra,24(sp)
    80005a1c:	00813823          	sd	s0,16(sp)
    80005a20:	00913423          	sd	s1,8(sp)
    80005a24:	02010413          	addi	s0,sp,32
    80005a28:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005a2c:	00a00513          	li	a0,10
    80005a30:	ffffc097          	auipc	ra,0xffffc
    80005a34:	724080e7          	jalr	1828(ra) # 80002154 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005a38:	00004517          	auipc	a0,0x4
    80005a3c:	a3050513          	addi	a0,a0,-1488 # 80009468 <CONSOLE_STATUS+0x458>
    80005a40:	00000097          	auipc	ra,0x0
    80005a44:	a0c080e7          	jalr	-1524(ra) # 8000544c <_Z11printStringPKc>
    while (getCnt()) {
    80005a48:	00048513          	mv	a0,s1
    80005a4c:	00000097          	auipc	ra,0x0
    80005a50:	f40080e7          	jalr	-192(ra) # 8000598c <_ZN9BufferCPP6getCntEv>
    80005a54:	02050c63          	beqz	a0,80005a8c <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005a58:	0084b783          	ld	a5,8(s1)
    80005a5c:	0104a703          	lw	a4,16(s1)
    80005a60:	00271713          	slli	a4,a4,0x2
    80005a64:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80005a68:	0007c503          	lbu	a0,0(a5)
    80005a6c:	ffffc097          	auipc	ra,0xffffc
    80005a70:	6e8080e7          	jalr	1768(ra) # 80002154 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005a74:	0104a783          	lw	a5,16(s1)
    80005a78:	0017879b          	addiw	a5,a5,1
    80005a7c:	0004a703          	lw	a4,0(s1)
    80005a80:	02e7e7bb          	remw	a5,a5,a4
    80005a84:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005a88:	fc1ff06f          	j	80005a48 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005a8c:	02100513          	li	a0,33
    80005a90:	ffffc097          	auipc	ra,0xffffc
    80005a94:	6c4080e7          	jalr	1732(ra) # 80002154 <_ZN7Console4putcEc>
    Console::putc('\n');
    80005a98:	00a00513          	li	a0,10
    80005a9c:	ffffc097          	auipc	ra,0xffffc
    80005aa0:	6b8080e7          	jalr	1720(ra) # 80002154 <_ZN7Console4putcEc>
    mem_free(buffer);
    80005aa4:	0084b503          	ld	a0,8(s1)
    80005aa8:	ffffb097          	auipc	ra,0xffffb
    80005aac:	6f4080e7          	jalr	1780(ra) # 8000119c <mem_free>
    delete itemAvailable;
    80005ab0:	0204b503          	ld	a0,32(s1)
    80005ab4:	00050863          	beqz	a0,80005ac4 <_ZN9BufferCPPD1Ev+0xb0>
    80005ab8:	00053783          	ld	a5,0(a0)
    80005abc:	0087b783          	ld	a5,8(a5)
    80005ac0:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005ac4:	0184b503          	ld	a0,24(s1)
    80005ac8:	00050863          	beqz	a0,80005ad8 <_ZN9BufferCPPD1Ev+0xc4>
    80005acc:	00053783          	ld	a5,0(a0)
    80005ad0:	0087b783          	ld	a5,8(a5)
    80005ad4:	000780e7          	jalr	a5
    delete mutexTail;
    80005ad8:	0304b503          	ld	a0,48(s1)
    80005adc:	00050863          	beqz	a0,80005aec <_ZN9BufferCPPD1Ev+0xd8>
    80005ae0:	00053783          	ld	a5,0(a0)
    80005ae4:	0087b783          	ld	a5,8(a5)
    80005ae8:	000780e7          	jalr	a5
    delete mutexHead;
    80005aec:	0284b503          	ld	a0,40(s1)
    80005af0:	00050863          	beqz	a0,80005b00 <_ZN9BufferCPPD1Ev+0xec>
    80005af4:	00053783          	ld	a5,0(a0)
    80005af8:	0087b783          	ld	a5,8(a5)
    80005afc:	000780e7          	jalr	a5
}
    80005b00:	01813083          	ld	ra,24(sp)
    80005b04:	01013403          	ld	s0,16(sp)
    80005b08:	00813483          	ld	s1,8(sp)
    80005b0c:	02010113          	addi	sp,sp,32
    80005b10:	00008067          	ret

0000000080005b14 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80005b14:	fe010113          	addi	sp,sp,-32
    80005b18:	00113c23          	sd	ra,24(sp)
    80005b1c:	00813823          	sd	s0,16(sp)
    80005b20:	00913423          	sd	s1,8(sp)
    80005b24:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80005b28:	00004517          	auipc	a0,0x4
    80005b2c:	95850513          	addi	a0,a0,-1704 # 80009480 <CONSOLE_STATUS+0x470>
    80005b30:	00000097          	auipc	ra,0x0
    80005b34:	91c080e7          	jalr	-1764(ra) # 8000544c <_Z11printStringPKc>
    int test = getc() - '0';
    80005b38:	ffffc097          	auipc	ra,0xffffc
    80005b3c:	93c080e7          	jalr	-1732(ra) # 80001474 <getc>
    80005b40:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80005b44:	ffffc097          	auipc	ra,0xffffc
    80005b48:	930080e7          	jalr	-1744(ra) # 80001474 <getc>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80005b4c:	00800793          	li	a5,8
    80005b50:	1297e863          	bltu	a5,s1,80005c80 <_Z8userMainv+0x16c>
    80005b54:	00249493          	slli	s1,s1,0x2
    80005b58:	00004717          	auipc	a4,0x4
    80005b5c:	bb870713          	addi	a4,a4,-1096 # 80009710 <CONSOLE_STATUS+0x700>
    80005b60:	00e484b3          	add	s1,s1,a4
    80005b64:	0004a783          	lw	a5,0(s1)
    80005b68:	00e787b3          	add	a5,a5,a4
    80005b6c:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    80005b70:	fffff097          	auipc	ra,0xfffff
    80005b74:	f54080e7          	jalr	-172(ra) # 80004ac4 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80005b78:	00004517          	auipc	a0,0x4
    80005b7c:	92850513          	addi	a0,a0,-1752 # 800094a0 <CONSOLE_STATUS+0x490>
    80005b80:	00000097          	auipc	ra,0x0
    80005b84:	8cc080e7          	jalr	-1844(ra) # 8000544c <_Z11printStringPKc>

            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80005b88:	01813083          	ld	ra,24(sp)
    80005b8c:	01013403          	ld	s0,16(sp)
    80005b90:	00813483          	ld	s1,8(sp)
    80005b94:	02010113          	addi	sp,sp,32
    80005b98:	00008067          	ret
            Threads_CPP_API_test();
    80005b9c:	ffffe097          	auipc	ra,0xffffe
    80005ba0:	e08080e7          	jalr	-504(ra) # 800039a4 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80005ba4:	00004517          	auipc	a0,0x4
    80005ba8:	93c50513          	addi	a0,a0,-1732 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80005bac:	00000097          	auipc	ra,0x0
    80005bb0:	8a0080e7          	jalr	-1888(ra) # 8000544c <_Z11printStringPKc>
            break;
    80005bb4:	fd5ff06f          	j	80005b88 <_Z8userMainv+0x74>
            producerConsumer_C_API();
    80005bb8:	ffffd097          	auipc	ra,0xffffd
    80005bbc:	640080e7          	jalr	1600(ra) # 800031f8 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80005bc0:	00004517          	auipc	a0,0x4
    80005bc4:	96050513          	addi	a0,a0,-1696 # 80009520 <CONSOLE_STATUS+0x510>
    80005bc8:	00000097          	auipc	ra,0x0
    80005bcc:	884080e7          	jalr	-1916(ra) # 8000544c <_Z11printStringPKc>
            break;
    80005bd0:	fb9ff06f          	j	80005b88 <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    80005bd4:	fffff097          	auipc	ra,0xfffff
    80005bd8:	234080e7          	jalr	564(ra) # 80004e08 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80005bdc:	00004517          	auipc	a0,0x4
    80005be0:	99450513          	addi	a0,a0,-1644 # 80009570 <CONSOLE_STATUS+0x560>
    80005be4:	00000097          	auipc	ra,0x0
    80005be8:	868080e7          	jalr	-1944(ra) # 8000544c <_Z11printStringPKc>
            break;
    80005bec:	f9dff06f          	j	80005b88 <_Z8userMainv+0x74>
            testSleeping();
    80005bf0:	00000097          	auipc	ra,0x0
    80005bf4:	148080e7          	jalr	328(ra) # 80005d38 <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    80005bf8:	00004517          	auipc	a0,0x4
    80005bfc:	9d050513          	addi	a0,a0,-1584 # 800095c8 <CONSOLE_STATUS+0x5b8>
    80005c00:	00000097          	auipc	ra,0x0
    80005c04:	84c080e7          	jalr	-1972(ra) # 8000544c <_Z11printStringPKc>
            break;
    80005c08:	f81ff06f          	j	80005b88 <_Z8userMainv+0x74>
            testConsumerProducer();
    80005c0c:	ffffe097          	auipc	ra,0xffffe
    80005c10:	258080e7          	jalr	600(ra) # 80003e64 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    80005c14:	00004517          	auipc	a0,0x4
    80005c18:	9e450513          	addi	a0,a0,-1564 # 800095f8 <CONSOLE_STATUS+0x5e8>
    80005c1c:	00000097          	auipc	ra,0x0
    80005c20:	830080e7          	jalr	-2000(ra) # 8000544c <_Z11printStringPKc>
            break;
    80005c24:	f65ff06f          	j	80005b88 <_Z8userMainv+0x74>
            System_Mode_test();
    80005c28:	00000097          	auipc	ra,0x0
    80005c2c:	684080e7          	jalr	1668(ra) # 800062ac <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80005c30:	00004517          	auipc	a0,0x4
    80005c34:	a0850513          	addi	a0,a0,-1528 # 80009638 <CONSOLE_STATUS+0x628>
    80005c38:	00000097          	auipc	ra,0x0
    80005c3c:	814080e7          	jalr	-2028(ra) # 8000544c <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80005c40:	00004517          	auipc	a0,0x4
    80005c44:	a1850513          	addi	a0,a0,-1512 # 80009658 <CONSOLE_STATUS+0x648>
    80005c48:	00000097          	auipc	ra,0x0
    80005c4c:	804080e7          	jalr	-2044(ra) # 8000544c <_Z11printStringPKc>
            break;
    80005c50:	f39ff06f          	j	80005b88 <_Z8userMainv+0x74>
            modifikacija();
    80005c54:	ffffb097          	auipc	ra,0xffffb
    80005c58:	4f0080e7          	jalr	1264(ra) # 80001144 <_Z12modifikacijav>
            printString("Modifikacija uspesno zavrsena\n");
    80005c5c:	00004517          	auipc	a0,0x4
    80005c60:	a5450513          	addi	a0,a0,-1452 # 800096b0 <CONSOLE_STATUS+0x6a0>
    80005c64:	fffff097          	auipc	ra,0xfffff
    80005c68:	7e8080e7          	jalr	2024(ra) # 8000544c <_Z11printStringPKc>
            printString("TEST 8 (modifikacija)\n");
    80005c6c:	00004517          	auipc	a0,0x4
    80005c70:	a6450513          	addi	a0,a0,-1436 # 800096d0 <CONSOLE_STATUS+0x6c0>
    80005c74:	fffff097          	auipc	ra,0xfffff
    80005c78:	7d8080e7          	jalr	2008(ra) # 8000544c <_Z11printStringPKc>
            break;
    80005c7c:	f0dff06f          	j	80005b88 <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    80005c80:	00004517          	auipc	a0,0x4
    80005c84:	a6850513          	addi	a0,a0,-1432 # 800096e8 <CONSOLE_STATUS+0x6d8>
    80005c88:	fffff097          	auipc	ra,0xfffff
    80005c8c:	7c4080e7          	jalr	1988(ra) # 8000544c <_Z11printStringPKc>
    80005c90:	ef9ff06f          	j	80005b88 <_Z8userMainv+0x74>

0000000080005c94 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80005c94:	fe010113          	addi	sp,sp,-32
    80005c98:	00113c23          	sd	ra,24(sp)
    80005c9c:	00813823          	sd	s0,16(sp)
    80005ca0:	00913423          	sd	s1,8(sp)
    80005ca4:	01213023          	sd	s2,0(sp)
    80005ca8:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005cac:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005cb0:	00600493          	li	s1,6
    while (--i > 0) {
    80005cb4:	fff4849b          	addiw	s1,s1,-1
    80005cb8:	04905463          	blez	s1,80005d00 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80005cbc:	00004517          	auipc	a0,0x4
    80005cc0:	a7c50513          	addi	a0,a0,-1412 # 80009738 <CONSOLE_STATUS+0x728>
    80005cc4:	fffff097          	auipc	ra,0xfffff
    80005cc8:	788080e7          	jalr	1928(ra) # 8000544c <_Z11printStringPKc>
        printInt(sleep_time);
    80005ccc:	00000613          	li	a2,0
    80005cd0:	00a00593          	li	a1,10
    80005cd4:	0009051b          	sext.w	a0,s2
    80005cd8:	00000097          	auipc	ra,0x0
    80005cdc:	924080e7          	jalr	-1756(ra) # 800055fc <_Z8printIntiii>
        printString(" !\n");
    80005ce0:	00004517          	auipc	a0,0x4
    80005ce4:	a6050513          	addi	a0,a0,-1440 # 80009740 <CONSOLE_STATUS+0x730>
    80005ce8:	fffff097          	auipc	ra,0xfffff
    80005cec:	764080e7          	jalr	1892(ra) # 8000544c <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005cf0:	00090513          	mv	a0,s2
    80005cf4:	ffffb097          	auipc	ra,0xffffb
    80005cf8:	7d8080e7          	jalr	2008(ra) # 800014cc <time_sleep>
    while (--i > 0) {
    80005cfc:	fb9ff06f          	j	80005cb4 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005d00:	00a00793          	li	a5,10
    80005d04:	02f95933          	divu	s2,s2,a5
    80005d08:	fff90913          	addi	s2,s2,-1
    80005d0c:	00006797          	auipc	a5,0x6
    80005d10:	cfc78793          	addi	a5,a5,-772 # 8000ba08 <_ZL8finished>
    80005d14:	01278933          	add	s2,a5,s2
    80005d18:	00100793          	li	a5,1
    80005d1c:	00f90023          	sb	a5,0(s2)
}
    80005d20:	01813083          	ld	ra,24(sp)
    80005d24:	01013403          	ld	s0,16(sp)
    80005d28:	00813483          	ld	s1,8(sp)
    80005d2c:	00013903          	ld	s2,0(sp)
    80005d30:	02010113          	addi	sp,sp,32
    80005d34:	00008067          	ret

0000000080005d38 <_Z12testSleepingv>:

void testSleeping() {
    80005d38:	fc010113          	addi	sp,sp,-64
    80005d3c:	02113c23          	sd	ra,56(sp)
    80005d40:	02813823          	sd	s0,48(sp)
    80005d44:	02913423          	sd	s1,40(sp)
    80005d48:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005d4c:	00a00793          	li	a5,10
    80005d50:	fcf43823          	sd	a5,-48(s0)
    80005d54:	01400793          	li	a5,20
    80005d58:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005d5c:	00000493          	li	s1,0
    80005d60:	02c0006f          	j	80005d8c <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005d64:	00349793          	slli	a5,s1,0x3
    80005d68:	fd040613          	addi	a2,s0,-48
    80005d6c:	00f60633          	add	a2,a2,a5
    80005d70:	00000597          	auipc	a1,0x0
    80005d74:	f2458593          	addi	a1,a1,-220 # 80005c94 <_ZL9sleepyRunPv>
    80005d78:	fc040513          	addi	a0,s0,-64
    80005d7c:	00f50533          	add	a0,a0,a5
    80005d80:	ffffb097          	auipc	ra,0xffffb
    80005d84:	46c080e7          	jalr	1132(ra) # 800011ec <thread_create>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005d88:	0014849b          	addiw	s1,s1,1
    80005d8c:	00100793          	li	a5,1
    80005d90:	fc97dae3          	bge	a5,s1,80005d64 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80005d94:	00006797          	auipc	a5,0x6
    80005d98:	c747c783          	lbu	a5,-908(a5) # 8000ba08 <_ZL8finished>
    80005d9c:	fe078ce3          	beqz	a5,80005d94 <_Z12testSleepingv+0x5c>
    80005da0:	00006797          	auipc	a5,0x6
    80005da4:	c697c783          	lbu	a5,-919(a5) # 8000ba09 <_ZL8finished+0x1>
    80005da8:	fe0786e3          	beqz	a5,80005d94 <_Z12testSleepingv+0x5c>
}
    80005dac:	03813083          	ld	ra,56(sp)
    80005db0:	03013403          	ld	s0,48(sp)
    80005db4:	02813483          	ld	s1,40(sp)
    80005db8:	04010113          	addi	sp,sp,64
    80005dbc:	00008067          	ret

0000000080005dc0 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005dc0:	fe010113          	addi	sp,sp,-32
    80005dc4:	00113c23          	sd	ra,24(sp)
    80005dc8:	00813823          	sd	s0,16(sp)
    80005dcc:	00913423          	sd	s1,8(sp)
    80005dd0:	01213023          	sd	s2,0(sp)
    80005dd4:	02010413          	addi	s0,sp,32
    80005dd8:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005ddc:	00100793          	li	a5,1
    80005de0:	02a7f863          	bgeu	a5,a0,80005e10 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005de4:	00a00793          	li	a5,10
    80005de8:	02f577b3          	remu	a5,a0,a5
    80005dec:	02078e63          	beqz	a5,80005e28 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005df0:	fff48513          	addi	a0,s1,-1
    80005df4:	00000097          	auipc	ra,0x0
    80005df8:	fcc080e7          	jalr	-52(ra) # 80005dc0 <_ZL9fibonaccim>
    80005dfc:	00050913          	mv	s2,a0
    80005e00:	ffe48513          	addi	a0,s1,-2
    80005e04:	00000097          	auipc	ra,0x0
    80005e08:	fbc080e7          	jalr	-68(ra) # 80005dc0 <_ZL9fibonaccim>
    80005e0c:	00a90533          	add	a0,s2,a0
}
    80005e10:	01813083          	ld	ra,24(sp)
    80005e14:	01013403          	ld	s0,16(sp)
    80005e18:	00813483          	ld	s1,8(sp)
    80005e1c:	00013903          	ld	s2,0(sp)
    80005e20:	02010113          	addi	sp,sp,32
    80005e24:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005e28:	ffffb097          	auipc	ra,0xffffb
    80005e2c:	464080e7          	jalr	1124(ra) # 8000128c <thread_dispatch>
    80005e30:	fc1ff06f          	j	80005df0 <_ZL9fibonaccim+0x30>

0000000080005e34 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005e34:	fe010113          	addi	sp,sp,-32
    80005e38:	00113c23          	sd	ra,24(sp)
    80005e3c:	00813823          	sd	s0,16(sp)
    80005e40:	00913423          	sd	s1,8(sp)
    80005e44:	01213023          	sd	s2,0(sp)
    80005e48:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005e4c:	00a00493          	li	s1,10
    80005e50:	0400006f          	j	80005e90 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005e54:	00003517          	auipc	a0,0x3
    80005e58:	20c50513          	addi	a0,a0,524 # 80009060 <CONSOLE_STATUS+0x50>
    80005e5c:	fffff097          	auipc	ra,0xfffff
    80005e60:	5f0080e7          	jalr	1520(ra) # 8000544c <_Z11printStringPKc>
    80005e64:	00000613          	li	a2,0
    80005e68:	00a00593          	li	a1,10
    80005e6c:	00048513          	mv	a0,s1
    80005e70:	fffff097          	auipc	ra,0xfffff
    80005e74:	78c080e7          	jalr	1932(ra) # 800055fc <_Z8printIntiii>
    80005e78:	00003517          	auipc	a0,0x3
    80005e7c:	74850513          	addi	a0,a0,1864 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80005e80:	fffff097          	auipc	ra,0xfffff
    80005e84:	5cc080e7          	jalr	1484(ra) # 8000544c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005e88:	0014849b          	addiw	s1,s1,1
    80005e8c:	0ff4f493          	andi	s1,s1,255
    80005e90:	00c00793          	li	a5,12
    80005e94:	fc97f0e3          	bgeu	a5,s1,80005e54 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005e98:	00003517          	auipc	a0,0x3
    80005e9c:	55050513          	addi	a0,a0,1360 # 800093e8 <CONSOLE_STATUS+0x3d8>
    80005ea0:	fffff097          	auipc	ra,0xfffff
    80005ea4:	5ac080e7          	jalr	1452(ra) # 8000544c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005ea8:	00500313          	li	t1,5
    thread_dispatch();
    80005eac:	ffffb097          	auipc	ra,0xffffb
    80005eb0:	3e0080e7          	jalr	992(ra) # 8000128c <thread_dispatch>

    uint64 result = fibonacci(16);
    80005eb4:	01000513          	li	a0,16
    80005eb8:	00000097          	auipc	ra,0x0
    80005ebc:	f08080e7          	jalr	-248(ra) # 80005dc0 <_ZL9fibonaccim>
    80005ec0:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005ec4:	00003517          	auipc	a0,0x3
    80005ec8:	1b450513          	addi	a0,a0,436 # 80009078 <CONSOLE_STATUS+0x68>
    80005ecc:	fffff097          	auipc	ra,0xfffff
    80005ed0:	580080e7          	jalr	1408(ra) # 8000544c <_Z11printStringPKc>
    80005ed4:	00000613          	li	a2,0
    80005ed8:	00a00593          	li	a1,10
    80005edc:	0009051b          	sext.w	a0,s2
    80005ee0:	fffff097          	auipc	ra,0xfffff
    80005ee4:	71c080e7          	jalr	1820(ra) # 800055fc <_Z8printIntiii>
    80005ee8:	00003517          	auipc	a0,0x3
    80005eec:	6d850513          	addi	a0,a0,1752 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80005ef0:	fffff097          	auipc	ra,0xfffff
    80005ef4:	55c080e7          	jalr	1372(ra) # 8000544c <_Z11printStringPKc>
    80005ef8:	0400006f          	j	80005f38 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005efc:	00003517          	auipc	a0,0x3
    80005f00:	16450513          	addi	a0,a0,356 # 80009060 <CONSOLE_STATUS+0x50>
    80005f04:	fffff097          	auipc	ra,0xfffff
    80005f08:	548080e7          	jalr	1352(ra) # 8000544c <_Z11printStringPKc>
    80005f0c:	00000613          	li	a2,0
    80005f10:	00a00593          	li	a1,10
    80005f14:	00048513          	mv	a0,s1
    80005f18:	fffff097          	auipc	ra,0xfffff
    80005f1c:	6e4080e7          	jalr	1764(ra) # 800055fc <_Z8printIntiii>
    80005f20:	00003517          	auipc	a0,0x3
    80005f24:	6a050513          	addi	a0,a0,1696 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80005f28:	fffff097          	auipc	ra,0xfffff
    80005f2c:	524080e7          	jalr	1316(ra) # 8000544c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005f30:	0014849b          	addiw	s1,s1,1
    80005f34:	0ff4f493          	andi	s1,s1,255
    80005f38:	00f00793          	li	a5,15
    80005f3c:	fc97f0e3          	bgeu	a5,s1,80005efc <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005f40:	00003517          	auipc	a0,0x3
    80005f44:	4b850513          	addi	a0,a0,1208 # 800093f8 <CONSOLE_STATUS+0x3e8>
    80005f48:	fffff097          	auipc	ra,0xfffff
    80005f4c:	504080e7          	jalr	1284(ra) # 8000544c <_Z11printStringPKc>
    finishedD = true;
    80005f50:	00100793          	li	a5,1
    80005f54:	00006717          	auipc	a4,0x6
    80005f58:	aaf70b23          	sb	a5,-1354(a4) # 8000ba0a <_ZL9finishedD>
    thread_dispatch();
    80005f5c:	ffffb097          	auipc	ra,0xffffb
    80005f60:	330080e7          	jalr	816(ra) # 8000128c <thread_dispatch>
}
    80005f64:	01813083          	ld	ra,24(sp)
    80005f68:	01013403          	ld	s0,16(sp)
    80005f6c:	00813483          	ld	s1,8(sp)
    80005f70:	00013903          	ld	s2,0(sp)
    80005f74:	02010113          	addi	sp,sp,32
    80005f78:	00008067          	ret

0000000080005f7c <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005f7c:	fe010113          	addi	sp,sp,-32
    80005f80:	00113c23          	sd	ra,24(sp)
    80005f84:	00813823          	sd	s0,16(sp)
    80005f88:	00913423          	sd	s1,8(sp)
    80005f8c:	01213023          	sd	s2,0(sp)
    80005f90:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005f94:	00000493          	li	s1,0
    80005f98:	0400006f          	j	80005fd8 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005f9c:	00003517          	auipc	a0,0x3
    80005fa0:	09450513          	addi	a0,a0,148 # 80009030 <CONSOLE_STATUS+0x20>
    80005fa4:	fffff097          	auipc	ra,0xfffff
    80005fa8:	4a8080e7          	jalr	1192(ra) # 8000544c <_Z11printStringPKc>
    80005fac:	00000613          	li	a2,0
    80005fb0:	00a00593          	li	a1,10
    80005fb4:	00048513          	mv	a0,s1
    80005fb8:	fffff097          	auipc	ra,0xfffff
    80005fbc:	644080e7          	jalr	1604(ra) # 800055fc <_Z8printIntiii>
    80005fc0:	00003517          	auipc	a0,0x3
    80005fc4:	60050513          	addi	a0,a0,1536 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80005fc8:	fffff097          	auipc	ra,0xfffff
    80005fcc:	484080e7          	jalr	1156(ra) # 8000544c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005fd0:	0014849b          	addiw	s1,s1,1
    80005fd4:	0ff4f493          	andi	s1,s1,255
    80005fd8:	00200793          	li	a5,2
    80005fdc:	fc97f0e3          	bgeu	a5,s1,80005f9c <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005fe0:	00003517          	auipc	a0,0x3
    80005fe4:	3f850513          	addi	a0,a0,1016 # 800093d8 <CONSOLE_STATUS+0x3c8>
    80005fe8:	fffff097          	auipc	ra,0xfffff
    80005fec:	464080e7          	jalr	1124(ra) # 8000544c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005ff0:	00700313          	li	t1,7
    thread_dispatch();
    80005ff4:	ffffb097          	auipc	ra,0xffffb
    80005ff8:	298080e7          	jalr	664(ra) # 8000128c <thread_dispatch>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005ffc:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80006000:	00003517          	auipc	a0,0x3
    80006004:	04850513          	addi	a0,a0,72 # 80009048 <CONSOLE_STATUS+0x38>
    80006008:	fffff097          	auipc	ra,0xfffff
    8000600c:	444080e7          	jalr	1092(ra) # 8000544c <_Z11printStringPKc>
    80006010:	00000613          	li	a2,0
    80006014:	00a00593          	li	a1,10
    80006018:	0009051b          	sext.w	a0,s2
    8000601c:	fffff097          	auipc	ra,0xfffff
    80006020:	5e0080e7          	jalr	1504(ra) # 800055fc <_Z8printIntiii>
    80006024:	00003517          	auipc	a0,0x3
    80006028:	59c50513          	addi	a0,a0,1436 # 800095c0 <CONSOLE_STATUS+0x5b0>
    8000602c:	fffff097          	auipc	ra,0xfffff
    80006030:	420080e7          	jalr	1056(ra) # 8000544c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80006034:	00c00513          	li	a0,12
    80006038:	00000097          	auipc	ra,0x0
    8000603c:	d88080e7          	jalr	-632(ra) # 80005dc0 <_ZL9fibonaccim>
    80006040:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80006044:	00003517          	auipc	a0,0x3
    80006048:	00c50513          	addi	a0,a0,12 # 80009050 <CONSOLE_STATUS+0x40>
    8000604c:	fffff097          	auipc	ra,0xfffff
    80006050:	400080e7          	jalr	1024(ra) # 8000544c <_Z11printStringPKc>
    80006054:	00000613          	li	a2,0
    80006058:	00a00593          	li	a1,10
    8000605c:	0009051b          	sext.w	a0,s2
    80006060:	fffff097          	auipc	ra,0xfffff
    80006064:	59c080e7          	jalr	1436(ra) # 800055fc <_Z8printIntiii>
    80006068:	00003517          	auipc	a0,0x3
    8000606c:	55850513          	addi	a0,a0,1368 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80006070:	fffff097          	auipc	ra,0xfffff
    80006074:	3dc080e7          	jalr	988(ra) # 8000544c <_Z11printStringPKc>
    80006078:	0400006f          	j	800060b8 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    8000607c:	00003517          	auipc	a0,0x3
    80006080:	fb450513          	addi	a0,a0,-76 # 80009030 <CONSOLE_STATUS+0x20>
    80006084:	fffff097          	auipc	ra,0xfffff
    80006088:	3c8080e7          	jalr	968(ra) # 8000544c <_Z11printStringPKc>
    8000608c:	00000613          	li	a2,0
    80006090:	00a00593          	li	a1,10
    80006094:	00048513          	mv	a0,s1
    80006098:	fffff097          	auipc	ra,0xfffff
    8000609c:	564080e7          	jalr	1380(ra) # 800055fc <_Z8printIntiii>
    800060a0:	00003517          	auipc	a0,0x3
    800060a4:	52050513          	addi	a0,a0,1312 # 800095c0 <CONSOLE_STATUS+0x5b0>
    800060a8:	fffff097          	auipc	ra,0xfffff
    800060ac:	3a4080e7          	jalr	932(ra) # 8000544c <_Z11printStringPKc>
    for (; i < 6; i++) {
    800060b0:	0014849b          	addiw	s1,s1,1
    800060b4:	0ff4f493          	andi	s1,s1,255
    800060b8:	00500793          	li	a5,5
    800060bc:	fc97f0e3          	bgeu	a5,s1,8000607c <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800060c0:	00003517          	auipc	a0,0x3
    800060c4:	2f850513          	addi	a0,a0,760 # 800093b8 <CONSOLE_STATUS+0x3a8>
    800060c8:	fffff097          	auipc	ra,0xfffff
    800060cc:	384080e7          	jalr	900(ra) # 8000544c <_Z11printStringPKc>
    finishedC = true;
    800060d0:	00100793          	li	a5,1
    800060d4:	00006717          	auipc	a4,0x6
    800060d8:	92f70ba3          	sb	a5,-1737(a4) # 8000ba0b <_ZL9finishedC>
    thread_dispatch();
    800060dc:	ffffb097          	auipc	ra,0xffffb
    800060e0:	1b0080e7          	jalr	432(ra) # 8000128c <thread_dispatch>
}
    800060e4:	01813083          	ld	ra,24(sp)
    800060e8:	01013403          	ld	s0,16(sp)
    800060ec:	00813483          	ld	s1,8(sp)
    800060f0:	00013903          	ld	s2,0(sp)
    800060f4:	02010113          	addi	sp,sp,32
    800060f8:	00008067          	ret

00000000800060fc <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800060fc:	fe010113          	addi	sp,sp,-32
    80006100:	00113c23          	sd	ra,24(sp)
    80006104:	00813823          	sd	s0,16(sp)
    80006108:	00913423          	sd	s1,8(sp)
    8000610c:	01213023          	sd	s2,0(sp)
    80006110:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80006114:	00000913          	li	s2,0
    80006118:	0400006f          	j	80006158 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    8000611c:	ffffb097          	auipc	ra,0xffffb
    80006120:	170080e7          	jalr	368(ra) # 8000128c <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80006124:	00148493          	addi	s1,s1,1
    80006128:	000027b7          	lui	a5,0x2
    8000612c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006130:	0097ee63          	bltu	a5,s1,8000614c <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006134:	00000713          	li	a4,0
    80006138:	000077b7          	lui	a5,0x7
    8000613c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006140:	fce7eee3          	bltu	a5,a4,8000611c <_ZL11workerBodyBPv+0x20>
    80006144:	00170713          	addi	a4,a4,1
    80006148:	ff1ff06f          	j	80006138 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    8000614c:	00a00793          	li	a5,10
    80006150:	04f90663          	beq	s2,a5,8000619c <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80006154:	00190913          	addi	s2,s2,1
    80006158:	00f00793          	li	a5,15
    8000615c:	0527e463          	bltu	a5,s2,800061a4 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80006160:	00003517          	auipc	a0,0x3
    80006164:	ec850513          	addi	a0,a0,-312 # 80009028 <CONSOLE_STATUS+0x18>
    80006168:	fffff097          	auipc	ra,0xfffff
    8000616c:	2e4080e7          	jalr	740(ra) # 8000544c <_Z11printStringPKc>
    80006170:	00000613          	li	a2,0
    80006174:	00a00593          	li	a1,10
    80006178:	0009051b          	sext.w	a0,s2
    8000617c:	fffff097          	auipc	ra,0xfffff
    80006180:	480080e7          	jalr	1152(ra) # 800055fc <_Z8printIntiii>
    80006184:	00003517          	auipc	a0,0x3
    80006188:	43c50513          	addi	a0,a0,1084 # 800095c0 <CONSOLE_STATUS+0x5b0>
    8000618c:	fffff097          	auipc	ra,0xfffff
    80006190:	2c0080e7          	jalr	704(ra) # 8000544c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006194:	00000493          	li	s1,0
    80006198:	f91ff06f          	j	80006128 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    8000619c:	14102ff3          	csrr	t6,sepc
    800061a0:	fb5ff06f          	j	80006154 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    800061a4:	00003517          	auipc	a0,0x3
    800061a8:	22450513          	addi	a0,a0,548 # 800093c8 <CONSOLE_STATUS+0x3b8>
    800061ac:	fffff097          	auipc	ra,0xfffff
    800061b0:	2a0080e7          	jalr	672(ra) # 8000544c <_Z11printStringPKc>
    finishedB = true;
    800061b4:	00100793          	li	a5,1
    800061b8:	00006717          	auipc	a4,0x6
    800061bc:	84f70a23          	sb	a5,-1964(a4) # 8000ba0c <_ZL9finishedB>
    thread_dispatch();
    800061c0:	ffffb097          	auipc	ra,0xffffb
    800061c4:	0cc080e7          	jalr	204(ra) # 8000128c <thread_dispatch>
}
    800061c8:	01813083          	ld	ra,24(sp)
    800061cc:	01013403          	ld	s0,16(sp)
    800061d0:	00813483          	ld	s1,8(sp)
    800061d4:	00013903          	ld	s2,0(sp)
    800061d8:	02010113          	addi	sp,sp,32
    800061dc:	00008067          	ret

00000000800061e0 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800061e0:	fe010113          	addi	sp,sp,-32
    800061e4:	00113c23          	sd	ra,24(sp)
    800061e8:	00813823          	sd	s0,16(sp)
    800061ec:	00913423          	sd	s1,8(sp)
    800061f0:	01213023          	sd	s2,0(sp)
    800061f4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800061f8:	00000913          	li	s2,0
    800061fc:	0380006f          	j	80006234 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80006200:	ffffb097          	auipc	ra,0xffffb
    80006204:	08c080e7          	jalr	140(ra) # 8000128c <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80006208:	00148493          	addi	s1,s1,1
    8000620c:	000027b7          	lui	a5,0x2
    80006210:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006214:	0097ee63          	bltu	a5,s1,80006230 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006218:	00000713          	li	a4,0
    8000621c:	000077b7          	lui	a5,0x7
    80006220:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006224:	fce7eee3          	bltu	a5,a4,80006200 <_ZL11workerBodyAPv+0x20>
    80006228:	00170713          	addi	a4,a4,1
    8000622c:	ff1ff06f          	j	8000621c <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80006230:	00190913          	addi	s2,s2,1
    80006234:	00900793          	li	a5,9
    80006238:	0527e063          	bltu	a5,s2,80006278 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8000623c:	00003517          	auipc	a0,0x3
    80006240:	de450513          	addi	a0,a0,-540 # 80009020 <CONSOLE_STATUS+0x10>
    80006244:	fffff097          	auipc	ra,0xfffff
    80006248:	208080e7          	jalr	520(ra) # 8000544c <_Z11printStringPKc>
    8000624c:	00000613          	li	a2,0
    80006250:	00a00593          	li	a1,10
    80006254:	0009051b          	sext.w	a0,s2
    80006258:	fffff097          	auipc	ra,0xfffff
    8000625c:	3a4080e7          	jalr	932(ra) # 800055fc <_Z8printIntiii>
    80006260:	00003517          	auipc	a0,0x3
    80006264:	36050513          	addi	a0,a0,864 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80006268:	fffff097          	auipc	ra,0xfffff
    8000626c:	1e4080e7          	jalr	484(ra) # 8000544c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006270:	00000493          	li	s1,0
    80006274:	f99ff06f          	j	8000620c <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80006278:	00003517          	auipc	a0,0x3
    8000627c:	14050513          	addi	a0,a0,320 # 800093b8 <CONSOLE_STATUS+0x3a8>
    80006280:	fffff097          	auipc	ra,0xfffff
    80006284:	1cc080e7          	jalr	460(ra) # 8000544c <_Z11printStringPKc>
    finishedA = true;
    80006288:	00100793          	li	a5,1
    8000628c:	00005717          	auipc	a4,0x5
    80006290:	78f700a3          	sb	a5,1921(a4) # 8000ba0d <_ZL9finishedA>
}
    80006294:	01813083          	ld	ra,24(sp)
    80006298:	01013403          	ld	s0,16(sp)
    8000629c:	00813483          	ld	s1,8(sp)
    800062a0:	00013903          	ld	s2,0(sp)
    800062a4:	02010113          	addi	sp,sp,32
    800062a8:	00008067          	ret

00000000800062ac <_Z16System_Mode_testv>:


void System_Mode_test() {
    800062ac:	fd010113          	addi	sp,sp,-48
    800062b0:	02113423          	sd	ra,40(sp)
    800062b4:	02813023          	sd	s0,32(sp)
    800062b8:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800062bc:	00000613          	li	a2,0
    800062c0:	00000597          	auipc	a1,0x0
    800062c4:	f2058593          	addi	a1,a1,-224 # 800061e0 <_ZL11workerBodyAPv>
    800062c8:	fd040513          	addi	a0,s0,-48
    800062cc:	ffffb097          	auipc	ra,0xffffb
    800062d0:	f20080e7          	jalr	-224(ra) # 800011ec <thread_create>
    printString("ThreadA created\n");
    800062d4:	00003517          	auipc	a0,0x3
    800062d8:	13450513          	addi	a0,a0,308 # 80009408 <CONSOLE_STATUS+0x3f8>
    800062dc:	fffff097          	auipc	ra,0xfffff
    800062e0:	170080e7          	jalr	368(ra) # 8000544c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800062e4:	00000613          	li	a2,0
    800062e8:	00000597          	auipc	a1,0x0
    800062ec:	e1458593          	addi	a1,a1,-492 # 800060fc <_ZL11workerBodyBPv>
    800062f0:	fd840513          	addi	a0,s0,-40
    800062f4:	ffffb097          	auipc	ra,0xffffb
    800062f8:	ef8080e7          	jalr	-264(ra) # 800011ec <thread_create>
    printString("ThreadB created\n");
    800062fc:	00003517          	auipc	a0,0x3
    80006300:	12450513          	addi	a0,a0,292 # 80009420 <CONSOLE_STATUS+0x410>
    80006304:	fffff097          	auipc	ra,0xfffff
    80006308:	148080e7          	jalr	328(ra) # 8000544c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    8000630c:	00000613          	li	a2,0
    80006310:	00000597          	auipc	a1,0x0
    80006314:	c6c58593          	addi	a1,a1,-916 # 80005f7c <_ZL11workerBodyCPv>
    80006318:	fe040513          	addi	a0,s0,-32
    8000631c:	ffffb097          	auipc	ra,0xffffb
    80006320:	ed0080e7          	jalr	-304(ra) # 800011ec <thread_create>
    printString("ThreadC created\n");
    80006324:	00003517          	auipc	a0,0x3
    80006328:	11450513          	addi	a0,a0,276 # 80009438 <CONSOLE_STATUS+0x428>
    8000632c:	fffff097          	auipc	ra,0xfffff
    80006330:	120080e7          	jalr	288(ra) # 8000544c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80006334:	00000613          	li	a2,0
    80006338:	00000597          	auipc	a1,0x0
    8000633c:	afc58593          	addi	a1,a1,-1284 # 80005e34 <_ZL11workerBodyDPv>
    80006340:	fe840513          	addi	a0,s0,-24
    80006344:	ffffb097          	auipc	ra,0xffffb
    80006348:	ea8080e7          	jalr	-344(ra) # 800011ec <thread_create>
    printString("ThreadD created\n");
    8000634c:	00003517          	auipc	a0,0x3
    80006350:	10450513          	addi	a0,a0,260 # 80009450 <CONSOLE_STATUS+0x440>
    80006354:	fffff097          	auipc	ra,0xfffff
    80006358:	0f8080e7          	jalr	248(ra) # 8000544c <_Z11printStringPKc>
    8000635c:	00c0006f          	j	80006368 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80006360:	ffffb097          	auipc	ra,0xffffb
    80006364:	f2c080e7          	jalr	-212(ra) # 8000128c <thread_dispatch>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006368:	00005797          	auipc	a5,0x5
    8000636c:	6a57c783          	lbu	a5,1701(a5) # 8000ba0d <_ZL9finishedA>
    80006370:	fe0788e3          	beqz	a5,80006360 <_Z16System_Mode_testv+0xb4>
    80006374:	00005797          	auipc	a5,0x5
    80006378:	6987c783          	lbu	a5,1688(a5) # 8000ba0c <_ZL9finishedB>
    8000637c:	fe0782e3          	beqz	a5,80006360 <_Z16System_Mode_testv+0xb4>
    80006380:	00005797          	auipc	a5,0x5
    80006384:	68b7c783          	lbu	a5,1675(a5) # 8000ba0b <_ZL9finishedC>
    80006388:	fc078ce3          	beqz	a5,80006360 <_Z16System_Mode_testv+0xb4>
    8000638c:	00005797          	auipc	a5,0x5
    80006390:	67e7c783          	lbu	a5,1662(a5) # 8000ba0a <_ZL9finishedD>
    80006394:	fc0786e3          	beqz	a5,80006360 <_Z16System_Mode_testv+0xb4>
    }

}
    80006398:	02813083          	ld	ra,40(sp)
    8000639c:	02013403          	ld	s0,32(sp)
    800063a0:	03010113          	addi	sp,sp,48
    800063a4:	00008067          	ret

00000000800063a8 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800063a8:	fe010113          	addi	sp,sp,-32
    800063ac:	00113c23          	sd	ra,24(sp)
    800063b0:	00813823          	sd	s0,16(sp)
    800063b4:	00913423          	sd	s1,8(sp)
    800063b8:	01213023          	sd	s2,0(sp)
    800063bc:	02010413          	addi	s0,sp,32
    800063c0:	00050493          	mv	s1,a0
    800063c4:	00058913          	mv	s2,a1
    800063c8:	0015879b          	addiw	a5,a1,1
    800063cc:	0007851b          	sext.w	a0,a5
    800063d0:	00f4a023          	sw	a5,0(s1)
    800063d4:	0004a823          	sw	zero,16(s1)
    800063d8:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800063dc:	00251513          	slli	a0,a0,0x2
    800063e0:	ffffb097          	auipc	ra,0xffffb
    800063e4:	d7c080e7          	jalr	-644(ra) # 8000115c <mem_alloc>
    800063e8:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800063ec:	00000593          	li	a1,0
    800063f0:	02048513          	addi	a0,s1,32
    800063f4:	ffffb097          	auipc	ra,0xffffb
    800063f8:	ef8080e7          	jalr	-264(ra) # 800012ec <sem_open>
    sem_open(&spaceAvailable, _cap);
    800063fc:	00090593          	mv	a1,s2
    80006400:	01848513          	addi	a0,s1,24
    80006404:	ffffb097          	auipc	ra,0xffffb
    80006408:	ee8080e7          	jalr	-280(ra) # 800012ec <sem_open>
    sem_open(&mutexHead, 1);
    8000640c:	00100593          	li	a1,1
    80006410:	02848513          	addi	a0,s1,40
    80006414:	ffffb097          	auipc	ra,0xffffb
    80006418:	ed8080e7          	jalr	-296(ra) # 800012ec <sem_open>
    sem_open(&mutexTail, 1);
    8000641c:	00100593          	li	a1,1
    80006420:	03048513          	addi	a0,s1,48
    80006424:	ffffb097          	auipc	ra,0xffffb
    80006428:	ec8080e7          	jalr	-312(ra) # 800012ec <sem_open>
}
    8000642c:	01813083          	ld	ra,24(sp)
    80006430:	01013403          	ld	s0,16(sp)
    80006434:	00813483          	ld	s1,8(sp)
    80006438:	00013903          	ld	s2,0(sp)
    8000643c:	02010113          	addi	sp,sp,32
    80006440:	00008067          	ret

0000000080006444 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80006444:	fe010113          	addi	sp,sp,-32
    80006448:	00113c23          	sd	ra,24(sp)
    8000644c:	00813823          	sd	s0,16(sp)
    80006450:	00913423          	sd	s1,8(sp)
    80006454:	01213023          	sd	s2,0(sp)
    80006458:	02010413          	addi	s0,sp,32
    8000645c:	00050493          	mv	s1,a0
    80006460:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80006464:	01853503          	ld	a0,24(a0)
    80006468:	ffffb097          	auipc	ra,0xffffb
    8000646c:	f28080e7          	jalr	-216(ra) # 80001390 <sem_wait>

    sem_wait(mutexTail);
    80006470:	0304b503          	ld	a0,48(s1)
    80006474:	ffffb097          	auipc	ra,0xffffb
    80006478:	f1c080e7          	jalr	-228(ra) # 80001390 <sem_wait>
    buffer[tail] = val;
    8000647c:	0084b783          	ld	a5,8(s1)
    80006480:	0144a703          	lw	a4,20(s1)
    80006484:	00271713          	slli	a4,a4,0x2
    80006488:	00e787b3          	add	a5,a5,a4
    8000648c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006490:	0144a783          	lw	a5,20(s1)
    80006494:	0017879b          	addiw	a5,a5,1
    80006498:	0004a703          	lw	a4,0(s1)
    8000649c:	02e7e7bb          	remw	a5,a5,a4
    800064a0:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    800064a4:	0304b503          	ld	a0,48(s1)
    800064a8:	ffffb097          	auipc	ra,0xffffb
    800064ac:	f34080e7          	jalr	-204(ra) # 800013dc <sem_signal>

    sem_signal(itemAvailable);
    800064b0:	0204b503          	ld	a0,32(s1)
    800064b4:	ffffb097          	auipc	ra,0xffffb
    800064b8:	f28080e7          	jalr	-216(ra) # 800013dc <sem_signal>

}
    800064bc:	01813083          	ld	ra,24(sp)
    800064c0:	01013403          	ld	s0,16(sp)
    800064c4:	00813483          	ld	s1,8(sp)
    800064c8:	00013903          	ld	s2,0(sp)
    800064cc:	02010113          	addi	sp,sp,32
    800064d0:	00008067          	ret

00000000800064d4 <_ZN6Buffer3getEv>:

int Buffer::get() {
    800064d4:	fe010113          	addi	sp,sp,-32
    800064d8:	00113c23          	sd	ra,24(sp)
    800064dc:	00813823          	sd	s0,16(sp)
    800064e0:	00913423          	sd	s1,8(sp)
    800064e4:	01213023          	sd	s2,0(sp)
    800064e8:	02010413          	addi	s0,sp,32
    800064ec:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    800064f0:	02053503          	ld	a0,32(a0)
    800064f4:	ffffb097          	auipc	ra,0xffffb
    800064f8:	e9c080e7          	jalr	-356(ra) # 80001390 <sem_wait>

    sem_wait(mutexHead);
    800064fc:	0284b503          	ld	a0,40(s1)
    80006500:	ffffb097          	auipc	ra,0xffffb
    80006504:	e90080e7          	jalr	-368(ra) # 80001390 <sem_wait>

    int ret = buffer[head];
    80006508:	0084b703          	ld	a4,8(s1)
    8000650c:	0104a783          	lw	a5,16(s1)
    80006510:	00279693          	slli	a3,a5,0x2
    80006514:	00d70733          	add	a4,a4,a3
    80006518:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000651c:	0017879b          	addiw	a5,a5,1
    80006520:	0004a703          	lw	a4,0(s1)
    80006524:	02e7e7bb          	remw	a5,a5,a4
    80006528:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    8000652c:	0284b503          	ld	a0,40(s1)
    80006530:	ffffb097          	auipc	ra,0xffffb
    80006534:	eac080e7          	jalr	-340(ra) # 800013dc <sem_signal>

    sem_signal(spaceAvailable);
    80006538:	0184b503          	ld	a0,24(s1)
    8000653c:	ffffb097          	auipc	ra,0xffffb
    80006540:	ea0080e7          	jalr	-352(ra) # 800013dc <sem_signal>

    return ret;
}
    80006544:	00090513          	mv	a0,s2
    80006548:	01813083          	ld	ra,24(sp)
    8000654c:	01013403          	ld	s0,16(sp)
    80006550:	00813483          	ld	s1,8(sp)
    80006554:	00013903          	ld	s2,0(sp)
    80006558:	02010113          	addi	sp,sp,32
    8000655c:	00008067          	ret

0000000080006560 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80006560:	fe010113          	addi	sp,sp,-32
    80006564:	00113c23          	sd	ra,24(sp)
    80006568:	00813823          	sd	s0,16(sp)
    8000656c:	00913423          	sd	s1,8(sp)
    80006570:	01213023          	sd	s2,0(sp)
    80006574:	02010413          	addi	s0,sp,32
    80006578:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    8000657c:	02853503          	ld	a0,40(a0)
    80006580:	ffffb097          	auipc	ra,0xffffb
    80006584:	e10080e7          	jalr	-496(ra) # 80001390 <sem_wait>
    sem_wait(mutexTail);
    80006588:	0304b503          	ld	a0,48(s1)
    8000658c:	ffffb097          	auipc	ra,0xffffb
    80006590:	e04080e7          	jalr	-508(ra) # 80001390 <sem_wait>

    if (tail >= head) {
    80006594:	0144a783          	lw	a5,20(s1)
    80006598:	0104a903          	lw	s2,16(s1)
    8000659c:	0327ce63          	blt	a5,s2,800065d8 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    800065a0:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    800065a4:	0304b503          	ld	a0,48(s1)
    800065a8:	ffffb097          	auipc	ra,0xffffb
    800065ac:	e34080e7          	jalr	-460(ra) # 800013dc <sem_signal>
    sem_signal(mutexHead);
    800065b0:	0284b503          	ld	a0,40(s1)
    800065b4:	ffffb097          	auipc	ra,0xffffb
    800065b8:	e28080e7          	jalr	-472(ra) # 800013dc <sem_signal>

    return ret;
}
    800065bc:	00090513          	mv	a0,s2
    800065c0:	01813083          	ld	ra,24(sp)
    800065c4:	01013403          	ld	s0,16(sp)
    800065c8:	00813483          	ld	s1,8(sp)
    800065cc:	00013903          	ld	s2,0(sp)
    800065d0:	02010113          	addi	sp,sp,32
    800065d4:	00008067          	ret
        ret = cap - head + tail;
    800065d8:	0004a703          	lw	a4,0(s1)
    800065dc:	4127093b          	subw	s2,a4,s2
    800065e0:	00f9093b          	addw	s2,s2,a5
    800065e4:	fc1ff06f          	j	800065a4 <_ZN6Buffer6getCntEv+0x44>

00000000800065e8 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    800065e8:	fe010113          	addi	sp,sp,-32
    800065ec:	00113c23          	sd	ra,24(sp)
    800065f0:	00813823          	sd	s0,16(sp)
    800065f4:	00913423          	sd	s1,8(sp)
    800065f8:	02010413          	addi	s0,sp,32
    800065fc:	00050493          	mv	s1,a0
    putc('\n');
    80006600:	00a00513          	li	a0,10
    80006604:	ffffb097          	auipc	ra,0xffffb
    80006608:	e48080e7          	jalr	-440(ra) # 8000144c <putc>
    printString("Buffer deleted!\n");
    8000660c:	00003517          	auipc	a0,0x3
    80006610:	e5c50513          	addi	a0,a0,-420 # 80009468 <CONSOLE_STATUS+0x458>
    80006614:	fffff097          	auipc	ra,0xfffff
    80006618:	e38080e7          	jalr	-456(ra) # 8000544c <_Z11printStringPKc>
    while (getCnt() > 0) {
    8000661c:	00048513          	mv	a0,s1
    80006620:	00000097          	auipc	ra,0x0
    80006624:	f40080e7          	jalr	-192(ra) # 80006560 <_ZN6Buffer6getCntEv>
    80006628:	02a05c63          	blez	a0,80006660 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    8000662c:	0084b783          	ld	a5,8(s1)
    80006630:	0104a703          	lw	a4,16(s1)
    80006634:	00271713          	slli	a4,a4,0x2
    80006638:	00e787b3          	add	a5,a5,a4
        putc(ch);
    8000663c:	0007c503          	lbu	a0,0(a5)
    80006640:	ffffb097          	auipc	ra,0xffffb
    80006644:	e0c080e7          	jalr	-500(ra) # 8000144c <putc>
        head = (head + 1) % cap;
    80006648:	0104a783          	lw	a5,16(s1)
    8000664c:	0017879b          	addiw	a5,a5,1
    80006650:	0004a703          	lw	a4,0(s1)
    80006654:	02e7e7bb          	remw	a5,a5,a4
    80006658:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    8000665c:	fc1ff06f          	j	8000661c <_ZN6BufferD1Ev+0x34>
    putc('!');
    80006660:	02100513          	li	a0,33
    80006664:	ffffb097          	auipc	ra,0xffffb
    80006668:	de8080e7          	jalr	-536(ra) # 8000144c <putc>
    putc('\n');
    8000666c:	00a00513          	li	a0,10
    80006670:	ffffb097          	auipc	ra,0xffffb
    80006674:	ddc080e7          	jalr	-548(ra) # 8000144c <putc>
    mem_free(buffer);
    80006678:	0084b503          	ld	a0,8(s1)
    8000667c:	ffffb097          	auipc	ra,0xffffb
    80006680:	b20080e7          	jalr	-1248(ra) # 8000119c <mem_free>
    sem_close(itemAvailable);
    80006684:	0204b503          	ld	a0,32(s1)
    80006688:	ffffb097          	auipc	ra,0xffffb
    8000668c:	cbc080e7          	jalr	-836(ra) # 80001344 <sem_close>
    sem_close(spaceAvailable);
    80006690:	0184b503          	ld	a0,24(s1)
    80006694:	ffffb097          	auipc	ra,0xffffb
    80006698:	cb0080e7          	jalr	-848(ra) # 80001344 <sem_close>
    sem_close(mutexTail);
    8000669c:	0304b503          	ld	a0,48(s1)
    800066a0:	ffffb097          	auipc	ra,0xffffb
    800066a4:	ca4080e7          	jalr	-860(ra) # 80001344 <sem_close>
    sem_close(mutexHead);
    800066a8:	0284b503          	ld	a0,40(s1)
    800066ac:	ffffb097          	auipc	ra,0xffffb
    800066b0:	c98080e7          	jalr	-872(ra) # 80001344 <sem_close>
}
    800066b4:	01813083          	ld	ra,24(sp)
    800066b8:	01013403          	ld	s0,16(sp)
    800066bc:	00813483          	ld	s1,8(sp)
    800066c0:	02010113          	addi	sp,sp,32
    800066c4:	00008067          	ret

00000000800066c8 <start>:
    800066c8:	ff010113          	addi	sp,sp,-16
    800066cc:	00813423          	sd	s0,8(sp)
    800066d0:	01010413          	addi	s0,sp,16
    800066d4:	300027f3          	csrr	a5,mstatus
    800066d8:	ffffe737          	lui	a4,0xffffe
    800066dc:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1b7f>
    800066e0:	00e7f7b3          	and	a5,a5,a4
    800066e4:	00001737          	lui	a4,0x1
    800066e8:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800066ec:	00e7e7b3          	or	a5,a5,a4
    800066f0:	30079073          	csrw	mstatus,a5
    800066f4:	00000797          	auipc	a5,0x0
    800066f8:	16078793          	addi	a5,a5,352 # 80006854 <system_main>
    800066fc:	34179073          	csrw	mepc,a5
    80006700:	00000793          	li	a5,0
    80006704:	18079073          	csrw	satp,a5
    80006708:	000107b7          	lui	a5,0x10
    8000670c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006710:	30279073          	csrw	medeleg,a5
    80006714:	30379073          	csrw	mideleg,a5
    80006718:	104027f3          	csrr	a5,sie
    8000671c:	2227e793          	ori	a5,a5,546
    80006720:	10479073          	csrw	sie,a5
    80006724:	fff00793          	li	a5,-1
    80006728:	00a7d793          	srli	a5,a5,0xa
    8000672c:	3b079073          	csrw	pmpaddr0,a5
    80006730:	00f00793          	li	a5,15
    80006734:	3a079073          	csrw	pmpcfg0,a5
    80006738:	f14027f3          	csrr	a5,mhartid
    8000673c:	0200c737          	lui	a4,0x200c
    80006740:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006744:	0007869b          	sext.w	a3,a5
    80006748:	00269713          	slli	a4,a3,0x2
    8000674c:	000f4637          	lui	a2,0xf4
    80006750:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006754:	00d70733          	add	a4,a4,a3
    80006758:	0037979b          	slliw	a5,a5,0x3
    8000675c:	020046b7          	lui	a3,0x2004
    80006760:	00d787b3          	add	a5,a5,a3
    80006764:	00c585b3          	add	a1,a1,a2
    80006768:	00371693          	slli	a3,a4,0x3
    8000676c:	00005717          	auipc	a4,0x5
    80006770:	2a470713          	addi	a4,a4,676 # 8000ba10 <timer_scratch>
    80006774:	00b7b023          	sd	a1,0(a5)
    80006778:	00d70733          	add	a4,a4,a3
    8000677c:	00f73c23          	sd	a5,24(a4)
    80006780:	02c73023          	sd	a2,32(a4)
    80006784:	34071073          	csrw	mscratch,a4
    80006788:	00000797          	auipc	a5,0x0
    8000678c:	6e878793          	addi	a5,a5,1768 # 80006e70 <timervec>
    80006790:	30579073          	csrw	mtvec,a5
    80006794:	300027f3          	csrr	a5,mstatus
    80006798:	0087e793          	ori	a5,a5,8
    8000679c:	30079073          	csrw	mstatus,a5
    800067a0:	304027f3          	csrr	a5,mie
    800067a4:	0807e793          	ori	a5,a5,128
    800067a8:	30479073          	csrw	mie,a5
    800067ac:	f14027f3          	csrr	a5,mhartid
    800067b0:	0007879b          	sext.w	a5,a5
    800067b4:	00078213          	mv	tp,a5
    800067b8:	30200073          	mret
    800067bc:	00813403          	ld	s0,8(sp)
    800067c0:	01010113          	addi	sp,sp,16
    800067c4:	00008067          	ret

00000000800067c8 <timerinit>:
    800067c8:	ff010113          	addi	sp,sp,-16
    800067cc:	00813423          	sd	s0,8(sp)
    800067d0:	01010413          	addi	s0,sp,16
    800067d4:	f14027f3          	csrr	a5,mhartid
    800067d8:	0200c737          	lui	a4,0x200c
    800067dc:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800067e0:	0007869b          	sext.w	a3,a5
    800067e4:	00269713          	slli	a4,a3,0x2
    800067e8:	000f4637          	lui	a2,0xf4
    800067ec:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800067f0:	00d70733          	add	a4,a4,a3
    800067f4:	0037979b          	slliw	a5,a5,0x3
    800067f8:	020046b7          	lui	a3,0x2004
    800067fc:	00d787b3          	add	a5,a5,a3
    80006800:	00c585b3          	add	a1,a1,a2
    80006804:	00371693          	slli	a3,a4,0x3
    80006808:	00005717          	auipc	a4,0x5
    8000680c:	20870713          	addi	a4,a4,520 # 8000ba10 <timer_scratch>
    80006810:	00b7b023          	sd	a1,0(a5)
    80006814:	00d70733          	add	a4,a4,a3
    80006818:	00f73c23          	sd	a5,24(a4)
    8000681c:	02c73023          	sd	a2,32(a4)
    80006820:	34071073          	csrw	mscratch,a4
    80006824:	00000797          	auipc	a5,0x0
    80006828:	64c78793          	addi	a5,a5,1612 # 80006e70 <timervec>
    8000682c:	30579073          	csrw	mtvec,a5
    80006830:	300027f3          	csrr	a5,mstatus
    80006834:	0087e793          	ori	a5,a5,8
    80006838:	30079073          	csrw	mstatus,a5
    8000683c:	304027f3          	csrr	a5,mie
    80006840:	0807e793          	ori	a5,a5,128
    80006844:	30479073          	csrw	mie,a5
    80006848:	00813403          	ld	s0,8(sp)
    8000684c:	01010113          	addi	sp,sp,16
    80006850:	00008067          	ret

0000000080006854 <system_main>:
    80006854:	fe010113          	addi	sp,sp,-32
    80006858:	00813823          	sd	s0,16(sp)
    8000685c:	00913423          	sd	s1,8(sp)
    80006860:	00113c23          	sd	ra,24(sp)
    80006864:	02010413          	addi	s0,sp,32
    80006868:	00000097          	auipc	ra,0x0
    8000686c:	0c4080e7          	jalr	196(ra) # 8000692c <cpuid>
    80006870:	00005497          	auipc	s1,0x5
    80006874:	0d048493          	addi	s1,s1,208 # 8000b940 <started>
    80006878:	02050263          	beqz	a0,8000689c <system_main+0x48>
    8000687c:	0004a783          	lw	a5,0(s1)
    80006880:	0007879b          	sext.w	a5,a5
    80006884:	fe078ce3          	beqz	a5,8000687c <system_main+0x28>
    80006888:	0ff0000f          	fence
    8000688c:	00003517          	auipc	a0,0x3
    80006890:	eec50513          	addi	a0,a0,-276 # 80009778 <CONSOLE_STATUS+0x768>
    80006894:	00001097          	auipc	ra,0x1
    80006898:	a78080e7          	jalr	-1416(ra) # 8000730c <panic>
    8000689c:	00001097          	auipc	ra,0x1
    800068a0:	9cc080e7          	jalr	-1588(ra) # 80007268 <consoleinit>
    800068a4:	00001097          	auipc	ra,0x1
    800068a8:	158080e7          	jalr	344(ra) # 800079fc <printfinit>
    800068ac:	00003517          	auipc	a0,0x3
    800068b0:	d1450513          	addi	a0,a0,-748 # 800095c0 <CONSOLE_STATUS+0x5b0>
    800068b4:	00001097          	auipc	ra,0x1
    800068b8:	ab4080e7          	jalr	-1356(ra) # 80007368 <__printf>
    800068bc:	00003517          	auipc	a0,0x3
    800068c0:	e8c50513          	addi	a0,a0,-372 # 80009748 <CONSOLE_STATUS+0x738>
    800068c4:	00001097          	auipc	ra,0x1
    800068c8:	aa4080e7          	jalr	-1372(ra) # 80007368 <__printf>
    800068cc:	00003517          	auipc	a0,0x3
    800068d0:	cf450513          	addi	a0,a0,-780 # 800095c0 <CONSOLE_STATUS+0x5b0>
    800068d4:	00001097          	auipc	ra,0x1
    800068d8:	a94080e7          	jalr	-1388(ra) # 80007368 <__printf>
    800068dc:	00001097          	auipc	ra,0x1
    800068e0:	4ac080e7          	jalr	1196(ra) # 80007d88 <kinit>
    800068e4:	00000097          	auipc	ra,0x0
    800068e8:	148080e7          	jalr	328(ra) # 80006a2c <trapinit>
    800068ec:	00000097          	auipc	ra,0x0
    800068f0:	16c080e7          	jalr	364(ra) # 80006a58 <trapinithart>
    800068f4:	00000097          	auipc	ra,0x0
    800068f8:	5bc080e7          	jalr	1468(ra) # 80006eb0 <plicinit>
    800068fc:	00000097          	auipc	ra,0x0
    80006900:	5dc080e7          	jalr	1500(ra) # 80006ed8 <plicinithart>
    80006904:	00000097          	auipc	ra,0x0
    80006908:	078080e7          	jalr	120(ra) # 8000697c <userinit>
    8000690c:	0ff0000f          	fence
    80006910:	00100793          	li	a5,1
    80006914:	00003517          	auipc	a0,0x3
    80006918:	e4c50513          	addi	a0,a0,-436 # 80009760 <CONSOLE_STATUS+0x750>
    8000691c:	00f4a023          	sw	a5,0(s1)
    80006920:	00001097          	auipc	ra,0x1
    80006924:	a48080e7          	jalr	-1464(ra) # 80007368 <__printf>
    80006928:	0000006f          	j	80006928 <system_main+0xd4>

000000008000692c <cpuid>:
    8000692c:	ff010113          	addi	sp,sp,-16
    80006930:	00813423          	sd	s0,8(sp)
    80006934:	01010413          	addi	s0,sp,16
    80006938:	00020513          	mv	a0,tp
    8000693c:	00813403          	ld	s0,8(sp)
    80006940:	0005051b          	sext.w	a0,a0
    80006944:	01010113          	addi	sp,sp,16
    80006948:	00008067          	ret

000000008000694c <mycpu>:
    8000694c:	ff010113          	addi	sp,sp,-16
    80006950:	00813423          	sd	s0,8(sp)
    80006954:	01010413          	addi	s0,sp,16
    80006958:	00020793          	mv	a5,tp
    8000695c:	00813403          	ld	s0,8(sp)
    80006960:	0007879b          	sext.w	a5,a5
    80006964:	00779793          	slli	a5,a5,0x7
    80006968:	00006517          	auipc	a0,0x6
    8000696c:	0d850513          	addi	a0,a0,216 # 8000ca40 <cpus>
    80006970:	00f50533          	add	a0,a0,a5
    80006974:	01010113          	addi	sp,sp,16
    80006978:	00008067          	ret

000000008000697c <userinit>:
    8000697c:	ff010113          	addi	sp,sp,-16
    80006980:	00813423          	sd	s0,8(sp)
    80006984:	01010413          	addi	s0,sp,16
    80006988:	00813403          	ld	s0,8(sp)
    8000698c:	01010113          	addi	sp,sp,16
    80006990:	ffffb317          	auipc	t1,0xffffb
    80006994:	ff030067          	jr	-16(t1) # 80001980 <main>

0000000080006998 <either_copyout>:
    80006998:	ff010113          	addi	sp,sp,-16
    8000699c:	00813023          	sd	s0,0(sp)
    800069a0:	00113423          	sd	ra,8(sp)
    800069a4:	01010413          	addi	s0,sp,16
    800069a8:	02051663          	bnez	a0,800069d4 <either_copyout+0x3c>
    800069ac:	00058513          	mv	a0,a1
    800069b0:	00060593          	mv	a1,a2
    800069b4:	0006861b          	sext.w	a2,a3
    800069b8:	00002097          	auipc	ra,0x2
    800069bc:	c5c080e7          	jalr	-932(ra) # 80008614 <__memmove>
    800069c0:	00813083          	ld	ra,8(sp)
    800069c4:	00013403          	ld	s0,0(sp)
    800069c8:	00000513          	li	a0,0
    800069cc:	01010113          	addi	sp,sp,16
    800069d0:	00008067          	ret
    800069d4:	00003517          	auipc	a0,0x3
    800069d8:	dcc50513          	addi	a0,a0,-564 # 800097a0 <CONSOLE_STATUS+0x790>
    800069dc:	00001097          	auipc	ra,0x1
    800069e0:	930080e7          	jalr	-1744(ra) # 8000730c <panic>

00000000800069e4 <either_copyin>:
    800069e4:	ff010113          	addi	sp,sp,-16
    800069e8:	00813023          	sd	s0,0(sp)
    800069ec:	00113423          	sd	ra,8(sp)
    800069f0:	01010413          	addi	s0,sp,16
    800069f4:	02059463          	bnez	a1,80006a1c <either_copyin+0x38>
    800069f8:	00060593          	mv	a1,a2
    800069fc:	0006861b          	sext.w	a2,a3
    80006a00:	00002097          	auipc	ra,0x2
    80006a04:	c14080e7          	jalr	-1004(ra) # 80008614 <__memmove>
    80006a08:	00813083          	ld	ra,8(sp)
    80006a0c:	00013403          	ld	s0,0(sp)
    80006a10:	00000513          	li	a0,0
    80006a14:	01010113          	addi	sp,sp,16
    80006a18:	00008067          	ret
    80006a1c:	00003517          	auipc	a0,0x3
    80006a20:	dac50513          	addi	a0,a0,-596 # 800097c8 <CONSOLE_STATUS+0x7b8>
    80006a24:	00001097          	auipc	ra,0x1
    80006a28:	8e8080e7          	jalr	-1816(ra) # 8000730c <panic>

0000000080006a2c <trapinit>:
    80006a2c:	ff010113          	addi	sp,sp,-16
    80006a30:	00813423          	sd	s0,8(sp)
    80006a34:	01010413          	addi	s0,sp,16
    80006a38:	00813403          	ld	s0,8(sp)
    80006a3c:	00003597          	auipc	a1,0x3
    80006a40:	db458593          	addi	a1,a1,-588 # 800097f0 <CONSOLE_STATUS+0x7e0>
    80006a44:	00006517          	auipc	a0,0x6
    80006a48:	07c50513          	addi	a0,a0,124 # 8000cac0 <tickslock>
    80006a4c:	01010113          	addi	sp,sp,16
    80006a50:	00001317          	auipc	t1,0x1
    80006a54:	5c830067          	jr	1480(t1) # 80008018 <initlock>

0000000080006a58 <trapinithart>:
    80006a58:	ff010113          	addi	sp,sp,-16
    80006a5c:	00813423          	sd	s0,8(sp)
    80006a60:	01010413          	addi	s0,sp,16
    80006a64:	00000797          	auipc	a5,0x0
    80006a68:	2fc78793          	addi	a5,a5,764 # 80006d60 <kernelvec>
    80006a6c:	10579073          	csrw	stvec,a5
    80006a70:	00813403          	ld	s0,8(sp)
    80006a74:	01010113          	addi	sp,sp,16
    80006a78:	00008067          	ret

0000000080006a7c <usertrap>:
    80006a7c:	ff010113          	addi	sp,sp,-16
    80006a80:	00813423          	sd	s0,8(sp)
    80006a84:	01010413          	addi	s0,sp,16
    80006a88:	00813403          	ld	s0,8(sp)
    80006a8c:	01010113          	addi	sp,sp,16
    80006a90:	00008067          	ret

0000000080006a94 <usertrapret>:
    80006a94:	ff010113          	addi	sp,sp,-16
    80006a98:	00813423          	sd	s0,8(sp)
    80006a9c:	01010413          	addi	s0,sp,16
    80006aa0:	00813403          	ld	s0,8(sp)
    80006aa4:	01010113          	addi	sp,sp,16
    80006aa8:	00008067          	ret

0000000080006aac <kerneltrap>:
    80006aac:	fe010113          	addi	sp,sp,-32
    80006ab0:	00813823          	sd	s0,16(sp)
    80006ab4:	00113c23          	sd	ra,24(sp)
    80006ab8:	00913423          	sd	s1,8(sp)
    80006abc:	02010413          	addi	s0,sp,32
    80006ac0:	142025f3          	csrr	a1,scause
    80006ac4:	100027f3          	csrr	a5,sstatus
    80006ac8:	0027f793          	andi	a5,a5,2
    80006acc:	10079c63          	bnez	a5,80006be4 <kerneltrap+0x138>
    80006ad0:	142027f3          	csrr	a5,scause
    80006ad4:	0207ce63          	bltz	a5,80006b10 <kerneltrap+0x64>
    80006ad8:	00003517          	auipc	a0,0x3
    80006adc:	d6050513          	addi	a0,a0,-672 # 80009838 <CONSOLE_STATUS+0x828>
    80006ae0:	00001097          	auipc	ra,0x1
    80006ae4:	888080e7          	jalr	-1912(ra) # 80007368 <__printf>
    80006ae8:	141025f3          	csrr	a1,sepc
    80006aec:	14302673          	csrr	a2,stval
    80006af0:	00003517          	auipc	a0,0x3
    80006af4:	d5850513          	addi	a0,a0,-680 # 80009848 <CONSOLE_STATUS+0x838>
    80006af8:	00001097          	auipc	ra,0x1
    80006afc:	870080e7          	jalr	-1936(ra) # 80007368 <__printf>
    80006b00:	00003517          	auipc	a0,0x3
    80006b04:	d6050513          	addi	a0,a0,-672 # 80009860 <CONSOLE_STATUS+0x850>
    80006b08:	00001097          	auipc	ra,0x1
    80006b0c:	804080e7          	jalr	-2044(ra) # 8000730c <panic>
    80006b10:	0ff7f713          	andi	a4,a5,255
    80006b14:	00900693          	li	a3,9
    80006b18:	04d70063          	beq	a4,a3,80006b58 <kerneltrap+0xac>
    80006b1c:	fff00713          	li	a4,-1
    80006b20:	03f71713          	slli	a4,a4,0x3f
    80006b24:	00170713          	addi	a4,a4,1
    80006b28:	fae798e3          	bne	a5,a4,80006ad8 <kerneltrap+0x2c>
    80006b2c:	00000097          	auipc	ra,0x0
    80006b30:	e00080e7          	jalr	-512(ra) # 8000692c <cpuid>
    80006b34:	06050663          	beqz	a0,80006ba0 <kerneltrap+0xf4>
    80006b38:	144027f3          	csrr	a5,sip
    80006b3c:	ffd7f793          	andi	a5,a5,-3
    80006b40:	14479073          	csrw	sip,a5
    80006b44:	01813083          	ld	ra,24(sp)
    80006b48:	01013403          	ld	s0,16(sp)
    80006b4c:	00813483          	ld	s1,8(sp)
    80006b50:	02010113          	addi	sp,sp,32
    80006b54:	00008067          	ret
    80006b58:	00000097          	auipc	ra,0x0
    80006b5c:	3cc080e7          	jalr	972(ra) # 80006f24 <plic_claim>
    80006b60:	00a00793          	li	a5,10
    80006b64:	00050493          	mv	s1,a0
    80006b68:	06f50863          	beq	a0,a5,80006bd8 <kerneltrap+0x12c>
    80006b6c:	fc050ce3          	beqz	a0,80006b44 <kerneltrap+0x98>
    80006b70:	00050593          	mv	a1,a0
    80006b74:	00003517          	auipc	a0,0x3
    80006b78:	ca450513          	addi	a0,a0,-860 # 80009818 <CONSOLE_STATUS+0x808>
    80006b7c:	00000097          	auipc	ra,0x0
    80006b80:	7ec080e7          	jalr	2028(ra) # 80007368 <__printf>
    80006b84:	01013403          	ld	s0,16(sp)
    80006b88:	01813083          	ld	ra,24(sp)
    80006b8c:	00048513          	mv	a0,s1
    80006b90:	00813483          	ld	s1,8(sp)
    80006b94:	02010113          	addi	sp,sp,32
    80006b98:	00000317          	auipc	t1,0x0
    80006b9c:	3c430067          	jr	964(t1) # 80006f5c <plic_complete>
    80006ba0:	00006517          	auipc	a0,0x6
    80006ba4:	f2050513          	addi	a0,a0,-224 # 8000cac0 <tickslock>
    80006ba8:	00001097          	auipc	ra,0x1
    80006bac:	494080e7          	jalr	1172(ra) # 8000803c <acquire>
    80006bb0:	00005717          	auipc	a4,0x5
    80006bb4:	d9470713          	addi	a4,a4,-620 # 8000b944 <ticks>
    80006bb8:	00072783          	lw	a5,0(a4)
    80006bbc:	00006517          	auipc	a0,0x6
    80006bc0:	f0450513          	addi	a0,a0,-252 # 8000cac0 <tickslock>
    80006bc4:	0017879b          	addiw	a5,a5,1
    80006bc8:	00f72023          	sw	a5,0(a4)
    80006bcc:	00001097          	auipc	ra,0x1
    80006bd0:	53c080e7          	jalr	1340(ra) # 80008108 <release>
    80006bd4:	f65ff06f          	j	80006b38 <kerneltrap+0x8c>
    80006bd8:	00001097          	auipc	ra,0x1
    80006bdc:	098080e7          	jalr	152(ra) # 80007c70 <uartintr>
    80006be0:	fa5ff06f          	j	80006b84 <kerneltrap+0xd8>
    80006be4:	00003517          	auipc	a0,0x3
    80006be8:	c1450513          	addi	a0,a0,-1004 # 800097f8 <CONSOLE_STATUS+0x7e8>
    80006bec:	00000097          	auipc	ra,0x0
    80006bf0:	720080e7          	jalr	1824(ra) # 8000730c <panic>

0000000080006bf4 <clockintr>:
    80006bf4:	fe010113          	addi	sp,sp,-32
    80006bf8:	00813823          	sd	s0,16(sp)
    80006bfc:	00913423          	sd	s1,8(sp)
    80006c00:	00113c23          	sd	ra,24(sp)
    80006c04:	02010413          	addi	s0,sp,32
    80006c08:	00006497          	auipc	s1,0x6
    80006c0c:	eb848493          	addi	s1,s1,-328 # 8000cac0 <tickslock>
    80006c10:	00048513          	mv	a0,s1
    80006c14:	00001097          	auipc	ra,0x1
    80006c18:	428080e7          	jalr	1064(ra) # 8000803c <acquire>
    80006c1c:	00005717          	auipc	a4,0x5
    80006c20:	d2870713          	addi	a4,a4,-728 # 8000b944 <ticks>
    80006c24:	00072783          	lw	a5,0(a4)
    80006c28:	01013403          	ld	s0,16(sp)
    80006c2c:	01813083          	ld	ra,24(sp)
    80006c30:	00048513          	mv	a0,s1
    80006c34:	0017879b          	addiw	a5,a5,1
    80006c38:	00813483          	ld	s1,8(sp)
    80006c3c:	00f72023          	sw	a5,0(a4)
    80006c40:	02010113          	addi	sp,sp,32
    80006c44:	00001317          	auipc	t1,0x1
    80006c48:	4c430067          	jr	1220(t1) # 80008108 <release>

0000000080006c4c <devintr>:
    80006c4c:	142027f3          	csrr	a5,scause
    80006c50:	00000513          	li	a0,0
    80006c54:	0007c463          	bltz	a5,80006c5c <devintr+0x10>
    80006c58:	00008067          	ret
    80006c5c:	fe010113          	addi	sp,sp,-32
    80006c60:	00813823          	sd	s0,16(sp)
    80006c64:	00113c23          	sd	ra,24(sp)
    80006c68:	00913423          	sd	s1,8(sp)
    80006c6c:	02010413          	addi	s0,sp,32
    80006c70:	0ff7f713          	andi	a4,a5,255
    80006c74:	00900693          	li	a3,9
    80006c78:	04d70c63          	beq	a4,a3,80006cd0 <devintr+0x84>
    80006c7c:	fff00713          	li	a4,-1
    80006c80:	03f71713          	slli	a4,a4,0x3f
    80006c84:	00170713          	addi	a4,a4,1
    80006c88:	00e78c63          	beq	a5,a4,80006ca0 <devintr+0x54>
    80006c8c:	01813083          	ld	ra,24(sp)
    80006c90:	01013403          	ld	s0,16(sp)
    80006c94:	00813483          	ld	s1,8(sp)
    80006c98:	02010113          	addi	sp,sp,32
    80006c9c:	00008067          	ret
    80006ca0:	00000097          	auipc	ra,0x0
    80006ca4:	c8c080e7          	jalr	-884(ra) # 8000692c <cpuid>
    80006ca8:	06050663          	beqz	a0,80006d14 <devintr+0xc8>
    80006cac:	144027f3          	csrr	a5,sip
    80006cb0:	ffd7f793          	andi	a5,a5,-3
    80006cb4:	14479073          	csrw	sip,a5
    80006cb8:	01813083          	ld	ra,24(sp)
    80006cbc:	01013403          	ld	s0,16(sp)
    80006cc0:	00813483          	ld	s1,8(sp)
    80006cc4:	00200513          	li	a0,2
    80006cc8:	02010113          	addi	sp,sp,32
    80006ccc:	00008067          	ret
    80006cd0:	00000097          	auipc	ra,0x0
    80006cd4:	254080e7          	jalr	596(ra) # 80006f24 <plic_claim>
    80006cd8:	00a00793          	li	a5,10
    80006cdc:	00050493          	mv	s1,a0
    80006ce0:	06f50663          	beq	a0,a5,80006d4c <devintr+0x100>
    80006ce4:	00100513          	li	a0,1
    80006ce8:	fa0482e3          	beqz	s1,80006c8c <devintr+0x40>
    80006cec:	00048593          	mv	a1,s1
    80006cf0:	00003517          	auipc	a0,0x3
    80006cf4:	b2850513          	addi	a0,a0,-1240 # 80009818 <CONSOLE_STATUS+0x808>
    80006cf8:	00000097          	auipc	ra,0x0
    80006cfc:	670080e7          	jalr	1648(ra) # 80007368 <__printf>
    80006d00:	00048513          	mv	a0,s1
    80006d04:	00000097          	auipc	ra,0x0
    80006d08:	258080e7          	jalr	600(ra) # 80006f5c <plic_complete>
    80006d0c:	00100513          	li	a0,1
    80006d10:	f7dff06f          	j	80006c8c <devintr+0x40>
    80006d14:	00006517          	auipc	a0,0x6
    80006d18:	dac50513          	addi	a0,a0,-596 # 8000cac0 <tickslock>
    80006d1c:	00001097          	auipc	ra,0x1
    80006d20:	320080e7          	jalr	800(ra) # 8000803c <acquire>
    80006d24:	00005717          	auipc	a4,0x5
    80006d28:	c2070713          	addi	a4,a4,-992 # 8000b944 <ticks>
    80006d2c:	00072783          	lw	a5,0(a4)
    80006d30:	00006517          	auipc	a0,0x6
    80006d34:	d9050513          	addi	a0,a0,-624 # 8000cac0 <tickslock>
    80006d38:	0017879b          	addiw	a5,a5,1
    80006d3c:	00f72023          	sw	a5,0(a4)
    80006d40:	00001097          	auipc	ra,0x1
    80006d44:	3c8080e7          	jalr	968(ra) # 80008108 <release>
    80006d48:	f65ff06f          	j	80006cac <devintr+0x60>
    80006d4c:	00001097          	auipc	ra,0x1
    80006d50:	f24080e7          	jalr	-220(ra) # 80007c70 <uartintr>
    80006d54:	fadff06f          	j	80006d00 <devintr+0xb4>
	...

0000000080006d60 <kernelvec>:
    80006d60:	f0010113          	addi	sp,sp,-256
    80006d64:	00113023          	sd	ra,0(sp)
    80006d68:	00213423          	sd	sp,8(sp)
    80006d6c:	00313823          	sd	gp,16(sp)
    80006d70:	00413c23          	sd	tp,24(sp)
    80006d74:	02513023          	sd	t0,32(sp)
    80006d78:	02613423          	sd	t1,40(sp)
    80006d7c:	02713823          	sd	t2,48(sp)
    80006d80:	02813c23          	sd	s0,56(sp)
    80006d84:	04913023          	sd	s1,64(sp)
    80006d88:	04a13423          	sd	a0,72(sp)
    80006d8c:	04b13823          	sd	a1,80(sp)
    80006d90:	04c13c23          	sd	a2,88(sp)
    80006d94:	06d13023          	sd	a3,96(sp)
    80006d98:	06e13423          	sd	a4,104(sp)
    80006d9c:	06f13823          	sd	a5,112(sp)
    80006da0:	07013c23          	sd	a6,120(sp)
    80006da4:	09113023          	sd	a7,128(sp)
    80006da8:	09213423          	sd	s2,136(sp)
    80006dac:	09313823          	sd	s3,144(sp)
    80006db0:	09413c23          	sd	s4,152(sp)
    80006db4:	0b513023          	sd	s5,160(sp)
    80006db8:	0b613423          	sd	s6,168(sp)
    80006dbc:	0b713823          	sd	s7,176(sp)
    80006dc0:	0b813c23          	sd	s8,184(sp)
    80006dc4:	0d913023          	sd	s9,192(sp)
    80006dc8:	0da13423          	sd	s10,200(sp)
    80006dcc:	0db13823          	sd	s11,208(sp)
    80006dd0:	0dc13c23          	sd	t3,216(sp)
    80006dd4:	0fd13023          	sd	t4,224(sp)
    80006dd8:	0fe13423          	sd	t5,232(sp)
    80006ddc:	0ff13823          	sd	t6,240(sp)
    80006de0:	ccdff0ef          	jal	ra,80006aac <kerneltrap>
    80006de4:	00013083          	ld	ra,0(sp)
    80006de8:	00813103          	ld	sp,8(sp)
    80006dec:	01013183          	ld	gp,16(sp)
    80006df0:	02013283          	ld	t0,32(sp)
    80006df4:	02813303          	ld	t1,40(sp)
    80006df8:	03013383          	ld	t2,48(sp)
    80006dfc:	03813403          	ld	s0,56(sp)
    80006e00:	04013483          	ld	s1,64(sp)
    80006e04:	04813503          	ld	a0,72(sp)
    80006e08:	05013583          	ld	a1,80(sp)
    80006e0c:	05813603          	ld	a2,88(sp)
    80006e10:	06013683          	ld	a3,96(sp)
    80006e14:	06813703          	ld	a4,104(sp)
    80006e18:	07013783          	ld	a5,112(sp)
    80006e1c:	07813803          	ld	a6,120(sp)
    80006e20:	08013883          	ld	a7,128(sp)
    80006e24:	08813903          	ld	s2,136(sp)
    80006e28:	09013983          	ld	s3,144(sp)
    80006e2c:	09813a03          	ld	s4,152(sp)
    80006e30:	0a013a83          	ld	s5,160(sp)
    80006e34:	0a813b03          	ld	s6,168(sp)
    80006e38:	0b013b83          	ld	s7,176(sp)
    80006e3c:	0b813c03          	ld	s8,184(sp)
    80006e40:	0c013c83          	ld	s9,192(sp)
    80006e44:	0c813d03          	ld	s10,200(sp)
    80006e48:	0d013d83          	ld	s11,208(sp)
    80006e4c:	0d813e03          	ld	t3,216(sp)
    80006e50:	0e013e83          	ld	t4,224(sp)
    80006e54:	0e813f03          	ld	t5,232(sp)
    80006e58:	0f013f83          	ld	t6,240(sp)
    80006e5c:	10010113          	addi	sp,sp,256
    80006e60:	10200073          	sret
    80006e64:	00000013          	nop
    80006e68:	00000013          	nop
    80006e6c:	00000013          	nop

0000000080006e70 <timervec>:
    80006e70:	34051573          	csrrw	a0,mscratch,a0
    80006e74:	00b53023          	sd	a1,0(a0)
    80006e78:	00c53423          	sd	a2,8(a0)
    80006e7c:	00d53823          	sd	a3,16(a0)
    80006e80:	01853583          	ld	a1,24(a0)
    80006e84:	02053603          	ld	a2,32(a0)
    80006e88:	0005b683          	ld	a3,0(a1)
    80006e8c:	00c686b3          	add	a3,a3,a2
    80006e90:	00d5b023          	sd	a3,0(a1)
    80006e94:	00200593          	li	a1,2
    80006e98:	14459073          	csrw	sip,a1
    80006e9c:	01053683          	ld	a3,16(a0)
    80006ea0:	00853603          	ld	a2,8(a0)
    80006ea4:	00053583          	ld	a1,0(a0)
    80006ea8:	34051573          	csrrw	a0,mscratch,a0
    80006eac:	30200073          	mret

0000000080006eb0 <plicinit>:
    80006eb0:	ff010113          	addi	sp,sp,-16
    80006eb4:	00813423          	sd	s0,8(sp)
    80006eb8:	01010413          	addi	s0,sp,16
    80006ebc:	00813403          	ld	s0,8(sp)
    80006ec0:	0c0007b7          	lui	a5,0xc000
    80006ec4:	00100713          	li	a4,1
    80006ec8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006ecc:	00e7a223          	sw	a4,4(a5)
    80006ed0:	01010113          	addi	sp,sp,16
    80006ed4:	00008067          	ret

0000000080006ed8 <plicinithart>:
    80006ed8:	ff010113          	addi	sp,sp,-16
    80006edc:	00813023          	sd	s0,0(sp)
    80006ee0:	00113423          	sd	ra,8(sp)
    80006ee4:	01010413          	addi	s0,sp,16
    80006ee8:	00000097          	auipc	ra,0x0
    80006eec:	a44080e7          	jalr	-1468(ra) # 8000692c <cpuid>
    80006ef0:	0085171b          	slliw	a4,a0,0x8
    80006ef4:	0c0027b7          	lui	a5,0xc002
    80006ef8:	00e787b3          	add	a5,a5,a4
    80006efc:	40200713          	li	a4,1026
    80006f00:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006f04:	00813083          	ld	ra,8(sp)
    80006f08:	00013403          	ld	s0,0(sp)
    80006f0c:	00d5151b          	slliw	a0,a0,0xd
    80006f10:	0c2017b7          	lui	a5,0xc201
    80006f14:	00a78533          	add	a0,a5,a0
    80006f18:	00052023          	sw	zero,0(a0)
    80006f1c:	01010113          	addi	sp,sp,16
    80006f20:	00008067          	ret

0000000080006f24 <plic_claim>:
    80006f24:	ff010113          	addi	sp,sp,-16
    80006f28:	00813023          	sd	s0,0(sp)
    80006f2c:	00113423          	sd	ra,8(sp)
    80006f30:	01010413          	addi	s0,sp,16
    80006f34:	00000097          	auipc	ra,0x0
    80006f38:	9f8080e7          	jalr	-1544(ra) # 8000692c <cpuid>
    80006f3c:	00813083          	ld	ra,8(sp)
    80006f40:	00013403          	ld	s0,0(sp)
    80006f44:	00d5151b          	slliw	a0,a0,0xd
    80006f48:	0c2017b7          	lui	a5,0xc201
    80006f4c:	00a78533          	add	a0,a5,a0
    80006f50:	00452503          	lw	a0,4(a0)
    80006f54:	01010113          	addi	sp,sp,16
    80006f58:	00008067          	ret

0000000080006f5c <plic_complete>:
    80006f5c:	fe010113          	addi	sp,sp,-32
    80006f60:	00813823          	sd	s0,16(sp)
    80006f64:	00913423          	sd	s1,8(sp)
    80006f68:	00113c23          	sd	ra,24(sp)
    80006f6c:	02010413          	addi	s0,sp,32
    80006f70:	00050493          	mv	s1,a0
    80006f74:	00000097          	auipc	ra,0x0
    80006f78:	9b8080e7          	jalr	-1608(ra) # 8000692c <cpuid>
    80006f7c:	01813083          	ld	ra,24(sp)
    80006f80:	01013403          	ld	s0,16(sp)
    80006f84:	00d5179b          	slliw	a5,a0,0xd
    80006f88:	0c201737          	lui	a4,0xc201
    80006f8c:	00f707b3          	add	a5,a4,a5
    80006f90:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006f94:	00813483          	ld	s1,8(sp)
    80006f98:	02010113          	addi	sp,sp,32
    80006f9c:	00008067          	ret

0000000080006fa0 <consolewrite>:
    80006fa0:	fb010113          	addi	sp,sp,-80
    80006fa4:	04813023          	sd	s0,64(sp)
    80006fa8:	04113423          	sd	ra,72(sp)
    80006fac:	02913c23          	sd	s1,56(sp)
    80006fb0:	03213823          	sd	s2,48(sp)
    80006fb4:	03313423          	sd	s3,40(sp)
    80006fb8:	03413023          	sd	s4,32(sp)
    80006fbc:	01513c23          	sd	s5,24(sp)
    80006fc0:	05010413          	addi	s0,sp,80
    80006fc4:	06c05c63          	blez	a2,8000703c <consolewrite+0x9c>
    80006fc8:	00060993          	mv	s3,a2
    80006fcc:	00050a13          	mv	s4,a0
    80006fd0:	00058493          	mv	s1,a1
    80006fd4:	00000913          	li	s2,0
    80006fd8:	fff00a93          	li	s5,-1
    80006fdc:	01c0006f          	j	80006ff8 <consolewrite+0x58>
    80006fe0:	fbf44503          	lbu	a0,-65(s0)
    80006fe4:	0019091b          	addiw	s2,s2,1
    80006fe8:	00148493          	addi	s1,s1,1
    80006fec:	00001097          	auipc	ra,0x1
    80006ff0:	a9c080e7          	jalr	-1380(ra) # 80007a88 <uartputc>
    80006ff4:	03298063          	beq	s3,s2,80007014 <consolewrite+0x74>
    80006ff8:	00048613          	mv	a2,s1
    80006ffc:	00100693          	li	a3,1
    80007000:	000a0593          	mv	a1,s4
    80007004:	fbf40513          	addi	a0,s0,-65
    80007008:	00000097          	auipc	ra,0x0
    8000700c:	9dc080e7          	jalr	-1572(ra) # 800069e4 <either_copyin>
    80007010:	fd5518e3          	bne	a0,s5,80006fe0 <consolewrite+0x40>
    80007014:	04813083          	ld	ra,72(sp)
    80007018:	04013403          	ld	s0,64(sp)
    8000701c:	03813483          	ld	s1,56(sp)
    80007020:	02813983          	ld	s3,40(sp)
    80007024:	02013a03          	ld	s4,32(sp)
    80007028:	01813a83          	ld	s5,24(sp)
    8000702c:	00090513          	mv	a0,s2
    80007030:	03013903          	ld	s2,48(sp)
    80007034:	05010113          	addi	sp,sp,80
    80007038:	00008067          	ret
    8000703c:	00000913          	li	s2,0
    80007040:	fd5ff06f          	j	80007014 <consolewrite+0x74>

0000000080007044 <consoleread>:
    80007044:	f9010113          	addi	sp,sp,-112
    80007048:	06813023          	sd	s0,96(sp)
    8000704c:	04913c23          	sd	s1,88(sp)
    80007050:	05213823          	sd	s2,80(sp)
    80007054:	05313423          	sd	s3,72(sp)
    80007058:	05413023          	sd	s4,64(sp)
    8000705c:	03513c23          	sd	s5,56(sp)
    80007060:	03613823          	sd	s6,48(sp)
    80007064:	03713423          	sd	s7,40(sp)
    80007068:	03813023          	sd	s8,32(sp)
    8000706c:	06113423          	sd	ra,104(sp)
    80007070:	01913c23          	sd	s9,24(sp)
    80007074:	07010413          	addi	s0,sp,112
    80007078:	00060b93          	mv	s7,a2
    8000707c:	00050913          	mv	s2,a0
    80007080:	00058c13          	mv	s8,a1
    80007084:	00060b1b          	sext.w	s6,a2
    80007088:	00006497          	auipc	s1,0x6
    8000708c:	a6048493          	addi	s1,s1,-1440 # 8000cae8 <cons>
    80007090:	00400993          	li	s3,4
    80007094:	fff00a13          	li	s4,-1
    80007098:	00a00a93          	li	s5,10
    8000709c:	05705e63          	blez	s7,800070f8 <consoleread+0xb4>
    800070a0:	09c4a703          	lw	a4,156(s1)
    800070a4:	0984a783          	lw	a5,152(s1)
    800070a8:	0007071b          	sext.w	a4,a4
    800070ac:	08e78463          	beq	a5,a4,80007134 <consoleread+0xf0>
    800070b0:	07f7f713          	andi	a4,a5,127
    800070b4:	00e48733          	add	a4,s1,a4
    800070b8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800070bc:	0017869b          	addiw	a3,a5,1
    800070c0:	08d4ac23          	sw	a3,152(s1)
    800070c4:	00070c9b          	sext.w	s9,a4
    800070c8:	0b370663          	beq	a4,s3,80007174 <consoleread+0x130>
    800070cc:	00100693          	li	a3,1
    800070d0:	f9f40613          	addi	a2,s0,-97
    800070d4:	000c0593          	mv	a1,s8
    800070d8:	00090513          	mv	a0,s2
    800070dc:	f8e40fa3          	sb	a4,-97(s0)
    800070e0:	00000097          	auipc	ra,0x0
    800070e4:	8b8080e7          	jalr	-1864(ra) # 80006998 <either_copyout>
    800070e8:	01450863          	beq	a0,s4,800070f8 <consoleread+0xb4>
    800070ec:	001c0c13          	addi	s8,s8,1
    800070f0:	fffb8b9b          	addiw	s7,s7,-1
    800070f4:	fb5c94e3          	bne	s9,s5,8000709c <consoleread+0x58>
    800070f8:	000b851b          	sext.w	a0,s7
    800070fc:	06813083          	ld	ra,104(sp)
    80007100:	06013403          	ld	s0,96(sp)
    80007104:	05813483          	ld	s1,88(sp)
    80007108:	05013903          	ld	s2,80(sp)
    8000710c:	04813983          	ld	s3,72(sp)
    80007110:	04013a03          	ld	s4,64(sp)
    80007114:	03813a83          	ld	s5,56(sp)
    80007118:	02813b83          	ld	s7,40(sp)
    8000711c:	02013c03          	ld	s8,32(sp)
    80007120:	01813c83          	ld	s9,24(sp)
    80007124:	40ab053b          	subw	a0,s6,a0
    80007128:	03013b03          	ld	s6,48(sp)
    8000712c:	07010113          	addi	sp,sp,112
    80007130:	00008067          	ret
    80007134:	00001097          	auipc	ra,0x1
    80007138:	1d8080e7          	jalr	472(ra) # 8000830c <push_on>
    8000713c:	0984a703          	lw	a4,152(s1)
    80007140:	09c4a783          	lw	a5,156(s1)
    80007144:	0007879b          	sext.w	a5,a5
    80007148:	fef70ce3          	beq	a4,a5,80007140 <consoleread+0xfc>
    8000714c:	00001097          	auipc	ra,0x1
    80007150:	234080e7          	jalr	564(ra) # 80008380 <pop_on>
    80007154:	0984a783          	lw	a5,152(s1)
    80007158:	07f7f713          	andi	a4,a5,127
    8000715c:	00e48733          	add	a4,s1,a4
    80007160:	01874703          	lbu	a4,24(a4)
    80007164:	0017869b          	addiw	a3,a5,1
    80007168:	08d4ac23          	sw	a3,152(s1)
    8000716c:	00070c9b          	sext.w	s9,a4
    80007170:	f5371ee3          	bne	a4,s3,800070cc <consoleread+0x88>
    80007174:	000b851b          	sext.w	a0,s7
    80007178:	f96bf2e3          	bgeu	s7,s6,800070fc <consoleread+0xb8>
    8000717c:	08f4ac23          	sw	a5,152(s1)
    80007180:	f7dff06f          	j	800070fc <consoleread+0xb8>

0000000080007184 <consputc>:
    80007184:	10000793          	li	a5,256
    80007188:	00f50663          	beq	a0,a5,80007194 <consputc+0x10>
    8000718c:	00001317          	auipc	t1,0x1
    80007190:	9f430067          	jr	-1548(t1) # 80007b80 <uartputc_sync>
    80007194:	ff010113          	addi	sp,sp,-16
    80007198:	00113423          	sd	ra,8(sp)
    8000719c:	00813023          	sd	s0,0(sp)
    800071a0:	01010413          	addi	s0,sp,16
    800071a4:	00800513          	li	a0,8
    800071a8:	00001097          	auipc	ra,0x1
    800071ac:	9d8080e7          	jalr	-1576(ra) # 80007b80 <uartputc_sync>
    800071b0:	02000513          	li	a0,32
    800071b4:	00001097          	auipc	ra,0x1
    800071b8:	9cc080e7          	jalr	-1588(ra) # 80007b80 <uartputc_sync>
    800071bc:	00013403          	ld	s0,0(sp)
    800071c0:	00813083          	ld	ra,8(sp)
    800071c4:	00800513          	li	a0,8
    800071c8:	01010113          	addi	sp,sp,16
    800071cc:	00001317          	auipc	t1,0x1
    800071d0:	9b430067          	jr	-1612(t1) # 80007b80 <uartputc_sync>

00000000800071d4 <consoleintr>:
    800071d4:	fe010113          	addi	sp,sp,-32
    800071d8:	00813823          	sd	s0,16(sp)
    800071dc:	00913423          	sd	s1,8(sp)
    800071e0:	01213023          	sd	s2,0(sp)
    800071e4:	00113c23          	sd	ra,24(sp)
    800071e8:	02010413          	addi	s0,sp,32
    800071ec:	00006917          	auipc	s2,0x6
    800071f0:	8fc90913          	addi	s2,s2,-1796 # 8000cae8 <cons>
    800071f4:	00050493          	mv	s1,a0
    800071f8:	00090513          	mv	a0,s2
    800071fc:	00001097          	auipc	ra,0x1
    80007200:	e40080e7          	jalr	-448(ra) # 8000803c <acquire>
    80007204:	02048c63          	beqz	s1,8000723c <consoleintr+0x68>
    80007208:	0a092783          	lw	a5,160(s2)
    8000720c:	09892703          	lw	a4,152(s2)
    80007210:	07f00693          	li	a3,127
    80007214:	40e7873b          	subw	a4,a5,a4
    80007218:	02e6e263          	bltu	a3,a4,8000723c <consoleintr+0x68>
    8000721c:	00d00713          	li	a4,13
    80007220:	04e48063          	beq	s1,a4,80007260 <consoleintr+0x8c>
    80007224:	07f7f713          	andi	a4,a5,127
    80007228:	00e90733          	add	a4,s2,a4
    8000722c:	0017879b          	addiw	a5,a5,1
    80007230:	0af92023          	sw	a5,160(s2)
    80007234:	00970c23          	sb	s1,24(a4)
    80007238:	08f92e23          	sw	a5,156(s2)
    8000723c:	01013403          	ld	s0,16(sp)
    80007240:	01813083          	ld	ra,24(sp)
    80007244:	00813483          	ld	s1,8(sp)
    80007248:	00013903          	ld	s2,0(sp)
    8000724c:	00006517          	auipc	a0,0x6
    80007250:	89c50513          	addi	a0,a0,-1892 # 8000cae8 <cons>
    80007254:	02010113          	addi	sp,sp,32
    80007258:	00001317          	auipc	t1,0x1
    8000725c:	eb030067          	jr	-336(t1) # 80008108 <release>
    80007260:	00a00493          	li	s1,10
    80007264:	fc1ff06f          	j	80007224 <consoleintr+0x50>

0000000080007268 <consoleinit>:
    80007268:	fe010113          	addi	sp,sp,-32
    8000726c:	00113c23          	sd	ra,24(sp)
    80007270:	00813823          	sd	s0,16(sp)
    80007274:	00913423          	sd	s1,8(sp)
    80007278:	02010413          	addi	s0,sp,32
    8000727c:	00006497          	auipc	s1,0x6
    80007280:	86c48493          	addi	s1,s1,-1940 # 8000cae8 <cons>
    80007284:	00048513          	mv	a0,s1
    80007288:	00002597          	auipc	a1,0x2
    8000728c:	5e858593          	addi	a1,a1,1512 # 80009870 <CONSOLE_STATUS+0x860>
    80007290:	00001097          	auipc	ra,0x1
    80007294:	d88080e7          	jalr	-632(ra) # 80008018 <initlock>
    80007298:	00000097          	auipc	ra,0x0
    8000729c:	7ac080e7          	jalr	1964(ra) # 80007a44 <uartinit>
    800072a0:	01813083          	ld	ra,24(sp)
    800072a4:	01013403          	ld	s0,16(sp)
    800072a8:	00000797          	auipc	a5,0x0
    800072ac:	d9c78793          	addi	a5,a5,-612 # 80007044 <consoleread>
    800072b0:	0af4bc23          	sd	a5,184(s1)
    800072b4:	00000797          	auipc	a5,0x0
    800072b8:	cec78793          	addi	a5,a5,-788 # 80006fa0 <consolewrite>
    800072bc:	0cf4b023          	sd	a5,192(s1)
    800072c0:	00813483          	ld	s1,8(sp)
    800072c4:	02010113          	addi	sp,sp,32
    800072c8:	00008067          	ret

00000000800072cc <console_read>:
    800072cc:	ff010113          	addi	sp,sp,-16
    800072d0:	00813423          	sd	s0,8(sp)
    800072d4:	01010413          	addi	s0,sp,16
    800072d8:	00813403          	ld	s0,8(sp)
    800072dc:	00006317          	auipc	t1,0x6
    800072e0:	8c433303          	ld	t1,-1852(t1) # 8000cba0 <devsw+0x10>
    800072e4:	01010113          	addi	sp,sp,16
    800072e8:	00030067          	jr	t1

00000000800072ec <console_write>:
    800072ec:	ff010113          	addi	sp,sp,-16
    800072f0:	00813423          	sd	s0,8(sp)
    800072f4:	01010413          	addi	s0,sp,16
    800072f8:	00813403          	ld	s0,8(sp)
    800072fc:	00006317          	auipc	t1,0x6
    80007300:	8ac33303          	ld	t1,-1876(t1) # 8000cba8 <devsw+0x18>
    80007304:	01010113          	addi	sp,sp,16
    80007308:	00030067          	jr	t1

000000008000730c <panic>:
    8000730c:	fe010113          	addi	sp,sp,-32
    80007310:	00113c23          	sd	ra,24(sp)
    80007314:	00813823          	sd	s0,16(sp)
    80007318:	00913423          	sd	s1,8(sp)
    8000731c:	02010413          	addi	s0,sp,32
    80007320:	00050493          	mv	s1,a0
    80007324:	00002517          	auipc	a0,0x2
    80007328:	55450513          	addi	a0,a0,1364 # 80009878 <CONSOLE_STATUS+0x868>
    8000732c:	00006797          	auipc	a5,0x6
    80007330:	9007ae23          	sw	zero,-1764(a5) # 8000cc48 <pr+0x18>
    80007334:	00000097          	auipc	ra,0x0
    80007338:	034080e7          	jalr	52(ra) # 80007368 <__printf>
    8000733c:	00048513          	mv	a0,s1
    80007340:	00000097          	auipc	ra,0x0
    80007344:	028080e7          	jalr	40(ra) # 80007368 <__printf>
    80007348:	00002517          	auipc	a0,0x2
    8000734c:	27850513          	addi	a0,a0,632 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80007350:	00000097          	auipc	ra,0x0
    80007354:	018080e7          	jalr	24(ra) # 80007368 <__printf>
    80007358:	00100793          	li	a5,1
    8000735c:	00004717          	auipc	a4,0x4
    80007360:	5ef72623          	sw	a5,1516(a4) # 8000b948 <panicked>
    80007364:	0000006f          	j	80007364 <panic+0x58>

0000000080007368 <__printf>:
    80007368:	f3010113          	addi	sp,sp,-208
    8000736c:	08813023          	sd	s0,128(sp)
    80007370:	07313423          	sd	s3,104(sp)
    80007374:	09010413          	addi	s0,sp,144
    80007378:	05813023          	sd	s8,64(sp)
    8000737c:	08113423          	sd	ra,136(sp)
    80007380:	06913c23          	sd	s1,120(sp)
    80007384:	07213823          	sd	s2,112(sp)
    80007388:	07413023          	sd	s4,96(sp)
    8000738c:	05513c23          	sd	s5,88(sp)
    80007390:	05613823          	sd	s6,80(sp)
    80007394:	05713423          	sd	s7,72(sp)
    80007398:	03913c23          	sd	s9,56(sp)
    8000739c:	03a13823          	sd	s10,48(sp)
    800073a0:	03b13423          	sd	s11,40(sp)
    800073a4:	00006317          	auipc	t1,0x6
    800073a8:	88c30313          	addi	t1,t1,-1908 # 8000cc30 <pr>
    800073ac:	01832c03          	lw	s8,24(t1)
    800073b0:	00b43423          	sd	a1,8(s0)
    800073b4:	00c43823          	sd	a2,16(s0)
    800073b8:	00d43c23          	sd	a3,24(s0)
    800073bc:	02e43023          	sd	a4,32(s0)
    800073c0:	02f43423          	sd	a5,40(s0)
    800073c4:	03043823          	sd	a6,48(s0)
    800073c8:	03143c23          	sd	a7,56(s0)
    800073cc:	00050993          	mv	s3,a0
    800073d0:	4a0c1663          	bnez	s8,8000787c <__printf+0x514>
    800073d4:	60098c63          	beqz	s3,800079ec <__printf+0x684>
    800073d8:	0009c503          	lbu	a0,0(s3)
    800073dc:	00840793          	addi	a5,s0,8
    800073e0:	f6f43c23          	sd	a5,-136(s0)
    800073e4:	00000493          	li	s1,0
    800073e8:	22050063          	beqz	a0,80007608 <__printf+0x2a0>
    800073ec:	00002a37          	lui	s4,0x2
    800073f0:	00018ab7          	lui	s5,0x18
    800073f4:	000f4b37          	lui	s6,0xf4
    800073f8:	00989bb7          	lui	s7,0x989
    800073fc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007400:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007404:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007408:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000740c:	00148c9b          	addiw	s9,s1,1
    80007410:	02500793          	li	a5,37
    80007414:	01998933          	add	s2,s3,s9
    80007418:	38f51263          	bne	a0,a5,8000779c <__printf+0x434>
    8000741c:	00094783          	lbu	a5,0(s2)
    80007420:	00078c9b          	sext.w	s9,a5
    80007424:	1e078263          	beqz	a5,80007608 <__printf+0x2a0>
    80007428:	0024849b          	addiw	s1,s1,2
    8000742c:	07000713          	li	a4,112
    80007430:	00998933          	add	s2,s3,s1
    80007434:	38e78a63          	beq	a5,a4,800077c8 <__printf+0x460>
    80007438:	20f76863          	bltu	a4,a5,80007648 <__printf+0x2e0>
    8000743c:	42a78863          	beq	a5,a0,8000786c <__printf+0x504>
    80007440:	06400713          	li	a4,100
    80007444:	40e79663          	bne	a5,a4,80007850 <__printf+0x4e8>
    80007448:	f7843783          	ld	a5,-136(s0)
    8000744c:	0007a603          	lw	a2,0(a5)
    80007450:	00878793          	addi	a5,a5,8
    80007454:	f6f43c23          	sd	a5,-136(s0)
    80007458:	42064a63          	bltz	a2,8000788c <__printf+0x524>
    8000745c:	00a00713          	li	a4,10
    80007460:	02e677bb          	remuw	a5,a2,a4
    80007464:	00002d97          	auipc	s11,0x2
    80007468:	43cd8d93          	addi	s11,s11,1084 # 800098a0 <digits>
    8000746c:	00900593          	li	a1,9
    80007470:	0006051b          	sext.w	a0,a2
    80007474:	00000c93          	li	s9,0
    80007478:	02079793          	slli	a5,a5,0x20
    8000747c:	0207d793          	srli	a5,a5,0x20
    80007480:	00fd87b3          	add	a5,s11,a5
    80007484:	0007c783          	lbu	a5,0(a5)
    80007488:	02e656bb          	divuw	a3,a2,a4
    8000748c:	f8f40023          	sb	a5,-128(s0)
    80007490:	14c5d863          	bge	a1,a2,800075e0 <__printf+0x278>
    80007494:	06300593          	li	a1,99
    80007498:	00100c93          	li	s9,1
    8000749c:	02e6f7bb          	remuw	a5,a3,a4
    800074a0:	02079793          	slli	a5,a5,0x20
    800074a4:	0207d793          	srli	a5,a5,0x20
    800074a8:	00fd87b3          	add	a5,s11,a5
    800074ac:	0007c783          	lbu	a5,0(a5)
    800074b0:	02e6d73b          	divuw	a4,a3,a4
    800074b4:	f8f400a3          	sb	a5,-127(s0)
    800074b8:	12a5f463          	bgeu	a1,a0,800075e0 <__printf+0x278>
    800074bc:	00a00693          	li	a3,10
    800074c0:	00900593          	li	a1,9
    800074c4:	02d777bb          	remuw	a5,a4,a3
    800074c8:	02079793          	slli	a5,a5,0x20
    800074cc:	0207d793          	srli	a5,a5,0x20
    800074d0:	00fd87b3          	add	a5,s11,a5
    800074d4:	0007c503          	lbu	a0,0(a5)
    800074d8:	02d757bb          	divuw	a5,a4,a3
    800074dc:	f8a40123          	sb	a0,-126(s0)
    800074e0:	48e5f263          	bgeu	a1,a4,80007964 <__printf+0x5fc>
    800074e4:	06300513          	li	a0,99
    800074e8:	02d7f5bb          	remuw	a1,a5,a3
    800074ec:	02059593          	slli	a1,a1,0x20
    800074f0:	0205d593          	srli	a1,a1,0x20
    800074f4:	00bd85b3          	add	a1,s11,a1
    800074f8:	0005c583          	lbu	a1,0(a1)
    800074fc:	02d7d7bb          	divuw	a5,a5,a3
    80007500:	f8b401a3          	sb	a1,-125(s0)
    80007504:	48e57263          	bgeu	a0,a4,80007988 <__printf+0x620>
    80007508:	3e700513          	li	a0,999
    8000750c:	02d7f5bb          	remuw	a1,a5,a3
    80007510:	02059593          	slli	a1,a1,0x20
    80007514:	0205d593          	srli	a1,a1,0x20
    80007518:	00bd85b3          	add	a1,s11,a1
    8000751c:	0005c583          	lbu	a1,0(a1)
    80007520:	02d7d7bb          	divuw	a5,a5,a3
    80007524:	f8b40223          	sb	a1,-124(s0)
    80007528:	46e57663          	bgeu	a0,a4,80007994 <__printf+0x62c>
    8000752c:	02d7f5bb          	remuw	a1,a5,a3
    80007530:	02059593          	slli	a1,a1,0x20
    80007534:	0205d593          	srli	a1,a1,0x20
    80007538:	00bd85b3          	add	a1,s11,a1
    8000753c:	0005c583          	lbu	a1,0(a1)
    80007540:	02d7d7bb          	divuw	a5,a5,a3
    80007544:	f8b402a3          	sb	a1,-123(s0)
    80007548:	46ea7863          	bgeu	s4,a4,800079b8 <__printf+0x650>
    8000754c:	02d7f5bb          	remuw	a1,a5,a3
    80007550:	02059593          	slli	a1,a1,0x20
    80007554:	0205d593          	srli	a1,a1,0x20
    80007558:	00bd85b3          	add	a1,s11,a1
    8000755c:	0005c583          	lbu	a1,0(a1)
    80007560:	02d7d7bb          	divuw	a5,a5,a3
    80007564:	f8b40323          	sb	a1,-122(s0)
    80007568:	3eeaf863          	bgeu	s5,a4,80007958 <__printf+0x5f0>
    8000756c:	02d7f5bb          	remuw	a1,a5,a3
    80007570:	02059593          	slli	a1,a1,0x20
    80007574:	0205d593          	srli	a1,a1,0x20
    80007578:	00bd85b3          	add	a1,s11,a1
    8000757c:	0005c583          	lbu	a1,0(a1)
    80007580:	02d7d7bb          	divuw	a5,a5,a3
    80007584:	f8b403a3          	sb	a1,-121(s0)
    80007588:	42eb7e63          	bgeu	s6,a4,800079c4 <__printf+0x65c>
    8000758c:	02d7f5bb          	remuw	a1,a5,a3
    80007590:	02059593          	slli	a1,a1,0x20
    80007594:	0205d593          	srli	a1,a1,0x20
    80007598:	00bd85b3          	add	a1,s11,a1
    8000759c:	0005c583          	lbu	a1,0(a1)
    800075a0:	02d7d7bb          	divuw	a5,a5,a3
    800075a4:	f8b40423          	sb	a1,-120(s0)
    800075a8:	42ebfc63          	bgeu	s7,a4,800079e0 <__printf+0x678>
    800075ac:	02079793          	slli	a5,a5,0x20
    800075b0:	0207d793          	srli	a5,a5,0x20
    800075b4:	00fd8db3          	add	s11,s11,a5
    800075b8:	000dc703          	lbu	a4,0(s11)
    800075bc:	00a00793          	li	a5,10
    800075c0:	00900c93          	li	s9,9
    800075c4:	f8e404a3          	sb	a4,-119(s0)
    800075c8:	00065c63          	bgez	a2,800075e0 <__printf+0x278>
    800075cc:	f9040713          	addi	a4,s0,-112
    800075d0:	00f70733          	add	a4,a4,a5
    800075d4:	02d00693          	li	a3,45
    800075d8:	fed70823          	sb	a3,-16(a4)
    800075dc:	00078c93          	mv	s9,a5
    800075e0:	f8040793          	addi	a5,s0,-128
    800075e4:	01978cb3          	add	s9,a5,s9
    800075e8:	f7f40d13          	addi	s10,s0,-129
    800075ec:	000cc503          	lbu	a0,0(s9)
    800075f0:	fffc8c93          	addi	s9,s9,-1
    800075f4:	00000097          	auipc	ra,0x0
    800075f8:	b90080e7          	jalr	-1136(ra) # 80007184 <consputc>
    800075fc:	ffac98e3          	bne	s9,s10,800075ec <__printf+0x284>
    80007600:	00094503          	lbu	a0,0(s2)
    80007604:	e00514e3          	bnez	a0,8000740c <__printf+0xa4>
    80007608:	1a0c1663          	bnez	s8,800077b4 <__printf+0x44c>
    8000760c:	08813083          	ld	ra,136(sp)
    80007610:	08013403          	ld	s0,128(sp)
    80007614:	07813483          	ld	s1,120(sp)
    80007618:	07013903          	ld	s2,112(sp)
    8000761c:	06813983          	ld	s3,104(sp)
    80007620:	06013a03          	ld	s4,96(sp)
    80007624:	05813a83          	ld	s5,88(sp)
    80007628:	05013b03          	ld	s6,80(sp)
    8000762c:	04813b83          	ld	s7,72(sp)
    80007630:	04013c03          	ld	s8,64(sp)
    80007634:	03813c83          	ld	s9,56(sp)
    80007638:	03013d03          	ld	s10,48(sp)
    8000763c:	02813d83          	ld	s11,40(sp)
    80007640:	0d010113          	addi	sp,sp,208
    80007644:	00008067          	ret
    80007648:	07300713          	li	a4,115
    8000764c:	1ce78a63          	beq	a5,a4,80007820 <__printf+0x4b8>
    80007650:	07800713          	li	a4,120
    80007654:	1ee79e63          	bne	a5,a4,80007850 <__printf+0x4e8>
    80007658:	f7843783          	ld	a5,-136(s0)
    8000765c:	0007a703          	lw	a4,0(a5)
    80007660:	00878793          	addi	a5,a5,8
    80007664:	f6f43c23          	sd	a5,-136(s0)
    80007668:	28074263          	bltz	a4,800078ec <__printf+0x584>
    8000766c:	00002d97          	auipc	s11,0x2
    80007670:	234d8d93          	addi	s11,s11,564 # 800098a0 <digits>
    80007674:	00f77793          	andi	a5,a4,15
    80007678:	00fd87b3          	add	a5,s11,a5
    8000767c:	0007c683          	lbu	a3,0(a5)
    80007680:	00f00613          	li	a2,15
    80007684:	0007079b          	sext.w	a5,a4
    80007688:	f8d40023          	sb	a3,-128(s0)
    8000768c:	0047559b          	srliw	a1,a4,0x4
    80007690:	0047569b          	srliw	a3,a4,0x4
    80007694:	00000c93          	li	s9,0
    80007698:	0ee65063          	bge	a2,a4,80007778 <__printf+0x410>
    8000769c:	00f6f693          	andi	a3,a3,15
    800076a0:	00dd86b3          	add	a3,s11,a3
    800076a4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800076a8:	0087d79b          	srliw	a5,a5,0x8
    800076ac:	00100c93          	li	s9,1
    800076b0:	f8d400a3          	sb	a3,-127(s0)
    800076b4:	0cb67263          	bgeu	a2,a1,80007778 <__printf+0x410>
    800076b8:	00f7f693          	andi	a3,a5,15
    800076bc:	00dd86b3          	add	a3,s11,a3
    800076c0:	0006c583          	lbu	a1,0(a3)
    800076c4:	00f00613          	li	a2,15
    800076c8:	0047d69b          	srliw	a3,a5,0x4
    800076cc:	f8b40123          	sb	a1,-126(s0)
    800076d0:	0047d593          	srli	a1,a5,0x4
    800076d4:	28f67e63          	bgeu	a2,a5,80007970 <__printf+0x608>
    800076d8:	00f6f693          	andi	a3,a3,15
    800076dc:	00dd86b3          	add	a3,s11,a3
    800076e0:	0006c503          	lbu	a0,0(a3)
    800076e4:	0087d813          	srli	a6,a5,0x8
    800076e8:	0087d69b          	srliw	a3,a5,0x8
    800076ec:	f8a401a3          	sb	a0,-125(s0)
    800076f0:	28b67663          	bgeu	a2,a1,8000797c <__printf+0x614>
    800076f4:	00f6f693          	andi	a3,a3,15
    800076f8:	00dd86b3          	add	a3,s11,a3
    800076fc:	0006c583          	lbu	a1,0(a3)
    80007700:	00c7d513          	srli	a0,a5,0xc
    80007704:	00c7d69b          	srliw	a3,a5,0xc
    80007708:	f8b40223          	sb	a1,-124(s0)
    8000770c:	29067a63          	bgeu	a2,a6,800079a0 <__printf+0x638>
    80007710:	00f6f693          	andi	a3,a3,15
    80007714:	00dd86b3          	add	a3,s11,a3
    80007718:	0006c583          	lbu	a1,0(a3)
    8000771c:	0107d813          	srli	a6,a5,0x10
    80007720:	0107d69b          	srliw	a3,a5,0x10
    80007724:	f8b402a3          	sb	a1,-123(s0)
    80007728:	28a67263          	bgeu	a2,a0,800079ac <__printf+0x644>
    8000772c:	00f6f693          	andi	a3,a3,15
    80007730:	00dd86b3          	add	a3,s11,a3
    80007734:	0006c683          	lbu	a3,0(a3)
    80007738:	0147d79b          	srliw	a5,a5,0x14
    8000773c:	f8d40323          	sb	a3,-122(s0)
    80007740:	21067663          	bgeu	a2,a6,8000794c <__printf+0x5e4>
    80007744:	02079793          	slli	a5,a5,0x20
    80007748:	0207d793          	srli	a5,a5,0x20
    8000774c:	00fd8db3          	add	s11,s11,a5
    80007750:	000dc683          	lbu	a3,0(s11)
    80007754:	00800793          	li	a5,8
    80007758:	00700c93          	li	s9,7
    8000775c:	f8d403a3          	sb	a3,-121(s0)
    80007760:	00075c63          	bgez	a4,80007778 <__printf+0x410>
    80007764:	f9040713          	addi	a4,s0,-112
    80007768:	00f70733          	add	a4,a4,a5
    8000776c:	02d00693          	li	a3,45
    80007770:	fed70823          	sb	a3,-16(a4)
    80007774:	00078c93          	mv	s9,a5
    80007778:	f8040793          	addi	a5,s0,-128
    8000777c:	01978cb3          	add	s9,a5,s9
    80007780:	f7f40d13          	addi	s10,s0,-129
    80007784:	000cc503          	lbu	a0,0(s9)
    80007788:	fffc8c93          	addi	s9,s9,-1
    8000778c:	00000097          	auipc	ra,0x0
    80007790:	9f8080e7          	jalr	-1544(ra) # 80007184 <consputc>
    80007794:	ff9d18e3          	bne	s10,s9,80007784 <__printf+0x41c>
    80007798:	0100006f          	j	800077a8 <__printf+0x440>
    8000779c:	00000097          	auipc	ra,0x0
    800077a0:	9e8080e7          	jalr	-1560(ra) # 80007184 <consputc>
    800077a4:	000c8493          	mv	s1,s9
    800077a8:	00094503          	lbu	a0,0(s2)
    800077ac:	c60510e3          	bnez	a0,8000740c <__printf+0xa4>
    800077b0:	e40c0ee3          	beqz	s8,8000760c <__printf+0x2a4>
    800077b4:	00005517          	auipc	a0,0x5
    800077b8:	47c50513          	addi	a0,a0,1148 # 8000cc30 <pr>
    800077bc:	00001097          	auipc	ra,0x1
    800077c0:	94c080e7          	jalr	-1716(ra) # 80008108 <release>
    800077c4:	e49ff06f          	j	8000760c <__printf+0x2a4>
    800077c8:	f7843783          	ld	a5,-136(s0)
    800077cc:	03000513          	li	a0,48
    800077d0:	01000d13          	li	s10,16
    800077d4:	00878713          	addi	a4,a5,8
    800077d8:	0007bc83          	ld	s9,0(a5)
    800077dc:	f6e43c23          	sd	a4,-136(s0)
    800077e0:	00000097          	auipc	ra,0x0
    800077e4:	9a4080e7          	jalr	-1628(ra) # 80007184 <consputc>
    800077e8:	07800513          	li	a0,120
    800077ec:	00000097          	auipc	ra,0x0
    800077f0:	998080e7          	jalr	-1640(ra) # 80007184 <consputc>
    800077f4:	00002d97          	auipc	s11,0x2
    800077f8:	0acd8d93          	addi	s11,s11,172 # 800098a0 <digits>
    800077fc:	03ccd793          	srli	a5,s9,0x3c
    80007800:	00fd87b3          	add	a5,s11,a5
    80007804:	0007c503          	lbu	a0,0(a5)
    80007808:	fffd0d1b          	addiw	s10,s10,-1
    8000780c:	004c9c93          	slli	s9,s9,0x4
    80007810:	00000097          	auipc	ra,0x0
    80007814:	974080e7          	jalr	-1676(ra) # 80007184 <consputc>
    80007818:	fe0d12e3          	bnez	s10,800077fc <__printf+0x494>
    8000781c:	f8dff06f          	j	800077a8 <__printf+0x440>
    80007820:	f7843783          	ld	a5,-136(s0)
    80007824:	0007bc83          	ld	s9,0(a5)
    80007828:	00878793          	addi	a5,a5,8
    8000782c:	f6f43c23          	sd	a5,-136(s0)
    80007830:	000c9a63          	bnez	s9,80007844 <__printf+0x4dc>
    80007834:	1080006f          	j	8000793c <__printf+0x5d4>
    80007838:	001c8c93          	addi	s9,s9,1
    8000783c:	00000097          	auipc	ra,0x0
    80007840:	948080e7          	jalr	-1720(ra) # 80007184 <consputc>
    80007844:	000cc503          	lbu	a0,0(s9)
    80007848:	fe0518e3          	bnez	a0,80007838 <__printf+0x4d0>
    8000784c:	f5dff06f          	j	800077a8 <__printf+0x440>
    80007850:	02500513          	li	a0,37
    80007854:	00000097          	auipc	ra,0x0
    80007858:	930080e7          	jalr	-1744(ra) # 80007184 <consputc>
    8000785c:	000c8513          	mv	a0,s9
    80007860:	00000097          	auipc	ra,0x0
    80007864:	924080e7          	jalr	-1756(ra) # 80007184 <consputc>
    80007868:	f41ff06f          	j	800077a8 <__printf+0x440>
    8000786c:	02500513          	li	a0,37
    80007870:	00000097          	auipc	ra,0x0
    80007874:	914080e7          	jalr	-1772(ra) # 80007184 <consputc>
    80007878:	f31ff06f          	j	800077a8 <__printf+0x440>
    8000787c:	00030513          	mv	a0,t1
    80007880:	00000097          	auipc	ra,0x0
    80007884:	7bc080e7          	jalr	1980(ra) # 8000803c <acquire>
    80007888:	b4dff06f          	j	800073d4 <__printf+0x6c>
    8000788c:	40c0053b          	negw	a0,a2
    80007890:	00a00713          	li	a4,10
    80007894:	02e576bb          	remuw	a3,a0,a4
    80007898:	00002d97          	auipc	s11,0x2
    8000789c:	008d8d93          	addi	s11,s11,8 # 800098a0 <digits>
    800078a0:	ff700593          	li	a1,-9
    800078a4:	02069693          	slli	a3,a3,0x20
    800078a8:	0206d693          	srli	a3,a3,0x20
    800078ac:	00dd86b3          	add	a3,s11,a3
    800078b0:	0006c683          	lbu	a3,0(a3)
    800078b4:	02e557bb          	divuw	a5,a0,a4
    800078b8:	f8d40023          	sb	a3,-128(s0)
    800078bc:	10b65e63          	bge	a2,a1,800079d8 <__printf+0x670>
    800078c0:	06300593          	li	a1,99
    800078c4:	02e7f6bb          	remuw	a3,a5,a4
    800078c8:	02069693          	slli	a3,a3,0x20
    800078cc:	0206d693          	srli	a3,a3,0x20
    800078d0:	00dd86b3          	add	a3,s11,a3
    800078d4:	0006c683          	lbu	a3,0(a3)
    800078d8:	02e7d73b          	divuw	a4,a5,a4
    800078dc:	00200793          	li	a5,2
    800078e0:	f8d400a3          	sb	a3,-127(s0)
    800078e4:	bca5ece3          	bltu	a1,a0,800074bc <__printf+0x154>
    800078e8:	ce5ff06f          	j	800075cc <__printf+0x264>
    800078ec:	40e007bb          	negw	a5,a4
    800078f0:	00002d97          	auipc	s11,0x2
    800078f4:	fb0d8d93          	addi	s11,s11,-80 # 800098a0 <digits>
    800078f8:	00f7f693          	andi	a3,a5,15
    800078fc:	00dd86b3          	add	a3,s11,a3
    80007900:	0006c583          	lbu	a1,0(a3)
    80007904:	ff100613          	li	a2,-15
    80007908:	0047d69b          	srliw	a3,a5,0x4
    8000790c:	f8b40023          	sb	a1,-128(s0)
    80007910:	0047d59b          	srliw	a1,a5,0x4
    80007914:	0ac75e63          	bge	a4,a2,800079d0 <__printf+0x668>
    80007918:	00f6f693          	andi	a3,a3,15
    8000791c:	00dd86b3          	add	a3,s11,a3
    80007920:	0006c603          	lbu	a2,0(a3)
    80007924:	00f00693          	li	a3,15
    80007928:	0087d79b          	srliw	a5,a5,0x8
    8000792c:	f8c400a3          	sb	a2,-127(s0)
    80007930:	d8b6e4e3          	bltu	a3,a1,800076b8 <__printf+0x350>
    80007934:	00200793          	li	a5,2
    80007938:	e2dff06f          	j	80007764 <__printf+0x3fc>
    8000793c:	00002c97          	auipc	s9,0x2
    80007940:	f44c8c93          	addi	s9,s9,-188 # 80009880 <CONSOLE_STATUS+0x870>
    80007944:	02800513          	li	a0,40
    80007948:	ef1ff06f          	j	80007838 <__printf+0x4d0>
    8000794c:	00700793          	li	a5,7
    80007950:	00600c93          	li	s9,6
    80007954:	e0dff06f          	j	80007760 <__printf+0x3f8>
    80007958:	00700793          	li	a5,7
    8000795c:	00600c93          	li	s9,6
    80007960:	c69ff06f          	j	800075c8 <__printf+0x260>
    80007964:	00300793          	li	a5,3
    80007968:	00200c93          	li	s9,2
    8000796c:	c5dff06f          	j	800075c8 <__printf+0x260>
    80007970:	00300793          	li	a5,3
    80007974:	00200c93          	li	s9,2
    80007978:	de9ff06f          	j	80007760 <__printf+0x3f8>
    8000797c:	00400793          	li	a5,4
    80007980:	00300c93          	li	s9,3
    80007984:	dddff06f          	j	80007760 <__printf+0x3f8>
    80007988:	00400793          	li	a5,4
    8000798c:	00300c93          	li	s9,3
    80007990:	c39ff06f          	j	800075c8 <__printf+0x260>
    80007994:	00500793          	li	a5,5
    80007998:	00400c93          	li	s9,4
    8000799c:	c2dff06f          	j	800075c8 <__printf+0x260>
    800079a0:	00500793          	li	a5,5
    800079a4:	00400c93          	li	s9,4
    800079a8:	db9ff06f          	j	80007760 <__printf+0x3f8>
    800079ac:	00600793          	li	a5,6
    800079b0:	00500c93          	li	s9,5
    800079b4:	dadff06f          	j	80007760 <__printf+0x3f8>
    800079b8:	00600793          	li	a5,6
    800079bc:	00500c93          	li	s9,5
    800079c0:	c09ff06f          	j	800075c8 <__printf+0x260>
    800079c4:	00800793          	li	a5,8
    800079c8:	00700c93          	li	s9,7
    800079cc:	bfdff06f          	j	800075c8 <__printf+0x260>
    800079d0:	00100793          	li	a5,1
    800079d4:	d91ff06f          	j	80007764 <__printf+0x3fc>
    800079d8:	00100793          	li	a5,1
    800079dc:	bf1ff06f          	j	800075cc <__printf+0x264>
    800079e0:	00900793          	li	a5,9
    800079e4:	00800c93          	li	s9,8
    800079e8:	be1ff06f          	j	800075c8 <__printf+0x260>
    800079ec:	00002517          	auipc	a0,0x2
    800079f0:	e9c50513          	addi	a0,a0,-356 # 80009888 <CONSOLE_STATUS+0x878>
    800079f4:	00000097          	auipc	ra,0x0
    800079f8:	918080e7          	jalr	-1768(ra) # 8000730c <panic>

00000000800079fc <printfinit>:
    800079fc:	fe010113          	addi	sp,sp,-32
    80007a00:	00813823          	sd	s0,16(sp)
    80007a04:	00913423          	sd	s1,8(sp)
    80007a08:	00113c23          	sd	ra,24(sp)
    80007a0c:	02010413          	addi	s0,sp,32
    80007a10:	00005497          	auipc	s1,0x5
    80007a14:	22048493          	addi	s1,s1,544 # 8000cc30 <pr>
    80007a18:	00048513          	mv	a0,s1
    80007a1c:	00002597          	auipc	a1,0x2
    80007a20:	e7c58593          	addi	a1,a1,-388 # 80009898 <CONSOLE_STATUS+0x888>
    80007a24:	00000097          	auipc	ra,0x0
    80007a28:	5f4080e7          	jalr	1524(ra) # 80008018 <initlock>
    80007a2c:	01813083          	ld	ra,24(sp)
    80007a30:	01013403          	ld	s0,16(sp)
    80007a34:	0004ac23          	sw	zero,24(s1)
    80007a38:	00813483          	ld	s1,8(sp)
    80007a3c:	02010113          	addi	sp,sp,32
    80007a40:	00008067          	ret

0000000080007a44 <uartinit>:
    80007a44:	ff010113          	addi	sp,sp,-16
    80007a48:	00813423          	sd	s0,8(sp)
    80007a4c:	01010413          	addi	s0,sp,16
    80007a50:	100007b7          	lui	a5,0x10000
    80007a54:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007a58:	f8000713          	li	a4,-128
    80007a5c:	00e781a3          	sb	a4,3(a5)
    80007a60:	00300713          	li	a4,3
    80007a64:	00e78023          	sb	a4,0(a5)
    80007a68:	000780a3          	sb	zero,1(a5)
    80007a6c:	00e781a3          	sb	a4,3(a5)
    80007a70:	00700693          	li	a3,7
    80007a74:	00d78123          	sb	a3,2(a5)
    80007a78:	00e780a3          	sb	a4,1(a5)
    80007a7c:	00813403          	ld	s0,8(sp)
    80007a80:	01010113          	addi	sp,sp,16
    80007a84:	00008067          	ret

0000000080007a88 <uartputc>:
    80007a88:	00004797          	auipc	a5,0x4
    80007a8c:	ec07a783          	lw	a5,-320(a5) # 8000b948 <panicked>
    80007a90:	00078463          	beqz	a5,80007a98 <uartputc+0x10>
    80007a94:	0000006f          	j	80007a94 <uartputc+0xc>
    80007a98:	fd010113          	addi	sp,sp,-48
    80007a9c:	02813023          	sd	s0,32(sp)
    80007aa0:	00913c23          	sd	s1,24(sp)
    80007aa4:	01213823          	sd	s2,16(sp)
    80007aa8:	01313423          	sd	s3,8(sp)
    80007aac:	02113423          	sd	ra,40(sp)
    80007ab0:	03010413          	addi	s0,sp,48
    80007ab4:	00004917          	auipc	s2,0x4
    80007ab8:	e9c90913          	addi	s2,s2,-356 # 8000b950 <uart_tx_r>
    80007abc:	00093783          	ld	a5,0(s2)
    80007ac0:	00004497          	auipc	s1,0x4
    80007ac4:	e9848493          	addi	s1,s1,-360 # 8000b958 <uart_tx_w>
    80007ac8:	0004b703          	ld	a4,0(s1)
    80007acc:	02078693          	addi	a3,a5,32
    80007ad0:	00050993          	mv	s3,a0
    80007ad4:	02e69c63          	bne	a3,a4,80007b0c <uartputc+0x84>
    80007ad8:	00001097          	auipc	ra,0x1
    80007adc:	834080e7          	jalr	-1996(ra) # 8000830c <push_on>
    80007ae0:	00093783          	ld	a5,0(s2)
    80007ae4:	0004b703          	ld	a4,0(s1)
    80007ae8:	02078793          	addi	a5,a5,32
    80007aec:	00e79463          	bne	a5,a4,80007af4 <uartputc+0x6c>
    80007af0:	0000006f          	j	80007af0 <uartputc+0x68>
    80007af4:	00001097          	auipc	ra,0x1
    80007af8:	88c080e7          	jalr	-1908(ra) # 80008380 <pop_on>
    80007afc:	00093783          	ld	a5,0(s2)
    80007b00:	0004b703          	ld	a4,0(s1)
    80007b04:	02078693          	addi	a3,a5,32
    80007b08:	fce688e3          	beq	a3,a4,80007ad8 <uartputc+0x50>
    80007b0c:	01f77693          	andi	a3,a4,31
    80007b10:	00005597          	auipc	a1,0x5
    80007b14:	14058593          	addi	a1,a1,320 # 8000cc50 <uart_tx_buf>
    80007b18:	00d586b3          	add	a3,a1,a3
    80007b1c:	00170713          	addi	a4,a4,1
    80007b20:	01368023          	sb	s3,0(a3)
    80007b24:	00e4b023          	sd	a4,0(s1)
    80007b28:	10000637          	lui	a2,0x10000
    80007b2c:	02f71063          	bne	a4,a5,80007b4c <uartputc+0xc4>
    80007b30:	0340006f          	j	80007b64 <uartputc+0xdc>
    80007b34:	00074703          	lbu	a4,0(a4)
    80007b38:	00f93023          	sd	a5,0(s2)
    80007b3c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007b40:	00093783          	ld	a5,0(s2)
    80007b44:	0004b703          	ld	a4,0(s1)
    80007b48:	00f70e63          	beq	a4,a5,80007b64 <uartputc+0xdc>
    80007b4c:	00564683          	lbu	a3,5(a2)
    80007b50:	01f7f713          	andi	a4,a5,31
    80007b54:	00e58733          	add	a4,a1,a4
    80007b58:	0206f693          	andi	a3,a3,32
    80007b5c:	00178793          	addi	a5,a5,1
    80007b60:	fc069ae3          	bnez	a3,80007b34 <uartputc+0xac>
    80007b64:	02813083          	ld	ra,40(sp)
    80007b68:	02013403          	ld	s0,32(sp)
    80007b6c:	01813483          	ld	s1,24(sp)
    80007b70:	01013903          	ld	s2,16(sp)
    80007b74:	00813983          	ld	s3,8(sp)
    80007b78:	03010113          	addi	sp,sp,48
    80007b7c:	00008067          	ret

0000000080007b80 <uartputc_sync>:
    80007b80:	ff010113          	addi	sp,sp,-16
    80007b84:	00813423          	sd	s0,8(sp)
    80007b88:	01010413          	addi	s0,sp,16
    80007b8c:	00004717          	auipc	a4,0x4
    80007b90:	dbc72703          	lw	a4,-580(a4) # 8000b948 <panicked>
    80007b94:	02071663          	bnez	a4,80007bc0 <uartputc_sync+0x40>
    80007b98:	00050793          	mv	a5,a0
    80007b9c:	100006b7          	lui	a3,0x10000
    80007ba0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007ba4:	02077713          	andi	a4,a4,32
    80007ba8:	fe070ce3          	beqz	a4,80007ba0 <uartputc_sync+0x20>
    80007bac:	0ff7f793          	andi	a5,a5,255
    80007bb0:	00f68023          	sb	a5,0(a3)
    80007bb4:	00813403          	ld	s0,8(sp)
    80007bb8:	01010113          	addi	sp,sp,16
    80007bbc:	00008067          	ret
    80007bc0:	0000006f          	j	80007bc0 <uartputc_sync+0x40>

0000000080007bc4 <uartstart>:
    80007bc4:	ff010113          	addi	sp,sp,-16
    80007bc8:	00813423          	sd	s0,8(sp)
    80007bcc:	01010413          	addi	s0,sp,16
    80007bd0:	00004617          	auipc	a2,0x4
    80007bd4:	d8060613          	addi	a2,a2,-640 # 8000b950 <uart_tx_r>
    80007bd8:	00004517          	auipc	a0,0x4
    80007bdc:	d8050513          	addi	a0,a0,-640 # 8000b958 <uart_tx_w>
    80007be0:	00063783          	ld	a5,0(a2)
    80007be4:	00053703          	ld	a4,0(a0)
    80007be8:	04f70263          	beq	a4,a5,80007c2c <uartstart+0x68>
    80007bec:	100005b7          	lui	a1,0x10000
    80007bf0:	00005817          	auipc	a6,0x5
    80007bf4:	06080813          	addi	a6,a6,96 # 8000cc50 <uart_tx_buf>
    80007bf8:	01c0006f          	j	80007c14 <uartstart+0x50>
    80007bfc:	0006c703          	lbu	a4,0(a3)
    80007c00:	00f63023          	sd	a5,0(a2)
    80007c04:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007c08:	00063783          	ld	a5,0(a2)
    80007c0c:	00053703          	ld	a4,0(a0)
    80007c10:	00f70e63          	beq	a4,a5,80007c2c <uartstart+0x68>
    80007c14:	01f7f713          	andi	a4,a5,31
    80007c18:	00e806b3          	add	a3,a6,a4
    80007c1c:	0055c703          	lbu	a4,5(a1)
    80007c20:	00178793          	addi	a5,a5,1
    80007c24:	02077713          	andi	a4,a4,32
    80007c28:	fc071ae3          	bnez	a4,80007bfc <uartstart+0x38>
    80007c2c:	00813403          	ld	s0,8(sp)
    80007c30:	01010113          	addi	sp,sp,16
    80007c34:	00008067          	ret

0000000080007c38 <uartgetc>:
    80007c38:	ff010113          	addi	sp,sp,-16
    80007c3c:	00813423          	sd	s0,8(sp)
    80007c40:	01010413          	addi	s0,sp,16
    80007c44:	10000737          	lui	a4,0x10000
    80007c48:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80007c4c:	0017f793          	andi	a5,a5,1
    80007c50:	00078c63          	beqz	a5,80007c68 <uartgetc+0x30>
    80007c54:	00074503          	lbu	a0,0(a4)
    80007c58:	0ff57513          	andi	a0,a0,255
    80007c5c:	00813403          	ld	s0,8(sp)
    80007c60:	01010113          	addi	sp,sp,16
    80007c64:	00008067          	ret
    80007c68:	fff00513          	li	a0,-1
    80007c6c:	ff1ff06f          	j	80007c5c <uartgetc+0x24>

0000000080007c70 <uartintr>:
    80007c70:	100007b7          	lui	a5,0x10000
    80007c74:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007c78:	0017f793          	andi	a5,a5,1
    80007c7c:	0a078463          	beqz	a5,80007d24 <uartintr+0xb4>
    80007c80:	fe010113          	addi	sp,sp,-32
    80007c84:	00813823          	sd	s0,16(sp)
    80007c88:	00913423          	sd	s1,8(sp)
    80007c8c:	00113c23          	sd	ra,24(sp)
    80007c90:	02010413          	addi	s0,sp,32
    80007c94:	100004b7          	lui	s1,0x10000
    80007c98:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007c9c:	0ff57513          	andi	a0,a0,255
    80007ca0:	fffff097          	auipc	ra,0xfffff
    80007ca4:	534080e7          	jalr	1332(ra) # 800071d4 <consoleintr>
    80007ca8:	0054c783          	lbu	a5,5(s1)
    80007cac:	0017f793          	andi	a5,a5,1
    80007cb0:	fe0794e3          	bnez	a5,80007c98 <uartintr+0x28>
    80007cb4:	00004617          	auipc	a2,0x4
    80007cb8:	c9c60613          	addi	a2,a2,-868 # 8000b950 <uart_tx_r>
    80007cbc:	00004517          	auipc	a0,0x4
    80007cc0:	c9c50513          	addi	a0,a0,-868 # 8000b958 <uart_tx_w>
    80007cc4:	00063783          	ld	a5,0(a2)
    80007cc8:	00053703          	ld	a4,0(a0)
    80007ccc:	04f70263          	beq	a4,a5,80007d10 <uartintr+0xa0>
    80007cd0:	100005b7          	lui	a1,0x10000
    80007cd4:	00005817          	auipc	a6,0x5
    80007cd8:	f7c80813          	addi	a6,a6,-132 # 8000cc50 <uart_tx_buf>
    80007cdc:	01c0006f          	j	80007cf8 <uartintr+0x88>
    80007ce0:	0006c703          	lbu	a4,0(a3)
    80007ce4:	00f63023          	sd	a5,0(a2)
    80007ce8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007cec:	00063783          	ld	a5,0(a2)
    80007cf0:	00053703          	ld	a4,0(a0)
    80007cf4:	00f70e63          	beq	a4,a5,80007d10 <uartintr+0xa0>
    80007cf8:	01f7f713          	andi	a4,a5,31
    80007cfc:	00e806b3          	add	a3,a6,a4
    80007d00:	0055c703          	lbu	a4,5(a1)
    80007d04:	00178793          	addi	a5,a5,1
    80007d08:	02077713          	andi	a4,a4,32
    80007d0c:	fc071ae3          	bnez	a4,80007ce0 <uartintr+0x70>
    80007d10:	01813083          	ld	ra,24(sp)
    80007d14:	01013403          	ld	s0,16(sp)
    80007d18:	00813483          	ld	s1,8(sp)
    80007d1c:	02010113          	addi	sp,sp,32
    80007d20:	00008067          	ret
    80007d24:	00004617          	auipc	a2,0x4
    80007d28:	c2c60613          	addi	a2,a2,-980 # 8000b950 <uart_tx_r>
    80007d2c:	00004517          	auipc	a0,0x4
    80007d30:	c2c50513          	addi	a0,a0,-980 # 8000b958 <uart_tx_w>
    80007d34:	00063783          	ld	a5,0(a2)
    80007d38:	00053703          	ld	a4,0(a0)
    80007d3c:	04f70263          	beq	a4,a5,80007d80 <uartintr+0x110>
    80007d40:	100005b7          	lui	a1,0x10000
    80007d44:	00005817          	auipc	a6,0x5
    80007d48:	f0c80813          	addi	a6,a6,-244 # 8000cc50 <uart_tx_buf>
    80007d4c:	01c0006f          	j	80007d68 <uartintr+0xf8>
    80007d50:	0006c703          	lbu	a4,0(a3)
    80007d54:	00f63023          	sd	a5,0(a2)
    80007d58:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007d5c:	00063783          	ld	a5,0(a2)
    80007d60:	00053703          	ld	a4,0(a0)
    80007d64:	02f70063          	beq	a4,a5,80007d84 <uartintr+0x114>
    80007d68:	01f7f713          	andi	a4,a5,31
    80007d6c:	00e806b3          	add	a3,a6,a4
    80007d70:	0055c703          	lbu	a4,5(a1)
    80007d74:	00178793          	addi	a5,a5,1
    80007d78:	02077713          	andi	a4,a4,32
    80007d7c:	fc071ae3          	bnez	a4,80007d50 <uartintr+0xe0>
    80007d80:	00008067          	ret
    80007d84:	00008067          	ret

0000000080007d88 <kinit>:
    80007d88:	fc010113          	addi	sp,sp,-64
    80007d8c:	02913423          	sd	s1,40(sp)
    80007d90:	fffff7b7          	lui	a5,0xfffff
    80007d94:	00006497          	auipc	s1,0x6
    80007d98:	eeb48493          	addi	s1,s1,-277 # 8000dc7f <end+0xfff>
    80007d9c:	02813823          	sd	s0,48(sp)
    80007da0:	01313c23          	sd	s3,24(sp)
    80007da4:	00f4f4b3          	and	s1,s1,a5
    80007da8:	02113c23          	sd	ra,56(sp)
    80007dac:	03213023          	sd	s2,32(sp)
    80007db0:	01413823          	sd	s4,16(sp)
    80007db4:	01513423          	sd	s5,8(sp)
    80007db8:	04010413          	addi	s0,sp,64
    80007dbc:	000017b7          	lui	a5,0x1
    80007dc0:	01100993          	li	s3,17
    80007dc4:	00f487b3          	add	a5,s1,a5
    80007dc8:	01b99993          	slli	s3,s3,0x1b
    80007dcc:	06f9e063          	bltu	s3,a5,80007e2c <kinit+0xa4>
    80007dd0:	00005a97          	auipc	s5,0x5
    80007dd4:	eb0a8a93          	addi	s5,s5,-336 # 8000cc80 <end>
    80007dd8:	0754ec63          	bltu	s1,s5,80007e50 <kinit+0xc8>
    80007ddc:	0734fa63          	bgeu	s1,s3,80007e50 <kinit+0xc8>
    80007de0:	00088a37          	lui	s4,0x88
    80007de4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007de8:	00004917          	auipc	s2,0x4
    80007dec:	b7890913          	addi	s2,s2,-1160 # 8000b960 <kmem>
    80007df0:	00ca1a13          	slli	s4,s4,0xc
    80007df4:	0140006f          	j	80007e08 <kinit+0x80>
    80007df8:	000017b7          	lui	a5,0x1
    80007dfc:	00f484b3          	add	s1,s1,a5
    80007e00:	0554e863          	bltu	s1,s5,80007e50 <kinit+0xc8>
    80007e04:	0534f663          	bgeu	s1,s3,80007e50 <kinit+0xc8>
    80007e08:	00001637          	lui	a2,0x1
    80007e0c:	00100593          	li	a1,1
    80007e10:	00048513          	mv	a0,s1
    80007e14:	00000097          	auipc	ra,0x0
    80007e18:	5e4080e7          	jalr	1508(ra) # 800083f8 <__memset>
    80007e1c:	00093783          	ld	a5,0(s2)
    80007e20:	00f4b023          	sd	a5,0(s1)
    80007e24:	00993023          	sd	s1,0(s2)
    80007e28:	fd4498e3          	bne	s1,s4,80007df8 <kinit+0x70>
    80007e2c:	03813083          	ld	ra,56(sp)
    80007e30:	03013403          	ld	s0,48(sp)
    80007e34:	02813483          	ld	s1,40(sp)
    80007e38:	02013903          	ld	s2,32(sp)
    80007e3c:	01813983          	ld	s3,24(sp)
    80007e40:	01013a03          	ld	s4,16(sp)
    80007e44:	00813a83          	ld	s5,8(sp)
    80007e48:	04010113          	addi	sp,sp,64
    80007e4c:	00008067          	ret
    80007e50:	00002517          	auipc	a0,0x2
    80007e54:	a6850513          	addi	a0,a0,-1432 # 800098b8 <digits+0x18>
    80007e58:	fffff097          	auipc	ra,0xfffff
    80007e5c:	4b4080e7          	jalr	1204(ra) # 8000730c <panic>

0000000080007e60 <freerange>:
    80007e60:	fc010113          	addi	sp,sp,-64
    80007e64:	000017b7          	lui	a5,0x1
    80007e68:	02913423          	sd	s1,40(sp)
    80007e6c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007e70:	009504b3          	add	s1,a0,s1
    80007e74:	fffff537          	lui	a0,0xfffff
    80007e78:	02813823          	sd	s0,48(sp)
    80007e7c:	02113c23          	sd	ra,56(sp)
    80007e80:	03213023          	sd	s2,32(sp)
    80007e84:	01313c23          	sd	s3,24(sp)
    80007e88:	01413823          	sd	s4,16(sp)
    80007e8c:	01513423          	sd	s5,8(sp)
    80007e90:	01613023          	sd	s6,0(sp)
    80007e94:	04010413          	addi	s0,sp,64
    80007e98:	00a4f4b3          	and	s1,s1,a0
    80007e9c:	00f487b3          	add	a5,s1,a5
    80007ea0:	06f5e463          	bltu	a1,a5,80007f08 <freerange+0xa8>
    80007ea4:	00005a97          	auipc	s5,0x5
    80007ea8:	ddca8a93          	addi	s5,s5,-548 # 8000cc80 <end>
    80007eac:	0954e263          	bltu	s1,s5,80007f30 <freerange+0xd0>
    80007eb0:	01100993          	li	s3,17
    80007eb4:	01b99993          	slli	s3,s3,0x1b
    80007eb8:	0734fc63          	bgeu	s1,s3,80007f30 <freerange+0xd0>
    80007ebc:	00058a13          	mv	s4,a1
    80007ec0:	00004917          	auipc	s2,0x4
    80007ec4:	aa090913          	addi	s2,s2,-1376 # 8000b960 <kmem>
    80007ec8:	00002b37          	lui	s6,0x2
    80007ecc:	0140006f          	j	80007ee0 <freerange+0x80>
    80007ed0:	000017b7          	lui	a5,0x1
    80007ed4:	00f484b3          	add	s1,s1,a5
    80007ed8:	0554ec63          	bltu	s1,s5,80007f30 <freerange+0xd0>
    80007edc:	0534fa63          	bgeu	s1,s3,80007f30 <freerange+0xd0>
    80007ee0:	00001637          	lui	a2,0x1
    80007ee4:	00100593          	li	a1,1
    80007ee8:	00048513          	mv	a0,s1
    80007eec:	00000097          	auipc	ra,0x0
    80007ef0:	50c080e7          	jalr	1292(ra) # 800083f8 <__memset>
    80007ef4:	00093703          	ld	a4,0(s2)
    80007ef8:	016487b3          	add	a5,s1,s6
    80007efc:	00e4b023          	sd	a4,0(s1)
    80007f00:	00993023          	sd	s1,0(s2)
    80007f04:	fcfa76e3          	bgeu	s4,a5,80007ed0 <freerange+0x70>
    80007f08:	03813083          	ld	ra,56(sp)
    80007f0c:	03013403          	ld	s0,48(sp)
    80007f10:	02813483          	ld	s1,40(sp)
    80007f14:	02013903          	ld	s2,32(sp)
    80007f18:	01813983          	ld	s3,24(sp)
    80007f1c:	01013a03          	ld	s4,16(sp)
    80007f20:	00813a83          	ld	s5,8(sp)
    80007f24:	00013b03          	ld	s6,0(sp)
    80007f28:	04010113          	addi	sp,sp,64
    80007f2c:	00008067          	ret
    80007f30:	00002517          	auipc	a0,0x2
    80007f34:	98850513          	addi	a0,a0,-1656 # 800098b8 <digits+0x18>
    80007f38:	fffff097          	auipc	ra,0xfffff
    80007f3c:	3d4080e7          	jalr	980(ra) # 8000730c <panic>

0000000080007f40 <kfree>:
    80007f40:	fe010113          	addi	sp,sp,-32
    80007f44:	00813823          	sd	s0,16(sp)
    80007f48:	00113c23          	sd	ra,24(sp)
    80007f4c:	00913423          	sd	s1,8(sp)
    80007f50:	02010413          	addi	s0,sp,32
    80007f54:	03451793          	slli	a5,a0,0x34
    80007f58:	04079c63          	bnez	a5,80007fb0 <kfree+0x70>
    80007f5c:	00005797          	auipc	a5,0x5
    80007f60:	d2478793          	addi	a5,a5,-732 # 8000cc80 <end>
    80007f64:	00050493          	mv	s1,a0
    80007f68:	04f56463          	bltu	a0,a5,80007fb0 <kfree+0x70>
    80007f6c:	01100793          	li	a5,17
    80007f70:	01b79793          	slli	a5,a5,0x1b
    80007f74:	02f57e63          	bgeu	a0,a5,80007fb0 <kfree+0x70>
    80007f78:	00001637          	lui	a2,0x1
    80007f7c:	00100593          	li	a1,1
    80007f80:	00000097          	auipc	ra,0x0
    80007f84:	478080e7          	jalr	1144(ra) # 800083f8 <__memset>
    80007f88:	00004797          	auipc	a5,0x4
    80007f8c:	9d878793          	addi	a5,a5,-1576 # 8000b960 <kmem>
    80007f90:	0007b703          	ld	a4,0(a5)
    80007f94:	01813083          	ld	ra,24(sp)
    80007f98:	01013403          	ld	s0,16(sp)
    80007f9c:	00e4b023          	sd	a4,0(s1)
    80007fa0:	0097b023          	sd	s1,0(a5)
    80007fa4:	00813483          	ld	s1,8(sp)
    80007fa8:	02010113          	addi	sp,sp,32
    80007fac:	00008067          	ret
    80007fb0:	00002517          	auipc	a0,0x2
    80007fb4:	90850513          	addi	a0,a0,-1784 # 800098b8 <digits+0x18>
    80007fb8:	fffff097          	auipc	ra,0xfffff
    80007fbc:	354080e7          	jalr	852(ra) # 8000730c <panic>

0000000080007fc0 <kalloc>:
    80007fc0:	fe010113          	addi	sp,sp,-32
    80007fc4:	00813823          	sd	s0,16(sp)
    80007fc8:	00913423          	sd	s1,8(sp)
    80007fcc:	00113c23          	sd	ra,24(sp)
    80007fd0:	02010413          	addi	s0,sp,32
    80007fd4:	00004797          	auipc	a5,0x4
    80007fd8:	98c78793          	addi	a5,a5,-1652 # 8000b960 <kmem>
    80007fdc:	0007b483          	ld	s1,0(a5)
    80007fe0:	02048063          	beqz	s1,80008000 <kalloc+0x40>
    80007fe4:	0004b703          	ld	a4,0(s1)
    80007fe8:	00001637          	lui	a2,0x1
    80007fec:	00500593          	li	a1,5
    80007ff0:	00048513          	mv	a0,s1
    80007ff4:	00e7b023          	sd	a4,0(a5)
    80007ff8:	00000097          	auipc	ra,0x0
    80007ffc:	400080e7          	jalr	1024(ra) # 800083f8 <__memset>
    80008000:	01813083          	ld	ra,24(sp)
    80008004:	01013403          	ld	s0,16(sp)
    80008008:	00048513          	mv	a0,s1
    8000800c:	00813483          	ld	s1,8(sp)
    80008010:	02010113          	addi	sp,sp,32
    80008014:	00008067          	ret

0000000080008018 <initlock>:
    80008018:	ff010113          	addi	sp,sp,-16
    8000801c:	00813423          	sd	s0,8(sp)
    80008020:	01010413          	addi	s0,sp,16
    80008024:	00813403          	ld	s0,8(sp)
    80008028:	00b53423          	sd	a1,8(a0)
    8000802c:	00052023          	sw	zero,0(a0)
    80008030:	00053823          	sd	zero,16(a0)
    80008034:	01010113          	addi	sp,sp,16
    80008038:	00008067          	ret

000000008000803c <acquire>:
    8000803c:	fe010113          	addi	sp,sp,-32
    80008040:	00813823          	sd	s0,16(sp)
    80008044:	00913423          	sd	s1,8(sp)
    80008048:	00113c23          	sd	ra,24(sp)
    8000804c:	01213023          	sd	s2,0(sp)
    80008050:	02010413          	addi	s0,sp,32
    80008054:	00050493          	mv	s1,a0
    80008058:	10002973          	csrr	s2,sstatus
    8000805c:	100027f3          	csrr	a5,sstatus
    80008060:	ffd7f793          	andi	a5,a5,-3
    80008064:	10079073          	csrw	sstatus,a5
    80008068:	fffff097          	auipc	ra,0xfffff
    8000806c:	8e4080e7          	jalr	-1820(ra) # 8000694c <mycpu>
    80008070:	07852783          	lw	a5,120(a0)
    80008074:	06078e63          	beqz	a5,800080f0 <acquire+0xb4>
    80008078:	fffff097          	auipc	ra,0xfffff
    8000807c:	8d4080e7          	jalr	-1836(ra) # 8000694c <mycpu>
    80008080:	07852783          	lw	a5,120(a0)
    80008084:	0004a703          	lw	a4,0(s1)
    80008088:	0017879b          	addiw	a5,a5,1
    8000808c:	06f52c23          	sw	a5,120(a0)
    80008090:	04071063          	bnez	a4,800080d0 <acquire+0x94>
    80008094:	00100713          	li	a4,1
    80008098:	00070793          	mv	a5,a4
    8000809c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800080a0:	0007879b          	sext.w	a5,a5
    800080a4:	fe079ae3          	bnez	a5,80008098 <acquire+0x5c>
    800080a8:	0ff0000f          	fence
    800080ac:	fffff097          	auipc	ra,0xfffff
    800080b0:	8a0080e7          	jalr	-1888(ra) # 8000694c <mycpu>
    800080b4:	01813083          	ld	ra,24(sp)
    800080b8:	01013403          	ld	s0,16(sp)
    800080bc:	00a4b823          	sd	a0,16(s1)
    800080c0:	00013903          	ld	s2,0(sp)
    800080c4:	00813483          	ld	s1,8(sp)
    800080c8:	02010113          	addi	sp,sp,32
    800080cc:	00008067          	ret
    800080d0:	0104b903          	ld	s2,16(s1)
    800080d4:	fffff097          	auipc	ra,0xfffff
    800080d8:	878080e7          	jalr	-1928(ra) # 8000694c <mycpu>
    800080dc:	faa91ce3          	bne	s2,a0,80008094 <acquire+0x58>
    800080e0:	00001517          	auipc	a0,0x1
    800080e4:	7e050513          	addi	a0,a0,2016 # 800098c0 <digits+0x20>
    800080e8:	fffff097          	auipc	ra,0xfffff
    800080ec:	224080e7          	jalr	548(ra) # 8000730c <panic>
    800080f0:	00195913          	srli	s2,s2,0x1
    800080f4:	fffff097          	auipc	ra,0xfffff
    800080f8:	858080e7          	jalr	-1960(ra) # 8000694c <mycpu>
    800080fc:	00197913          	andi	s2,s2,1
    80008100:	07252e23          	sw	s2,124(a0)
    80008104:	f75ff06f          	j	80008078 <acquire+0x3c>

0000000080008108 <release>:
    80008108:	fe010113          	addi	sp,sp,-32
    8000810c:	00813823          	sd	s0,16(sp)
    80008110:	00113c23          	sd	ra,24(sp)
    80008114:	00913423          	sd	s1,8(sp)
    80008118:	01213023          	sd	s2,0(sp)
    8000811c:	02010413          	addi	s0,sp,32
    80008120:	00052783          	lw	a5,0(a0)
    80008124:	00079a63          	bnez	a5,80008138 <release+0x30>
    80008128:	00001517          	auipc	a0,0x1
    8000812c:	7a050513          	addi	a0,a0,1952 # 800098c8 <digits+0x28>
    80008130:	fffff097          	auipc	ra,0xfffff
    80008134:	1dc080e7          	jalr	476(ra) # 8000730c <panic>
    80008138:	01053903          	ld	s2,16(a0)
    8000813c:	00050493          	mv	s1,a0
    80008140:	fffff097          	auipc	ra,0xfffff
    80008144:	80c080e7          	jalr	-2036(ra) # 8000694c <mycpu>
    80008148:	fea910e3          	bne	s2,a0,80008128 <release+0x20>
    8000814c:	0004b823          	sd	zero,16(s1)
    80008150:	0ff0000f          	fence
    80008154:	0f50000f          	fence	iorw,ow
    80008158:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000815c:	ffffe097          	auipc	ra,0xffffe
    80008160:	7f0080e7          	jalr	2032(ra) # 8000694c <mycpu>
    80008164:	100027f3          	csrr	a5,sstatus
    80008168:	0027f793          	andi	a5,a5,2
    8000816c:	04079a63          	bnez	a5,800081c0 <release+0xb8>
    80008170:	07852783          	lw	a5,120(a0)
    80008174:	02f05e63          	blez	a5,800081b0 <release+0xa8>
    80008178:	fff7871b          	addiw	a4,a5,-1
    8000817c:	06e52c23          	sw	a4,120(a0)
    80008180:	00071c63          	bnez	a4,80008198 <release+0x90>
    80008184:	07c52783          	lw	a5,124(a0)
    80008188:	00078863          	beqz	a5,80008198 <release+0x90>
    8000818c:	100027f3          	csrr	a5,sstatus
    80008190:	0027e793          	ori	a5,a5,2
    80008194:	10079073          	csrw	sstatus,a5
    80008198:	01813083          	ld	ra,24(sp)
    8000819c:	01013403          	ld	s0,16(sp)
    800081a0:	00813483          	ld	s1,8(sp)
    800081a4:	00013903          	ld	s2,0(sp)
    800081a8:	02010113          	addi	sp,sp,32
    800081ac:	00008067          	ret
    800081b0:	00001517          	auipc	a0,0x1
    800081b4:	73850513          	addi	a0,a0,1848 # 800098e8 <digits+0x48>
    800081b8:	fffff097          	auipc	ra,0xfffff
    800081bc:	154080e7          	jalr	340(ra) # 8000730c <panic>
    800081c0:	00001517          	auipc	a0,0x1
    800081c4:	71050513          	addi	a0,a0,1808 # 800098d0 <digits+0x30>
    800081c8:	fffff097          	auipc	ra,0xfffff
    800081cc:	144080e7          	jalr	324(ra) # 8000730c <panic>

00000000800081d0 <holding>:
    800081d0:	00052783          	lw	a5,0(a0)
    800081d4:	00079663          	bnez	a5,800081e0 <holding+0x10>
    800081d8:	00000513          	li	a0,0
    800081dc:	00008067          	ret
    800081e0:	fe010113          	addi	sp,sp,-32
    800081e4:	00813823          	sd	s0,16(sp)
    800081e8:	00913423          	sd	s1,8(sp)
    800081ec:	00113c23          	sd	ra,24(sp)
    800081f0:	02010413          	addi	s0,sp,32
    800081f4:	01053483          	ld	s1,16(a0)
    800081f8:	ffffe097          	auipc	ra,0xffffe
    800081fc:	754080e7          	jalr	1876(ra) # 8000694c <mycpu>
    80008200:	01813083          	ld	ra,24(sp)
    80008204:	01013403          	ld	s0,16(sp)
    80008208:	40a48533          	sub	a0,s1,a0
    8000820c:	00153513          	seqz	a0,a0
    80008210:	00813483          	ld	s1,8(sp)
    80008214:	02010113          	addi	sp,sp,32
    80008218:	00008067          	ret

000000008000821c <push_off>:
    8000821c:	fe010113          	addi	sp,sp,-32
    80008220:	00813823          	sd	s0,16(sp)
    80008224:	00113c23          	sd	ra,24(sp)
    80008228:	00913423          	sd	s1,8(sp)
    8000822c:	02010413          	addi	s0,sp,32
    80008230:	100024f3          	csrr	s1,sstatus
    80008234:	100027f3          	csrr	a5,sstatus
    80008238:	ffd7f793          	andi	a5,a5,-3
    8000823c:	10079073          	csrw	sstatus,a5
    80008240:	ffffe097          	auipc	ra,0xffffe
    80008244:	70c080e7          	jalr	1804(ra) # 8000694c <mycpu>
    80008248:	07852783          	lw	a5,120(a0)
    8000824c:	02078663          	beqz	a5,80008278 <push_off+0x5c>
    80008250:	ffffe097          	auipc	ra,0xffffe
    80008254:	6fc080e7          	jalr	1788(ra) # 8000694c <mycpu>
    80008258:	07852783          	lw	a5,120(a0)
    8000825c:	01813083          	ld	ra,24(sp)
    80008260:	01013403          	ld	s0,16(sp)
    80008264:	0017879b          	addiw	a5,a5,1
    80008268:	06f52c23          	sw	a5,120(a0)
    8000826c:	00813483          	ld	s1,8(sp)
    80008270:	02010113          	addi	sp,sp,32
    80008274:	00008067          	ret
    80008278:	0014d493          	srli	s1,s1,0x1
    8000827c:	ffffe097          	auipc	ra,0xffffe
    80008280:	6d0080e7          	jalr	1744(ra) # 8000694c <mycpu>
    80008284:	0014f493          	andi	s1,s1,1
    80008288:	06952e23          	sw	s1,124(a0)
    8000828c:	fc5ff06f          	j	80008250 <push_off+0x34>

0000000080008290 <pop_off>:
    80008290:	ff010113          	addi	sp,sp,-16
    80008294:	00813023          	sd	s0,0(sp)
    80008298:	00113423          	sd	ra,8(sp)
    8000829c:	01010413          	addi	s0,sp,16
    800082a0:	ffffe097          	auipc	ra,0xffffe
    800082a4:	6ac080e7          	jalr	1708(ra) # 8000694c <mycpu>
    800082a8:	100027f3          	csrr	a5,sstatus
    800082ac:	0027f793          	andi	a5,a5,2
    800082b0:	04079663          	bnez	a5,800082fc <pop_off+0x6c>
    800082b4:	07852783          	lw	a5,120(a0)
    800082b8:	02f05a63          	blez	a5,800082ec <pop_off+0x5c>
    800082bc:	fff7871b          	addiw	a4,a5,-1
    800082c0:	06e52c23          	sw	a4,120(a0)
    800082c4:	00071c63          	bnez	a4,800082dc <pop_off+0x4c>
    800082c8:	07c52783          	lw	a5,124(a0)
    800082cc:	00078863          	beqz	a5,800082dc <pop_off+0x4c>
    800082d0:	100027f3          	csrr	a5,sstatus
    800082d4:	0027e793          	ori	a5,a5,2
    800082d8:	10079073          	csrw	sstatus,a5
    800082dc:	00813083          	ld	ra,8(sp)
    800082e0:	00013403          	ld	s0,0(sp)
    800082e4:	01010113          	addi	sp,sp,16
    800082e8:	00008067          	ret
    800082ec:	00001517          	auipc	a0,0x1
    800082f0:	5fc50513          	addi	a0,a0,1532 # 800098e8 <digits+0x48>
    800082f4:	fffff097          	auipc	ra,0xfffff
    800082f8:	018080e7          	jalr	24(ra) # 8000730c <panic>
    800082fc:	00001517          	auipc	a0,0x1
    80008300:	5d450513          	addi	a0,a0,1492 # 800098d0 <digits+0x30>
    80008304:	fffff097          	auipc	ra,0xfffff
    80008308:	008080e7          	jalr	8(ra) # 8000730c <panic>

000000008000830c <push_on>:
    8000830c:	fe010113          	addi	sp,sp,-32
    80008310:	00813823          	sd	s0,16(sp)
    80008314:	00113c23          	sd	ra,24(sp)
    80008318:	00913423          	sd	s1,8(sp)
    8000831c:	02010413          	addi	s0,sp,32
    80008320:	100024f3          	csrr	s1,sstatus
    80008324:	100027f3          	csrr	a5,sstatus
    80008328:	0027e793          	ori	a5,a5,2
    8000832c:	10079073          	csrw	sstatus,a5
    80008330:	ffffe097          	auipc	ra,0xffffe
    80008334:	61c080e7          	jalr	1564(ra) # 8000694c <mycpu>
    80008338:	07852783          	lw	a5,120(a0)
    8000833c:	02078663          	beqz	a5,80008368 <push_on+0x5c>
    80008340:	ffffe097          	auipc	ra,0xffffe
    80008344:	60c080e7          	jalr	1548(ra) # 8000694c <mycpu>
    80008348:	07852783          	lw	a5,120(a0)
    8000834c:	01813083          	ld	ra,24(sp)
    80008350:	01013403          	ld	s0,16(sp)
    80008354:	0017879b          	addiw	a5,a5,1
    80008358:	06f52c23          	sw	a5,120(a0)
    8000835c:	00813483          	ld	s1,8(sp)
    80008360:	02010113          	addi	sp,sp,32
    80008364:	00008067          	ret
    80008368:	0014d493          	srli	s1,s1,0x1
    8000836c:	ffffe097          	auipc	ra,0xffffe
    80008370:	5e0080e7          	jalr	1504(ra) # 8000694c <mycpu>
    80008374:	0014f493          	andi	s1,s1,1
    80008378:	06952e23          	sw	s1,124(a0)
    8000837c:	fc5ff06f          	j	80008340 <push_on+0x34>

0000000080008380 <pop_on>:
    80008380:	ff010113          	addi	sp,sp,-16
    80008384:	00813023          	sd	s0,0(sp)
    80008388:	00113423          	sd	ra,8(sp)
    8000838c:	01010413          	addi	s0,sp,16
    80008390:	ffffe097          	auipc	ra,0xffffe
    80008394:	5bc080e7          	jalr	1468(ra) # 8000694c <mycpu>
    80008398:	100027f3          	csrr	a5,sstatus
    8000839c:	0027f793          	andi	a5,a5,2
    800083a0:	04078463          	beqz	a5,800083e8 <pop_on+0x68>
    800083a4:	07852783          	lw	a5,120(a0)
    800083a8:	02f05863          	blez	a5,800083d8 <pop_on+0x58>
    800083ac:	fff7879b          	addiw	a5,a5,-1
    800083b0:	06f52c23          	sw	a5,120(a0)
    800083b4:	07853783          	ld	a5,120(a0)
    800083b8:	00079863          	bnez	a5,800083c8 <pop_on+0x48>
    800083bc:	100027f3          	csrr	a5,sstatus
    800083c0:	ffd7f793          	andi	a5,a5,-3
    800083c4:	10079073          	csrw	sstatus,a5
    800083c8:	00813083          	ld	ra,8(sp)
    800083cc:	00013403          	ld	s0,0(sp)
    800083d0:	01010113          	addi	sp,sp,16
    800083d4:	00008067          	ret
    800083d8:	00001517          	auipc	a0,0x1
    800083dc:	53850513          	addi	a0,a0,1336 # 80009910 <digits+0x70>
    800083e0:	fffff097          	auipc	ra,0xfffff
    800083e4:	f2c080e7          	jalr	-212(ra) # 8000730c <panic>
    800083e8:	00001517          	auipc	a0,0x1
    800083ec:	50850513          	addi	a0,a0,1288 # 800098f0 <digits+0x50>
    800083f0:	fffff097          	auipc	ra,0xfffff
    800083f4:	f1c080e7          	jalr	-228(ra) # 8000730c <panic>

00000000800083f8 <__memset>:
    800083f8:	ff010113          	addi	sp,sp,-16
    800083fc:	00813423          	sd	s0,8(sp)
    80008400:	01010413          	addi	s0,sp,16
    80008404:	1a060e63          	beqz	a2,800085c0 <__memset+0x1c8>
    80008408:	40a007b3          	neg	a5,a0
    8000840c:	0077f793          	andi	a5,a5,7
    80008410:	00778693          	addi	a3,a5,7
    80008414:	00b00813          	li	a6,11
    80008418:	0ff5f593          	andi	a1,a1,255
    8000841c:	fff6071b          	addiw	a4,a2,-1
    80008420:	1b06e663          	bltu	a3,a6,800085cc <__memset+0x1d4>
    80008424:	1cd76463          	bltu	a4,a3,800085ec <__memset+0x1f4>
    80008428:	1a078e63          	beqz	a5,800085e4 <__memset+0x1ec>
    8000842c:	00b50023          	sb	a1,0(a0)
    80008430:	00100713          	li	a4,1
    80008434:	1ae78463          	beq	a5,a4,800085dc <__memset+0x1e4>
    80008438:	00b500a3          	sb	a1,1(a0)
    8000843c:	00200713          	li	a4,2
    80008440:	1ae78a63          	beq	a5,a4,800085f4 <__memset+0x1fc>
    80008444:	00b50123          	sb	a1,2(a0)
    80008448:	00300713          	li	a4,3
    8000844c:	18e78463          	beq	a5,a4,800085d4 <__memset+0x1dc>
    80008450:	00b501a3          	sb	a1,3(a0)
    80008454:	00400713          	li	a4,4
    80008458:	1ae78263          	beq	a5,a4,800085fc <__memset+0x204>
    8000845c:	00b50223          	sb	a1,4(a0)
    80008460:	00500713          	li	a4,5
    80008464:	1ae78063          	beq	a5,a4,80008604 <__memset+0x20c>
    80008468:	00b502a3          	sb	a1,5(a0)
    8000846c:	00700713          	li	a4,7
    80008470:	18e79e63          	bne	a5,a4,8000860c <__memset+0x214>
    80008474:	00b50323          	sb	a1,6(a0)
    80008478:	00700e93          	li	t4,7
    8000847c:	00859713          	slli	a4,a1,0x8
    80008480:	00e5e733          	or	a4,a1,a4
    80008484:	01059e13          	slli	t3,a1,0x10
    80008488:	01c76e33          	or	t3,a4,t3
    8000848c:	01859313          	slli	t1,a1,0x18
    80008490:	006e6333          	or	t1,t3,t1
    80008494:	02059893          	slli	a7,a1,0x20
    80008498:	40f60e3b          	subw	t3,a2,a5
    8000849c:	011368b3          	or	a7,t1,a7
    800084a0:	02859813          	slli	a6,a1,0x28
    800084a4:	0108e833          	or	a6,a7,a6
    800084a8:	03059693          	slli	a3,a1,0x30
    800084ac:	003e589b          	srliw	a7,t3,0x3
    800084b0:	00d866b3          	or	a3,a6,a3
    800084b4:	03859713          	slli	a4,a1,0x38
    800084b8:	00389813          	slli	a6,a7,0x3
    800084bc:	00f507b3          	add	a5,a0,a5
    800084c0:	00e6e733          	or	a4,a3,a4
    800084c4:	000e089b          	sext.w	a7,t3
    800084c8:	00f806b3          	add	a3,a6,a5
    800084cc:	00e7b023          	sd	a4,0(a5)
    800084d0:	00878793          	addi	a5,a5,8
    800084d4:	fed79ce3          	bne	a5,a3,800084cc <__memset+0xd4>
    800084d8:	ff8e7793          	andi	a5,t3,-8
    800084dc:	0007871b          	sext.w	a4,a5
    800084e0:	01d787bb          	addw	a5,a5,t4
    800084e4:	0ce88e63          	beq	a7,a4,800085c0 <__memset+0x1c8>
    800084e8:	00f50733          	add	a4,a0,a5
    800084ec:	00b70023          	sb	a1,0(a4)
    800084f0:	0017871b          	addiw	a4,a5,1
    800084f4:	0cc77663          	bgeu	a4,a2,800085c0 <__memset+0x1c8>
    800084f8:	00e50733          	add	a4,a0,a4
    800084fc:	00b70023          	sb	a1,0(a4)
    80008500:	0027871b          	addiw	a4,a5,2
    80008504:	0ac77e63          	bgeu	a4,a2,800085c0 <__memset+0x1c8>
    80008508:	00e50733          	add	a4,a0,a4
    8000850c:	00b70023          	sb	a1,0(a4)
    80008510:	0037871b          	addiw	a4,a5,3
    80008514:	0ac77663          	bgeu	a4,a2,800085c0 <__memset+0x1c8>
    80008518:	00e50733          	add	a4,a0,a4
    8000851c:	00b70023          	sb	a1,0(a4)
    80008520:	0047871b          	addiw	a4,a5,4
    80008524:	08c77e63          	bgeu	a4,a2,800085c0 <__memset+0x1c8>
    80008528:	00e50733          	add	a4,a0,a4
    8000852c:	00b70023          	sb	a1,0(a4)
    80008530:	0057871b          	addiw	a4,a5,5
    80008534:	08c77663          	bgeu	a4,a2,800085c0 <__memset+0x1c8>
    80008538:	00e50733          	add	a4,a0,a4
    8000853c:	00b70023          	sb	a1,0(a4)
    80008540:	0067871b          	addiw	a4,a5,6
    80008544:	06c77e63          	bgeu	a4,a2,800085c0 <__memset+0x1c8>
    80008548:	00e50733          	add	a4,a0,a4
    8000854c:	00b70023          	sb	a1,0(a4)
    80008550:	0077871b          	addiw	a4,a5,7
    80008554:	06c77663          	bgeu	a4,a2,800085c0 <__memset+0x1c8>
    80008558:	00e50733          	add	a4,a0,a4
    8000855c:	00b70023          	sb	a1,0(a4)
    80008560:	0087871b          	addiw	a4,a5,8
    80008564:	04c77e63          	bgeu	a4,a2,800085c0 <__memset+0x1c8>
    80008568:	00e50733          	add	a4,a0,a4
    8000856c:	00b70023          	sb	a1,0(a4)
    80008570:	0097871b          	addiw	a4,a5,9
    80008574:	04c77663          	bgeu	a4,a2,800085c0 <__memset+0x1c8>
    80008578:	00e50733          	add	a4,a0,a4
    8000857c:	00b70023          	sb	a1,0(a4)
    80008580:	00a7871b          	addiw	a4,a5,10
    80008584:	02c77e63          	bgeu	a4,a2,800085c0 <__memset+0x1c8>
    80008588:	00e50733          	add	a4,a0,a4
    8000858c:	00b70023          	sb	a1,0(a4)
    80008590:	00b7871b          	addiw	a4,a5,11
    80008594:	02c77663          	bgeu	a4,a2,800085c0 <__memset+0x1c8>
    80008598:	00e50733          	add	a4,a0,a4
    8000859c:	00b70023          	sb	a1,0(a4)
    800085a0:	00c7871b          	addiw	a4,a5,12
    800085a4:	00c77e63          	bgeu	a4,a2,800085c0 <__memset+0x1c8>
    800085a8:	00e50733          	add	a4,a0,a4
    800085ac:	00b70023          	sb	a1,0(a4)
    800085b0:	00d7879b          	addiw	a5,a5,13
    800085b4:	00c7f663          	bgeu	a5,a2,800085c0 <__memset+0x1c8>
    800085b8:	00f507b3          	add	a5,a0,a5
    800085bc:	00b78023          	sb	a1,0(a5)
    800085c0:	00813403          	ld	s0,8(sp)
    800085c4:	01010113          	addi	sp,sp,16
    800085c8:	00008067          	ret
    800085cc:	00b00693          	li	a3,11
    800085d0:	e55ff06f          	j	80008424 <__memset+0x2c>
    800085d4:	00300e93          	li	t4,3
    800085d8:	ea5ff06f          	j	8000847c <__memset+0x84>
    800085dc:	00100e93          	li	t4,1
    800085e0:	e9dff06f          	j	8000847c <__memset+0x84>
    800085e4:	00000e93          	li	t4,0
    800085e8:	e95ff06f          	j	8000847c <__memset+0x84>
    800085ec:	00000793          	li	a5,0
    800085f0:	ef9ff06f          	j	800084e8 <__memset+0xf0>
    800085f4:	00200e93          	li	t4,2
    800085f8:	e85ff06f          	j	8000847c <__memset+0x84>
    800085fc:	00400e93          	li	t4,4
    80008600:	e7dff06f          	j	8000847c <__memset+0x84>
    80008604:	00500e93          	li	t4,5
    80008608:	e75ff06f          	j	8000847c <__memset+0x84>
    8000860c:	00600e93          	li	t4,6
    80008610:	e6dff06f          	j	8000847c <__memset+0x84>

0000000080008614 <__memmove>:
    80008614:	ff010113          	addi	sp,sp,-16
    80008618:	00813423          	sd	s0,8(sp)
    8000861c:	01010413          	addi	s0,sp,16
    80008620:	0e060863          	beqz	a2,80008710 <__memmove+0xfc>
    80008624:	fff6069b          	addiw	a3,a2,-1
    80008628:	0006881b          	sext.w	a6,a3
    8000862c:	0ea5e863          	bltu	a1,a0,8000871c <__memmove+0x108>
    80008630:	00758713          	addi	a4,a1,7
    80008634:	00a5e7b3          	or	a5,a1,a0
    80008638:	40a70733          	sub	a4,a4,a0
    8000863c:	0077f793          	andi	a5,a5,7
    80008640:	00f73713          	sltiu	a4,a4,15
    80008644:	00174713          	xori	a4,a4,1
    80008648:	0017b793          	seqz	a5,a5
    8000864c:	00e7f7b3          	and	a5,a5,a4
    80008650:	10078863          	beqz	a5,80008760 <__memmove+0x14c>
    80008654:	00900793          	li	a5,9
    80008658:	1107f463          	bgeu	a5,a6,80008760 <__memmove+0x14c>
    8000865c:	0036581b          	srliw	a6,a2,0x3
    80008660:	fff8081b          	addiw	a6,a6,-1
    80008664:	02081813          	slli	a6,a6,0x20
    80008668:	01d85893          	srli	a7,a6,0x1d
    8000866c:	00858813          	addi	a6,a1,8
    80008670:	00058793          	mv	a5,a1
    80008674:	00050713          	mv	a4,a0
    80008678:	01088833          	add	a6,a7,a6
    8000867c:	0007b883          	ld	a7,0(a5)
    80008680:	00878793          	addi	a5,a5,8
    80008684:	00870713          	addi	a4,a4,8
    80008688:	ff173c23          	sd	a7,-8(a4)
    8000868c:	ff0798e3          	bne	a5,a6,8000867c <__memmove+0x68>
    80008690:	ff867713          	andi	a4,a2,-8
    80008694:	02071793          	slli	a5,a4,0x20
    80008698:	0207d793          	srli	a5,a5,0x20
    8000869c:	00f585b3          	add	a1,a1,a5
    800086a0:	40e686bb          	subw	a3,a3,a4
    800086a4:	00f507b3          	add	a5,a0,a5
    800086a8:	06e60463          	beq	a2,a4,80008710 <__memmove+0xfc>
    800086ac:	0005c703          	lbu	a4,0(a1)
    800086b0:	00e78023          	sb	a4,0(a5)
    800086b4:	04068e63          	beqz	a3,80008710 <__memmove+0xfc>
    800086b8:	0015c603          	lbu	a2,1(a1)
    800086bc:	00100713          	li	a4,1
    800086c0:	00c780a3          	sb	a2,1(a5)
    800086c4:	04e68663          	beq	a3,a4,80008710 <__memmove+0xfc>
    800086c8:	0025c603          	lbu	a2,2(a1)
    800086cc:	00200713          	li	a4,2
    800086d0:	00c78123          	sb	a2,2(a5)
    800086d4:	02e68e63          	beq	a3,a4,80008710 <__memmove+0xfc>
    800086d8:	0035c603          	lbu	a2,3(a1)
    800086dc:	00300713          	li	a4,3
    800086e0:	00c781a3          	sb	a2,3(a5)
    800086e4:	02e68663          	beq	a3,a4,80008710 <__memmove+0xfc>
    800086e8:	0045c603          	lbu	a2,4(a1)
    800086ec:	00400713          	li	a4,4
    800086f0:	00c78223          	sb	a2,4(a5)
    800086f4:	00e68e63          	beq	a3,a4,80008710 <__memmove+0xfc>
    800086f8:	0055c603          	lbu	a2,5(a1)
    800086fc:	00500713          	li	a4,5
    80008700:	00c782a3          	sb	a2,5(a5)
    80008704:	00e68663          	beq	a3,a4,80008710 <__memmove+0xfc>
    80008708:	0065c703          	lbu	a4,6(a1)
    8000870c:	00e78323          	sb	a4,6(a5)
    80008710:	00813403          	ld	s0,8(sp)
    80008714:	01010113          	addi	sp,sp,16
    80008718:	00008067          	ret
    8000871c:	02061713          	slli	a4,a2,0x20
    80008720:	02075713          	srli	a4,a4,0x20
    80008724:	00e587b3          	add	a5,a1,a4
    80008728:	f0f574e3          	bgeu	a0,a5,80008630 <__memmove+0x1c>
    8000872c:	02069613          	slli	a2,a3,0x20
    80008730:	02065613          	srli	a2,a2,0x20
    80008734:	fff64613          	not	a2,a2
    80008738:	00e50733          	add	a4,a0,a4
    8000873c:	00c78633          	add	a2,a5,a2
    80008740:	fff7c683          	lbu	a3,-1(a5)
    80008744:	fff78793          	addi	a5,a5,-1
    80008748:	fff70713          	addi	a4,a4,-1
    8000874c:	00d70023          	sb	a3,0(a4)
    80008750:	fec798e3          	bne	a5,a2,80008740 <__memmove+0x12c>
    80008754:	00813403          	ld	s0,8(sp)
    80008758:	01010113          	addi	sp,sp,16
    8000875c:	00008067          	ret
    80008760:	02069713          	slli	a4,a3,0x20
    80008764:	02075713          	srli	a4,a4,0x20
    80008768:	00170713          	addi	a4,a4,1
    8000876c:	00e50733          	add	a4,a0,a4
    80008770:	00050793          	mv	a5,a0
    80008774:	0005c683          	lbu	a3,0(a1)
    80008778:	00178793          	addi	a5,a5,1
    8000877c:	00158593          	addi	a1,a1,1
    80008780:	fed78fa3          	sb	a3,-1(a5)
    80008784:	fee798e3          	bne	a5,a4,80008774 <__memmove+0x160>
    80008788:	f89ff06f          	j	80008710 <__memmove+0xfc>

000000008000878c <__mem_free>:
    8000878c:	ff010113          	addi	sp,sp,-16
    80008790:	00813423          	sd	s0,8(sp)
    80008794:	01010413          	addi	s0,sp,16
    80008798:	00003597          	auipc	a1,0x3
    8000879c:	1d058593          	addi	a1,a1,464 # 8000b968 <freep>
    800087a0:	0005b783          	ld	a5,0(a1)
    800087a4:	ff050693          	addi	a3,a0,-16
    800087a8:	0007b703          	ld	a4,0(a5)
    800087ac:	00d7fc63          	bgeu	a5,a3,800087c4 <__mem_free+0x38>
    800087b0:	00e6ee63          	bltu	a3,a4,800087cc <__mem_free+0x40>
    800087b4:	00e7fc63          	bgeu	a5,a4,800087cc <__mem_free+0x40>
    800087b8:	00070793          	mv	a5,a4
    800087bc:	0007b703          	ld	a4,0(a5)
    800087c0:	fed7e8e3          	bltu	a5,a3,800087b0 <__mem_free+0x24>
    800087c4:	fee7eae3          	bltu	a5,a4,800087b8 <__mem_free+0x2c>
    800087c8:	fee6f8e3          	bgeu	a3,a4,800087b8 <__mem_free+0x2c>
    800087cc:	ff852803          	lw	a6,-8(a0)
    800087d0:	02081613          	slli	a2,a6,0x20
    800087d4:	01c65613          	srli	a2,a2,0x1c
    800087d8:	00c68633          	add	a2,a3,a2
    800087dc:	02c70a63          	beq	a4,a2,80008810 <__mem_free+0x84>
    800087e0:	fee53823          	sd	a4,-16(a0)
    800087e4:	0087a503          	lw	a0,8(a5)
    800087e8:	02051613          	slli	a2,a0,0x20
    800087ec:	01c65613          	srli	a2,a2,0x1c
    800087f0:	00c78633          	add	a2,a5,a2
    800087f4:	04c68263          	beq	a3,a2,80008838 <__mem_free+0xac>
    800087f8:	00813403          	ld	s0,8(sp)
    800087fc:	00d7b023          	sd	a3,0(a5)
    80008800:	00f5b023          	sd	a5,0(a1)
    80008804:	00000513          	li	a0,0
    80008808:	01010113          	addi	sp,sp,16
    8000880c:	00008067          	ret
    80008810:	00872603          	lw	a2,8(a4)
    80008814:	00073703          	ld	a4,0(a4)
    80008818:	0106083b          	addw	a6,a2,a6
    8000881c:	ff052c23          	sw	a6,-8(a0)
    80008820:	fee53823          	sd	a4,-16(a0)
    80008824:	0087a503          	lw	a0,8(a5)
    80008828:	02051613          	slli	a2,a0,0x20
    8000882c:	01c65613          	srli	a2,a2,0x1c
    80008830:	00c78633          	add	a2,a5,a2
    80008834:	fcc692e3          	bne	a3,a2,800087f8 <__mem_free+0x6c>
    80008838:	00813403          	ld	s0,8(sp)
    8000883c:	0105053b          	addw	a0,a0,a6
    80008840:	00a7a423          	sw	a0,8(a5)
    80008844:	00e7b023          	sd	a4,0(a5)
    80008848:	00f5b023          	sd	a5,0(a1)
    8000884c:	00000513          	li	a0,0
    80008850:	01010113          	addi	sp,sp,16
    80008854:	00008067          	ret

0000000080008858 <__mem_alloc>:
    80008858:	fc010113          	addi	sp,sp,-64
    8000885c:	02813823          	sd	s0,48(sp)
    80008860:	02913423          	sd	s1,40(sp)
    80008864:	03213023          	sd	s2,32(sp)
    80008868:	01513423          	sd	s5,8(sp)
    8000886c:	02113c23          	sd	ra,56(sp)
    80008870:	01313c23          	sd	s3,24(sp)
    80008874:	01413823          	sd	s4,16(sp)
    80008878:	01613023          	sd	s6,0(sp)
    8000887c:	04010413          	addi	s0,sp,64
    80008880:	00003a97          	auipc	s5,0x3
    80008884:	0e8a8a93          	addi	s5,s5,232 # 8000b968 <freep>
    80008888:	00f50913          	addi	s2,a0,15
    8000888c:	000ab683          	ld	a3,0(s5)
    80008890:	00495913          	srli	s2,s2,0x4
    80008894:	0019049b          	addiw	s1,s2,1
    80008898:	00048913          	mv	s2,s1
    8000889c:	0c068c63          	beqz	a3,80008974 <__mem_alloc+0x11c>
    800088a0:	0006b503          	ld	a0,0(a3)
    800088a4:	00852703          	lw	a4,8(a0)
    800088a8:	10977063          	bgeu	a4,s1,800089a8 <__mem_alloc+0x150>
    800088ac:	000017b7          	lui	a5,0x1
    800088b0:	0009099b          	sext.w	s3,s2
    800088b4:	0af4e863          	bltu	s1,a5,80008964 <__mem_alloc+0x10c>
    800088b8:	02099a13          	slli	s4,s3,0x20
    800088bc:	01ca5a13          	srli	s4,s4,0x1c
    800088c0:	fff00b13          	li	s6,-1
    800088c4:	0100006f          	j	800088d4 <__mem_alloc+0x7c>
    800088c8:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    800088cc:	00852703          	lw	a4,8(a0)
    800088d0:	04977463          	bgeu	a4,s1,80008918 <__mem_alloc+0xc0>
    800088d4:	00050793          	mv	a5,a0
    800088d8:	fea698e3          	bne	a3,a0,800088c8 <__mem_alloc+0x70>
    800088dc:	000a0513          	mv	a0,s4
    800088e0:	00000097          	auipc	ra,0x0
    800088e4:	1f0080e7          	jalr	496(ra) # 80008ad0 <kvmincrease>
    800088e8:	00050793          	mv	a5,a0
    800088ec:	01050513          	addi	a0,a0,16
    800088f0:	07678e63          	beq	a5,s6,8000896c <__mem_alloc+0x114>
    800088f4:	0137a423          	sw	s3,8(a5)
    800088f8:	00000097          	auipc	ra,0x0
    800088fc:	e94080e7          	jalr	-364(ra) # 8000878c <__mem_free>
    80008900:	000ab783          	ld	a5,0(s5)
    80008904:	06078463          	beqz	a5,8000896c <__mem_alloc+0x114>
    80008908:	0007b503          	ld	a0,0(a5)
    8000890c:	00078693          	mv	a3,a5
    80008910:	00852703          	lw	a4,8(a0)
    80008914:	fc9760e3          	bltu	a4,s1,800088d4 <__mem_alloc+0x7c>
    80008918:	08e48263          	beq	s1,a4,8000899c <__mem_alloc+0x144>
    8000891c:	4127073b          	subw	a4,a4,s2
    80008920:	02071693          	slli	a3,a4,0x20
    80008924:	01c6d693          	srli	a3,a3,0x1c
    80008928:	00e52423          	sw	a4,8(a0)
    8000892c:	00d50533          	add	a0,a0,a3
    80008930:	01252423          	sw	s2,8(a0)
    80008934:	00fab023          	sd	a5,0(s5)
    80008938:	01050513          	addi	a0,a0,16
    8000893c:	03813083          	ld	ra,56(sp)
    80008940:	03013403          	ld	s0,48(sp)
    80008944:	02813483          	ld	s1,40(sp)
    80008948:	02013903          	ld	s2,32(sp)
    8000894c:	01813983          	ld	s3,24(sp)
    80008950:	01013a03          	ld	s4,16(sp)
    80008954:	00813a83          	ld	s5,8(sp)
    80008958:	00013b03          	ld	s6,0(sp)
    8000895c:	04010113          	addi	sp,sp,64
    80008960:	00008067          	ret
    80008964:	000019b7          	lui	s3,0x1
    80008968:	f51ff06f          	j	800088b8 <__mem_alloc+0x60>
    8000896c:	00000513          	li	a0,0
    80008970:	fcdff06f          	j	8000893c <__mem_alloc+0xe4>
    80008974:	00004797          	auipc	a5,0x4
    80008978:	2fc78793          	addi	a5,a5,764 # 8000cc70 <base>
    8000897c:	00078513          	mv	a0,a5
    80008980:	00fab023          	sd	a5,0(s5)
    80008984:	00f7b023          	sd	a5,0(a5)
    80008988:	00000713          	li	a4,0
    8000898c:	00004797          	auipc	a5,0x4
    80008990:	2e07a623          	sw	zero,748(a5) # 8000cc78 <base+0x8>
    80008994:	00050693          	mv	a3,a0
    80008998:	f11ff06f          	j	800088a8 <__mem_alloc+0x50>
    8000899c:	00053703          	ld	a4,0(a0)
    800089a0:	00e7b023          	sd	a4,0(a5)
    800089a4:	f91ff06f          	j	80008934 <__mem_alloc+0xdc>
    800089a8:	00068793          	mv	a5,a3
    800089ac:	f6dff06f          	j	80008918 <__mem_alloc+0xc0>

00000000800089b0 <__putc>:
    800089b0:	fe010113          	addi	sp,sp,-32
    800089b4:	00813823          	sd	s0,16(sp)
    800089b8:	00113c23          	sd	ra,24(sp)
    800089bc:	02010413          	addi	s0,sp,32
    800089c0:	00050793          	mv	a5,a0
    800089c4:	fef40593          	addi	a1,s0,-17
    800089c8:	00100613          	li	a2,1
    800089cc:	00000513          	li	a0,0
    800089d0:	fef407a3          	sb	a5,-17(s0)
    800089d4:	fffff097          	auipc	ra,0xfffff
    800089d8:	918080e7          	jalr	-1768(ra) # 800072ec <console_write>
    800089dc:	01813083          	ld	ra,24(sp)
    800089e0:	01013403          	ld	s0,16(sp)
    800089e4:	02010113          	addi	sp,sp,32
    800089e8:	00008067          	ret

00000000800089ec <__getc>:
    800089ec:	fe010113          	addi	sp,sp,-32
    800089f0:	00813823          	sd	s0,16(sp)
    800089f4:	00113c23          	sd	ra,24(sp)
    800089f8:	02010413          	addi	s0,sp,32
    800089fc:	fe840593          	addi	a1,s0,-24
    80008a00:	00100613          	li	a2,1
    80008a04:	00000513          	li	a0,0
    80008a08:	fffff097          	auipc	ra,0xfffff
    80008a0c:	8c4080e7          	jalr	-1852(ra) # 800072cc <console_read>
    80008a10:	fe844503          	lbu	a0,-24(s0)
    80008a14:	01813083          	ld	ra,24(sp)
    80008a18:	01013403          	ld	s0,16(sp)
    80008a1c:	02010113          	addi	sp,sp,32
    80008a20:	00008067          	ret

0000000080008a24 <console_handler>:
    80008a24:	fe010113          	addi	sp,sp,-32
    80008a28:	00813823          	sd	s0,16(sp)
    80008a2c:	00113c23          	sd	ra,24(sp)
    80008a30:	00913423          	sd	s1,8(sp)
    80008a34:	02010413          	addi	s0,sp,32
    80008a38:	14202773          	csrr	a4,scause
    80008a3c:	100027f3          	csrr	a5,sstatus
    80008a40:	0027f793          	andi	a5,a5,2
    80008a44:	06079e63          	bnez	a5,80008ac0 <console_handler+0x9c>
    80008a48:	00074c63          	bltz	a4,80008a60 <console_handler+0x3c>
    80008a4c:	01813083          	ld	ra,24(sp)
    80008a50:	01013403          	ld	s0,16(sp)
    80008a54:	00813483          	ld	s1,8(sp)
    80008a58:	02010113          	addi	sp,sp,32
    80008a5c:	00008067          	ret
    80008a60:	0ff77713          	andi	a4,a4,255
    80008a64:	00900793          	li	a5,9
    80008a68:	fef712e3          	bne	a4,a5,80008a4c <console_handler+0x28>
    80008a6c:	ffffe097          	auipc	ra,0xffffe
    80008a70:	4b8080e7          	jalr	1208(ra) # 80006f24 <plic_claim>
    80008a74:	00a00793          	li	a5,10
    80008a78:	00050493          	mv	s1,a0
    80008a7c:	02f50c63          	beq	a0,a5,80008ab4 <console_handler+0x90>
    80008a80:	fc0506e3          	beqz	a0,80008a4c <console_handler+0x28>
    80008a84:	00050593          	mv	a1,a0
    80008a88:	00001517          	auipc	a0,0x1
    80008a8c:	d9050513          	addi	a0,a0,-624 # 80009818 <CONSOLE_STATUS+0x808>
    80008a90:	fffff097          	auipc	ra,0xfffff
    80008a94:	8d8080e7          	jalr	-1832(ra) # 80007368 <__printf>
    80008a98:	01013403          	ld	s0,16(sp)
    80008a9c:	01813083          	ld	ra,24(sp)
    80008aa0:	00048513          	mv	a0,s1
    80008aa4:	00813483          	ld	s1,8(sp)
    80008aa8:	02010113          	addi	sp,sp,32
    80008aac:	ffffe317          	auipc	t1,0xffffe
    80008ab0:	4b030067          	jr	1200(t1) # 80006f5c <plic_complete>
    80008ab4:	fffff097          	auipc	ra,0xfffff
    80008ab8:	1bc080e7          	jalr	444(ra) # 80007c70 <uartintr>
    80008abc:	fddff06f          	j	80008a98 <console_handler+0x74>
    80008ac0:	00001517          	auipc	a0,0x1
    80008ac4:	e5850513          	addi	a0,a0,-424 # 80009918 <digits+0x78>
    80008ac8:	fffff097          	auipc	ra,0xfffff
    80008acc:	844080e7          	jalr	-1980(ra) # 8000730c <panic>

0000000080008ad0 <kvmincrease>:
    80008ad0:	fe010113          	addi	sp,sp,-32
    80008ad4:	01213023          	sd	s2,0(sp)
    80008ad8:	00001937          	lui	s2,0x1
    80008adc:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80008ae0:	00813823          	sd	s0,16(sp)
    80008ae4:	00113c23          	sd	ra,24(sp)
    80008ae8:	00913423          	sd	s1,8(sp)
    80008aec:	02010413          	addi	s0,sp,32
    80008af0:	01250933          	add	s2,a0,s2
    80008af4:	00c95913          	srli	s2,s2,0xc
    80008af8:	02090863          	beqz	s2,80008b28 <kvmincrease+0x58>
    80008afc:	00000493          	li	s1,0
    80008b00:	00148493          	addi	s1,s1,1
    80008b04:	fffff097          	auipc	ra,0xfffff
    80008b08:	4bc080e7          	jalr	1212(ra) # 80007fc0 <kalloc>
    80008b0c:	fe991ae3          	bne	s2,s1,80008b00 <kvmincrease+0x30>
    80008b10:	01813083          	ld	ra,24(sp)
    80008b14:	01013403          	ld	s0,16(sp)
    80008b18:	00813483          	ld	s1,8(sp)
    80008b1c:	00013903          	ld	s2,0(sp)
    80008b20:	02010113          	addi	sp,sp,32
    80008b24:	00008067          	ret
    80008b28:	01813083          	ld	ra,24(sp)
    80008b2c:	01013403          	ld	s0,16(sp)
    80008b30:	00813483          	ld	s1,8(sp)
    80008b34:	00013903          	ld	s2,0(sp)
    80008b38:	00000513          	li	a0,0
    80008b3c:	02010113          	addi	sp,sp,32
    80008b40:	00008067          	ret
	...
