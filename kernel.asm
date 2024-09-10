
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000b117          	auipc	sp,0xb
    80000004:	52013103          	ld	sp,1312(sp) # 8000b520 <_GLOBAL_OFFSET_TABLE_+0x30>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	5d9050ef          	jal	ra,80005df4 <start>

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
    80001080:	13c010ef          	jal	ra,800021bc <_ZN5Riscv20handleSupervisorTrapEv>


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

0000000080001144 <mem_alloc>:
inline void abi_invoke() {
    __asm__ volatile("ecall");
}

void *mem_alloc(size_t size) {
    if (size == 0) return nullptr;
    80001144:	02050c63          	beqz	a0,8000117c <mem_alloc+0x38>
void *mem_alloc(size_t size) {
    80001148:	fe010113          	addi	sp,sp,-32
    8000114c:	00813c23          	sd	s0,24(sp)
    80001150:	02010413          	addi	s0,sp,32
            );
    return a1;
}

inline void Riscv::w_a1(uint64 val) {
    __asm__ volatile ("mv a1, %[val]": : [val] "r"(val));
    80001154:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %[val]": : [val] "r"(val));
    80001158:	00100793          	li	a5,1
    8000115c:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001160:	00000073          	ecall
    __asm__ volatile ("mv %[val], a0" : [val] "=r"(a0));
    80001164:	00050793          	mv	a5,a0
    80001168:	fef43423          	sd	a5,-24(s0)
    return a0;
    8000116c:	fe843503          	ld	a0,-24(s0)

    abi_invoke();

    void *ret = (void *) Riscv::r_a0();
    return ret;
}
    80001170:	01813403          	ld	s0,24(sp)
    80001174:	02010113          	addi	sp,sp,32
    80001178:	00008067          	ret
    if (size == 0) return nullptr;
    8000117c:	00000513          	li	a0,0
}
    80001180:	00008067          	ret

0000000080001184 <mem_free>:

int mem_free(void *ptr) {
    if (!ptr) { return 0; }
    80001184:	04050063          	beqz	a0,800011c4 <mem_free+0x40>
int mem_free(void *ptr) {
    80001188:	fe010113          	addi	sp,sp,-32
    8000118c:	00813c23          	sd	s0,24(sp)
    80001190:	02010413          	addi	s0,sp,32
    __asm__ volatile ("mv a1, %[val]": : [val] "r"(val));
    80001194:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %[val]": : [val] "r"(val));
    80001198:	00200793          	li	a5,2
    8000119c:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800011a0:	00000073          	ecall
    __asm__ volatile ("mv %[val], a0" : [val] "=r"(a0));
    800011a4:	00050793          	mv	a5,a0
    800011a8:	fef43423          	sd	a5,-24(s0)
    return a0;
    800011ac:	fe843783          	ld	a5,-24(s0)
    Riscv::w_a1((uint64) ptr);
    Riscv::w_a0(MEM_FREE);

    abi_invoke();

    int ret = (Riscv::r_a0() == 0) ? 0 : -1;
    800011b0:	00079e63          	bnez	a5,800011cc <mem_free+0x48>
    800011b4:	00000513          	li	a0,0
    return ret;
}
    800011b8:	01813403          	ld	s0,24(sp)
    800011bc:	02010113          	addi	sp,sp,32
    800011c0:	00008067          	ret
    if (!ptr) { return 0; }
    800011c4:	00000513          	li	a0,0
}
    800011c8:	00008067          	ret
    int ret = (Riscv::r_a0() == 0) ? 0 : -1;
    800011cc:	fff00513          	li	a0,-1
    800011d0:	fe9ff06f          	j	800011b8 <mem_free+0x34>

00000000800011d4 <thread_create>:

int thread_create(thread_t *handle, void(*start_routine)(void *), void *arg) {
    if (!handle) { return 0; }
    800011d4:	08050863          	beqz	a0,80001264 <thread_create+0x90>
int thread_create(thread_t *handle, void(*start_routine)(void *), void *arg) {
    800011d8:	fc010113          	addi	sp,sp,-64
    800011dc:	02113c23          	sd	ra,56(sp)
    800011e0:	02813823          	sd	s0,48(sp)
    800011e4:	02913423          	sd	s1,40(sp)
    800011e8:	03213023          	sd	s2,32(sp)
    800011ec:	01313c23          	sd	s3,24(sp)
    800011f0:	04010413          	addi	s0,sp,64
    800011f4:	00050493          	mv	s1,a0
    800011f8:	00058913          	mv	s2,a1
    800011fc:	00060993          	mv	s3,a2

    uint64 *stack;
    if (start_routine != nullptr)
    80001200:	04058e63          	beqz	a1,8000125c <thread_create+0x88>
        stack = new uint64[TCB::getSTACK_SIZE()];
    80001204:	00008537          	lui	a0,0x8
    80001208:	00001097          	auipc	ra,0x1
    8000120c:	c04080e7          	jalr	-1020(ra) # 80001e0c <_Znam>
            );
    return a4;
}

inline void Riscv::w_a4(uint64 val) {
    __asm__ volatile ("mv a4, %[val]": : [val] "r"(val));
    80001210:	00050713          	mv	a4,a0
    __asm__ volatile ("mv a3, %[val]": : [val] "r"(val));
    80001214:	00098693          	mv	a3,s3
    __asm__ volatile ("mv a2, %[val]": : [val] "r"(val));
    80001218:	00090613          	mv	a2,s2
    __asm__ volatile ("mv a1, %[val]": : [val] "r"(val));
    8000121c:	00048593          	mv	a1,s1
    __asm__ volatile ("mv a0, %[val]": : [val] "r"(val));
    80001220:	01100793          	li	a5,17
    80001224:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001228:	00000073          	ecall
    __asm__ volatile ("mv %[val], a0" : [val] "=r"(a0));
    8000122c:	00050793          	mv	a5,a0
    80001230:	fcf43423          	sd	a5,-56(s0)
    return a0;
    80001234:	fc843783          	ld	a5,-56(s0)
    Riscv::w_a1((uint64) handle);
    Riscv::w_a0(THREAD_CREATE);

    abi_invoke();

    int ret = (Riscv::r_a0() == 0) ? 0 : -1;
    80001238:	02079a63          	bnez	a5,8000126c <thread_create+0x98>
    8000123c:	00000513          	li	a0,0
    return ret;
}
    80001240:	03813083          	ld	ra,56(sp)
    80001244:	03013403          	ld	s0,48(sp)
    80001248:	02813483          	ld	s1,40(sp)
    8000124c:	02013903          	ld	s2,32(sp)
    80001250:	01813983          	ld	s3,24(sp)
    80001254:	04010113          	addi	sp,sp,64
    80001258:	00008067          	ret
    else stack = nullptr;
    8000125c:	00000513          	li	a0,0
    80001260:	fb1ff06f          	j	80001210 <thread_create+0x3c>
    if (!handle) { return 0; }
    80001264:	00000513          	li	a0,0
}
    80001268:	00008067          	ret
    int ret = (Riscv::r_a0() == 0) ? 0 : -1;
    8000126c:	fff00513          	li	a0,-1
    80001270:	fd1ff06f          	j	80001240 <thread_create+0x6c>

0000000080001274 <thread_dispatch>:

void thread_dispatch() {
    80001274:	ff010113          	addi	sp,sp,-16
    80001278:	00813423          	sd	s0,8(sp)
    8000127c:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a0, %[val]": : [val] "r"(val));
    80001280:	01300793          	li	a5,19
    80001284:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001288:	00000073          	ecall

    Riscv::w_a0(THREAD_DISPATCH);

    abi_invoke();
}
    8000128c:	00813403          	ld	s0,8(sp)
    80001290:	01010113          	addi	sp,sp,16
    80001294:	00008067          	ret

0000000080001298 <thread_exit>:

int thread_exit() {
    80001298:	fe010113          	addi	sp,sp,-32
    8000129c:	00813c23          	sd	s0,24(sp)
    800012a0:	02010413          	addi	s0,sp,32
    800012a4:	01200793          	li	a5,18
    800012a8:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800012ac:	00000073          	ecall
    __asm__ volatile ("mv %[val], a0" : [val] "=r"(a0));
    800012b0:	00050793          	mv	a5,a0
    800012b4:	fef43023          	sd	a5,-32(s0)
    return a0;
    800012b8:	fe043783          	ld	a5,-32(s0)

    Riscv::w_a0(THREAD_EXIT);

    abi_invoke();

    uint64 volatile ret = Riscv::r_a0();
    800012bc:	fef43423          	sd	a5,-24(s0)
    return (int) ret;
    800012c0:	fe843503          	ld	a0,-24(s0)
}
    800012c4:	0005051b          	sext.w	a0,a0
    800012c8:	01813403          	ld	s0,24(sp)
    800012cc:	02010113          	addi	sp,sp,32
    800012d0:	00008067          	ret

00000000800012d4 <sem_open>:

int sem_open(sem_t *handle, unsigned init) {
    if (!handle) { return 0; }
    800012d4:	04050863          	beqz	a0,80001324 <sem_open+0x50>
int sem_open(sem_t *handle, unsigned init) {
    800012d8:	fe010113          	addi	sp,sp,-32
    800012dc:	00813c23          	sd	s0,24(sp)
    800012e0:	02010413          	addi	s0,sp,32

    Riscv::w_a2((uint64) init);
    800012e4:	02059593          	slli	a1,a1,0x20
    800012e8:	0205d593          	srli	a1,a1,0x20
    __asm__ volatile ("mv a2, %[val]": : [val] "r"(val));
    800012ec:	00058613          	mv	a2,a1
    __asm__ volatile ("mv a1, %[val]": : [val] "r"(val));
    800012f0:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %[val]": : [val] "r"(val));
    800012f4:	02100793          	li	a5,33
    800012f8:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800012fc:	00000073          	ecall
    __asm__ volatile ("mv %[val], a0" : [val] "=r"(a0));
    80001300:	00050793          	mv	a5,a0
    80001304:	fef43023          	sd	a5,-32(s0)
    return a0;
    80001308:	fe043783          	ld	a5,-32(s0)
    Riscv::w_a1((uint64) handle);
    Riscv::w_a0(SEM_OPEN);

    abi_invoke();

    uint64 volatile ret = Riscv::r_a0();
    8000130c:	fef43423          	sd	a5,-24(s0)
    //  printStr("Kreiran sem\n");

    return (int) ret;
    80001310:	fe843503          	ld	a0,-24(s0)
    80001314:	0005051b          	sext.w	a0,a0
}
    80001318:	01813403          	ld	s0,24(sp)
    8000131c:	02010113          	addi	sp,sp,32
    80001320:	00008067          	ret
    if (!handle) { return 0; }
    80001324:	00000513          	li	a0,0
}
    80001328:	00008067          	ret

000000008000132c <sem_close>:

int sem_close(sem_t handle) {
    if (!handle) { return 0; }
    8000132c:	04050263          	beqz	a0,80001370 <sem_close+0x44>
int sem_close(sem_t handle) {
    80001330:	fe010113          	addi	sp,sp,-32
    80001334:	00813c23          	sd	s0,24(sp)
    80001338:	02010413          	addi	s0,sp,32
    __asm__ volatile ("mv a1, %[val]": : [val] "r"(val));
    8000133c:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %[val]": : [val] "r"(val));
    80001340:	02200793          	li	a5,34
    80001344:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001348:	00000073          	ecall
    __asm__ volatile ("mv %[val], a0" : [val] "=r"(a0));
    8000134c:	00050793          	mv	a5,a0
    80001350:	fef43023          	sd	a5,-32(s0)
    return a0;
    80001354:	fe043783          	ld	a5,-32(s0)
    Riscv::w_a1((uint64) handle);
    Riscv::w_a0(SEM_CLOSE);

    abi_invoke();

    uint64 volatile ret = Riscv::r_a0();
    80001358:	fef43423          	sd	a5,-24(s0)
    // printStr("Zatvoren sem\n");
    return (int) ret;
    8000135c:	fe843503          	ld	a0,-24(s0)
    80001360:	0005051b          	sext.w	a0,a0
}
    80001364:	01813403          	ld	s0,24(sp)
    80001368:	02010113          	addi	sp,sp,32
    8000136c:	00008067          	ret
    if (!handle) { return 0; }
    80001370:	00000513          	li	a0,0
}
    80001374:	00008067          	ret

0000000080001378 <sem_wait>:

int sem_wait(sem_t id) {
    if (!id) { return 0; }
    80001378:	04050263          	beqz	a0,800013bc <sem_wait+0x44>
int sem_wait(sem_t id) {
    8000137c:	fe010113          	addi	sp,sp,-32
    80001380:	00813c23          	sd	s0,24(sp)
    80001384:	02010413          	addi	s0,sp,32
    __asm__ volatile ("mv a1, %[val]": : [val] "r"(val));
    80001388:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %[val]": : [val] "r"(val));
    8000138c:	02300793          	li	a5,35
    80001390:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001394:	00000073          	ecall
    __asm__ volatile ("mv %[val], a0" : [val] "=r"(a0));
    80001398:	00050793          	mv	a5,a0
    8000139c:	fef43023          	sd	a5,-32(s0)
    return a0;
    800013a0:	fe043783          	ld	a5,-32(s0)
    Riscv::w_a1((uint64) id);
    Riscv::w_a0(SEM_WAIT);

    abi_invoke();

    uint64 volatile ret = Riscv::r_a0();
    800013a4:	fef43423          	sd	a5,-24(s0)
    //printStr("wait sem\n");
    return (int) ret;
    800013a8:	fe843503          	ld	a0,-24(s0)
    800013ac:	0005051b          	sext.w	a0,a0

}
    800013b0:	01813403          	ld	s0,24(sp)
    800013b4:	02010113          	addi	sp,sp,32
    800013b8:	00008067          	ret
    if (!id) { return 0; }
    800013bc:	00000513          	li	a0,0
}
    800013c0:	00008067          	ret

00000000800013c4 <sem_signal>:

int sem_signal(sem_t id) {
    if (!id) { return 0; }
    800013c4:	04050263          	beqz	a0,80001408 <sem_signal+0x44>
int sem_signal(sem_t id) {
    800013c8:	fe010113          	addi	sp,sp,-32
    800013cc:	00813c23          	sd	s0,24(sp)
    800013d0:	02010413          	addi	s0,sp,32
    __asm__ volatile ("mv a1, %[val]": : [val] "r"(val));
    800013d4:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %[val]": : [val] "r"(val));
    800013d8:	02400793          	li	a5,36
    800013dc:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800013e0:	00000073          	ecall
    __asm__ volatile ("mv %[val], a0" : [val] "=r"(a0));
    800013e4:	00050793          	mv	a5,a0
    800013e8:	fef43023          	sd	a5,-32(s0)
    return a0;
    800013ec:	fe043783          	ld	a5,-32(s0)
    Riscv::w_a1((uint64) id);
    Riscv::w_a0(SEM_SIGNAL);

    abi_invoke();

    uint64 volatile ret = Riscv::r_a0();
    800013f0:	fef43423          	sd	a5,-24(s0)
    //   printStr("signal sem\n");
    return (int) ret;
    800013f4:	fe843503          	ld	a0,-24(s0)
    800013f8:	0005051b          	sext.w	a0,a0
}
    800013fc:	01813403          	ld	s0,24(sp)
    80001400:	02010113          	addi	sp,sp,32
    80001404:	00008067          	ret
    if (!id) { return 0; }
    80001408:	00000513          	li	a0,0
}
    8000140c:	00008067          	ret

0000000080001410 <changeSysRegime>:

void changeSysRegime() {
    80001410:	ff010113          	addi	sp,sp,-16
    80001414:	00813423          	sd	s0,8(sp)
    80001418:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a0, %[val]": : [val] "r"(val));
    8000141c:	00500793          	li	a5,5
    80001420:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001424:	00000073          	ecall

    Riscv::w_a0(CHANGEREGIME);

    abi_invoke();
}
    80001428:	00813403          	ld	s0,8(sp)
    8000142c:	01010113          	addi	sp,sp,16
    80001430:	00008067          	ret

0000000080001434 <putc>:

void putc(char c) {
    80001434:	ff010113          	addi	sp,sp,-16
    80001438:	00813423          	sd	s0,8(sp)
    8000143c:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %[val]": : [val] "r"(val));
    80001440:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %[val]": : [val] "r"(val));
    80001444:	04200793          	li	a5,66
    80001448:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    8000144c:	00000073          	ecall
    Riscv::w_a1((uint64) c);
    Riscv::w_a0(PUTC);

    abi_invoke();
}
    80001450:	00813403          	ld	s0,8(sp)
    80001454:	01010113          	addi	sp,sp,16
    80001458:	00008067          	ret

000000008000145c <getc>:

char getc() {
    8000145c:	fe010113          	addi	sp,sp,-32
    80001460:	00813c23          	sd	s0,24(sp)
    80001464:	02010413          	addi	s0,sp,32
    80001468:	04100793          	li	a5,65
    8000146c:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001470:	00000073          	ecall
    __asm__ volatile ("mv %[val], a0" : [val] "=r"(a0));
    80001474:	00050793          	mv	a5,a0
    80001478:	fef43023          	sd	a5,-32(s0)
    return a0;
    8000147c:	fe043783          	ld	a5,-32(s0)
    Riscv::w_a0(GETC);

    abi_invoke();

    uint64 volatile ret = Riscv::r_a0();
    80001480:	fef43423          	sd	a5,-24(s0)
    return (char) ret;
    80001484:	fe843503          	ld	a0,-24(s0)
}
    80001488:	0ff57513          	andi	a0,a0,255
    8000148c:	01813403          	ld	s0,24(sp)
    80001490:	02010113          	addi	sp,sp,32
    80001494:	00008067          	ret

0000000080001498 <sem_trywait>:





int sem_trywait(sem_t id) {
    80001498:	ff010113          	addi	sp,sp,-16
    8000149c:	00813423          	sd	s0,8(sp)
    800014a0:	01010413          	addi	s0,sp,16
    return 0;
}
    800014a4:	00000513          	li	a0,0
    800014a8:	00813403          	ld	s0,8(sp)
    800014ac:	01010113          	addi	sp,sp,16
    800014b0:	00008067          	ret

00000000800014b4 <time_sleep>:

int time_sleep(time_t) {
    800014b4:	ff010113          	addi	sp,sp,-16
    800014b8:	00813423          	sd	s0,8(sp)
    800014bc:	01010413          	addi	s0,sp,16
    return 0;
}
    800014c0:	00000513          	li	a0,0
    800014c4:	00813403          	ld	s0,8(sp)
    800014c8:	01010113          	addi	sp,sp,16
    800014cc:	00008067          	ret

00000000800014d0 <sem_timedwait>:

int sem_timedwait(
        sem_t id,
        time_t timeout
    800014d0:	ff010113          	addi	sp,sp,-16
    800014d4:	00813423          	sd	s0,8(sp)
    800014d8:	01010413          	addi	s0,sp,16
    800014dc:	00000513          	li	a0,0
    800014e0:	00813403          	ld	s0,8(sp)
    800014e4:	01010113          	addi	sp,sp,16
    800014e8:	00008067          	ret

00000000800014ec <_ZL9fibonaccim>:
        }
    }
}

static uint64 fibonacci(uint64 n)
{
    800014ec:	fe010113          	addi	sp,sp,-32
    800014f0:	00113c23          	sd	ra,24(sp)
    800014f4:	00813823          	sd	s0,16(sp)
    800014f8:	00913423          	sd	s1,8(sp)
    800014fc:	01213023          	sd	s2,0(sp)
    80001500:	02010413          	addi	s0,sp,32
    80001504:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80001508:	00100793          	li	a5,1
    8000150c:	02a7f863          	bgeu	a5,a0,8000153c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80001510:	00a00793          	li	a5,10
    80001514:	02f577b3          	remu	a5,a0,a5
    80001518:	02078e63          	beqz	a5,80001554 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    8000151c:	fff48513          	addi	a0,s1,-1
    80001520:	00000097          	auipc	ra,0x0
    80001524:	fcc080e7          	jalr	-52(ra) # 800014ec <_ZL9fibonaccim>
    80001528:	00050913          	mv	s2,a0
    8000152c:	ffe48513          	addi	a0,s1,-2
    80001530:	00000097          	auipc	ra,0x0
    80001534:	fbc080e7          	jalr	-68(ra) # 800014ec <_ZL9fibonaccim>
    80001538:	00a90533          	add	a0,s2,a0
}
    8000153c:	01813083          	ld	ra,24(sp)
    80001540:	01013403          	ld	s0,16(sp)
    80001544:	00813483          	ld	s1,8(sp)
    80001548:	00013903          	ld	s2,0(sp)
    8000154c:	02010113          	addi	sp,sp,32
    80001550:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80001554:	00000097          	auipc	ra,0x0
    80001558:	d20080e7          	jalr	-736(ra) # 80001274 <thread_dispatch>
    8000155c:	fc1ff06f          	j	8000151c <_ZL9fibonaccim+0x30>

0000000080001560 <_Z11workerBodyAPv>:
{
    80001560:	fe010113          	addi	sp,sp,-32
    80001564:	00113c23          	sd	ra,24(sp)
    80001568:	00813823          	sd	s0,16(sp)
    8000156c:	00913423          	sd	s1,8(sp)
    80001570:	01213023          	sd	s2,0(sp)
    80001574:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++)
    80001578:	00000913          	li	s2,0
    8000157c:	0380006f          	j	800015b4 <_Z11workerBodyAPv+0x54>
            thread_dispatch();
    80001580:	00000097          	auipc	ra,0x0
    80001584:	cf4080e7          	jalr	-780(ra) # 80001274 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++)
    80001588:	00148493          	addi	s1,s1,1
    8000158c:	000027b7          	lui	a5,0x2
    80001590:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001594:	0097ee63          	bltu	a5,s1,800015b0 <_Z11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++)
    80001598:	00000713          	li	a4,0
    8000159c:	000077b7          	lui	a5,0x7
    800015a0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800015a4:	fce7eee3          	bltu	a5,a4,80001580 <_Z11workerBodyAPv+0x20>
    800015a8:	00170713          	addi	a4,a4,1
    800015ac:	ff1ff06f          	j	8000159c <_Z11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++)
    800015b0:	00190913          	addi	s2,s2,1
    800015b4:	00900793          	li	a5,9
    800015b8:	0327ec63          	bltu	a5,s2,800015f0 <_Z11workerBodyAPv+0x90>
        printString("A: i=");
    800015bc:	00008517          	auipc	a0,0x8
    800015c0:	a6450513          	addi	a0,a0,-1436 # 80009020 <CONSOLE_STATUS+0x10>
    800015c4:	00003097          	auipc	ra,0x3
    800015c8:	718080e7          	jalr	1816(ra) # 80004cdc <_Z11printStringPKc>
        printInt(i);
    800015cc:	00090513          	mv	a0,s2
    800015d0:	00002097          	auipc	ra,0x2
    800015d4:	880080e7          	jalr	-1920(ra) # 80002e50 <printInt>
        printString("\n");
    800015d8:	00008517          	auipc	a0,0x8
    800015dc:	01850513          	addi	a0,a0,24 # 800095f0 <CONSOLE_STATUS+0x5e0>
    800015e0:	00003097          	auipc	ra,0x3
    800015e4:	6fc080e7          	jalr	1788(ra) # 80004cdc <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    800015e8:	00000493          	li	s1,0
    800015ec:	fa1ff06f          	j	8000158c <_Z11workerBodyAPv+0x2c>
}
    800015f0:	01813083          	ld	ra,24(sp)
    800015f4:	01013403          	ld	s0,16(sp)
    800015f8:	00813483          	ld	s1,8(sp)
    800015fc:	00013903          	ld	s2,0(sp)
    80001600:	02010113          	addi	sp,sp,32
    80001604:	00008067          	ret

0000000080001608 <_Z11workerBodyBPv>:
{
    80001608:	fe010113          	addi	sp,sp,-32
    8000160c:	00113c23          	sd	ra,24(sp)
    80001610:	00813823          	sd	s0,16(sp)
    80001614:	00913423          	sd	s1,8(sp)
    80001618:	01213023          	sd	s2,0(sp)
    8000161c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++)
    80001620:	00000913          	li	s2,0
    80001624:	0380006f          	j	8000165c <_Z11workerBodyBPv+0x54>
            thread_dispatch();
    80001628:	00000097          	auipc	ra,0x0
    8000162c:	c4c080e7          	jalr	-948(ra) # 80001274 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++)
    80001630:	00148493          	addi	s1,s1,1
    80001634:	000027b7          	lui	a5,0x2
    80001638:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000163c:	0097ee63          	bltu	a5,s1,80001658 <_Z11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++)
    80001640:	00000713          	li	a4,0
    80001644:	000077b7          	lui	a5,0x7
    80001648:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000164c:	fce7eee3          	bltu	a5,a4,80001628 <_Z11workerBodyBPv+0x20>
    80001650:	00170713          	addi	a4,a4,1
    80001654:	ff1ff06f          	j	80001644 <_Z11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++)
    80001658:	00190913          	addi	s2,s2,1
    8000165c:	00f00793          	li	a5,15
    80001660:	0327ec63          	bltu	a5,s2,80001698 <_Z11workerBodyBPv+0x90>
        printString("B: i=");
    80001664:	00008517          	auipc	a0,0x8
    80001668:	9c450513          	addi	a0,a0,-1596 # 80009028 <CONSOLE_STATUS+0x18>
    8000166c:	00003097          	auipc	ra,0x3
    80001670:	670080e7          	jalr	1648(ra) # 80004cdc <_Z11printStringPKc>
        printInt(i);
    80001674:	00090513          	mv	a0,s2
    80001678:	00001097          	auipc	ra,0x1
    8000167c:	7d8080e7          	jalr	2008(ra) # 80002e50 <printInt>
        printString("\n");
    80001680:	00008517          	auipc	a0,0x8
    80001684:	f7050513          	addi	a0,a0,-144 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80001688:	00003097          	auipc	ra,0x3
    8000168c:	654080e7          	jalr	1620(ra) # 80004cdc <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    80001690:	00000493          	li	s1,0
    80001694:	fa1ff06f          	j	80001634 <_Z11workerBodyBPv+0x2c>
}
    80001698:	01813083          	ld	ra,24(sp)
    8000169c:	01013403          	ld	s0,16(sp)
    800016a0:	00813483          	ld	s1,8(sp)
    800016a4:	00013903          	ld	s2,0(sp)
    800016a8:	02010113          	addi	sp,sp,32
    800016ac:	00008067          	ret

00000000800016b0 <_Z11workerBodyCPv>:

void workerBodyC(void* arg)
{
    800016b0:	fe010113          	addi	sp,sp,-32
    800016b4:	00113c23          	sd	ra,24(sp)
    800016b8:	00813823          	sd	s0,16(sp)
    800016bc:	00913423          	sd	s1,8(sp)
    800016c0:	01213023          	sd	s2,0(sp)
    800016c4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800016c8:	00000493          	li	s1,0
    800016cc:	0400006f          	j	8000170c <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++)
    {
        printString("C: i=");
    800016d0:	00008517          	auipc	a0,0x8
    800016d4:	96050513          	addi	a0,a0,-1696 # 80009030 <CONSOLE_STATUS+0x20>
    800016d8:	00003097          	auipc	ra,0x3
    800016dc:	604080e7          	jalr	1540(ra) # 80004cdc <_Z11printStringPKc>
        printInt(i);
    800016e0:	00000613          	li	a2,0
    800016e4:	00a00593          	li	a1,10
    800016e8:	00048513          	mv	a0,s1
    800016ec:	00003097          	auipc	ra,0x3
    800016f0:	7a0080e7          	jalr	1952(ra) # 80004e8c <_Z8printIntiii>
        printString("\n");
    800016f4:	00008517          	auipc	a0,0x8
    800016f8:	efc50513          	addi	a0,a0,-260 # 800095f0 <CONSOLE_STATUS+0x5e0>
    800016fc:	00003097          	auipc	ra,0x3
    80001700:	5e0080e7          	jalr	1504(ra) # 80004cdc <_Z11printStringPKc>
    for (; i < 3; i++)
    80001704:	0014849b          	addiw	s1,s1,1
    80001708:	0ff4f493          	andi	s1,s1,255
    8000170c:	00200793          	li	a5,2
    80001710:	fc97f0e3          	bgeu	a5,s1,800016d0 <_Z11workerBodyCPv+0x20>
    }

    printString("C: yield\n");
    80001714:	00008517          	auipc	a0,0x8
    80001718:	92450513          	addi	a0,a0,-1756 # 80009038 <CONSOLE_STATUS+0x28>
    8000171c:	00003097          	auipc	ra,0x3
    80001720:	5c0080e7          	jalr	1472(ra) # 80004cdc <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80001724:	00700313          	li	t1,7
    thread_dispatch();
    80001728:	00000097          	auipc	ra,0x0
    8000172c:	b4c080e7          	jalr	-1204(ra) # 80001274 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80001730:	00030913          	mv	s2,t1

    printString("C: t1=");
    80001734:	00008517          	auipc	a0,0x8
    80001738:	91450513          	addi	a0,a0,-1772 # 80009048 <CONSOLE_STATUS+0x38>
    8000173c:	00003097          	auipc	ra,0x3
    80001740:	5a0080e7          	jalr	1440(ra) # 80004cdc <_Z11printStringPKc>
    printInt(t1);
    80001744:	00090513          	mv	a0,s2
    80001748:	00001097          	auipc	ra,0x1
    8000174c:	708080e7          	jalr	1800(ra) # 80002e50 <printInt>
    printString("\n");
    80001750:	00008517          	auipc	a0,0x8
    80001754:	ea050513          	addi	a0,a0,-352 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80001758:	00003097          	auipc	ra,0x3
    8000175c:	584080e7          	jalr	1412(ra) # 80004cdc <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80001760:	00c00513          	li	a0,12
    80001764:	00000097          	auipc	ra,0x0
    80001768:	d88080e7          	jalr	-632(ra) # 800014ec <_ZL9fibonaccim>
    8000176c:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    80001770:	00008517          	auipc	a0,0x8
    80001774:	8e050513          	addi	a0,a0,-1824 # 80009050 <CONSOLE_STATUS+0x40>
    80001778:	00003097          	auipc	ra,0x3
    8000177c:	564080e7          	jalr	1380(ra) # 80004cdc <_Z11printStringPKc>
    printInt(result);
    80001780:	00090513          	mv	a0,s2
    80001784:	00001097          	auipc	ra,0x1
    80001788:	6cc080e7          	jalr	1740(ra) # 80002e50 <printInt>
    printString("\n");
    8000178c:	00008517          	auipc	a0,0x8
    80001790:	e6450513          	addi	a0,a0,-412 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80001794:	00003097          	auipc	ra,0x3
    80001798:	548080e7          	jalr	1352(ra) # 80004cdc <_Z11printStringPKc>
    8000179c:	0400006f          	j	800017dc <_Z11workerBodyCPv+0x12c>

    for (; i < 6; i++)
    {
        printString("C: i=");
    800017a0:	00008517          	auipc	a0,0x8
    800017a4:	89050513          	addi	a0,a0,-1904 # 80009030 <CONSOLE_STATUS+0x20>
    800017a8:	00003097          	auipc	ra,0x3
    800017ac:	534080e7          	jalr	1332(ra) # 80004cdc <_Z11printStringPKc>
        printInt(i);
    800017b0:	00000613          	li	a2,0
    800017b4:	00a00593          	li	a1,10
    800017b8:	00048513          	mv	a0,s1
    800017bc:	00003097          	auipc	ra,0x3
    800017c0:	6d0080e7          	jalr	1744(ra) # 80004e8c <_Z8printIntiii>
        printString("\n");
    800017c4:	00008517          	auipc	a0,0x8
    800017c8:	e2c50513          	addi	a0,a0,-468 # 800095f0 <CONSOLE_STATUS+0x5e0>
    800017cc:	00003097          	auipc	ra,0x3
    800017d0:	510080e7          	jalr	1296(ra) # 80004cdc <_Z11printStringPKc>
    for (; i < 6; i++)
    800017d4:	0014849b          	addiw	s1,s1,1
    800017d8:	0ff4f493          	andi	s1,s1,255
    800017dc:	00500793          	li	a5,5
    800017e0:	fc97f0e3          	bgeu	a5,s1,800017a0 <_Z11workerBodyCPv+0xf0>
    }
    thread_dispatch();//
    800017e4:	00000097          	auipc	ra,0x0
    800017e8:	a90080e7          	jalr	-1392(ra) # 80001274 <thread_dispatch>
}
    800017ec:	01813083          	ld	ra,24(sp)
    800017f0:	01013403          	ld	s0,16(sp)
    800017f4:	00813483          	ld	s1,8(sp)
    800017f8:	00013903          	ld	s2,0(sp)
    800017fc:	02010113          	addi	sp,sp,32
    80001800:	00008067          	ret

0000000080001804 <_Z11workerBodyDPv>:

void workerBodyD(void* arg)
{
    80001804:	fe010113          	addi	sp,sp,-32
    80001808:	00113c23          	sd	ra,24(sp)
    8000180c:	00813823          	sd	s0,16(sp)
    80001810:	00913423          	sd	s1,8(sp)
    80001814:	01213023          	sd	s2,0(sp)
    80001818:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000181c:	00a00493          	li	s1,10
    80001820:	0400006f          	j	80001860 <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++)
    {
        printString("D: i=");
    80001824:	00008517          	auipc	a0,0x8
    80001828:	83c50513          	addi	a0,a0,-1988 # 80009060 <CONSOLE_STATUS+0x50>
    8000182c:	00003097          	auipc	ra,0x3
    80001830:	4b0080e7          	jalr	1200(ra) # 80004cdc <_Z11printStringPKc>
        printInt(i);
    80001834:	00000613          	li	a2,0
    80001838:	00a00593          	li	a1,10
    8000183c:	00048513          	mv	a0,s1
    80001840:	00003097          	auipc	ra,0x3
    80001844:	64c080e7          	jalr	1612(ra) # 80004e8c <_Z8printIntiii>
        printString("\n");
    80001848:	00008517          	auipc	a0,0x8
    8000184c:	da850513          	addi	a0,a0,-600 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80001850:	00003097          	auipc	ra,0x3
    80001854:	48c080e7          	jalr	1164(ra) # 80004cdc <_Z11printStringPKc>
    for (; i < 13; i++)
    80001858:	0014849b          	addiw	s1,s1,1
    8000185c:	0ff4f493          	andi	s1,s1,255
    80001860:	00c00793          	li	a5,12
    80001864:	fc97f0e3          	bgeu	a5,s1,80001824 <_Z11workerBodyDPv+0x20>
    }

    printString("D: yield\n");
    80001868:	00008517          	auipc	a0,0x8
    8000186c:	80050513          	addi	a0,a0,-2048 # 80009068 <CONSOLE_STATUS+0x58>
    80001870:	00003097          	auipc	ra,0x3
    80001874:	46c080e7          	jalr	1132(ra) # 80004cdc <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001878:	00500313          	li	t1,5
    thread_dispatch();
    8000187c:	00000097          	auipc	ra,0x0
    80001880:	9f8080e7          	jalr	-1544(ra) # 80001274 <thread_dispatch>

    uint64 result = fibonacci(16);
    80001884:	01000513          	li	a0,16
    80001888:	00000097          	auipc	ra,0x0
    8000188c:	c64080e7          	jalr	-924(ra) # 800014ec <_ZL9fibonaccim>
    80001890:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    80001894:	00007517          	auipc	a0,0x7
    80001898:	7e450513          	addi	a0,a0,2020 # 80009078 <CONSOLE_STATUS+0x68>
    8000189c:	00003097          	auipc	ra,0x3
    800018a0:	440080e7          	jalr	1088(ra) # 80004cdc <_Z11printStringPKc>
    printInt(result);
    800018a4:	00090513          	mv	a0,s2
    800018a8:	00001097          	auipc	ra,0x1
    800018ac:	5a8080e7          	jalr	1448(ra) # 80002e50 <printInt>
    printString("\n");
    800018b0:	00008517          	auipc	a0,0x8
    800018b4:	d4050513          	addi	a0,a0,-704 # 800095f0 <CONSOLE_STATUS+0x5e0>
    800018b8:	00003097          	auipc	ra,0x3
    800018bc:	424080e7          	jalr	1060(ra) # 80004cdc <_Z11printStringPKc>
    800018c0:	0400006f          	j	80001900 <_Z11workerBodyDPv+0xfc>

    for (; i < 16; i++)
    {
        printString("D: i=");
    800018c4:	00007517          	auipc	a0,0x7
    800018c8:	79c50513          	addi	a0,a0,1948 # 80009060 <CONSOLE_STATUS+0x50>
    800018cc:	00003097          	auipc	ra,0x3
    800018d0:	410080e7          	jalr	1040(ra) # 80004cdc <_Z11printStringPKc>
        printInt(i);
    800018d4:	00000613          	li	a2,0
    800018d8:	00a00593          	li	a1,10
    800018dc:	00048513          	mv	a0,s1
    800018e0:	00003097          	auipc	ra,0x3
    800018e4:	5ac080e7          	jalr	1452(ra) # 80004e8c <_Z8printIntiii>
        printString("\n");
    800018e8:	00008517          	auipc	a0,0x8
    800018ec:	d0850513          	addi	a0,a0,-760 # 800095f0 <CONSOLE_STATUS+0x5e0>
    800018f0:	00003097          	auipc	ra,0x3
    800018f4:	3ec080e7          	jalr	1004(ra) # 80004cdc <_Z11printStringPKc>
    for (; i < 16; i++)
    800018f8:	0014849b          	addiw	s1,s1,1
    800018fc:	0ff4f493          	andi	s1,s1,255
    80001900:	00f00793          	li	a5,15
    80001904:	fc97f0e3          	bgeu	a5,s1,800018c4 <_Z11workerBodyDPv+0xc0>
    }
    thread_dispatch();//
    80001908:	00000097          	auipc	ra,0x0
    8000190c:	96c080e7          	jalr	-1684(ra) # 80001274 <thread_dispatch>
    80001910:	01813083          	ld	ra,24(sp)
    80001914:	01013403          	ld	s0,16(sp)
    80001918:	00813483          	ld	s1,8(sp)
    8000191c:	00013903          	ld	s2,0(sp)
    80001920:	02010113          	addi	sp,sp,32
    80001924:	00008067          	ret

0000000080001928 <_Z8userFuncPv>:

#include "syscall_cpp.hpp"

extern void userMain();

void userFunc(void *a) {
    80001928:	fe010113          	addi	sp,sp,-32
    8000192c:	00113c23          	sd	ra,24(sp)
    80001930:	00813823          	sd	s0,16(sp)
    80001934:	00913423          	sd	s1,8(sp)
    80001938:	02010413          	addi	s0,sp,32
    8000193c:	00050493          	mv	s1,a0

    Semaphore *sem = (Semaphore *) a;
    userMain();
    80001940:	00004097          	auipc	ra,0x4
    80001944:	a64080e7          	jalr	-1436(ra) # 800053a4 <_Z8userMainv>
    sem->signal();
    80001948:	00048513          	mv	a0,s1
    8000194c:	00000097          	auipc	ra,0x0
    80001950:	714080e7          	jalr	1812(ra) # 80002060 <_ZN9Semaphore6signalEv>
}
    80001954:	01813083          	ld	ra,24(sp)
    80001958:	01013403          	ld	s0,16(sp)
    8000195c:	00813483          	ld	s1,8(sp)
    80001960:	02010113          	addi	sp,sp,32
    80001964:	00008067          	ret

0000000080001968 <main>:
#include "../h/tcb.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_cpp.hpp"
//#include "../h/MemoryAllocator.hpp"

int main() {
    80001968:	fe010113          	addi	sp,sp,-32
    8000196c:	00113c23          	sd	ra,24(sp)
    80001970:	00813823          	sd	s0,16(sp)
    80001974:	00913423          	sd	s1,8(sp)
    80001978:	01213023          	sd	s2,0(sp)
    8000197c:	02010413          	addi	s0,sp,32

    //MemoryAllocator::initialize();

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80001980:	0000a797          	auipc	a5,0xa
    80001984:	b807b783          	ld	a5,-1152(a5) # 8000b500 <_GLOBAL_OFFSET_TABLE_+0x10>
    __asm__ volatile ("csrr %[stvec], stvec" : [stvec] "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001988:	10579073          	csrw	stvec,a5
    //Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    Scheduler::idle = TCB::createThread(Scheduler::idleFunc, nullptr, new uint64[DEFAULT_STACK_SIZE]);
    8000198c:	00008537          	lui	a0,0x8
    80001990:	00000097          	auipc	ra,0x0
    80001994:	47c080e7          	jalr	1148(ra) # 80001e0c <_Znam>
    80001998:	00050613          	mv	a2,a0
    8000199c:	00000593          	li	a1,0
    800019a0:	0000a517          	auipc	a0,0xa
    800019a4:	b7853503          	ld	a0,-1160(a0) # 8000b518 <_GLOBAL_OFFSET_TABLE_+0x28>
    800019a8:	00000097          	auipc	ra,0x0
    800019ac:	1cc080e7          	jalr	460(ra) # 80001b74 <_ZN3TCB12createThreadEPFvPvES0_S0_>
    800019b0:	0000a797          	auipc	a5,0xa
    800019b4:	b787b783          	ld	a5,-1160(a5) # 8000b528 <_GLOBAL_OFFSET_TABLE_+0x38>
    800019b8:	00a7b023          	sd	a0,0(a5)
    //(uint64 *) mem_alloc(sizeof(uint64) * DEFAULT_STACK_SIZE));
    TCB::maintcb = TCB::createThread(nullptr, nullptr, nullptr);
    800019bc:	00000613          	li	a2,0
    800019c0:	00000593          	li	a1,0
    800019c4:	00000513          	li	a0,0
    800019c8:	00000097          	auipc	ra,0x0
    800019cc:	1ac080e7          	jalr	428(ra) # 80001b74 <_ZN3TCB12createThreadEPFvPvES0_S0_>
    800019d0:	0000a797          	auipc	a5,0xa
    800019d4:	b407b783          	ld	a5,-1216(a5) # 8000b510 <_GLOBAL_OFFSET_TABLE_+0x20>
    800019d8:	00a7b023          	sd	a0,0(a5)
    TCB::running = TCB::maintcb;
    800019dc:	0000a797          	auipc	a5,0xa
    800019e0:	b547b783          	ld	a5,-1196(a5) # 8000b530 <_GLOBAL_OFFSET_TABLE_+0x40>
    800019e4:	00a7b023          	sd	a0,0(a5)
    changeSysRegime();
    800019e8:	00000097          	auipc	ra,0x0
    800019ec:	a28080e7          	jalr	-1496(ra) # 80001410 <changeSysRegime>

    printString("\nstart ok\n");
    800019f0:	00007517          	auipc	a0,0x7
    800019f4:	69850513          	addi	a0,a0,1688 # 80009088 <CONSOLE_STATUS+0x78>
    800019f8:	00003097          	auipc	ra,0x3
    800019fc:	2e4080e7          	jalr	740(ra) # 80004cdc <_Z11printStringPKc>

    Semaphore *sem = new Semaphore(0);
    80001a00:	01800513          	li	a0,24
    80001a04:	00000097          	auipc	ra,0x0
    80001a08:	3e0080e7          	jalr	992(ra) # 80001de4 <_Znwm>
    80001a0c:	00050913          	mv	s2,a0
    80001a10:	00000593          	li	a1,0
    80001a14:	00000097          	auipc	ra,0x0
    80001a18:	5e4080e7          	jalr	1508(ra) # 80001ff8 <_ZN9SemaphoreC1Ej>

    Thread *userT = new Thread(userFunc, sem);
    80001a1c:	02000513          	li	a0,32
    80001a20:	00000097          	auipc	ra,0x0
    80001a24:	3c4080e7          	jalr	964(ra) # 80001de4 <_Znwm>
    80001a28:	00050493          	mv	s1,a0
    80001a2c:	00090613          	mv	a2,s2
    80001a30:	00000597          	auipc	a1,0x0
    80001a34:	ef858593          	addi	a1,a1,-264 # 80001928 <_Z8userFuncPv>
    80001a38:	00000097          	auipc	ra,0x0
    80001a3c:	514080e7          	jalr	1300(ra) # 80001f4c <_ZN6ThreadC1EPFvPvES0_>
    userT->start();
    80001a40:	00048513          	mv	a0,s1
    80001a44:	00000097          	auipc	ra,0x0
    80001a48:	538080e7          	jalr	1336(ra) # 80001f7c <_ZN6Thread5startEv>
    //TCB  *userT;
    //thread_create(&userT, userFunc, null);// reinterpret_cast<void (*)(void *)>(userMain)
    //thread_dispatch();

    printString("main ce da ceka\n");
    80001a4c:	00007517          	auipc	a0,0x7
    80001a50:	64c50513          	addi	a0,a0,1612 # 80009098 <CONSOLE_STATUS+0x88>
    80001a54:	00003097          	auipc	ra,0x3
    80001a58:	288080e7          	jalr	648(ra) # 80004cdc <_Z11printStringPKc>
    sem->wait();
    80001a5c:	00090513          	mv	a0,s2
    80001a60:	00000097          	auipc	ra,0x0
    80001a64:	5d4080e7          	jalr	1492(ra) # 80002034 <_ZN9Semaphore4waitEv>

    //Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    printString("ciscenje za kraj\n");
    80001a68:	00007517          	auipc	a0,0x7
    80001a6c:	64850513          	addi	a0,a0,1608 # 800090b0 <CONSOLE_STATUS+0xa0>
    80001a70:	00003097          	auipc	ra,0x3
    80001a74:	26c080e7          	jalr	620(ra) # 80004cdc <_Z11printStringPKc>

    Scheduler::cleanUp();
    80001a78:	00001097          	auipc	ra,0x1
    80001a7c:	f0c080e7          	jalr	-244(ra) # 80002984 <_ZN9Scheduler7cleanUpEv>
    delete userT;
    80001a80:	00048a63          	beqz	s1,80001a94 <main+0x12c>
    80001a84:	0004b783          	ld	a5,0(s1)
    80001a88:	0087b783          	ld	a5,8(a5)
    80001a8c:	00048513          	mv	a0,s1
    80001a90:	000780e7          	jalr	a5
    delete TCB::maintcb;
    80001a94:	0000a797          	auipc	a5,0xa
    80001a98:	a7c7b783          	ld	a5,-1412(a5) # 8000b510 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001a9c:	0007b483          	ld	s1,0(a5)
    80001aa0:	02048663          	beqz	s1,80001acc <main+0x164>
};

class TCB {
public:
    ~TCB() {
        Scheduler::remove(this);
    80001aa4:	00048513          	mv	a0,s1
    80001aa8:	00001097          	auipc	ra,0x1
    80001aac:	e50080e7          	jalr	-432(ra) # 800028f8 <_ZN9Scheduler6removeEP3TCB>
        delete[] stack;
    80001ab0:	0384b503          	ld	a0,56(s1)
    80001ab4:	00050663          	beqz	a0,80001ac0 <main+0x158>
    80001ab8:	00000097          	auipc	ra,0x0
    80001abc:	40c080e7          	jalr	1036(ra) # 80001ec4 <_ZdaPv>
    80001ac0:	00048513          	mv	a0,s1
    80001ac4:	00000097          	auipc	ra,0x0
    80001ac8:	370080e7          	jalr	880(ra) # 80001e34 <_ZdlPv>

    printString("main() finished\n");
    80001acc:	00007517          	auipc	a0,0x7
    80001ad0:	5fc50513          	addi	a0,a0,1532 # 800090c8 <CONSOLE_STATUS+0xb8>
    80001ad4:	00003097          	auipc	ra,0x3
    80001ad8:	208080e7          	jalr	520(ra) # 80004cdc <_Z11printStringPKc>

    return 0;
    80001adc:	00000513          	li	a0,0
    80001ae0:	01813083          	ld	ra,24(sp)
    80001ae4:	01013403          	ld	s0,16(sp)
    80001ae8:	00813483          	ld	s1,8(sp)
    80001aec:	00013903          	ld	s2,0(sp)
    80001af0:	02010113          	addi	sp,sp,32
    80001af4:	00008067          	ret
    80001af8:	00050493          	mv	s1,a0
    Semaphore *sem = new Semaphore(0);
    80001afc:	00090513          	mv	a0,s2
    80001b00:	00000097          	auipc	ra,0x0
    80001b04:	334080e7          	jalr	820(ra) # 80001e34 <_ZdlPv>
    80001b08:	00048513          	mv	a0,s1
    80001b0c:	0000b097          	auipc	ra,0xb
    80001b10:	bcc080e7          	jalr	-1076(ra) # 8000c6d8 <_Unwind_Resume>
    80001b14:	00050913          	mv	s2,a0
    Thread *userT = new Thread(userFunc, sem);
    80001b18:	00048513          	mv	a0,s1
    80001b1c:	00000097          	auipc	ra,0x0
    80001b20:	318080e7          	jalr	792(ra) # 80001e34 <_ZdlPv>
    80001b24:	00090513          	mv	a0,s2
    80001b28:	0000b097          	auipc	ra,0xb
    80001b2c:	bb0080e7          	jalr	-1104(ra) # 8000c6d8 <_Unwind_Resume>

0000000080001b30 <_ZN3TCB13threadWrapperEv>:
    running->setState(State::RUNNING);

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper() {
    80001b30:	ff010113          	addi	sp,sp,-16
    80001b34:	00113423          	sd	ra,8(sp)
    80001b38:	00813023          	sd	s0,0(sp)
    80001b3c:	01010413          	addi	s0,sp,16

    Riscv::popSppSpie();
    80001b40:	00000097          	auipc	ra,0x0
    80001b44:	634080e7          	jalr	1588(ra) # 80002174 <_ZN5Riscv10popSppSpieEv>

    running->body(running->arg);
    80001b48:	0000a797          	auipc	a5,0xa
    80001b4c:	a387b783          	ld	a5,-1480(a5) # 8000b580 <_ZN3TCB7runningE>
    80001b50:	0307b703          	ld	a4,48(a5)
    80001b54:	0087b503          	ld	a0,8(a5)
    80001b58:	000700e7          	jalr	a4
    //prvo je skloni iz svega gde bi mogla biti

    thread_exit();
    80001b5c:	fffff097          	auipc	ra,0xfffff
    80001b60:	73c080e7          	jalr	1852(ra) # 80001298 <thread_exit>
}
    80001b64:	00813083          	ld	ra,8(sp)
    80001b68:	00013403          	ld	s0,0(sp)
    80001b6c:	01010113          	addi	sp,sp,16
    80001b70:	00008067          	ret

0000000080001b74 <_ZN3TCB12createThreadEPFvPvES0_S0_>:
TCB* TCB::createThread(Body body, void *arg, void* stack) {
    80001b74:	fd010113          	addi	sp,sp,-48
    80001b78:	02113423          	sd	ra,40(sp)
    80001b7c:	02813023          	sd	s0,32(sp)
    80001b80:	00913c23          	sd	s1,24(sp)
    80001b84:	01213823          	sd	s2,16(sp)
    80001b88:	01313423          	sd	s3,8(sp)
    80001b8c:	01413023          	sd	s4,0(sp)
    80001b90:	03010413          	addi	s0,sp,48
    80001b94:	00050913          	mv	s2,a0
    80001b98:	00058a13          	mv	s4,a1
    80001b9c:	00060993          	mv	s3,a2
    return new TCB(body, arg, stack, TIME_SLICE);
    80001ba0:	05800513          	li	a0,88
    80001ba4:	00000097          	auipc	ra,0x0
    80001ba8:	240080e7          	jalr	576(ra) # 80001de4 <_Znwm>
    80001bac:	00050493          	mv	s1,a0
    static TCB *maintcb;

private:

    explicit TCB(Body body, void *arg, void *s, uint64 timeSlice) {
        this->arg = arg;
    80001bb0:	01453423          	sd	s4,8(a0)
        this->body = body;
    80001bb4:	03253823          	sd	s2,48(a0)
        this->stack = (uint64 *) s;
    80001bb8:	03353c23          	sd	s3,56(a0)
        this->context = {
                body != nullptr ? (uint64) &threadWrapper : 0,
    80001bbc:	06090c63          	beqz	s2,80001c34 <_ZN3TCB12createThreadEPFvPvES0_S0_+0xc0>
    80001bc0:	00000797          	auipc	a5,0x0
    80001bc4:	f7078793          	addi	a5,a5,-144 # 80001b30 <_ZN3TCB13threadWrapperEv>
                stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001bc8:	06098a63          	beqz	s3,80001c3c <_ZN3TCB12createThreadEPFvPvES0_S0_+0xc8>
    80001bcc:	00008637          	lui	a2,0x8
    80001bd0:	00c989b3          	add	s3,s3,a2
        this->context = {
    80001bd4:	04f4b023          	sd	a5,64(s1)
    80001bd8:	0534b423          	sd	s3,72(s1)
        };
        this->timeSlice = timeSlice;
    80001bdc:	00200793          	li	a5,2
    80001be0:	04f4b823          	sd	a5,80(s1)
        this->next = nullptr;
    80001be4:	0004bc23          	sd	zero,24(s1)
        this->nextBlocked = nullptr;
    80001be8:	0204b023          	sd	zero,32(s1)
        this->holder = nullptr;
    80001bec:	0204b423          	sd	zero,40(s1)
        id = globalId++;
    80001bf0:	0000a717          	auipc	a4,0xa
    80001bf4:	99070713          	addi	a4,a4,-1648 # 8000b580 <_ZN3TCB7runningE>
    80001bf8:	00872783          	lw	a5,8(a4)
    80001bfc:	0017869b          	addiw	a3,a5,1
    80001c00:	00d72423          	sw	a3,8(a4)
    80001c04:	00f4a023          	sw	a5,0(s1)
        sysRegime = false;
    80001c08:	00048823          	sb	zero,16(s1)
        //this->finished = false;
        currentThreadState = State::CREATED;
    80001c0c:	0004a223          	sw	zero,4(s1)
        if (body == nullptr) { currentThreadState = State::RUNNING; }
    80001c10:	02090a63          	beqz	s2,80001c44 <_ZN3TCB12createThreadEPFvPvES0_S0_+0xd0>
        if (body != nullptr && body != &Scheduler::idleFunc) { Scheduler::put(this); }
    80001c14:	04090c63          	beqz	s2,80001c6c <_ZN3TCB12createThreadEPFvPvES0_S0_+0xf8>
    80001c18:	0000a797          	auipc	a5,0xa
    80001c1c:	9007b783          	ld	a5,-1792(a5) # 8000b518 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001c20:	04f90663          	beq	s2,a5,80001c6c <_ZN3TCB12createThreadEPFvPvES0_S0_+0xf8>
    80001c24:	00048513          	mv	a0,s1
    80001c28:	00001097          	auipc	ra,0x1
    80001c2c:	c70080e7          	jalr	-912(ra) # 80002898 <_ZN9Scheduler3putEP3TCB>
    80001c30:	03c0006f          	j	80001c6c <_ZN3TCB12createThreadEPFvPvES0_S0_+0xf8>
                body != nullptr ? (uint64) &threadWrapper : 0,
    80001c34:	00000793          	li	a5,0
    80001c38:	f91ff06f          	j	80001bc8 <_ZN3TCB12createThreadEPFvPvES0_S0_+0x54>
                stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001c3c:	00000993          	li	s3,0
    80001c40:	f95ff06f          	j	80001bd4 <_ZN3TCB12createThreadEPFvPvES0_S0_+0x60>
        if (body == nullptr) { currentThreadState = State::RUNNING; }
    80001c44:	00100793          	li	a5,1
    80001c48:	00f4a223          	sw	a5,4(s1)
    80001c4c:	fc9ff06f          	j	80001c14 <_ZN3TCB12createThreadEPFvPvES0_S0_+0xa0>
    80001c50:	00050913          	mv	s2,a0
    80001c54:	00048513          	mv	a0,s1
    80001c58:	00000097          	auipc	ra,0x0
    80001c5c:	1dc080e7          	jalr	476(ra) # 80001e34 <_ZdlPv>
    80001c60:	00090513          	mv	a0,s2
    80001c64:	0000b097          	auipc	ra,0xb
    80001c68:	a74080e7          	jalr	-1420(ra) # 8000c6d8 <_Unwind_Resume>
}
    80001c6c:	00048513          	mv	a0,s1
    80001c70:	02813083          	ld	ra,40(sp)
    80001c74:	02013403          	ld	s0,32(sp)
    80001c78:	01813483          	ld	s1,24(sp)
    80001c7c:	01013903          	ld	s2,16(sp)
    80001c80:	00813983          	ld	s3,8(sp)
    80001c84:	00013a03          	ld	s4,0(sp)
    80001c88:	03010113          	addi	sp,sp,48
    80001c8c:	00008067          	ret

0000000080001c90 <_ZN3TCB5yieldEv>:
void TCB::yield() {
    80001c90:	fe010113          	addi	sp,sp,-32
    80001c94:	00113c23          	sd	ra,24(sp)
    80001c98:	00813823          	sd	s0,16(sp)
    80001c9c:	00913423          	sd	s1,8(sp)
    80001ca0:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80001ca4:	0000a497          	auipc	s1,0xa
    80001ca8:	8dc4b483          	ld	s1,-1828(s1) # 8000b580 <_ZN3TCB7runningE>
    bool isFinished() { return currentThreadState == State::FINISHED; }
    80001cac:	0044a783          	lw	a5,4(s1)
    if (!old->isFinished()&&old->currentThreadState!=State::BLOCKED&&old->currentThreadState!=State::SLEEPING) {
    80001cb0:	00500713          	li	a4,5
    80001cb4:	02e78c63          	beq	a5,a4,80001cec <_ZN3TCB5yieldEv+0x5c>
    80001cb8:	00300713          	li	a4,3
    80001cbc:	02e78863          	beq	a5,a4,80001cec <_ZN3TCB5yieldEv+0x5c>
    80001cc0:	00400713          	li	a4,4
    80001cc4:	02e78463          	beq	a5,a4,80001cec <_ZN3TCB5yieldEv+0x5c>
        if(old!=Scheduler::idle)old->currentThreadState=State::READY;
    80001cc8:	0000a797          	auipc	a5,0xa
    80001ccc:	8607b783          	ld	a5,-1952(a5) # 8000b528 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001cd0:	0007b783          	ld	a5,0(a5)
    80001cd4:	00978663          	beq	a5,s1,80001ce0 <_ZN3TCB5yieldEv+0x50>
    80001cd8:	00600793          	li	a5,6
    80001cdc:	00f4a223          	sw	a5,4(s1)
        Scheduler::put(old); }
    80001ce0:	00048513          	mv	a0,s1
    80001ce4:	00001097          	auipc	ra,0x1
    80001ce8:	bb4080e7          	jalr	-1100(ra) # 80002898 <_ZN9Scheduler3putEP3TCB>
    running = Scheduler::get();
    80001cec:	00001097          	auipc	ra,0x1
    80001cf0:	b4c080e7          	jalr	-1204(ra) # 80002838 <_ZN9Scheduler3getEv>
    80001cf4:	0000a797          	auipc	a5,0xa
    80001cf8:	88c78793          	addi	a5,a5,-1908 # 8000b580 <_ZN3TCB7runningE>
    80001cfc:	00a7b023          	sd	a0,0(a5)
    void setState(State e) { currentThreadState = e; }
    80001d00:	00100713          	li	a4,1
    80001d04:	00e52223          	sw	a4,4(a0)
    TCB::contextSwitch(&old->context, &running->context);
    80001d08:	0007b583          	ld	a1,0(a5)
    80001d0c:	04058593          	addi	a1,a1,64
    80001d10:	04048513          	addi	a0,s1,64
    80001d14:	fffff097          	auipc	ra,0xfffff
    80001d18:	3fc080e7          	jalr	1020(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001d1c:	01813083          	ld	ra,24(sp)
    80001d20:	01013403          	ld	s0,16(sp)
    80001d24:	00813483          	ld	s1,8(sp)
    80001d28:	02010113          	addi	sp,sp,32
    80001d2c:	00008067          	ret

0000000080001d30 <_ZN3TCB7releaseEv>:

void TCB::release(){
    80001d30:	ff010113          	addi	sp,sp,-16
    80001d34:	00113423          	sd	ra,8(sp)
    80001d38:	00813023          	sd	s0,0(sp)
    80001d3c:	01010413          	addi	s0,sp,16
    80001d40:	00600713          	li	a4,6
    80001d44:	00e52223          	sw	a4,4(a0)
    this->setState(State::READY);
    holder= nullptr;
    80001d48:	02053423          	sd	zero,40(a0)
    nextBlocked= nullptr;
    80001d4c:	02053023          	sd	zero,32(a0)
    Scheduler::put(this);
    80001d50:	00001097          	auipc	ra,0x1
    80001d54:	b48080e7          	jalr	-1208(ra) # 80002898 <_ZN9Scheduler3putEP3TCB>
}
    80001d58:	00813083          	ld	ra,8(sp)
    80001d5c:	00013403          	ld	s0,0(sp)
    80001d60:	01010113          	addi	sp,sp,16
    80001d64:	00008067          	ret

0000000080001d68 <_ZN6ThreadD1Ev>:

Thread::Thread(void (*body)(void *)) : myHandle(nullptr), body(body), arg(nullptr) {}

Thread::Thread(void (*body)(void *), void *arg) : myHandle(nullptr), body(body), arg(arg) {}

Thread::~Thread() {}
    80001d68:	ff010113          	addi	sp,sp,-16
    80001d6c:	00813423          	sd	s0,8(sp)
    80001d70:	01010413          	addi	s0,sp,16
    80001d74:	00813403          	ld	s0,8(sp)
    80001d78:	01010113          	addi	sp,sp,16
    80001d7c:	00008067          	ret

0000000080001d80 <_ZN6Thread7wrapperEPv>:

void Thread::wrapper(void* n)
{
    80001d80:	ff010113          	addi	sp,sp,-16
    80001d84:	00113423          	sd	ra,8(sp)
    80001d88:	00813023          	sd	s0,0(sp)
    80001d8c:	01010413          	addi	s0,sp,16
    Thread* t=(Thread*)n;
    t->run();
    80001d90:	00053783          	ld	a5,0(a0)
    80001d94:	0107b783          	ld	a5,16(a5)
    80001d98:	000780e7          	jalr	a5
}
    80001d9c:	00813083          	ld	ra,8(sp)
    80001da0:	00013403          	ld	s0,0(sp)
    80001da4:	01010113          	addi	sp,sp,16
    80001da8:	00008067          	ret

0000000080001dac <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned init) : val(init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    80001dac:	ff010113          	addi	sp,sp,-16
    80001db0:	00113423          	sd	ra,8(sp)
    80001db4:	00813023          	sd	s0,0(sp)
    80001db8:	01010413          	addi	s0,sp,16
    80001dbc:	00009797          	auipc	a5,0x9
    80001dc0:	5f478793          	addi	a5,a5,1524 # 8000b3b0 <_ZTV9Semaphore+0x10>
    80001dc4:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80001dc8:	00853503          	ld	a0,8(a0)
    80001dcc:	fffff097          	auipc	ra,0xfffff
    80001dd0:	560080e7          	jalr	1376(ra) # 8000132c <sem_close>
};
    80001dd4:	00813083          	ld	ra,8(sp)
    80001dd8:	00013403          	ld	s0,0(sp)
    80001ddc:	01010113          	addi	sp,sp,16
    80001de0:	00008067          	ret

0000000080001de4 <_Znwm>:
void *operator new(size_t n) {
    80001de4:	ff010113          	addi	sp,sp,-16
    80001de8:	00113423          	sd	ra,8(sp)
    80001dec:	00813023          	sd	s0,0(sp)
    80001df0:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001df4:	fffff097          	auipc	ra,0xfffff
    80001df8:	350080e7          	jalr	848(ra) # 80001144 <mem_alloc>
}
    80001dfc:	00813083          	ld	ra,8(sp)
    80001e00:	00013403          	ld	s0,0(sp)
    80001e04:	01010113          	addi	sp,sp,16
    80001e08:	00008067          	ret

0000000080001e0c <_Znam>:
void *operator new[](size_t n) {
    80001e0c:	ff010113          	addi	sp,sp,-16
    80001e10:	00113423          	sd	ra,8(sp)
    80001e14:	00813023          	sd	s0,0(sp)
    80001e18:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001e1c:	fffff097          	auipc	ra,0xfffff
    80001e20:	328080e7          	jalr	808(ra) # 80001144 <mem_alloc>
}
    80001e24:	00813083          	ld	ra,8(sp)
    80001e28:	00013403          	ld	s0,0(sp)
    80001e2c:	01010113          	addi	sp,sp,16
    80001e30:	00008067          	ret

0000000080001e34 <_ZdlPv>:
void operator delete(void *p) noexcept {
    80001e34:	ff010113          	addi	sp,sp,-16
    80001e38:	00113423          	sd	ra,8(sp)
    80001e3c:	00813023          	sd	s0,0(sp)
    80001e40:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001e44:	fffff097          	auipc	ra,0xfffff
    80001e48:	340080e7          	jalr	832(ra) # 80001184 <mem_free>
}
    80001e4c:	00813083          	ld	ra,8(sp)
    80001e50:	00013403          	ld	s0,0(sp)
    80001e54:	01010113          	addi	sp,sp,16
    80001e58:	00008067          	ret

0000000080001e5c <_ZN6ThreadD0Ev>:
Thread::~Thread() {}
    80001e5c:	ff010113          	addi	sp,sp,-16
    80001e60:	00113423          	sd	ra,8(sp)
    80001e64:	00813023          	sd	s0,0(sp)
    80001e68:	01010413          	addi	s0,sp,16
    80001e6c:	00000097          	auipc	ra,0x0
    80001e70:	fc8080e7          	jalr	-56(ra) # 80001e34 <_ZdlPv>
    80001e74:	00813083          	ld	ra,8(sp)
    80001e78:	00013403          	ld	s0,0(sp)
    80001e7c:	01010113          	addi	sp,sp,16
    80001e80:	00008067          	ret

0000000080001e84 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80001e84:	fe010113          	addi	sp,sp,-32
    80001e88:	00113c23          	sd	ra,24(sp)
    80001e8c:	00813823          	sd	s0,16(sp)
    80001e90:	00913423          	sd	s1,8(sp)
    80001e94:	02010413          	addi	s0,sp,32
    80001e98:	00050493          	mv	s1,a0
};
    80001e9c:	00000097          	auipc	ra,0x0
    80001ea0:	f10080e7          	jalr	-240(ra) # 80001dac <_ZN9SemaphoreD1Ev>
    80001ea4:	00048513          	mv	a0,s1
    80001ea8:	00000097          	auipc	ra,0x0
    80001eac:	f8c080e7          	jalr	-116(ra) # 80001e34 <_ZdlPv>
    80001eb0:	01813083          	ld	ra,24(sp)
    80001eb4:	01013403          	ld	s0,16(sp)
    80001eb8:	00813483          	ld	s1,8(sp)
    80001ebc:	02010113          	addi	sp,sp,32
    80001ec0:	00008067          	ret

0000000080001ec4 <_ZdaPv>:
void operator delete[](void *p) noexcept {
    80001ec4:	ff010113          	addi	sp,sp,-16
    80001ec8:	00113423          	sd	ra,8(sp)
    80001ecc:	00813023          	sd	s0,0(sp)
    80001ed0:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001ed4:	fffff097          	auipc	ra,0xfffff
    80001ed8:	2b0080e7          	jalr	688(ra) # 80001184 <mem_free>
}
    80001edc:	00813083          	ld	ra,8(sp)
    80001ee0:	00013403          	ld	s0,0(sp)
    80001ee4:	01010113          	addi	sp,sp,16
    80001ee8:	00008067          	ret

0000000080001eec <_ZN6ThreadC1Ev>:
Thread::Thread() : myHandle(nullptr), body(nullptr), arg(nullptr) {}
    80001eec:	ff010113          	addi	sp,sp,-16
    80001ef0:	00813423          	sd	s0,8(sp)
    80001ef4:	01010413          	addi	s0,sp,16
    80001ef8:	00009797          	auipc	a5,0x9
    80001efc:	49078793          	addi	a5,a5,1168 # 8000b388 <_ZTV6Thread+0x10>
    80001f00:	00f53023          	sd	a5,0(a0)
    80001f04:	00053423          	sd	zero,8(a0)
    80001f08:	00053823          	sd	zero,16(a0)
    80001f0c:	00053c23          	sd	zero,24(a0)
    80001f10:	00813403          	ld	s0,8(sp)
    80001f14:	01010113          	addi	sp,sp,16
    80001f18:	00008067          	ret

0000000080001f1c <_ZN6ThreadC1EPFvPvE>:
Thread::Thread(void (*body)(void *)) : myHandle(nullptr), body(body), arg(nullptr) {}
    80001f1c:	ff010113          	addi	sp,sp,-16
    80001f20:	00813423          	sd	s0,8(sp)
    80001f24:	01010413          	addi	s0,sp,16
    80001f28:	00009797          	auipc	a5,0x9
    80001f2c:	46078793          	addi	a5,a5,1120 # 8000b388 <_ZTV6Thread+0x10>
    80001f30:	00f53023          	sd	a5,0(a0)
    80001f34:	00053423          	sd	zero,8(a0)
    80001f38:	00b53823          	sd	a1,16(a0)
    80001f3c:	00053c23          	sd	zero,24(a0)
    80001f40:	00813403          	ld	s0,8(sp)
    80001f44:	01010113          	addi	sp,sp,16
    80001f48:	00008067          	ret

0000000080001f4c <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) : myHandle(nullptr), body(body), arg(arg) {}
    80001f4c:	ff010113          	addi	sp,sp,-16
    80001f50:	00813423          	sd	s0,8(sp)
    80001f54:	01010413          	addi	s0,sp,16
    80001f58:	00009797          	auipc	a5,0x9
    80001f5c:	43078793          	addi	a5,a5,1072 # 8000b388 <_ZTV6Thread+0x10>
    80001f60:	00f53023          	sd	a5,0(a0)
    80001f64:	00053423          	sd	zero,8(a0)
    80001f68:	00b53823          	sd	a1,16(a0)
    80001f6c:	00c53c23          	sd	a2,24(a0)
    80001f70:	00813403          	ld	s0,8(sp)
    80001f74:	01010113          	addi	sp,sp,16
    80001f78:	00008067          	ret

0000000080001f7c <_ZN6Thread5startEv>:
int Thread::start (){
    80001f7c:	ff010113          	addi	sp,sp,-16
    80001f80:	00113423          	sd	ra,8(sp)
    80001f84:	00813023          	sd	s0,0(sp)
    80001f88:	01010413          	addi	s0,sp,16
    if (body)
    80001f8c:	01053583          	ld	a1,16(a0)
    80001f90:	02058263          	beqz	a1,80001fb4 <_ZN6Thread5startEv+0x38>
        return thread_create(&myHandle, body, arg);
    80001f94:	01853603          	ld	a2,24(a0)
    80001f98:	00850513          	addi	a0,a0,8
    80001f9c:	fffff097          	auipc	ra,0xfffff
    80001fa0:	238080e7          	jalr	568(ra) # 800011d4 <thread_create>
}
    80001fa4:	00813083          	ld	ra,8(sp)
    80001fa8:	00013403          	ld	s0,0(sp)
    80001fac:	01010113          	addi	sp,sp,16
    80001fb0:	00008067          	ret
        return thread_create(&myHandle, &Thread::wrapper, this);
    80001fb4:	00050613          	mv	a2,a0
    80001fb8:	00000597          	auipc	a1,0x0
    80001fbc:	dc858593          	addi	a1,a1,-568 # 80001d80 <_ZN6Thread7wrapperEPv>
    80001fc0:	00850513          	addi	a0,a0,8
    80001fc4:	fffff097          	auipc	ra,0xfffff
    80001fc8:	210080e7          	jalr	528(ra) # 800011d4 <thread_create>
    80001fcc:	fd9ff06f          	j	80001fa4 <_ZN6Thread5startEv+0x28>

0000000080001fd0 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001fd0:	ff010113          	addi	sp,sp,-16
    80001fd4:	00113423          	sd	ra,8(sp)
    80001fd8:	00813023          	sd	s0,0(sp)
    80001fdc:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001fe0:	fffff097          	auipc	ra,0xfffff
    80001fe4:	294080e7          	jalr	660(ra) # 80001274 <thread_dispatch>
}
    80001fe8:	00813083          	ld	ra,8(sp)
    80001fec:	00013403          	ld	s0,0(sp)
    80001ff0:	01010113          	addi	sp,sp,16
    80001ff4:	00008067          	ret

0000000080001ff8 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned init) : val(init) {
    80001ff8:	ff010113          	addi	sp,sp,-16
    80001ffc:	00113423          	sd	ra,8(sp)
    80002000:	00813023          	sd	s0,0(sp)
    80002004:	01010413          	addi	s0,sp,16
    80002008:	00009797          	auipc	a5,0x9
    8000200c:	3a878793          	addi	a5,a5,936 # 8000b3b0 <_ZTV9Semaphore+0x10>
    80002010:	00f53023          	sd	a5,0(a0)
    80002014:	00b52823          	sw	a1,16(a0)
    sem_open(&myHandle, init);
    80002018:	00850513          	addi	a0,a0,8
    8000201c:	fffff097          	auipc	ra,0xfffff
    80002020:	2b8080e7          	jalr	696(ra) # 800012d4 <sem_open>
}
    80002024:	00813083          	ld	ra,8(sp)
    80002028:	00013403          	ld	s0,0(sp)
    8000202c:	01010113          	addi	sp,sp,16
    80002030:	00008067          	ret

0000000080002034 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    80002034:	ff010113          	addi	sp,sp,-16
    80002038:	00113423          	sd	ra,8(sp)
    8000203c:	00813023          	sd	s0,0(sp)
    80002040:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80002044:	00853503          	ld	a0,8(a0)
    80002048:	fffff097          	auipc	ra,0xfffff
    8000204c:	330080e7          	jalr	816(ra) # 80001378 <sem_wait>
}
    80002050:	00813083          	ld	ra,8(sp)
    80002054:	00013403          	ld	s0,0(sp)
    80002058:	01010113          	addi	sp,sp,16
    8000205c:	00008067          	ret

0000000080002060 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    80002060:	ff010113          	addi	sp,sp,-16
    80002064:	00113423          	sd	ra,8(sp)
    80002068:	00813023          	sd	s0,0(sp)
    8000206c:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80002070:	00853503          	ld	a0,8(a0)
    80002074:	fffff097          	auipc	ra,0xfffff
    80002078:	350080e7          	jalr	848(ra) # 800013c4 <sem_signal>
}
    8000207c:	00813083          	ld	ra,8(sp)
    80002080:	00013403          	ld	s0,0(sp)
    80002084:	01010113          	addi	sp,sp,16
    80002088:	00008067          	ret

000000008000208c <_ZN6Thread5sleepEm>:





int Thread::sleep(time_t time){ return time_sleep(time); }
    8000208c:	ff010113          	addi	sp,sp,-16
    80002090:	00113423          	sd	ra,8(sp)
    80002094:	00813023          	sd	s0,0(sp)
    80002098:	01010413          	addi	s0,sp,16
    8000209c:	fffff097          	auipc	ra,0xfffff
    800020a0:	418080e7          	jalr	1048(ra) # 800014b4 <time_sleep>
    800020a4:	00813083          	ld	ra,8(sp)
    800020a8:	00013403          	ld	s0,0(sp)
    800020ac:	01010113          	addi	sp,sp,16
    800020b0:	00008067          	ret

00000000800020b4 <_ZN9Semaphore9timedWaitEm>:

int Semaphore::timedWait(time_t t) {
    800020b4:	ff010113          	addi	sp,sp,-16
    800020b8:	00113423          	sd	ra,8(sp)
    800020bc:	00813023          	sd	s0,0(sp)
    800020c0:	01010413          	addi	s0,sp,16
    return sem_timedwait(myHandle, t);
    800020c4:	00853503          	ld	a0,8(a0)
    800020c8:	fffff097          	auipc	ra,0xfffff
    800020cc:	408080e7          	jalr	1032(ra) # 800014d0 <sem_timedwait>
}
    800020d0:	00813083          	ld	ra,8(sp)
    800020d4:	00013403          	ld	s0,0(sp)
    800020d8:	01010113          	addi	sp,sp,16
    800020dc:	00008067          	ret

00000000800020e0 <_ZN9Semaphore7tryWaitEv>:

int Semaphore::tryWait() {
    800020e0:	ff010113          	addi	sp,sp,-16
    800020e4:	00113423          	sd	ra,8(sp)
    800020e8:	00813023          	sd	s0,0(sp)
    800020ec:	01010413          	addi	s0,sp,16
    return sem_trywait(myHandle);
    800020f0:	00853503          	ld	a0,8(a0)
    800020f4:	fffff097          	auipc	ra,0xfffff
    800020f8:	3a4080e7          	jalr	932(ra) # 80001498 <sem_trywait>
}
    800020fc:	00813083          	ld	ra,8(sp)
    80002100:	00013403          	ld	s0,0(sp)
    80002104:	01010113          	addi	sp,sp,16
    80002108:	00008067          	ret

000000008000210c <_ZN7Console4getcEv>:

char Console::getc(){
    8000210c:	ff010113          	addi	sp,sp,-16
    80002110:	00113423          	sd	ra,8(sp)
    80002114:	00813023          	sd	s0,0(sp)
    80002118:	01010413          	addi	s0,sp,16
 return ::getc();
    8000211c:	fffff097          	auipc	ra,0xfffff
    80002120:	340080e7          	jalr	832(ra) # 8000145c <getc>
}
    80002124:	00813083          	ld	ra,8(sp)
    80002128:	00013403          	ld	s0,0(sp)
    8000212c:	01010113          	addi	sp,sp,16
    80002130:	00008067          	ret

0000000080002134 <_ZN7Console4putcEc>:

void Console::putc(char c){
    80002134:	ff010113          	addi	sp,sp,-16
    80002138:	00113423          	sd	ra,8(sp)
    8000213c:	00813023          	sd	s0,0(sp)
    80002140:	01010413          	addi	s0,sp,16
 ::putc(c);
    80002144:	fffff097          	auipc	ra,0xfffff
    80002148:	2f0080e7          	jalr	752(ra) # 80001434 <putc>
}
    8000214c:	00813083          	ld	ra,8(sp)
    80002150:	00013403          	ld	s0,0(sp)
    80002154:	01010113          	addi	sp,sp,16
    80002158:	00008067          	ret

000000008000215c <_ZN6Thread3runEv>:
    static int sleep(time_t time);

protected:
    Thread();

    virtual void run() {}
    8000215c:	ff010113          	addi	sp,sp,-16
    80002160:	00813423          	sd	s0,8(sp)
    80002164:	01010413          	addi	s0,sp,16
    80002168:	00813403          	ld	s0,8(sp)
    8000216c:	01010113          	addi	sp,sp,16
    80002170:	00008067          	ret

0000000080002174 <_ZN5Riscv10popSppSpieEv>:
#include "../h/print.hpp"
#include "../test/printing.hpp"

//#include "../h/MemoryAllocator.hpp"//SKLONI MEM.H

void Riscv::popSppSpie() {
    80002174:	ff010113          	addi	sp,sp,-16
    80002178:	00813423          	sd	s0,8(sp)
    8000217c:	01010413          	addi	s0,sp,16

    if (TCB::running->sysRegime) {
    80002180:	00009797          	auipc	a5,0x9
    80002184:	3b07b783          	ld	a5,944(a5) # 8000b530 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002188:	0007b783          	ld	a5,0(a5)
    8000218c:	0107c783          	lbu	a5,16(a5)
    80002190:	02078063          	beqz	a5,800021b0 <_ZN5Riscv10popSppSpieEv+0x3c>
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002194:	10000793          	li	a5,256
    80002198:	1007a073          	csrs	sstatus,a5
    else
    {
        mc_sstatus(SSTATUS_SPP);
    }

    __asm__ volatile("csrw sepc, ra");
    8000219c:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    800021a0:	10200073          	sret
}
    800021a4:	00813403          	ld	s0,8(sp)
    800021a8:	01010113          	addi	sp,sp,16
    800021ac:	00008067          	ret
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800021b0:	10000793          	li	a5,256
    800021b4:	1007b073          	csrc	sstatus,a5
}
    800021b8:	fe5ff06f          	j	8000219c <_ZN5Riscv10popSppSpieEv+0x28>

00000000800021bc <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap() {
    800021bc:	f2010113          	addi	sp,sp,-224
    800021c0:	0c113c23          	sd	ra,216(sp)
    800021c4:	0c813823          	sd	s0,208(sp)
    800021c8:	0c913423          	sd	s1,200(sp)
    800021cc:	0e010413          	addi	s0,sp,224
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    800021d0:	142027f3          	csrr	a5,scause
    800021d4:	faf43023          	sd	a5,-96(s0)
    return scause;
    800021d8:	fa043783          	ld	a5,-96(s0)

    uint64 volatile scause = r_scause();
    800021dc:	fcf43c23          	sd	a5,-40(s0)

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800021e0:	100027f3          	csrr	a5,sstatus
    800021e4:	f8f43c23          	sd	a5,-104(s0)
    return sstatus;
    800021e8:	f9843783          	ld	a5,-104(s0)
    uint64 volatile sstatus = r_sstatus();
    800021ec:	fcf43823          	sd	a5,-48(s0)
    __asm__ volatile ("mv %[val], a0" : [val] "=r"(a0));
    800021f0:	00050793          	mv	a5,a0
    800021f4:	f8f43823          	sd	a5,-112(s0)
    return a0;
    800021f8:	f9043783          	ld	a5,-112(s0)
    uint64 volatile a0arg = r_a0();
    800021fc:	fcf43423          	sd	a5,-56(s0)

    switch (scause) {
    80002200:	fd843783          	ld	a5,-40(s0)
    80002204:	fff00713          	li	a4,-1
    80002208:	03f71713          	slli	a4,a4,0x3f
    8000220c:	00170713          	addi	a4,a4,1
    80002210:	28e78263          	beq	a5,a4,80002494 <_ZN5Riscv20handleSupervisorTrapEv+0x2d8>
    80002214:	fff00713          	li	a4,-1
    80002218:	03f71713          	slli	a4,a4,0x3f
    8000221c:	00170713          	addi	a4,a4,1
    80002220:	04f76663          	bltu	a4,a5,8000226c <_ZN5Riscv20handleSupervisorTrapEv+0xb0>
    80002224:	ff878793          	addi	a5,a5,-8
    80002228:	00100713          	li	a4,1
    8000222c:	2cf76863          	bltu	a4,a5,800024fc <_ZN5Riscv20handleSupervisorTrapEv+0x340>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002230:	141027f3          	csrr	a5,sepc
    80002234:	faf43423          	sd	a5,-88(s0)
    return sepc;
    80002238:	fa843783          	ld	a5,-88(s0)
        case IRQ_SYSCALL_UMODE:
        case IRQ_SYSCALL_SMODE: {

            uint64 volatile sepc = r_sepc() + 4;
    8000223c:	00478793          	addi	a5,a5,4
    80002240:	f2f43423          	sd	a5,-216(s0)
            //if(a0arg!=PUTC&&a0arg!=GETC)printRegister(a0arg);
            switch (a0arg) {
    80002244:	fc843783          	ld	a5,-56(s0)
    80002248:	04200713          	li	a4,66
    8000224c:	22f76a63          	bltu	a4,a5,80002480 <_ZN5Riscv20handleSupervisorTrapEv+0x2c4>
    80002250:	00279793          	slli	a5,a5,0x2
    80002254:	00007717          	auipc	a4,0x7
    80002258:	f0470713          	addi	a4,a4,-252 # 80009158 <CONSOLE_STATUS+0x148>
    8000225c:	00e787b3          	add	a5,a5,a4
    80002260:	0007a783          	lw	a5,0(a5)
    80002264:	00e787b3          	add	a5,a5,a4
    80002268:	00078067          	jr	a5
    switch (scause) {
    8000226c:	fff00713          	li	a4,-1
    80002270:	03f71713          	slli	a4,a4,0x3f
    80002274:	00970713          	addi	a4,a4,9
    80002278:	28e79263          	bne	a5,a4,800024fc <_ZN5Riscv20handleSupervisorTrapEv+0x340>
            w_sepc(sepc);
        }
            break;
        case IRQ_HARDWARE: {

            console_handler();
    8000227c:	00006097          	auipc	ra,0x6
    80002280:	ed8080e7          	jalr	-296(ra) # 80008154 <console_handler>

        }
            break;
    }

}
    80002284:	0d813083          	ld	ra,216(sp)
    80002288:	0d013403          	ld	s0,208(sp)
    8000228c:	0c813483          	ld	s1,200(sp)
    80002290:	0e010113          	addi	sp,sp,224
    80002294:	00008067          	ret
            );
    80002298:	05843783          	ld	a5,88(s0)
                    uint64 volatile a1reg = r_a1fromstack();
    8000229c:	f2f43823          	sd	a5,-208(s0)
                    a0arg = (uint64) __mem_alloc(a1reg); //SKLONI MEM.H
    800022a0:	f3043503          	ld	a0,-208(s0)
    800022a4:	00006097          	auipc	ra,0x6
    800022a8:	ce4080e7          	jalr	-796(ra) # 80007f88 <__mem_alloc>
    800022ac:	fca43423          	sd	a0,-56(s0)
                    Riscv::w_a0(a0arg);
    800022b0:	fc843783          	ld	a5,-56(s0)
    __asm__ volatile ("mv a0, %[val]": : [val] "r"(val));
    800022b4:	00078513          	mv	a0,a5
            w_sstatus(sstatus);
    800022b8:	fd043783          	ld	a5,-48(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800022bc:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    800022c0:	f2843783          	ld	a5,-216(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800022c4:	14179073          	csrw	sepc,a5
}
    800022c8:	fbdff06f          	j	80002284 <_ZN5Riscv20handleSupervisorTrapEv+0xc8>
            );
    800022cc:	05843783          	ld	a5,88(s0)
                    uint64 volatile a1reg = r_a1fromstack();
    800022d0:	f2f43c23          	sd	a5,-200(s0)
                    uint64 retCast = (uint64) __mem_free((void *) a1reg);
    800022d4:	f3843503          	ld	a0,-200(s0)
    800022d8:	00006097          	auipc	ra,0x6
    800022dc:	be4080e7          	jalr	-1052(ra) # 80007ebc <__mem_free>
    __asm__ volatile ("mv a0, %[val]": : [val] "r"(val));
    800022e0:	00050513          	mv	a0,a0
}
    800022e4:	fd5ff06f          	j	800022b8 <_ZN5Riscv20handleSupervisorTrapEv+0xfc>
            );
    800022e8:	05843783          	ld	a5,88(s0)
                    uint64 volatile a1reg = (uint64) r_a1fromstack();
    800022ec:	f4f43023          	sd	a5,-192(s0)
            );
    800022f0:	06043783          	ld	a5,96(s0)
                    TCB::Body volatile a2reg = (TCB::Body) r_a2fromstack();
    800022f4:	f4f43423          	sd	a5,-184(s0)
            );
    800022f8:	06843783          	ld	a5,104(s0)
                    void *volatile a3reg = (void *) r_a3fromstack();
    800022fc:	f4f43823          	sd	a5,-176(s0)
            );
    80002300:	07043783          	ld	a5,112(s0)
                    void *volatile a4reg = (void *) r_a4fromstack();
    80002304:	f4f43c23          	sd	a5,-168(s0)
                    (*(TCB **) a1reg) = TCB::createThread(a2reg, a3reg, a4reg);
    80002308:	f4843503          	ld	a0,-184(s0)
    8000230c:	f5043583          	ld	a1,-176(s0)
    80002310:	f5843603          	ld	a2,-168(s0)
    80002314:	f4043483          	ld	s1,-192(s0)
    80002318:	00000097          	auipc	ra,0x0
    8000231c:	85c080e7          	jalr	-1956(ra) # 80001b74 <_ZN3TCB12createThreadEPFvPvES0_S0_>
    80002320:	00a4b023          	sd	a0,0(s1)
                    w_a1onstack(a1reg);
    80002324:	f4043783          	ld	a5,-192(s0)
    __asm__ volatile ("sd %[val], 11*8(fp)": : [val] "r"(val));
    80002328:	04f43c23          	sd	a5,88(s0)
                    if (a1reg != 0)a0arg = 0; else a0arg = -1;
    8000232c:	f4043783          	ld	a5,-192(s0)
    80002330:	00078a63          	beqz	a5,80002344 <_ZN5Riscv20handleSupervisorTrapEv+0x188>
    80002334:	fc043423          	sd	zero,-56(s0)
                    w_a0(a0arg);
    80002338:	fc843783          	ld	a5,-56(s0)
    __asm__ volatile ("mv a0, %[val]": : [val] "r"(val));
    8000233c:	00078513          	mv	a0,a5
}
    80002340:	f79ff06f          	j	800022b8 <_ZN5Riscv20handleSupervisorTrapEv+0xfc>
                    if (a1reg != 0)a0arg = 0; else a0arg = -1;
    80002344:	fff00793          	li	a5,-1
    80002348:	fcf43423          	sd	a5,-56(s0)
    8000234c:	fedff06f          	j	80002338 <_ZN5Riscv20handleSupervisorTrapEv+0x17c>
                    TCB::running->setFinished();
    80002350:	00009797          	auipc	a5,0x9
    80002354:	1e07b783          	ld	a5,480(a5) # 8000b530 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002358:	0007b783          	ld	a5,0(a5)
        currentThreadState = State::FINISHED;
    8000235c:	00500713          	li	a4,5
    80002360:	00e7a223          	sw	a4,4(a5)
                    TCB::yield();
    80002364:	00000097          	auipc	ra,0x0
    80002368:	92c080e7          	jalr	-1748(ra) # 80001c90 <_ZN3TCB5yieldEv>
    __asm__ volatile ("mv a0, %[val]": : [val] "r"(val));
    8000236c:	00100793          	li	a5,1
    80002370:	00078513          	mv	a0,a5
}
    80002374:	f45ff06f          	j	800022b8 <_ZN5Riscv20handleSupervisorTrapEv+0xfc>
                    TCB::timeSliceCounter = 0;
    80002378:	00009797          	auipc	a5,0x9
    8000237c:	1907b783          	ld	a5,400(a5) # 8000b508 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002380:	0007b023          	sd	zero,0(a5)
                    TCB::yield();
    80002384:	00000097          	auipc	ra,0x0
    80002388:	90c080e7          	jalr	-1780(ra) # 80001c90 <_ZN3TCB5yieldEv>
                    break;
    8000238c:	f2dff06f          	j	800022b8 <_ZN5Riscv20handleSupervisorTrapEv+0xfc>
            );
    80002390:	06043783          	ld	a5,96(s0)
                    unsigned volatile a2reg = (unsigned) r_a2fromstack();
    80002394:	0007879b          	sext.w	a5,a5
    80002398:	f2f42223          	sw	a5,-220(s0)
            );
    8000239c:	05843783          	ld	a5,88(s0)
                    uint64 volatile a1reg = (uint64) r_a1fromstack();
    800023a0:	f6f43023          	sd	a5,-160(s0)
                    (*(Sem **) a1reg) = Sem::open((unsigned )a2reg);
    800023a4:	f2442503          	lw	a0,-220(s0)
    800023a8:	f6043483          	ld	s1,-160(s0)
    800023ac:	0005051b          	sext.w	a0,a0
    800023b0:	00000097          	auipc	ra,0x0
    800023b4:	224080e7          	jalr	548(ra) # 800025d4 <_ZN3Sem4openEj>
    800023b8:	00a4b023          	sd	a0,0(s1)
                    w_a1onstack(a1reg);
    800023bc:	f6043783          	ld	a5,-160(s0)
    __asm__ volatile ("sd %[val], 11*8(fp)": : [val] "r"(val));
    800023c0:	04f43c23          	sd	a5,88(s0)
                    if (a1reg != 0)a0arg = 0; else a0arg = -1;
    800023c4:	f6043783          	ld	a5,-160(s0)
    800023c8:	00078a63          	beqz	a5,800023dc <_ZN5Riscv20handleSupervisorTrapEv+0x220>
    800023cc:	fc043423          	sd	zero,-56(s0)
                    w_a0(a0arg);
    800023d0:	fc843783          	ld	a5,-56(s0)
    __asm__ volatile ("mv a0, %[val]": : [val] "r"(val));
    800023d4:	00078513          	mv	a0,a5
}
    800023d8:	ee1ff06f          	j	800022b8 <_ZN5Riscv20handleSupervisorTrapEv+0xfc>
                    if (a1reg != 0)a0arg = 0; else a0arg = -1;
    800023dc:	fff00793          	li	a5,-1
    800023e0:	fcf43423          	sd	a5,-56(s0)
    800023e4:	fedff06f          	j	800023d0 <_ZN5Riscv20handleSupervisorTrapEv+0x214>
            );
    800023e8:	05843783          	ld	a5,88(s0)
                    uint64 volatile a1reg = r_a1fromstack();
    800023ec:	f6f43423          	sd	a5,-152(s0)
                    Sem *s = (Sem *) a1reg;
    800023f0:	f6843503          	ld	a0,-152(s0)
                    uint64 retCast = (uint64) s->close();
    800023f4:	00000097          	auipc	ra,0x0
    800023f8:	388080e7          	jalr	904(ra) # 8000277c <_ZN3Sem5closeEv>
    __asm__ volatile ("mv a0, %[val]": : [val] "r"(val));
    800023fc:	00050513          	mv	a0,a0
}
    80002400:	eb9ff06f          	j	800022b8 <_ZN5Riscv20handleSupervisorTrapEv+0xfc>
            );
    80002404:	05843783          	ld	a5,88(s0)
                    uint64 volatile a1reg = r_a1fromstack();
    80002408:	f6f43823          	sd	a5,-144(s0)
                    uint64 retCast = (uint64) ((Sem *) a1reg)->wait();
    8000240c:	f7043503          	ld	a0,-144(s0)
    80002410:	00000097          	auipc	ra,0x0
    80002414:	218080e7          	jalr	536(ra) # 80002628 <_ZN3Sem4waitEv>
    __asm__ volatile ("mv a0, %[val]": : [val] "r"(val));
    80002418:	00050513          	mv	a0,a0
}
    8000241c:	e9dff06f          	j	800022b8 <_ZN5Riscv20handleSupervisorTrapEv+0xfc>
            );
    80002420:	05843783          	ld	a5,88(s0)
                    uint64 volatile a1reg = r_a1fromstack();
    80002424:	f6f43c23          	sd	a5,-136(s0)
                    Sem *s = (Sem *) a1reg;
    80002428:	f7843503          	ld	a0,-136(s0)
                    uint64 retCast = (uint64) s->signal();
    8000242c:	00000097          	auipc	ra,0x0
    80002430:	2b0080e7          	jalr	688(ra) # 800026dc <_ZN3Sem6signalEv>
    __asm__ volatile ("mv a0, %[val]": : [val] "r"(val));
    80002434:	00050513          	mv	a0,a0
}
    80002438:	e81ff06f          	j	800022b8 <_ZN5Riscv20handleSupervisorTrapEv+0xfc>
                    char c=__getc();
    8000243c:	00006097          	auipc	ra,0x6
    80002440:	ce0080e7          	jalr	-800(ra) # 8000811c <__getc>
    __asm__ volatile ("mv a0, %[val]": : [val] "r"(val));
    80002444:	00050513          	mv	a0,a0
}
    80002448:	e71ff06f          	j	800022b8 <_ZN5Riscv20handleSupervisorTrapEv+0xfc>
            );
    8000244c:	05843783          	ld	a5,88(s0)
                    uint64 volatile a1reg = r_a1fromstack();
    80002450:	f8f43023          	sd	a5,-128(s0)
                    char c=(char)a1reg;
    80002454:	f8043503          	ld	a0,-128(s0)
                    __putc(c);
    80002458:	0ff57513          	andi	a0,a0,255
    8000245c:	00006097          	auipc	ra,0x6
    80002460:	c84080e7          	jalr	-892(ra) # 800080e0 <__putc>
                    break;
    80002464:	e55ff06f          	j	800022b8 <_ZN5Riscv20handleSupervisorTrapEv+0xfc>
                    TCB::running->sysRegime=true;
    80002468:	00009797          	auipc	a5,0x9
    8000246c:	0c87b783          	ld	a5,200(a5) # 8000b530 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002470:	0007b783          	ld	a5,0(a5)
    80002474:	00100713          	li	a4,1
    80002478:	00e78823          	sb	a4,16(a5)
                    break;
    8000247c:	e3dff06f          	j	800022b8 <_ZN5Riscv20handleSupervisorTrapEv+0xfc>
                    printString("Prosledjen code za syscall koji nije na listi za obradu.\n");
    80002480:	00007517          	auipc	a0,0x7
    80002484:	c6050513          	addi	a0,a0,-928 # 800090e0 <CONSOLE_STATUS+0xd0>
    80002488:	00003097          	auipc	ra,0x3
    8000248c:	854080e7          	jalr	-1964(ra) # 80004cdc <_Z11printStringPKc>
                    break;
    80002490:	e29ff06f          	j	800022b8 <_ZN5Riscv20handleSupervisorTrapEv+0xfc>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80002494:	00200793          	li	a5,2
    80002498:	1447b073          	csrc	sip,a5
            TCB::timeSliceCounter++;
    8000249c:	00009717          	auipc	a4,0x9
    800024a0:	06c73703          	ld	a4,108(a4) # 8000b508 <_GLOBAL_OFFSET_TABLE_+0x18>
    800024a4:	00073783          	ld	a5,0(a4)
    800024a8:	00178793          	addi	a5,a5,1
    800024ac:	00f73023          	sd	a5,0(a4)
            if (TCB::timeSliceCounter >= TCB::running->getTimeSlice()) {
    800024b0:	00009717          	auipc	a4,0x9
    800024b4:	08073703          	ld	a4,128(a4) # 8000b530 <_GLOBAL_OFFSET_TABLE_+0x40>
    800024b8:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const { return timeSlice; }
    800024bc:	05073703          	ld	a4,80(a4)
    800024c0:	dce7e2e3          	bltu	a5,a4,80002284 <_ZN5Riscv20handleSupervisorTrapEv+0xc8>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800024c4:	141027f3          	csrr	a5,sepc
    800024c8:	faf43823          	sd	a5,-80(s0)
    return sepc;
    800024cc:	fb043783          	ld	a5,-80(s0)
                uint64 volatile sepc = r_sepc();
    800024d0:	f8f43423          	sd	a5,-120(s0)
                TCB::timeSliceCounter = 0;
    800024d4:	00009797          	auipc	a5,0x9
    800024d8:	0347b783          	ld	a5,52(a5) # 8000b508 <_GLOBAL_OFFSET_TABLE_+0x18>
    800024dc:	0007b023          	sd	zero,0(a5)
                TCB::yield();///TCB::dispatch();
    800024e0:	fffff097          	auipc	ra,0xfffff
    800024e4:	7b0080e7          	jalr	1968(ra) # 80001c90 <_ZN3TCB5yieldEv>
                w_sstatus(sstatus);
    800024e8:	fd043783          	ld	a5,-48(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800024ec:	10079073          	csrw	sstatus,a5
                w_sepc(sepc);
    800024f0:	f8843783          	ld	a5,-120(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800024f4:	14179073          	csrw	sepc,a5
}
    800024f8:	d8dff06f          	j	80002284 <_ZN5Riscv20handleSupervisorTrapEv+0xc8>
            printString("Unexpected trap cause\n");
    800024fc:	00007517          	auipc	a0,0x7
    80002500:	c2450513          	addi	a0,a0,-988 # 80009120 <CONSOLE_STATUS+0x110>
    80002504:	00002097          	auipc	ra,0x2
    80002508:	7d8080e7          	jalr	2008(ra) # 80004cdc <_Z11printStringPKc>
            printString("scause: ");
    8000250c:	00007517          	auipc	a0,0x7
    80002510:	c2c50513          	addi	a0,a0,-980 # 80009138 <CONSOLE_STATUS+0x128>
    80002514:	00002097          	auipc	ra,0x2
    80002518:	7c8080e7          	jalr	1992(ra) # 80004cdc <_Z11printStringPKc>
            printRegister(scause);
    8000251c:	fd843503          	ld	a0,-40(s0)
    80002520:	00001097          	auipc	ra,0x1
    80002524:	a64080e7          	jalr	-1436(ra) # 80002f84 <printRegister>
    __asm__ volatile ("csrr %[stval], stval" : [stval] "=r"(stval));
    80002528:	143027f3          	csrr	a5,stval
    8000252c:	fcf43023          	sd	a5,-64(s0)
    return stval;
    80002530:	fc043483          	ld	s1,-64(s0)
            printString("stval: ");
    80002534:	00007517          	auipc	a0,0x7
    80002538:	c1450513          	addi	a0,a0,-1004 # 80009148 <CONSOLE_STATUS+0x138>
    8000253c:	00002097          	auipc	ra,0x2
    80002540:	7a0080e7          	jalr	1952(ra) # 80004cdc <_Z11printStringPKc>
            printRegister(stval);
    80002544:	00048513          	mv	a0,s1
    80002548:	00001097          	auipc	ra,0x1
    8000254c:	a3c080e7          	jalr	-1476(ra) # 80002f84 <printRegister>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002550:	141027f3          	csrr	a5,sepc
    80002554:	faf43c23          	sd	a5,-72(s0)
    return sepc;
    80002558:	fb843483          	ld	s1,-72(s0)
            printString("sepc: ");
    8000255c:	00007517          	auipc	a0,0x7
    80002560:	bf450513          	addi	a0,a0,-1036 # 80009150 <CONSOLE_STATUS+0x140>
    80002564:	00002097          	auipc	ra,0x2
    80002568:	778080e7          	jalr	1912(ra) # 80004cdc <_Z11printStringPKc>
            printRegister(sepc);
    8000256c:	00048513          	mv	a0,s1
    80002570:	00001097          	auipc	ra,0x1
    80002574:	a14080e7          	jalr	-1516(ra) # 80002f84 <printRegister>
}
    80002578:	d0dff06f          	j	80002284 <_ZN5Riscv20handleSupervisorTrapEv+0xc8>

000000008000257c <_ZN5Riscv14terminateRiscvEv>:

void Riscv::terminateRiscv() {
    8000257c:	ff010113          	addi	sp,sp,-16
    80002580:	00813423          	sd	s0,8(sp)
    80002584:	01010413          	addi	s0,sp,16
    __asm__ volatile (
    "lui t0, 0x10000\n"
    "addi t0, t0, 0x0000\n"
    "li t1, 0x5555\n"
    "sw t1, 0(t0)\n"
    );
    80002588:	100002b7          	lui	t0,0x10000
    8000258c:	00028293          	mv	t0,t0
    80002590:	00005337          	lui	t1,0x5
    80002594:	5553031b          	addiw	t1,t1,1365
    80002598:	0062a023          	sw	t1,0(t0) # 10000000 <_entry-0x70000000>
    8000259c:	00813403          	ld	s0,8(sp)
    800025a0:	01010113          	addi	sp,sp,16
    800025a4:	00008067          	ret

00000000800025a8 <_ZN3SemC1Ej>:
//
#include "../h/sem.h"
#include "../h/tcb.hpp"
#include "../test/printing.hpp"

Sem::Sem(unsigned int init) {//
    800025a8:	ff010113          	addi	sp,sp,-16
    800025ac:	00813423          	sd	s0,8(sp)
    800025b0:	01010413          	addi	s0,sp,16
    val = init;
    800025b4:	00b52a23          	sw	a1,20(a0)
    on = true;
    800025b8:	00100793          	li	a5,1
    800025bc:	00f50823          	sb	a5,16(a0)
    blockedFirst= nullptr;
    800025c0:	00053023          	sd	zero,0(a0)
    blockedLast= nullptr;
    800025c4:	00053423          	sd	zero,8(a0)
}
    800025c8:	00813403          	ld	s0,8(sp)
    800025cc:	01010113          	addi	sp,sp,16
    800025d0:	00008067          	ret

00000000800025d4 <_ZN3Sem4openEj>:

Sem::~Sem() {
    close();
}

Sem *Sem::open(unsigned i) {//
    800025d4:	fe010113          	addi	sp,sp,-32
    800025d8:	00113c23          	sd	ra,24(sp)
    800025dc:	00813823          	sd	s0,16(sp)
    800025e0:	00913423          	sd	s1,8(sp)
    800025e4:	01213023          	sd	s2,0(sp)
    800025e8:	02010413          	addi	s0,sp,32
    800025ec:	00050913          	mv	s2,a0
    Sem *s = new Sem(i);
    800025f0:	01800513          	li	a0,24
    800025f4:	fffff097          	auipc	ra,0xfffff
    800025f8:	7f0080e7          	jalr	2032(ra) # 80001de4 <_Znwm>
    800025fc:	00050493          	mv	s1,a0
    80002600:	00090593          	mv	a1,s2
    80002604:	00000097          	auipc	ra,0x0
    80002608:	fa4080e7          	jalr	-92(ra) # 800025a8 <_ZN3SemC1Ej>
    return s;
}
    8000260c:	00048513          	mv	a0,s1
    80002610:	01813083          	ld	ra,24(sp)
    80002614:	01013403          	ld	s0,16(sp)
    80002618:	00813483          	ld	s1,8(sp)
    8000261c:	00013903          	ld	s2,0(sp)
    80002620:	02010113          	addi	sp,sp,32
    80002624:	00008067          	ret

0000000080002628 <_ZN3Sem4waitEv>:

int Sem::wait() {
    if (!on) {
    80002628:	01054783          	lbu	a5,16(a0)
    8000262c:	0a078063          	beqz	a5,800026cc <_ZN3Sem4waitEv+0xa4>
int Sem::wait() {
    80002630:	fe010113          	addi	sp,sp,-32
    80002634:	00113c23          	sd	ra,24(sp)
    80002638:	00813823          	sd	s0,16(sp)
    8000263c:	00913423          	sd	s1,8(sp)
    80002640:	02010413          	addi	s0,sp,32
    80002644:	00050493          	mv	s1,a0
        return -1;
    }
    //printString("Cekaj na sem\n");
    //printInt(val);

    if (--val < 0) {
    80002648:	01452783          	lw	a5,20(a0)
    8000264c:	fff7879b          	addiw	a5,a5,-1
    80002650:	00f52a23          	sw	a5,20(a0)
    80002654:	02079713          	slli	a4,a5,0x20
    80002658:	02074263          	bltz	a4,8000267c <_ZN3Sem4waitEv+0x54>
        }
       // printString("Blokirana, yieldovano\n");
        TCB::yield();
       // printString("Odblokirana\n");
    }
    if (!on) {
    8000265c:	0104c783          	lbu	a5,16(s1)
    80002660:	06078a63          	beqz	a5,800026d4 <_ZN3Sem4waitEv+0xac>
        return -1;
    }
    return 0;
    80002664:	00000513          	li	a0,0
}
    80002668:	01813083          	ld	ra,24(sp)
    8000266c:	01013403          	ld	s0,16(sp)
    80002670:	00813483          	ld	s1,8(sp)
    80002674:	02010113          	addi	sp,sp,32
    80002678:	00008067          	ret
        TCB *n = TCB::running;
    8000267c:	00009797          	auipc	a5,0x9
    80002680:	eb47b783          	ld	a5,-332(a5) # 8000b530 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002684:	0007b783          	ld	a5,0(a5)
        n->holder= this;
    80002688:	02a7b423          	sd	a0,40(a5)
    void setState(State e) { currentThreadState = e; }
    8000268c:	00300713          	li	a4,3
    80002690:	00e7a223          	sw	a4,4(a5)
        n->nextBlocked= nullptr;
    80002694:	0207b023          	sd	zero,32(a5)
        if (blockedFirst != nullptr) {
    80002698:	00053703          	ld	a4,0(a0)
    8000269c:	02070263          	beqz	a4,800026c0 <_ZN3Sem4waitEv+0x98>
            blockedLast->nextBlocked = n;
    800026a0:	00853703          	ld	a4,8(a0)
    800026a4:	02f73023          	sd	a5,32(a4)
            blockedLast = blockedLast->nextBlocked;
    800026a8:	00853783          	ld	a5,8(a0)
    800026ac:	0207b783          	ld	a5,32(a5)
    800026b0:	00f53423          	sd	a5,8(a0)
        TCB::yield();
    800026b4:	fffff097          	auipc	ra,0xfffff
    800026b8:	5dc080e7          	jalr	1500(ra) # 80001c90 <_ZN3TCB5yieldEv>
    800026bc:	fa1ff06f          	j	8000265c <_ZN3Sem4waitEv+0x34>
            blockedFirst = blockedLast = n;
    800026c0:	00f53423          	sd	a5,8(a0)
    800026c4:	00f53023          	sd	a5,0(a0)
    800026c8:	fedff06f          	j	800026b4 <_ZN3Sem4waitEv+0x8c>
        return -1;
    800026cc:	fff00513          	li	a0,-1
}
    800026d0:	00008067          	ret
        return -1;
    800026d4:	fff00513          	li	a0,-1
    800026d8:	f91ff06f          	j	80002668 <_ZN3Sem4waitEv+0x40>

00000000800026dc <_ZN3Sem6signalEv>:

int Sem::signal() {
    if (!on) {
    800026dc:	01054783          	lbu	a5,16(a0)
    800026e0:	08078663          	beqz	a5,8000276c <_ZN3Sem6signalEv+0x90>
int Sem::signal() {
    800026e4:	fe010113          	addi	sp,sp,-32
    800026e8:	00113c23          	sd	ra,24(sp)
    800026ec:	00813823          	sd	s0,16(sp)
    800026f0:	00913423          	sd	s1,8(sp)
    800026f4:	02010413          	addi	s0,sp,32
    800026f8:	00050493          	mv	s1,a0
        return -1;
    }
    //printString("Signal\n");
    //printInt(val);
    if (++val <= 0) {
    800026fc:	01452783          	lw	a5,20(a0)
    80002700:	0017879b          	addiw	a5,a5,1
    80002704:	0007871b          	sext.w	a4,a5
    80002708:	00f52a23          	sw	a5,20(a0)
    8000270c:	00e05e63          	blez	a4,80002728 <_ZN3Sem6signalEv+0x4c>
            TCB *n = blockedFirst;
            blockedFirst = blockedFirst->nextBlocked;
            n->release();
        }
    }
    return 0;
    80002710:	00000513          	li	a0,0
}
    80002714:	01813083          	ld	ra,24(sp)
    80002718:	01013403          	ld	s0,16(sp)
    8000271c:	00813483          	ld	s1,8(sp)
    80002720:	02010113          	addi	sp,sp,32
    80002724:	00008067          	ret
        if (blockedLast == blockedFirst && blockedFirst != nullptr) {
    80002728:	00853783          	ld	a5,8(a0)
    8000272c:	00053503          	ld	a0,0(a0)
    80002730:	02a78263          	beq	a5,a0,80002754 <_ZN3Sem6signalEv+0x78>
        if (blockedFirst != nullptr) {
    80002734:	0004b503          	ld	a0,0(s1)
    80002738:	02050e63          	beqz	a0,80002774 <_ZN3Sem6signalEv+0x98>
            blockedFirst = blockedFirst->nextBlocked;
    8000273c:	02053783          	ld	a5,32(a0)
    80002740:	00f4b023          	sd	a5,0(s1)
            n->release();
    80002744:	fffff097          	auipc	ra,0xfffff
    80002748:	5ec080e7          	jalr	1516(ra) # 80001d30 <_ZN3TCB7releaseEv>
    return 0;
    8000274c:	00000513          	li	a0,0
    80002750:	fc5ff06f          	j	80002714 <_ZN3Sem6signalEv+0x38>
        if (blockedLast == blockedFirst && blockedFirst != nullptr) {
    80002754:	fe0500e3          	beqz	a0,80002734 <_ZN3Sem6signalEv+0x58>
            blockedFirst = blockedLast = nullptr;
    80002758:	0004b423          	sd	zero,8(s1)
    8000275c:	0004b023          	sd	zero,0(s1)
            n->release();
    80002760:	fffff097          	auipc	ra,0xfffff
    80002764:	5d0080e7          	jalr	1488(ra) # 80001d30 <_ZN3TCB7releaseEv>
    80002768:	fcdff06f          	j	80002734 <_ZN3Sem6signalEv+0x58>
        return -1;
    8000276c:	fff00513          	li	a0,-1
}
    80002770:	00008067          	ret
    return 0;
    80002774:	00000513          	li	a0,0
    80002778:	f9dff06f          	j	80002714 <_ZN3Sem6signalEv+0x38>

000000008000277c <_ZN3Sem5closeEv>:

int Sem::close() {
    8000277c:	fe010113          	addi	sp,sp,-32
    80002780:	00113c23          	sd	ra,24(sp)
    80002784:	00813823          	sd	s0,16(sp)
    80002788:	00913423          	sd	s1,8(sp)
    8000278c:	02010413          	addi	s0,sp,32
    80002790:	00050493          	mv	s1,a0
    if (!on) {
    80002794:	01054783          	lbu	a5,16(a0)
    80002798:	04078663          	beqz	a5,800027e4 <_ZN3Sem5closeEv+0x68>
        return -1;
    }

    while (blockedFirst != nullptr) {
    8000279c:	0004b503          	ld	a0,0(s1)
    800027a0:	02050263          	beqz	a0,800027c4 <_ZN3Sem5closeEv+0x48>
        TCB *n = blockedFirst;
        blockedFirst = blockedFirst->nextBlocked;
    800027a4:	02053783          	ld	a5,32(a0)
    800027a8:	00f4b023          	sd	a5,0(s1)
        n->release();
    800027ac:	fffff097          	auipc	ra,0xfffff
    800027b0:	584080e7          	jalr	1412(ra) # 80001d30 <_ZN3TCB7releaseEv>
        if (blockedFirst == nullptr) {
    800027b4:	0004b783          	ld	a5,0(s1)
    800027b8:	fe0792e3          	bnez	a5,8000279c <_ZN3Sem5closeEv+0x20>
            blockedLast = blockedFirst;
    800027bc:	00f4b423          	sd	a5,8(s1)
    800027c0:	fddff06f          	j	8000279c <_ZN3Sem5closeEv+0x20>
        }
    }

    on = false;
    800027c4:	00048823          	sb	zero,16(s1)
    val = 0;
    800027c8:	0004aa23          	sw	zero,20(s1)

    return 0;
    800027cc:	00000513          	li	a0,0
}
    800027d0:	01813083          	ld	ra,24(sp)
    800027d4:	01013403          	ld	s0,16(sp)
    800027d8:	00813483          	ld	s1,8(sp)
    800027dc:	02010113          	addi	sp,sp,32
    800027e0:	00008067          	ret
        return -1;
    800027e4:	fff00513          	li	a0,-1
    800027e8:	fe9ff06f          	j	800027d0 <_ZN3Sem5closeEv+0x54>

00000000800027ec <_ZN3SemD1Ev>:
Sem::~Sem() {
    800027ec:	ff010113          	addi	sp,sp,-16
    800027f0:	00113423          	sd	ra,8(sp)
    800027f4:	00813023          	sd	s0,0(sp)
    800027f8:	01010413          	addi	s0,sp,16
    close();
    800027fc:	00000097          	auipc	ra,0x0
    80002800:	f80080e7          	jalr	-128(ra) # 8000277c <_ZN3Sem5closeEv>
}
    80002804:	00813083          	ld	ra,8(sp)
    80002808:	00013403          	ld	s0,0(sp)
    8000280c:	01010113          	addi	sp,sp,16
    80002810:	00008067          	ret

0000000080002814 <_ZN9Scheduler8idleFuncEPv>:

TCB *Scheduler::idle = nullptr;
TCB *Scheduler::last = nullptr;
TCB *Scheduler::first = nullptr;

void Scheduler::idleFunc(void *arg) {
    80002814:	ff010113          	addi	sp,sp,-16
    80002818:	00113423          	sd	ra,8(sp)
    8000281c:	00813023          	sd	s0,0(sp)
    80002820:	01010413          	addi	s0,sp,16
    while (1) {
        printString("spin\n");//
    80002824:	00007517          	auipc	a0,0x7
    80002828:	a4450513          	addi	a0,a0,-1468 # 80009268 <CONSOLE_STATUS+0x258>
    8000282c:	00002097          	auipc	ra,0x2
    80002830:	4b0080e7          	jalr	1200(ra) # 80004cdc <_Z11printStringPKc>
    while (1) {
    80002834:	ff1ff06f          	j	80002824 <_ZN9Scheduler8idleFuncEPv+0x10>

0000000080002838 <_ZN9Scheduler3getEv>:
    }
}

TCB *Scheduler::get() {
    80002838:	ff010113          	addi	sp,sp,-16
    8000283c:	00813423          	sd	s0,8(sp)
    80002840:	01010413          	addi	s0,sp,16
          n = n->next;
      }
      printString("to je to\n");
      */

    if (first == nullptr) {
    80002844:	00009517          	auipc	a0,0x9
    80002848:	d5c53503          	ld	a0,-676(a0) # 8000b5a0 <_ZN9Scheduler5firstE>
    8000284c:	02050663          	beqz	a0,80002878 <_ZN9Scheduler3getEv+0x40>
        return idle;
    }

    TCB *ret = first;

    if (first == last) {
    80002850:	00009797          	auipc	a5,0x9
    80002854:	d607b783          	ld	a5,-672(a5) # 8000b5b0 <_ZN9Scheduler4lastE>
    80002858:	02f50663          	beq	a0,a5,80002884 <_ZN9Scheduler3getEv+0x4c>
        first = last = nullptr;
    } else {
        first = first->next;
    8000285c:	01853783          	ld	a5,24(a0)
    80002860:	00009717          	auipc	a4,0x9
    80002864:	d4f73023          	sd	a5,-704(a4) # 8000b5a0 <_ZN9Scheduler5firstE>
    }
    ret->next = nullptr;
    80002868:	00053c23          	sd	zero,24(a0)
           n=n->next;
       }
       printString("to je to\n");
   */
    return ret;
}
    8000286c:	00813403          	ld	s0,8(sp)
    80002870:	01010113          	addi	sp,sp,16
    80002874:	00008067          	ret
        return idle;
    80002878:	00009517          	auipc	a0,0x9
    8000287c:	d3053503          	ld	a0,-720(a0) # 8000b5a8 <_ZN9Scheduler4idleE>
    80002880:	fedff06f          	j	8000286c <_ZN9Scheduler3getEv+0x34>
        first = last = nullptr;
    80002884:	00009797          	auipc	a5,0x9
    80002888:	d1c78793          	addi	a5,a5,-740 # 8000b5a0 <_ZN9Scheduler5firstE>
    8000288c:	0007b823          	sd	zero,16(a5)
    80002890:	0007b023          	sd	zero,0(a5)
    80002894:	fd5ff06f          	j	80002868 <_ZN9Scheduler3getEv+0x30>

0000000080002898 <_ZN9Scheduler3putEP3TCB>:

void Scheduler::put(TCB *tcb) {
    80002898:	ff010113          	addi	sp,sp,-16
    8000289c:	00813423          	sd	s0,8(sp)
    800028a0:	01010413          	addi	s0,sp,16
        printRegister((uint64)n);
        n=n->next;
    }
    printString("to je to\n");
*/
    if (tcb == idle || tcb == nullptr)return;
    800028a4:	00009797          	auipc	a5,0x9
    800028a8:	d047b783          	ld	a5,-764(a5) # 8000b5a8 <_ZN9Scheduler4idleE>
    800028ac:	02a78663          	beq	a5,a0,800028d8 <_ZN9Scheduler3putEP3TCB+0x40>
    800028b0:	02050463          	beqz	a0,800028d8 <_ZN9Scheduler3putEP3TCB+0x40>

    tcb->next = nullptr;
    800028b4:	00053c23          	sd	zero,24(a0)
    if (first == nullptr) {
    800028b8:	00009797          	auipc	a5,0x9
    800028bc:	ce87b783          	ld	a5,-792(a5) # 8000b5a0 <_ZN9Scheduler5firstE>
    800028c0:	02078263          	beqz	a5,800028e4 <_ZN9Scheduler3putEP3TCB+0x4c>
        first = last = tcb;
    } else {
        last = last->next = tcb;
    800028c4:	00009797          	auipc	a5,0x9
    800028c8:	cdc78793          	addi	a5,a5,-804 # 8000b5a0 <_ZN9Scheduler5firstE>
    800028cc:	0107b703          	ld	a4,16(a5)
    800028d0:	00a73c23          	sd	a0,24(a4)
    800028d4:	00a7b823          	sd	a0,16(a5)
           printRegister((uint64) n);
           n = n->next;
       }
       printString("to je to\n");
   */
}
    800028d8:	00813403          	ld	s0,8(sp)
    800028dc:	01010113          	addi	sp,sp,16
    800028e0:	00008067          	ret
        first = last = tcb;
    800028e4:	00009797          	auipc	a5,0x9
    800028e8:	cbc78793          	addi	a5,a5,-836 # 8000b5a0 <_ZN9Scheduler5firstE>
    800028ec:	00a7b823          	sd	a0,16(a5)
    800028f0:	00a7b023          	sd	a0,0(a5)
    800028f4:	fe5ff06f          	j	800028d8 <_ZN9Scheduler3putEP3TCB+0x40>

00000000800028f8 <_ZN9Scheduler6removeEP3TCB>:

void Scheduler::remove(TCB *t) {
    800028f8:	ff010113          	addi	sp,sp,-16
    800028fc:	00813423          	sd	s0,8(sp)
    80002900:	01010413          	addi	s0,sp,16
    TCB *f = first;
    80002904:	00009797          	auipc	a5,0x9
    80002908:	c9c7b783          	ld	a5,-868(a5) # 8000b5a0 <_ZN9Scheduler5firstE>
    TCB *prev = nullptr;
    8000290c:	00000713          	li	a4,0
    while (f != nullptr) {//&& f != last
    80002910:	02078263          	beqz	a5,80002934 <_ZN9Scheduler6removeEP3TCB+0x3c>
        if (f == t) {
    80002914:	00a78863          	beq	a5,a0,80002924 <_ZN9Scheduler6removeEP3TCB+0x2c>
            if (prev != nullptr)prev->next = f->next;
            f->next = nullptr;
            break;
        }
        prev = f;
    80002918:	00078713          	mv	a4,a5
        f = f->next;
    8000291c:	0187b783          	ld	a5,24(a5)
    while (f != nullptr) {//&& f != last
    80002920:	ff1ff06f          	j	80002910 <_ZN9Scheduler6removeEP3TCB+0x18>
            if (prev != nullptr)prev->next = f->next;
    80002924:	00070663          	beqz	a4,80002930 <_ZN9Scheduler6removeEP3TCB+0x38>
    80002928:	0187b683          	ld	a3,24(a5)
    8000292c:	00d73c23          	sd	a3,24(a4)
            f->next = nullptr;
    80002930:	0007bc23          	sd	zero,24(a5)
    }
}
    80002934:	00813403          	ld	s0,8(sp)
    80002938:	01010113          	addi	sp,sp,16
    8000293c:	00008067          	ret

0000000080002940 <_ZN9Scheduler5emptyEv>:
        static Scheduler instance;
        return instance;
    }

    static bool isEmpty() {
        return first == nullptr;
    80002940:	00009797          	auipc	a5,0x9
    80002944:	c607b783          	ld	a5,-928(a5) # 8000b5a0 <_ZN9Scheduler5firstE>
    cleanUp();
    delete idle;
}

void Scheduler::empty() {
    while (!isEmpty()) {
    80002948:	02078c63          	beqz	a5,80002980 <_ZN9Scheduler5emptyEv+0x40>
void Scheduler::empty() {
    8000294c:	ff010113          	addi	sp,sp,-16
    80002950:	00113423          	sd	ra,8(sp)
    80002954:	00813023          	sd	s0,0(sp)
    80002958:	01010413          	addi	s0,sp,16
        Scheduler::get();
    8000295c:	00000097          	auipc	ra,0x0
    80002960:	edc080e7          	jalr	-292(ra) # 80002838 <_ZN9Scheduler3getEv>
    80002964:	00009797          	auipc	a5,0x9
    80002968:	c3c7b783          	ld	a5,-964(a5) # 8000b5a0 <_ZN9Scheduler5firstE>
    while (!isEmpty()) {
    8000296c:	fe0798e3          	bnez	a5,8000295c <_ZN9Scheduler5emptyEv+0x1c>
    }

}
    80002970:	00813083          	ld	ra,8(sp)
    80002974:	00013403          	ld	s0,0(sp)
    80002978:	01010113          	addi	sp,sp,16
    8000297c:	00008067          	ret
    80002980:	00008067          	ret

0000000080002984 <_ZN9Scheduler7cleanUpEv>:
    80002984:	00009797          	auipc	a5,0x9
    80002988:	c1c7b783          	ld	a5,-996(a5) # 8000b5a0 <_ZN9Scheduler5firstE>

void Scheduler::cleanUp() {
    while (!isEmpty()) {
    8000298c:	06078863          	beqz	a5,800029fc <_ZN9Scheduler7cleanUpEv+0x78>
void Scheduler::cleanUp() {
    80002990:	fe010113          	addi	sp,sp,-32
    80002994:	00113c23          	sd	ra,24(sp)
    80002998:	00813823          	sd	s0,16(sp)
    8000299c:	00913423          	sd	s1,8(sp)
    800029a0:	02010413          	addi	s0,sp,32
        TCB *temp = Scheduler::get();
    800029a4:	00000097          	auipc	ra,0x0
    800029a8:	e94080e7          	jalr	-364(ra) # 80002838 <_ZN9Scheduler3getEv>
    800029ac:	00050493          	mv	s1,a0
        delete temp;
    800029b0:	02051263          	bnez	a0,800029d4 <_ZN9Scheduler7cleanUpEv+0x50>
    800029b4:	00009797          	auipc	a5,0x9
    800029b8:	bec7b783          	ld	a5,-1044(a5) # 8000b5a0 <_ZN9Scheduler5firstE>
    while (!isEmpty()) {
    800029bc:	fe0794e3          	bnez	a5,800029a4 <_ZN9Scheduler7cleanUpEv+0x20>
    }

    800029c0:	01813083          	ld	ra,24(sp)
    800029c4:	01013403          	ld	s0,16(sp)
    800029c8:	00813483          	ld	s1,8(sp)
    800029cc:	02010113          	addi	sp,sp,32
    800029d0:	00008067          	ret
        Scheduler::remove(this);
    800029d4:	00000097          	auipc	ra,0x0
    800029d8:	f24080e7          	jalr	-220(ra) # 800028f8 <_ZN9Scheduler6removeEP3TCB>
        delete[] stack;
    800029dc:	0384b503          	ld	a0,56(s1)
    800029e0:	00050663          	beqz	a0,800029ec <_ZN9Scheduler7cleanUpEv+0x68>
    800029e4:	fffff097          	auipc	ra,0xfffff
    800029e8:	4e0080e7          	jalr	1248(ra) # 80001ec4 <_ZdaPv>
        delete temp;
    800029ec:	00048513          	mv	a0,s1
    800029f0:	fffff097          	auipc	ra,0xfffff
    800029f4:	444080e7          	jalr	1092(ra) # 80001e34 <_ZdlPv>
    800029f8:	fbdff06f          	j	800029b4 <_ZN9Scheduler7cleanUpEv+0x30>
    800029fc:	00008067          	ret

0000000080002a00 <_ZN9SchedulerD1Ev>:
Scheduler::~Scheduler() {
    80002a00:	fe010113          	addi	sp,sp,-32
    80002a04:	00113c23          	sd	ra,24(sp)
    80002a08:	00813823          	sd	s0,16(sp)
    80002a0c:	00913423          	sd	s1,8(sp)
    80002a10:	02010413          	addi	s0,sp,32
    cleanUp();
    80002a14:	00000097          	auipc	ra,0x0
    80002a18:	f70080e7          	jalr	-144(ra) # 80002984 <_ZN9Scheduler7cleanUpEv>
    delete idle;
    80002a1c:	00009497          	auipc	s1,0x9
    80002a20:	b8c4b483          	ld	s1,-1140(s1) # 8000b5a8 <_ZN9Scheduler4idleE>
    80002a24:	02048663          	beqz	s1,80002a50 <_ZN9SchedulerD1Ev+0x50>
        Scheduler::remove(this);
    80002a28:	00048513          	mv	a0,s1
    80002a2c:	00000097          	auipc	ra,0x0
    80002a30:	ecc080e7          	jalr	-308(ra) # 800028f8 <_ZN9Scheduler6removeEP3TCB>
        delete[] stack;
    80002a34:	0384b503          	ld	a0,56(s1)
    80002a38:	00050663          	beqz	a0,80002a44 <_ZN9SchedulerD1Ev+0x44>
    80002a3c:	fffff097          	auipc	ra,0xfffff
    80002a40:	488080e7          	jalr	1160(ra) # 80001ec4 <_ZdaPv>
    80002a44:	00048513          	mv	a0,s1
    80002a48:	fffff097          	auipc	ra,0xfffff
    80002a4c:	3ec080e7          	jalr	1004(ra) # 80001e34 <_ZdlPv>
}
    80002a50:	01813083          	ld	ra,24(sp)
    80002a54:	01013403          	ld	s0,16(sp)
    80002a58:	00813483          	ld	s1,8(sp)
    80002a5c:	02010113          	addi	sp,sp,32
    80002a60:	00008067          	ret

0000000080002a64 <_ZN15MemoryAllocator9mem_allocEm>:

MemoryBlock *MemoryAllocator::base = nullptr;
char *MemoryAllocator::baseAddress = nullptr;
size_t MemoryAllocator::freeSpaceInBlks = 0;

void *MemoryAllocator::mem_alloc(size_t size) { //numofBlocks +1
    80002a64:	ff010113          	addi	sp,sp,-16
    80002a68:	00813423          	sd	s0,8(sp)
    80002a6c:	01010413          	addi	s0,sp,16
//best-fit
//lock
    if (size <= 0) {
    80002a70:	10050263          	beqz	a0,80002b74 <_ZN15MemoryAllocator9mem_allocEm+0x110>
    80002a74:	00050693          	mv	a3,a0
        //unlock
        return nullptr;
    }
    if (size > freeSpaceInBlks) {
    80002a78:	00009597          	auipc	a1,0x9
    80002a7c:	b405b583          	ld	a1,-1216(a1) # 8000b5b8 <_ZN15MemoryAllocator15freeSpaceInBlksE>
    80002a80:	0ea5ee63          	bltu	a1,a0,80002b7c <_ZN15MemoryAllocator9mem_allocEm+0x118>
        //unlock
        return nullptr;
    }

    if (base == nullptr) {
    80002a84:	00009517          	auipc	a0,0x9
    80002a88:	b3c53503          	ld	a0,-1220(a0) # 8000b5c0 <_ZN15MemoryAllocator4baseE>
    80002a8c:	0a050a63          	beqz	a0,80002b40 <_ZN15MemoryAllocator9mem_allocEm+0xdc>
        return nullptr;
    }

    MemoryBlock *curr = base;
    MemoryBlock *toReturn = nullptr;
    size_t remainBest = freeSpaceInBlks;
    80002a90:	00058613          	mv	a2,a1
    MemoryBlock *toReturn = nullptr;
    80002a94:	00000713          	li	a4,0
    80002a98:	0100006f          	j	80002aa8 <_ZN15MemoryAllocator9mem_allocEm+0x44>

                } else {

                    if (toReturn == nullptr) {
                        toReturn = curr;
                        remainBest = remain;
    80002a9c:	00078613          	mv	a2,a5
                        toReturn = curr;
    80002aa0:	00050713          	mv	a4,a0
                        }
                    }
                }
            }
        }
        curr = curr->next;
    80002aa4:	00053503          	ld	a0,0(a0)
    while (curr != nullptr) {
    80002aa8:	02050c63          	beqz	a0,80002ae0 <_ZN15MemoryAllocator9mem_allocEm+0x7c>
        if (!curr->allocated) {
    80002aac:	01854783          	lbu	a5,24(a0)
    80002ab0:	fe079ae3          	bnez	a5,80002aa4 <_ZN15MemoryAllocator9mem_allocEm+0x40>
            size_t remain = curr->size - size - 1;
    80002ab4:	01053783          	ld	a5,16(a0)
    80002ab8:	40d787b3          	sub	a5,a5,a3
    80002abc:	fff78793          	addi	a5,a5,-1
                if (remain == 0) {
    80002ac0:	00078c63          	beqz	a5,80002ad8 <_ZN15MemoryAllocator9mem_allocEm+0x74>
                    if (toReturn == nullptr) {
    80002ac4:	fc070ce3          	beqz	a4,80002a9c <_ZN15MemoryAllocator9mem_allocEm+0x38>
                        if (remainBest > remain) {
    80002ac8:	fcc7fee3          	bgeu	a5,a2,80002aa4 <_ZN15MemoryAllocator9mem_allocEm+0x40>
                            remainBest = remain;
    80002acc:	00078613          	mv	a2,a5
                            toReturn = curr;
    80002ad0:	00050713          	mv	a4,a0
    80002ad4:	fd1ff06f          	j	80002aa4 <_ZN15MemoryAllocator9mem_allocEm+0x40>
                    remainBest = 0;
    80002ad8:	00078613          	mv	a2,a5
                    toReturn = curr;
    80002adc:	00050713          	mv	a4,a0
    }

    if (toReturn == nullptr) {
    80002ae0:	0a070263          	beqz	a4,80002b84 <_ZN15MemoryAllocator9mem_allocEm+0x120>
        //unlock
        return nullptr;
    }

    toReturn->allocated = true;
    80002ae4:	00100793          	li	a5,1
    80002ae8:	00f70c23          	sb	a5,24(a4)
    freeSpaceInBlks = freeSpaceInBlks - size - 1;//numofBlocks+1
    80002aec:	40d585b3          	sub	a1,a1,a3
    80002af0:	fff58593          	addi	a1,a1,-1
    80002af4:	00009797          	auipc	a5,0x9
    80002af8:	acb7b223          	sd	a1,-1340(a5) # 8000b5b8 <_ZN15MemoryAllocator15freeSpaceInBlksE>

    if (remainBest == 0) {
    80002afc:	04060863          	beqz	a2,80002b4c <_ZN15MemoryAllocator9mem_allocEm+0xe8>
        //unlock
        return (void *) ((char *) ((char *) toReturn + sizeof(MemoryBlock)));//MEM_BLOCK_SIZE
    }

    if (remainBest == 1) {
    80002b00:	00100793          	li	a5,1
    80002b04:	04f60863          	beq	a2,a5,80002b54 <_ZN15MemoryAllocator9mem_allocEm+0xf0>
        toReturn->size++;
        //unlock
        return (void *) ((char *) ((char *) toReturn + sizeof(MemoryBlock)));//MEM_BLOCK_SIZE
    }

    size_t s = toReturn->size;
    80002b08:	01073603          	ld	a2,16(a4)

    MemoryBlock *fragment = (MemoryBlock *) ((char *) toReturn + (size + 1) * MEM_BLOCK_SIZE);
    80002b0c:	00168593          	addi	a1,a3,1
    80002b10:	00659793          	slli	a5,a1,0x6
    80002b14:	00f707b3          	add	a5,a4,a5
    fragment->next = toReturn->next;
    80002b18:	00073503          	ld	a0,0(a4)
    80002b1c:	00a7b023          	sd	a0,0(a5)
    fragment->prev = toReturn;
    80002b20:	00e7b423          	sd	a4,8(a5)
    fragment->size = s - size - 1;
    80002b24:	40d606b3          	sub	a3,a2,a3
    80002b28:	fff68693          	addi	a3,a3,-1
    80002b2c:	00d7b823          	sd	a3,16(a5)
    fragment->allocated = false;
    80002b30:	00078c23          	sb	zero,24(a5)
    toReturn->next = fragment;
    80002b34:	00f73023          	sd	a5,0(a4)
    toReturn->size = size + 1;
    80002b38:	00b73823          	sd	a1,16(a4)
//unlocl

    return (void *) ((char *) toReturn + sizeof(MemoryBlock));//MEM_BLOCK_SIZE
    80002b3c:	02070513          	addi	a0,a4,32
}
    80002b40:	00813403          	ld	s0,8(sp)
    80002b44:	01010113          	addi	sp,sp,16
    80002b48:	00008067          	ret
        return (void *) ((char *) ((char *) toReturn + sizeof(MemoryBlock)));//MEM_BLOCK_SIZE
    80002b4c:	02070513          	addi	a0,a4,32
    80002b50:	ff1ff06f          	j	80002b40 <_ZN15MemoryAllocator9mem_allocEm+0xdc>
        freeSpaceInBlks = freeSpaceInBlks - 1;
    80002b54:	fff58593          	addi	a1,a1,-1
    80002b58:	00009797          	auipc	a5,0x9
    80002b5c:	a6b7b023          	sd	a1,-1440(a5) # 8000b5b8 <_ZN15MemoryAllocator15freeSpaceInBlksE>
        toReturn->size++;
    80002b60:	01073783          	ld	a5,16(a4)
    80002b64:	00178793          	addi	a5,a5,1
    80002b68:	00f73823          	sd	a5,16(a4)
        return (void *) ((char *) ((char *) toReturn + sizeof(MemoryBlock)));//MEM_BLOCK_SIZE
    80002b6c:	02070513          	addi	a0,a4,32
    80002b70:	fd1ff06f          	j	80002b40 <_ZN15MemoryAllocator9mem_allocEm+0xdc>
        return nullptr;
    80002b74:	00000513          	li	a0,0
    80002b78:	fc9ff06f          	j	80002b40 <_ZN15MemoryAllocator9mem_allocEm+0xdc>
        return nullptr;
    80002b7c:	00000513          	li	a0,0
    80002b80:	fc1ff06f          	j	80002b40 <_ZN15MemoryAllocator9mem_allocEm+0xdc>
        return nullptr;
    80002b84:	00070513          	mv	a0,a4
    80002b88:	fb9ff06f          	j	80002b40 <_ZN15MemoryAllocator9mem_allocEm+0xdc>

0000000080002b8c <_ZN15MemoryAllocator5mergeEPv>:
    return -1;
//unlock

}

void MemoryAllocator::merge(void *curr) {
    80002b8c:	ff010113          	addi	sp,sp,-16
    80002b90:	00813423          	sd	s0,8(sp)
    80002b94:	01010413          	addi	s0,sp,16
    if (curr == nullptr) return;
    80002b98:	04050c63          	beqz	a0,80002bf0 <_ZN15MemoryAllocator5mergeEPv+0x64>
    MemoryBlock *cur = (MemoryBlock *) curr;
    if (cur->next != nullptr && !((cur->next)->allocated)) {
    80002b9c:	00053783          	ld	a5,0(a0)
    80002ba0:	02078263          	beqz	a5,80002bc4 <_ZN15MemoryAllocator5mergeEPv+0x38>
    80002ba4:	0187c703          	lbu	a4,24(a5)
    80002ba8:	00071e63          	bnez	a4,80002bc4 <_ZN15MemoryAllocator5mergeEPv+0x38>
        cur->size = cur->next->size + cur->size;
    80002bac:	0107b703          	ld	a4,16(a5)
    80002bb0:	01053683          	ld	a3,16(a0)
    80002bb4:	00d70733          	add	a4,a4,a3
    80002bb8:	00e53823          	sd	a4,16(a0)
        cur->next = cur->next->next;
    80002bbc:	0007b783          	ld	a5,0(a5)
    80002bc0:	00f53023          	sd	a5,0(a0)
    }
    if (cur->prev != nullptr && !((cur->prev)->allocated)) {
    80002bc4:	00853783          	ld	a5,8(a0)
    80002bc8:	02078463          	beqz	a5,80002bf0 <_ZN15MemoryAllocator5mergeEPv+0x64>
    80002bcc:	0187c703          	lbu	a4,24(a5)
    80002bd0:	02071063          	bnez	a4,80002bf0 <_ZN15MemoryAllocator5mergeEPv+0x64>
        cur->prev->size = cur->prev->size + cur->size;
    80002bd4:	0107b703          	ld	a4,16(a5)
    80002bd8:	01053683          	ld	a3,16(a0)
    80002bdc:	00d70733          	add	a4,a4,a3
    80002be0:	00e7b823          	sd	a4,16(a5)
        cur->prev->next = cur->next;
    80002be4:	00853783          	ld	a5,8(a0)
    80002be8:	00053703          	ld	a4,0(a0)
    80002bec:	00e7b023          	sd	a4,0(a5)
    }

}
    80002bf0:	00813403          	ld	s0,8(sp)
    80002bf4:	01010113          	addi	sp,sp,16
    80002bf8:	00008067          	ret

0000000080002bfc <_ZN15MemoryAllocator8mem_freeEPv>:
    if (!ptr) return 0;
    80002bfc:	08050a63          	beqz	a0,80002c90 <_ZN15MemoryAllocator8mem_freeEPv+0x94>
    80002c00:	00050713          	mv	a4,a0
    if ((char *) ptr < (char *) HEAP_START_ADDR)return -1;
    80002c04:	00009797          	auipc	a5,0x9
    80002c08:	8f47b783          	ld	a5,-1804(a5) # 8000b4f8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002c0c:	0007b783          	ld	a5,0(a5)
    80002c10:	08f56463          	bltu	a0,a5,80002c98 <_ZN15MemoryAllocator8mem_freeEPv+0x9c>
    if ((char *) ptr > (char *) HEAP_END_ADDR)return -2;
    80002c14:	00009797          	auipc	a5,0x9
    80002c18:	9247b783          	ld	a5,-1756(a5) # 8000b538 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002c1c:	0007b783          	ld	a5,0(a5)
    80002c20:	08a7e063          	bltu	a5,a0,80002ca0 <_ZN15MemoryAllocator8mem_freeEPv+0xa4>
    MemoryBlock *curr = base;
    80002c24:	00009517          	auipc	a0,0x9
    80002c28:	99c53503          	ld	a0,-1636(a0) # 8000b5c0 <_ZN15MemoryAllocator4baseE>
    MemoryBlock *find = (MemoryBlock *) ((char *) ptr - sizeof(MemoryBlock));//-MEM_BLOCK_SIZE
    80002c2c:	fe070713          	addi	a4,a4,-32
    80002c30:	0080006f          	j	80002c38 <_ZN15MemoryAllocator8mem_freeEPv+0x3c>
    for (; (char *) find > (char *) curr && curr->next != nullptr; curr = curr->next);
    80002c34:	00078513          	mv	a0,a5
    80002c38:	00e57663          	bgeu	a0,a4,80002c44 <_ZN15MemoryAllocator8mem_freeEPv+0x48>
    80002c3c:	00053783          	ld	a5,0(a0)
    80002c40:	fe079ae3          	bnez	a5,80002c34 <_ZN15MemoryAllocator8mem_freeEPv+0x38>
    if ((char *) find == (char *) curr) {
    80002c44:	06e51263          	bne	a0,a4,80002ca8 <_ZN15MemoryAllocator8mem_freeEPv+0xac>
int MemoryAllocator::mem_free(void *ptr) {
    80002c48:	ff010113          	addi	sp,sp,-16
    80002c4c:	00113423          	sd	ra,8(sp)
    80002c50:	00813023          	sd	s0,0(sp)
    80002c54:	01010413          	addi	s0,sp,16
        curr->allocated = false;
    80002c58:	00050c23          	sb	zero,24(a0)
        freeSpaceInBlks += curr->size;
    80002c5c:	01053683          	ld	a3,16(a0)
    80002c60:	00009717          	auipc	a4,0x9
    80002c64:	95870713          	addi	a4,a4,-1704 # 8000b5b8 <_ZN15MemoryAllocator15freeSpaceInBlksE>
    80002c68:	00073783          	ld	a5,0(a4)
    80002c6c:	00d787b3          	add	a5,a5,a3
    80002c70:	00f73023          	sd	a5,0(a4)
        merge(curr);
    80002c74:	00000097          	auipc	ra,0x0
    80002c78:	f18080e7          	jalr	-232(ra) # 80002b8c <_ZN15MemoryAllocator5mergeEPv>
        return 0;
    80002c7c:	00000513          	li	a0,0
}
    80002c80:	00813083          	ld	ra,8(sp)
    80002c84:	00013403          	ld	s0,0(sp)
    80002c88:	01010113          	addi	sp,sp,16
    80002c8c:	00008067          	ret
    if (!ptr) return 0;
    80002c90:	00000513          	li	a0,0
    80002c94:	00008067          	ret
    if ((char *) ptr < (char *) HEAP_START_ADDR)return -1;
    80002c98:	fff00513          	li	a0,-1
    80002c9c:	00008067          	ret
    if ((char *) ptr > (char *) HEAP_END_ADDR)return -2;
    80002ca0:	ffe00513          	li	a0,-2
    80002ca4:	00008067          	ret
    return -1;
    80002ca8:	fff00513          	li	a0,-1
}
    80002cac:	00008067          	ret

0000000080002cb0 <_ZN15MemoryAllocator9print_blkEP11MemoryBlock>:

void MemoryAllocator::print_blk(MemoryBlock *blk) {
    80002cb0:	fe010113          	addi	sp,sp,-32
    80002cb4:	00113c23          	sd	ra,24(sp)
    80002cb8:	00813823          	sd	s0,16(sp)
    80002cbc:	00913423          	sd	s1,8(sp)
    80002cc0:	02010413          	addi	s0,sp,32
    80002cc4:	00050493          	mv	s1,a0

    printStr("blk:\t\0");
    80002cc8:	00006517          	auipc	a0,0x6
    80002ccc:	5a850513          	addi	a0,a0,1448 # 80009270 <CONSOLE_STATUS+0x260>
    80002cd0:	00000097          	auipc	ra,0x0
    80002cd4:	158080e7          	jalr	344(ra) # 80002e28 <printStr>
    printInt((unsigned long) blk);
    80002cd8:	00048513          	mv	a0,s1
    80002cdc:	00000097          	auipc	ra,0x0
    80002ce0:	174080e7          	jalr	372(ra) # 80002e50 <printInt>
    printStr("\nnext:\t\0");
    80002ce4:	00006517          	auipc	a0,0x6
    80002ce8:	59450513          	addi	a0,a0,1428 # 80009278 <CONSOLE_STATUS+0x268>
    80002cec:	00000097          	auipc	ra,0x0
    80002cf0:	13c080e7          	jalr	316(ra) # 80002e28 <printStr>
    printInt((unsigned long) blk->next);
    80002cf4:	0004b503          	ld	a0,0(s1)
    80002cf8:	00000097          	auipc	ra,0x0
    80002cfc:	158080e7          	jalr	344(ra) # 80002e50 <printInt>
    printStr("\nprev:\t\0");
    80002d00:	00006517          	auipc	a0,0x6
    80002d04:	58850513          	addi	a0,a0,1416 # 80009288 <CONSOLE_STATUS+0x278>
    80002d08:	00000097          	auipc	ra,0x0
    80002d0c:	120080e7          	jalr	288(ra) # 80002e28 <printStr>
    printInt((unsigned long) blk->prev);
    80002d10:	0084b503          	ld	a0,8(s1)
    80002d14:	00000097          	auipc	ra,0x0
    80002d18:	13c080e7          	jalr	316(ra) # 80002e50 <printInt>
    printStr("\nsize:\t\0");
    80002d1c:	00006517          	auipc	a0,0x6
    80002d20:	57c50513          	addi	a0,a0,1404 # 80009298 <CONSOLE_STATUS+0x288>
    80002d24:	00000097          	auipc	ra,0x0
    80002d28:	104080e7          	jalr	260(ra) # 80002e28 <printStr>
    printInt(blk->size);
    80002d2c:	0104b503          	ld	a0,16(s1)
    80002d30:	00000097          	auipc	ra,0x0
    80002d34:	120080e7          	jalr	288(ra) # 80002e50 <printInt>
    printStr("\nstat:\t\0");
    80002d38:	00006517          	auipc	a0,0x6
    80002d3c:	57050513          	addi	a0,a0,1392 # 800092a8 <CONSOLE_STATUS+0x298>
    80002d40:	00000097          	auipc	ra,0x0
    80002d44:	0e8080e7          	jalr	232(ra) # 80002e28 <printStr>
    printInt(blk->allocated);
    80002d48:	0184c503          	lbu	a0,24(s1)
    80002d4c:	00000097          	auipc	ra,0x0
    80002d50:	104080e7          	jalr	260(ra) # 80002e50 <printInt>
    printStr("\n");
    80002d54:	00007517          	auipc	a0,0x7
    80002d58:	89c50513          	addi	a0,a0,-1892 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80002d5c:	00000097          	auipc	ra,0x0
    80002d60:	0cc080e7          	jalr	204(ra) # 80002e28 <printStr>
}
    80002d64:	01813083          	ld	ra,24(sp)
    80002d68:	01013403          	ld	s0,16(sp)
    80002d6c:	00813483          	ld	s1,8(sp)
    80002d70:	02010113          	addi	sp,sp,32
    80002d74:	00008067          	ret

0000000080002d78 <_ZN15MemoryAllocator15print_allocatorEv>:

void MemoryAllocator::print_allocator() {
    80002d78:	fe010113          	addi	sp,sp,-32
    80002d7c:	00113c23          	sd	ra,24(sp)
    80002d80:	00813823          	sd	s0,16(sp)
    80002d84:	00913423          	sd	s1,8(sp)
    80002d88:	02010413          	addi	s0,sp,32
    printInt(freeSpaceInBlks);
    80002d8c:	00009497          	auipc	s1,0x9
    80002d90:	82c48493          	addi	s1,s1,-2004 # 8000b5b8 <_ZN15MemoryAllocator15freeSpaceInBlksE>
    80002d94:	0004b503          	ld	a0,0(s1)
    80002d98:	00000097          	auipc	ra,0x0
    80002d9c:	0b8080e7          	jalr	184(ra) # 80002e50 <printInt>
    printStr("\n");
    80002da0:	00007517          	auipc	a0,0x7
    80002da4:	85050513          	addi	a0,a0,-1968 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80002da8:	00000097          	auipc	ra,0x0
    80002dac:	080080e7          	jalr	128(ra) # 80002e28 <printStr>
    printInt((uint64) baseAddress);
    80002db0:	0104b503          	ld	a0,16(s1)
    80002db4:	00000097          	auipc	ra,0x0
    80002db8:	09c080e7          	jalr	156(ra) # 80002e50 <printInt>
    printStr("\n");
    80002dbc:	00007517          	auipc	a0,0x7
    80002dc0:	83450513          	addi	a0,a0,-1996 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80002dc4:	00000097          	auipc	ra,0x0
    80002dc8:	064080e7          	jalr	100(ra) # 80002e28 <printStr>
    printInt((uint64) base);
    80002dcc:	0084b503          	ld	a0,8(s1)
    80002dd0:	00000097          	auipc	ra,0x0
    80002dd4:	080080e7          	jalr	128(ra) # 80002e50 <printInt>
    printStr("\n");
    80002dd8:	00007517          	auipc	a0,0x7
    80002ddc:	81850513          	addi	a0,a0,-2024 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80002de0:	00000097          	auipc	ra,0x0
    80002de4:	048080e7          	jalr	72(ra) # 80002e28 <printStr>
    for (MemoryBlock *curr = base; curr; curr = curr->next) {
    80002de8:	0084b483          	ld	s1,8(s1)
    80002dec:	02048463          	beqz	s1,80002e14 <_ZN15MemoryAllocator15print_allocatorEv+0x9c>
        print_blk(curr);
    80002df0:	00048513          	mv	a0,s1
    80002df4:	00000097          	auipc	ra,0x0
    80002df8:	ebc080e7          	jalr	-324(ra) # 80002cb0 <_ZN15MemoryAllocator9print_blkEP11MemoryBlock>
        printStr("\n");
    80002dfc:	00006517          	auipc	a0,0x6
    80002e00:	7f450513          	addi	a0,a0,2036 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80002e04:	00000097          	auipc	ra,0x0
    80002e08:	024080e7          	jalr	36(ra) # 80002e28 <printStr>
    for (MemoryBlock *curr = base; curr; curr = curr->next) {
    80002e0c:	0004b483          	ld	s1,0(s1)
    80002e10:	fddff06f          	j	80002dec <_ZN15MemoryAllocator15print_allocatorEv+0x74>
    }
    80002e14:	01813083          	ld	ra,24(sp)
    80002e18:	01013403          	ld	s0,16(sp)
    80002e1c:	00813483          	ld	s1,8(sp)
    80002e20:	02010113          	addi	sp,sp,32
    80002e24:	00008067          	ret

0000000080002e28 <printStr>:

#include "../lib/console.h" //kad uradis konzolu skloni
#include "../h/print.hpp"
#include "../test/printing.hpp"

void printStr(char const *string) {
    80002e28:	ff010113          	addi	sp,sp,-16
    80002e2c:	00113423          	sd	ra,8(sp)
    80002e30:	00813023          	sd	s0,0(sp)
    80002e34:	01010413          	addi	s0,sp,16
         __putc(*string);
         string++;
     }

 */
    printString(string);
    80002e38:	00002097          	auipc	ra,0x2
    80002e3c:	ea4080e7          	jalr	-348(ra) # 80004cdc <_Z11printStringPKc>
    //Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
}
    80002e40:	00813083          	ld	ra,8(sp)
    80002e44:	00013403          	ld	s0,0(sp)
    80002e48:	01010113          	addi	sp,sp,16
    80002e4c:	00008067          	ret

0000000080002e50 <printInt>:

void printInt(uint64 integer) {
    80002e50:	ff010113          	addi	sp,sp,-16
    80002e54:	00113423          	sd	ra,8(sp)
    80002e58:	00813023          	sd	s0,0(sp)
    80002e5c:	01010413          	addi	s0,sp,16
    // uint64 sstatus = Riscv::r_sstatus();
    // Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    printInt(integer, 10, 0);
    80002e60:	00000613          	li	a2,0
    80002e64:	00a00593          	li	a1,10
    80002e68:	0005051b          	sext.w	a0,a0
    80002e6c:	00002097          	auipc	ra,0x2
    80002e70:	020080e7          	jalr	32(ra) # 80004e8c <_Z8printIntiii>
    // Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
}
    80002e74:	00813083          	ld	ra,8(sp)
    80002e78:	00013403          	ld	s0,0(sp)
    80002e7c:	01010113          	addi	sp,sp,16
    80002e80:	00008067          	ret

0000000080002e84 <_Z13printHexDigith>:

void printHexDigit(uint8 digit) {
    80002e84:	ff010113          	addi	sp,sp,-16
    80002e88:	00113423          	sd	ra,8(sp)
    80002e8c:	00813023          	sd	s0,0(sp)
    80002e90:	01010413          	addi	s0,sp,16

    if (digit < 10) {
    80002e94:	00900793          	li	a5,9
    80002e98:	02a7e263          	bltu	a5,a0,80002ebc <_Z13printHexDigith+0x38>
        putc('0' + digit);
    80002e9c:	0305051b          	addiw	a0,a0,48
    80002ea0:	0ff57513          	andi	a0,a0,255
    80002ea4:	ffffe097          	auipc	ra,0xffffe
    80002ea8:	590080e7          	jalr	1424(ra) # 80001434 <putc>
    } else {
        putc('a' + (digit - 10));
    }
}
    80002eac:	00813083          	ld	ra,8(sp)
    80002eb0:	00013403          	ld	s0,0(sp)
    80002eb4:	01010113          	addi	sp,sp,16
    80002eb8:	00008067          	ret
        putc('a' + (digit - 10));
    80002ebc:	0575051b          	addiw	a0,a0,87
    80002ec0:	0ff57513          	andi	a0,a0,255
    80002ec4:	ffffe097          	auipc	ra,0xffffe
    80002ec8:	570080e7          	jalr	1392(ra) # 80001434 <putc>
}
    80002ecc:	fe1ff06f          	j	80002eac <_Z13printHexDigith+0x28>

0000000080002ed0 <_Z14printUint64Hexm>:

void printUint64Hex(uint64 num) {
    80002ed0:	fd010113          	addi	sp,sp,-48
    80002ed4:	02113423          	sd	ra,40(sp)
    80002ed8:	02813023          	sd	s0,32(sp)
    80002edc:	00913c23          	sd	s1,24(sp)
    80002ee0:	03010413          	addi	s0,sp,48
    const int HEX_DIGITS = 16;
    char buffer[HEX_DIGITS];
    int index = HEX_DIGITS - 1;


    if (num == 0) {
    80002ee4:	02050e63          	beqz	a0,80002f20 <_Z14printUint64Hexm+0x50>
    int index = HEX_DIGITS - 1;
    80002ee8:	00f00793          	li	a5,15
        putc('0');
        return;
    }

    while (num > 0 && index >= 0) {
    80002eec:	04050a63          	beqz	a0,80002f40 <_Z14printUint64Hexm+0x70>
    80002ef0:	0407c863          	bltz	a5,80002f40 <_Z14printUint64Hexm+0x70>
        buffer[index--] = "0123456789abcdef"[num & 0xF];
    80002ef4:	00f57693          	andi	a3,a0,15
    80002ef8:	00006717          	auipc	a4,0x6
    80002efc:	3c070713          	addi	a4,a4,960 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80002f00:	00d70733          	add	a4,a4,a3
    80002f04:	00074683          	lbu	a3,0(a4)
    80002f08:	fe040713          	addi	a4,s0,-32
    80002f0c:	00f70733          	add	a4,a4,a5
    80002f10:	fed70823          	sb	a3,-16(a4)
        num >>= 4;
    80002f14:	00455513          	srli	a0,a0,0x4
        buffer[index--] = "0123456789abcdef"[num & 0xF];
    80002f18:	fff7879b          	addiw	a5,a5,-1
    while (num > 0 && index >= 0) {
    80002f1c:	fd1ff06f          	j	80002eec <_Z14printUint64Hexm+0x1c>
        putc('0');
    80002f20:	03000513          	li	a0,48
    80002f24:	ffffe097          	auipc	ra,0xffffe
    80002f28:	510080e7          	jalr	1296(ra) # 80001434 <putc>
    }

    for (index = 0; index < HEX_DIGITS; ++index) {
        putc(buffer[index]);
    }
}
    80002f2c:	02813083          	ld	ra,40(sp)
    80002f30:	02013403          	ld	s0,32(sp)
    80002f34:	01813483          	ld	s1,24(sp)
    80002f38:	03010113          	addi	sp,sp,48
    80002f3c:	00008067          	ret
    while (index >= 0) {
    80002f40:	0007ce63          	bltz	a5,80002f5c <_Z14printUint64Hexm+0x8c>
        buffer[index--] = '0';
    80002f44:	fe040713          	addi	a4,s0,-32
    80002f48:	00f70733          	add	a4,a4,a5
    80002f4c:	03000693          	li	a3,48
    80002f50:	fed70823          	sb	a3,-16(a4)
    80002f54:	fff7879b          	addiw	a5,a5,-1
    while (index >= 0) {
    80002f58:	fe9ff06f          	j	80002f40 <_Z14printUint64Hexm+0x70>
    for (index = 0; index < HEX_DIGITS; ++index) {
    80002f5c:	00000493          	li	s1,0
    80002f60:	00f00793          	li	a5,15
    80002f64:	fc97c4e3          	blt	a5,s1,80002f2c <_Z14printUint64Hexm+0x5c>
        putc(buffer[index]);
    80002f68:	fe040793          	addi	a5,s0,-32
    80002f6c:	009787b3          	add	a5,a5,s1
    80002f70:	ff07c503          	lbu	a0,-16(a5)
    80002f74:	ffffe097          	auipc	ra,0xffffe
    80002f78:	4c0080e7          	jalr	1216(ra) # 80001434 <putc>
    for (index = 0; index < HEX_DIGITS; ++index) {
    80002f7c:	0014849b          	addiw	s1,s1,1
    80002f80:	fe1ff06f          	j	80002f60 <_Z14printUint64Hexm+0x90>

0000000080002f84 <printRegister>:

void printRegister(uint64 reg) {
    80002f84:	ff010113          	addi	sp,sp,-16
    80002f88:	00113423          	sd	ra,8(sp)
    80002f8c:	00813023          	sd	s0,0(sp)
    80002f90:	01010413          	addi	s0,sp,16
    // uint64 sstatus = Riscv::r_sstatus();
    //  Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    printUint64Hex(reg);
    80002f94:	00000097          	auipc	ra,0x0
    80002f98:	f3c080e7          	jalr	-196(ra) # 80002ed0 <_Z14printUint64Hexm>
    putc('\n');
    80002f9c:	00a00513          	li	a0,10
    80002fa0:	ffffe097          	auipc	ra,0xffffe
    80002fa4:	494080e7          	jalr	1172(ra) # 80001434 <putc>
    //  Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80002fa8:	00813083          	ld	ra,8(sp)
    80002fac:	00013403          	ld	s0,0(sp)
    80002fb0:	01010113          	addi	sp,sp,16
    80002fb4:	00008067          	ret

0000000080002fb8 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80002fb8:	fe010113          	addi	sp,sp,-32
    80002fbc:	00113c23          	sd	ra,24(sp)
    80002fc0:	00813823          	sd	s0,16(sp)
    80002fc4:	00913423          	sd	s1,8(sp)
    80002fc8:	01213023          	sd	s2,0(sp)
    80002fcc:	02010413          	addi	s0,sp,32
    80002fd0:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80002fd4:	00000913          	li	s2,0
    80002fd8:	00c0006f          	j	80002fe4 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x30) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002fdc:	ffffe097          	auipc	ra,0xffffe
    80002fe0:	298080e7          	jalr	664(ra) # 80001274 <thread_dispatch>
    while ((key = getc()) != 0x30) {
    80002fe4:	ffffe097          	auipc	ra,0xffffe
    80002fe8:	478080e7          	jalr	1144(ra) # 8000145c <getc>
    80002fec:	0005059b          	sext.w	a1,a0
    80002ff0:	03000793          	li	a5,48
    80002ff4:	02f58a63          	beq	a1,a5,80003028 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80002ff8:	0084b503          	ld	a0,8(s1)
    80002ffc:	00003097          	auipc	ra,0x3
    80003000:	b74080e7          	jalr	-1164(ra) # 80005b70 <_ZN6Buffer3putEi>
        i++;
    80003004:	0019071b          	addiw	a4,s2,1
    80003008:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000300c:	0004a683          	lw	a3,0(s1)
    80003010:	0026979b          	slliw	a5,a3,0x2
    80003014:	00d787bb          	addw	a5,a5,a3
    80003018:	0017979b          	slliw	a5,a5,0x1
    8000301c:	02f767bb          	remw	a5,a4,a5
    80003020:	fc0792e3          	bnez	a5,80002fe4 <_ZL16producerKeyboardPv+0x2c>
    80003024:	fb9ff06f          	j	80002fdc <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80003028:	00100793          	li	a5,1
    8000302c:	00008717          	auipc	a4,0x8
    80003030:	5af72223          	sw	a5,1444(a4) # 8000b5d0 <_ZL9threadEnd>
    data->buffer->put('!');
    80003034:	02100593          	li	a1,33
    80003038:	0084b503          	ld	a0,8(s1)
    8000303c:	00003097          	auipc	ra,0x3
    80003040:	b34080e7          	jalr	-1228(ra) # 80005b70 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80003044:	0104b503          	ld	a0,16(s1)
    80003048:	ffffe097          	auipc	ra,0xffffe
    8000304c:	37c080e7          	jalr	892(ra) # 800013c4 <sem_signal>
}
    80003050:	01813083          	ld	ra,24(sp)
    80003054:	01013403          	ld	s0,16(sp)
    80003058:	00813483          	ld	s1,8(sp)
    8000305c:	00013903          	ld	s2,0(sp)
    80003060:	02010113          	addi	sp,sp,32
    80003064:	00008067          	ret

0000000080003068 <_ZL8producerPv>:

static void producer(void *arg) {
    80003068:	fe010113          	addi	sp,sp,-32
    8000306c:	00113c23          	sd	ra,24(sp)
    80003070:	00813823          	sd	s0,16(sp)
    80003074:	00913423          	sd	s1,8(sp)
    80003078:	01213023          	sd	s2,0(sp)
    8000307c:	02010413          	addi	s0,sp,32
    80003080:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003084:	00000913          	li	s2,0
    80003088:	00c0006f          	j	80003094 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    8000308c:	ffffe097          	auipc	ra,0xffffe
    80003090:	1e8080e7          	jalr	488(ra) # 80001274 <thread_dispatch>
    while (!threadEnd) {
    80003094:	00008797          	auipc	a5,0x8
    80003098:	53c7a783          	lw	a5,1340(a5) # 8000b5d0 <_ZL9threadEnd>
    8000309c:	02079e63          	bnez	a5,800030d8 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    800030a0:	0004a583          	lw	a1,0(s1)
    800030a4:	0305859b          	addiw	a1,a1,48
    800030a8:	0084b503          	ld	a0,8(s1)
    800030ac:	00003097          	auipc	ra,0x3
    800030b0:	ac4080e7          	jalr	-1340(ra) # 80005b70 <_ZN6Buffer3putEi>
        i++;
    800030b4:	0019071b          	addiw	a4,s2,1
    800030b8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800030bc:	0004a683          	lw	a3,0(s1)
    800030c0:	0026979b          	slliw	a5,a3,0x2
    800030c4:	00d787bb          	addw	a5,a5,a3
    800030c8:	0017979b          	slliw	a5,a5,0x1
    800030cc:	02f767bb          	remw	a5,a4,a5
    800030d0:	fc0792e3          	bnez	a5,80003094 <_ZL8producerPv+0x2c>
    800030d4:	fb9ff06f          	j	8000308c <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    800030d8:	0104b503          	ld	a0,16(s1)
    800030dc:	ffffe097          	auipc	ra,0xffffe
    800030e0:	2e8080e7          	jalr	744(ra) # 800013c4 <sem_signal>
}
    800030e4:	01813083          	ld	ra,24(sp)
    800030e8:	01013403          	ld	s0,16(sp)
    800030ec:	00813483          	ld	s1,8(sp)
    800030f0:	00013903          	ld	s2,0(sp)
    800030f4:	02010113          	addi	sp,sp,32
    800030f8:	00008067          	ret

00000000800030fc <_ZL8consumerPv>:

static void consumer(void *arg) {
    800030fc:	fd010113          	addi	sp,sp,-48
    80003100:	02113423          	sd	ra,40(sp)
    80003104:	02813023          	sd	s0,32(sp)
    80003108:	00913c23          	sd	s1,24(sp)
    8000310c:	01213823          	sd	s2,16(sp)
    80003110:	01313423          	sd	s3,8(sp)
    80003114:	01413023          	sd	s4,0(sp)
    80003118:	03010413          	addi	s0,sp,48
    8000311c:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003120:	00000a13          	li	s4,0
    80003124:	01c0006f          	j	80003140 <_ZL8consumerPv+0x44>

        putc('c');
        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80003128:	ffffe097          	auipc	ra,0xffffe
    8000312c:	14c080e7          	jalr	332(ra) # 80001274 <thread_dispatch>
    80003130:	0600006f          	j	80003190 <_ZL8consumerPv+0x94>
        }

        if (i % 80 == 0) {
            putc('\n');
    80003134:	00a00513          	li	a0,10
    80003138:	ffffe097          	auipc	ra,0xffffe
    8000313c:	2fc080e7          	jalr	764(ra) # 80001434 <putc>
    while (!threadEnd) {
    80003140:	00008797          	auipc	a5,0x8
    80003144:	4907a783          	lw	a5,1168(a5) # 8000b5d0 <_ZL9threadEnd>
    80003148:	06079863          	bnez	a5,800031b8 <_ZL8consumerPv+0xbc>
        int key = data->buffer->get();
    8000314c:	00893503          	ld	a0,8(s2)
    80003150:	00003097          	auipc	ra,0x3
    80003154:	ab0080e7          	jalr	-1360(ra) # 80005c00 <_ZN6Buffer3getEv>
    80003158:	00050993          	mv	s3,a0
        i++;
    8000315c:	001a049b          	addiw	s1,s4,1
    80003160:	00048a1b          	sext.w	s4,s1
        putc('c');
    80003164:	06300513          	li	a0,99
    80003168:	ffffe097          	auipc	ra,0xffffe
    8000316c:	2cc080e7          	jalr	716(ra) # 80001434 <putc>
        putc(key);
    80003170:	0ff9f513          	andi	a0,s3,255
    80003174:	ffffe097          	auipc	ra,0xffffe
    80003178:	2c0080e7          	jalr	704(ra) # 80001434 <putc>
        if (i % (5 * data->id) == 0) {
    8000317c:	00092703          	lw	a4,0(s2)
    80003180:	0027179b          	slliw	a5,a4,0x2
    80003184:	00e787bb          	addw	a5,a5,a4
    80003188:	02f4e7bb          	remw	a5,s1,a5
    8000318c:	f8078ee3          	beqz	a5,80003128 <_ZL8consumerPv+0x2c>
        if (i % 80 == 0) {
    80003190:	05000793          	li	a5,80
    80003194:	02f4e4bb          	remw	s1,s1,a5
    80003198:	fa0494e3          	bnez	s1,80003140 <_ZL8consumerPv+0x44>
    8000319c:	f99ff06f          	j	80003134 <_ZL8consumerPv+0x38>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    800031a0:	00893503          	ld	a0,8(s2)
    800031a4:	00003097          	auipc	ra,0x3
    800031a8:	a5c080e7          	jalr	-1444(ra) # 80005c00 <_ZN6Buffer3getEv>
        putc(key);
    800031ac:	0ff57513          	andi	a0,a0,255
    800031b0:	ffffe097          	auipc	ra,0xffffe
    800031b4:	284080e7          	jalr	644(ra) # 80001434 <putc>
    while (data->buffer->getCnt() > 0) {
    800031b8:	00893503          	ld	a0,8(s2)
    800031bc:	00003097          	auipc	ra,0x3
    800031c0:	ad0080e7          	jalr	-1328(ra) # 80005c8c <_ZN6Buffer6getCntEv>
    800031c4:	fca04ee3          	bgtz	a0,800031a0 <_ZL8consumerPv+0xa4>
    }

    sem_signal(data->wait);
    800031c8:	01093503          	ld	a0,16(s2)
    800031cc:	ffffe097          	auipc	ra,0xffffe
    800031d0:	1f8080e7          	jalr	504(ra) # 800013c4 <sem_signal>
}
    800031d4:	02813083          	ld	ra,40(sp)
    800031d8:	02013403          	ld	s0,32(sp)
    800031dc:	01813483          	ld	s1,24(sp)
    800031e0:	01013903          	ld	s2,16(sp)
    800031e4:	00813983          	ld	s3,8(sp)
    800031e8:	00013a03          	ld	s4,0(sp)
    800031ec:	03010113          	addi	sp,sp,48
    800031f0:	00008067          	ret

00000000800031f4 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    800031f4:	f9010113          	addi	sp,sp,-112
    800031f8:	06113423          	sd	ra,104(sp)
    800031fc:	06813023          	sd	s0,96(sp)
    80003200:	04913c23          	sd	s1,88(sp)
    80003204:	05213823          	sd	s2,80(sp)
    80003208:	05313423          	sd	s3,72(sp)
    8000320c:	05413023          	sd	s4,64(sp)
    80003210:	03513c23          	sd	s5,56(sp)
    80003214:	03613823          	sd	s6,48(sp)
    80003218:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    8000321c:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003220:	00006517          	auipc	a0,0x6
    80003224:	0b050513          	addi	a0,a0,176 # 800092d0 <CONSOLE_STATUS+0x2c0>
    80003228:	00002097          	auipc	ra,0x2
    8000322c:	ab4080e7          	jalr	-1356(ra) # 80004cdc <_Z11printStringPKc>
    getString(input, 30);
    80003230:	01e00593          	li	a1,30
    80003234:	fa040493          	addi	s1,s0,-96
    80003238:	00048513          	mv	a0,s1
    8000323c:	00002097          	auipc	ra,0x2
    80003240:	b28080e7          	jalr	-1240(ra) # 80004d64 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003244:	00048513          	mv	a0,s1
    80003248:	00002097          	auipc	ra,0x2
    8000324c:	bf4080e7          	jalr	-1036(ra) # 80004e3c <_Z11stringToIntPKc>
    80003250:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003254:	00006517          	auipc	a0,0x6
    80003258:	09c50513          	addi	a0,a0,156 # 800092f0 <CONSOLE_STATUS+0x2e0>
    8000325c:	00002097          	auipc	ra,0x2
    80003260:	a80080e7          	jalr	-1408(ra) # 80004cdc <_Z11printStringPKc>
    getString(input, 30);
    80003264:	01e00593          	li	a1,30
    80003268:	00048513          	mv	a0,s1
    8000326c:	00002097          	auipc	ra,0x2
    80003270:	af8080e7          	jalr	-1288(ra) # 80004d64 <_Z9getStringPci>
    n = stringToInt(input);
    80003274:	00048513          	mv	a0,s1
    80003278:	00002097          	auipc	ra,0x2
    8000327c:	bc4080e7          	jalr	-1084(ra) # 80004e3c <_Z11stringToIntPKc>
    80003280:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003284:	00006517          	auipc	a0,0x6
    80003288:	08c50513          	addi	a0,a0,140 # 80009310 <CONSOLE_STATUS+0x300>
    8000328c:	00002097          	auipc	ra,0x2
    80003290:	a50080e7          	jalr	-1456(ra) # 80004cdc <_Z11printStringPKc>
    80003294:	00000613          	li	a2,0
    80003298:	00a00593          	li	a1,10
    8000329c:	00090513          	mv	a0,s2
    800032a0:	00002097          	auipc	ra,0x2
    800032a4:	bec080e7          	jalr	-1044(ra) # 80004e8c <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800032a8:	00006517          	auipc	a0,0x6
    800032ac:	08050513          	addi	a0,a0,128 # 80009328 <CONSOLE_STATUS+0x318>
    800032b0:	00002097          	auipc	ra,0x2
    800032b4:	a2c080e7          	jalr	-1492(ra) # 80004cdc <_Z11printStringPKc>
    800032b8:	00000613          	li	a2,0
    800032bc:	00a00593          	li	a1,10
    800032c0:	00048513          	mv	a0,s1
    800032c4:	00002097          	auipc	ra,0x2
    800032c8:	bc8080e7          	jalr	-1080(ra) # 80004e8c <_Z8printIntiii>
    printString(".\n");
    800032cc:	00006517          	auipc	a0,0x6
    800032d0:	07450513          	addi	a0,a0,116 # 80009340 <CONSOLE_STATUS+0x330>
    800032d4:	00002097          	auipc	ra,0x2
    800032d8:	a08080e7          	jalr	-1528(ra) # 80004cdc <_Z11printStringPKc>
    if(threadNum > n) {
    800032dc:	0324c463          	blt	s1,s2,80003304 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    800032e0:	03205c63          	blez	s2,80003318 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    800032e4:	03800513          	li	a0,56
    800032e8:	fffff097          	auipc	ra,0xfffff
    800032ec:	afc080e7          	jalr	-1284(ra) # 80001de4 <_Znwm>
    800032f0:	00050a13          	mv	s4,a0
    800032f4:	00048593          	mv	a1,s1
    800032f8:	00002097          	auipc	ra,0x2
    800032fc:	7dc080e7          	jalr	2012(ra) # 80005ad4 <_ZN6BufferC1Ei>
    80003300:	0300006f          	j	80003330 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003304:	00006517          	auipc	a0,0x6
    80003308:	04450513          	addi	a0,a0,68 # 80009348 <CONSOLE_STATUS+0x338>
    8000330c:	00002097          	auipc	ra,0x2
    80003310:	9d0080e7          	jalr	-1584(ra) # 80004cdc <_Z11printStringPKc>
        return;
    80003314:	0140006f          	j	80003328 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003318:	00006517          	auipc	a0,0x6
    8000331c:	07050513          	addi	a0,a0,112 # 80009388 <CONSOLE_STATUS+0x378>
    80003320:	00002097          	auipc	ra,0x2
    80003324:	9bc080e7          	jalr	-1604(ra) # 80004cdc <_Z11printStringPKc>
        return;
    80003328:	000b0113          	mv	sp,s6
    8000332c:	1500006f          	j	8000347c <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003330:	00000593          	li	a1,0
    80003334:	00008517          	auipc	a0,0x8
    80003338:	2a450513          	addi	a0,a0,676 # 8000b5d8 <_ZL10waitForAll>
    8000333c:	ffffe097          	auipc	ra,0xffffe
    80003340:	f98080e7          	jalr	-104(ra) # 800012d4 <sem_open>
    thread_t threads[threadNum];
    80003344:	00391793          	slli	a5,s2,0x3
    80003348:	00f78793          	addi	a5,a5,15
    8000334c:	ff07f793          	andi	a5,a5,-16
    80003350:	40f10133          	sub	sp,sp,a5
    80003354:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003358:	0019071b          	addiw	a4,s2,1
    8000335c:	00171793          	slli	a5,a4,0x1
    80003360:	00e787b3          	add	a5,a5,a4
    80003364:	00379793          	slli	a5,a5,0x3
    80003368:	00f78793          	addi	a5,a5,15
    8000336c:	ff07f793          	andi	a5,a5,-16
    80003370:	40f10133          	sub	sp,sp,a5
    80003374:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003378:	00191613          	slli	a2,s2,0x1
    8000337c:	012607b3          	add	a5,a2,s2
    80003380:	00379793          	slli	a5,a5,0x3
    80003384:	00f987b3          	add	a5,s3,a5
    80003388:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    8000338c:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003390:	00008717          	auipc	a4,0x8
    80003394:	24873703          	ld	a4,584(a4) # 8000b5d8 <_ZL10waitForAll>
    80003398:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    8000339c:	00078613          	mv	a2,a5
    800033a0:	00000597          	auipc	a1,0x0
    800033a4:	d5c58593          	addi	a1,a1,-676 # 800030fc <_ZL8consumerPv>
    800033a8:	f9840513          	addi	a0,s0,-104
    800033ac:	ffffe097          	auipc	ra,0xffffe
    800033b0:	e28080e7          	jalr	-472(ra) # 800011d4 <thread_create>
    for (int i = 0; i < threadNum; i++) {
    800033b4:	00000493          	li	s1,0
    800033b8:	0280006f          	j	800033e0 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    800033bc:	00000597          	auipc	a1,0x0
    800033c0:	bfc58593          	addi	a1,a1,-1028 # 80002fb8 <_ZL16producerKeyboardPv>
                      data + i);
    800033c4:	00179613          	slli	a2,a5,0x1
    800033c8:	00f60633          	add	a2,a2,a5
    800033cc:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    800033d0:	00c98633          	add	a2,s3,a2
    800033d4:	ffffe097          	auipc	ra,0xffffe
    800033d8:	e00080e7          	jalr	-512(ra) # 800011d4 <thread_create>
    for (int i = 0; i < threadNum; i++) {
    800033dc:	0014849b          	addiw	s1,s1,1
    800033e0:	0524d263          	bge	s1,s2,80003424 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    800033e4:	00149793          	slli	a5,s1,0x1
    800033e8:	009787b3          	add	a5,a5,s1
    800033ec:	00379793          	slli	a5,a5,0x3
    800033f0:	00f987b3          	add	a5,s3,a5
    800033f4:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800033f8:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    800033fc:	00008717          	auipc	a4,0x8
    80003400:	1dc73703          	ld	a4,476(a4) # 8000b5d8 <_ZL10waitForAll>
    80003404:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003408:	00048793          	mv	a5,s1
    8000340c:	00349513          	slli	a0,s1,0x3
    80003410:	00aa8533          	add	a0,s5,a0
    80003414:	fa9054e3          	blez	s1,800033bc <_Z22producerConsumer_C_APIv+0x1c8>
    80003418:	00000597          	auipc	a1,0x0
    8000341c:	c5058593          	addi	a1,a1,-944 # 80003068 <_ZL8producerPv>
    80003420:	fa5ff06f          	j	800033c4 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003424:	ffffe097          	auipc	ra,0xffffe
    80003428:	e50080e7          	jalr	-432(ra) # 80001274 <thread_dispatch>
    for (int i = 0; i <= threadNum; i++) {
    8000342c:	00000493          	li	s1,0
    80003430:	00994e63          	blt	s2,s1,8000344c <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003434:	00008517          	auipc	a0,0x8
    80003438:	1a453503          	ld	a0,420(a0) # 8000b5d8 <_ZL10waitForAll>
    8000343c:	ffffe097          	auipc	ra,0xffffe
    80003440:	f3c080e7          	jalr	-196(ra) # 80001378 <sem_wait>
    for (int i = 0; i <= threadNum; i++) {
    80003444:	0014849b          	addiw	s1,s1,1
    80003448:	fe9ff06f          	j	80003430 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    8000344c:	00008517          	auipc	a0,0x8
    80003450:	18c53503          	ld	a0,396(a0) # 8000b5d8 <_ZL10waitForAll>
    80003454:	ffffe097          	auipc	ra,0xffffe
    80003458:	ed8080e7          	jalr	-296(ra) # 8000132c <sem_close>
    delete buffer;
    8000345c:	000a0e63          	beqz	s4,80003478 <_Z22producerConsumer_C_APIv+0x284>
    80003460:	000a0513          	mv	a0,s4
    80003464:	00003097          	auipc	ra,0x3
    80003468:	8b0080e7          	jalr	-1872(ra) # 80005d14 <_ZN6BufferD1Ev>
    8000346c:	000a0513          	mv	a0,s4
    80003470:	fffff097          	auipc	ra,0xfffff
    80003474:	9c4080e7          	jalr	-1596(ra) # 80001e34 <_ZdlPv>
    80003478:	000b0113          	mv	sp,s6

}
    8000347c:	f9040113          	addi	sp,s0,-112
    80003480:	06813083          	ld	ra,104(sp)
    80003484:	06013403          	ld	s0,96(sp)
    80003488:	05813483          	ld	s1,88(sp)
    8000348c:	05013903          	ld	s2,80(sp)
    80003490:	04813983          	ld	s3,72(sp)
    80003494:	04013a03          	ld	s4,64(sp)
    80003498:	03813a83          	ld	s5,56(sp)
    8000349c:	03013b03          	ld	s6,48(sp)
    800034a0:	07010113          	addi	sp,sp,112
    800034a4:	00008067          	ret
    800034a8:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    800034ac:	000a0513          	mv	a0,s4
    800034b0:	fffff097          	auipc	ra,0xfffff
    800034b4:	984080e7          	jalr	-1660(ra) # 80001e34 <_ZdlPv>
    800034b8:	00048513          	mv	a0,s1
    800034bc:	00009097          	auipc	ra,0x9
    800034c0:	21c080e7          	jalr	540(ra) # 8000c6d8 <_Unwind_Resume>

00000000800034c4 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800034c4:	fe010113          	addi	sp,sp,-32
    800034c8:	00113c23          	sd	ra,24(sp)
    800034cc:	00813823          	sd	s0,16(sp)
    800034d0:	00913423          	sd	s1,8(sp)
    800034d4:	01213023          	sd	s2,0(sp)
    800034d8:	02010413          	addi	s0,sp,32
    800034dc:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800034e0:	00100793          	li	a5,1
    800034e4:	02a7f863          	bgeu	a5,a0,80003514 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800034e8:	00a00793          	li	a5,10
    800034ec:	02f577b3          	remu	a5,a0,a5
    800034f0:	02078e63          	beqz	a5,8000352c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800034f4:	fff48513          	addi	a0,s1,-1
    800034f8:	00000097          	auipc	ra,0x0
    800034fc:	fcc080e7          	jalr	-52(ra) # 800034c4 <_ZL9fibonaccim>
    80003500:	00050913          	mv	s2,a0
    80003504:	ffe48513          	addi	a0,s1,-2
    80003508:	00000097          	auipc	ra,0x0
    8000350c:	fbc080e7          	jalr	-68(ra) # 800034c4 <_ZL9fibonaccim>
    80003510:	00a90533          	add	a0,s2,a0
}
    80003514:	01813083          	ld	ra,24(sp)
    80003518:	01013403          	ld	s0,16(sp)
    8000351c:	00813483          	ld	s1,8(sp)
    80003520:	00013903          	ld	s2,0(sp)
    80003524:	02010113          	addi	sp,sp,32
    80003528:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000352c:	ffffe097          	auipc	ra,0xffffe
    80003530:	d48080e7          	jalr	-696(ra) # 80001274 <thread_dispatch>
    80003534:	fc1ff06f          	j	800034f4 <_ZL9fibonaccim+0x30>

0000000080003538 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003538:	fe010113          	addi	sp,sp,-32
    8000353c:	00113c23          	sd	ra,24(sp)
    80003540:	00813823          	sd	s0,16(sp)
    80003544:	00913423          	sd	s1,8(sp)
    80003548:	01213023          	sd	s2,0(sp)
    8000354c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003550:	00000913          	li	s2,0
    80003554:	0380006f          	j	8000358c <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003558:	ffffe097          	auipc	ra,0xffffe
    8000355c:	d1c080e7          	jalr	-740(ra) # 80001274 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80003560:	00148493          	addi	s1,s1,1
    80003564:	000027b7          	lui	a5,0x2
    80003568:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000356c:	0097ee63          	bltu	a5,s1,80003588 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003570:	00000713          	li	a4,0
    80003574:	000077b7          	lui	a5,0x7
    80003578:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000357c:	fce7eee3          	bltu	a5,a4,80003558 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003580:	00170713          	addi	a4,a4,1
    80003584:	ff1ff06f          	j	80003574 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003588:	00190913          	addi	s2,s2,1
    8000358c:	00900793          	li	a5,9
    80003590:	0527e063          	bltu	a5,s2,800035d0 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003594:	00006517          	auipc	a0,0x6
    80003598:	a8c50513          	addi	a0,a0,-1396 # 80009020 <CONSOLE_STATUS+0x10>
    8000359c:	00001097          	auipc	ra,0x1
    800035a0:	740080e7          	jalr	1856(ra) # 80004cdc <_Z11printStringPKc>
    800035a4:	00000613          	li	a2,0
    800035a8:	00a00593          	li	a1,10
    800035ac:	0009051b          	sext.w	a0,s2
    800035b0:	00002097          	auipc	ra,0x2
    800035b4:	8dc080e7          	jalr	-1828(ra) # 80004e8c <_Z8printIntiii>
    800035b8:	00006517          	auipc	a0,0x6
    800035bc:	03850513          	addi	a0,a0,56 # 800095f0 <CONSOLE_STATUS+0x5e0>
    800035c0:	00001097          	auipc	ra,0x1
    800035c4:	71c080e7          	jalr	1820(ra) # 80004cdc <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800035c8:	00000493          	li	s1,0
    800035cc:	f99ff06f          	j	80003564 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    800035d0:	00006517          	auipc	a0,0x6
    800035d4:	de850513          	addi	a0,a0,-536 # 800093b8 <CONSOLE_STATUS+0x3a8>
    800035d8:	00001097          	auipc	ra,0x1
    800035dc:	704080e7          	jalr	1796(ra) # 80004cdc <_Z11printStringPKc>
    finishedA = true;
    800035e0:	00100793          	li	a5,1
    800035e4:	00008717          	auipc	a4,0x8
    800035e8:	fef70e23          	sb	a5,-4(a4) # 8000b5e0 <_ZL9finishedA>
}
    800035ec:	01813083          	ld	ra,24(sp)
    800035f0:	01013403          	ld	s0,16(sp)
    800035f4:	00813483          	ld	s1,8(sp)
    800035f8:	00013903          	ld	s2,0(sp)
    800035fc:	02010113          	addi	sp,sp,32
    80003600:	00008067          	ret

0000000080003604 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003604:	fe010113          	addi	sp,sp,-32
    80003608:	00113c23          	sd	ra,24(sp)
    8000360c:	00813823          	sd	s0,16(sp)
    80003610:	00913423          	sd	s1,8(sp)
    80003614:	01213023          	sd	s2,0(sp)
    80003618:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000361c:	00000913          	li	s2,0
    80003620:	0380006f          	j	80003658 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003624:	ffffe097          	auipc	ra,0xffffe
    80003628:	c50080e7          	jalr	-944(ra) # 80001274 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    8000362c:	00148493          	addi	s1,s1,1
    80003630:	000027b7          	lui	a5,0x2
    80003634:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003638:	0097ee63          	bltu	a5,s1,80003654 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000363c:	00000713          	li	a4,0
    80003640:	000077b7          	lui	a5,0x7
    80003644:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003648:	fce7eee3          	bltu	a5,a4,80003624 <_ZN7WorkerB11workerBodyBEPv+0x20>
    8000364c:	00170713          	addi	a4,a4,1
    80003650:	ff1ff06f          	j	80003640 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003654:	00190913          	addi	s2,s2,1
    80003658:	00f00793          	li	a5,15
    8000365c:	0527e063          	bltu	a5,s2,8000369c <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003660:	00006517          	auipc	a0,0x6
    80003664:	9c850513          	addi	a0,a0,-1592 # 80009028 <CONSOLE_STATUS+0x18>
    80003668:	00001097          	auipc	ra,0x1
    8000366c:	674080e7          	jalr	1652(ra) # 80004cdc <_Z11printStringPKc>
    80003670:	00000613          	li	a2,0
    80003674:	00a00593          	li	a1,10
    80003678:	0009051b          	sext.w	a0,s2
    8000367c:	00002097          	auipc	ra,0x2
    80003680:	810080e7          	jalr	-2032(ra) # 80004e8c <_Z8printIntiii>
    80003684:	00006517          	auipc	a0,0x6
    80003688:	f6c50513          	addi	a0,a0,-148 # 800095f0 <CONSOLE_STATUS+0x5e0>
    8000368c:	00001097          	auipc	ra,0x1
    80003690:	650080e7          	jalr	1616(ra) # 80004cdc <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003694:	00000493          	li	s1,0
    80003698:	f99ff06f          	j	80003630 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    8000369c:	00006517          	auipc	a0,0x6
    800036a0:	d2c50513          	addi	a0,a0,-724 # 800093c8 <CONSOLE_STATUS+0x3b8>
    800036a4:	00001097          	auipc	ra,0x1
    800036a8:	638080e7          	jalr	1592(ra) # 80004cdc <_Z11printStringPKc>
    finishedB = true;
    800036ac:	00100793          	li	a5,1
    800036b0:	00008717          	auipc	a4,0x8
    800036b4:	f2f708a3          	sb	a5,-207(a4) # 8000b5e1 <_ZL9finishedB>
    thread_dispatch();
    800036b8:	ffffe097          	auipc	ra,0xffffe
    800036bc:	bbc080e7          	jalr	-1092(ra) # 80001274 <thread_dispatch>
}
    800036c0:	01813083          	ld	ra,24(sp)
    800036c4:	01013403          	ld	s0,16(sp)
    800036c8:	00813483          	ld	s1,8(sp)
    800036cc:	00013903          	ld	s2,0(sp)
    800036d0:	02010113          	addi	sp,sp,32
    800036d4:	00008067          	ret

00000000800036d8 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    800036d8:	fe010113          	addi	sp,sp,-32
    800036dc:	00113c23          	sd	ra,24(sp)
    800036e0:	00813823          	sd	s0,16(sp)
    800036e4:	00913423          	sd	s1,8(sp)
    800036e8:	01213023          	sd	s2,0(sp)
    800036ec:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800036f0:	00000493          	li	s1,0
    800036f4:	0400006f          	j	80003734 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800036f8:	00006517          	auipc	a0,0x6
    800036fc:	93850513          	addi	a0,a0,-1736 # 80009030 <CONSOLE_STATUS+0x20>
    80003700:	00001097          	auipc	ra,0x1
    80003704:	5dc080e7          	jalr	1500(ra) # 80004cdc <_Z11printStringPKc>
    80003708:	00000613          	li	a2,0
    8000370c:	00a00593          	li	a1,10
    80003710:	00048513          	mv	a0,s1
    80003714:	00001097          	auipc	ra,0x1
    80003718:	778080e7          	jalr	1912(ra) # 80004e8c <_Z8printIntiii>
    8000371c:	00006517          	auipc	a0,0x6
    80003720:	ed450513          	addi	a0,a0,-300 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80003724:	00001097          	auipc	ra,0x1
    80003728:	5b8080e7          	jalr	1464(ra) # 80004cdc <_Z11printStringPKc>
    for (; i < 3; i++) {
    8000372c:	0014849b          	addiw	s1,s1,1
    80003730:	0ff4f493          	andi	s1,s1,255
    80003734:	00200793          	li	a5,2
    80003738:	fc97f0e3          	bgeu	a5,s1,800036f8 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    8000373c:	00006517          	auipc	a0,0x6
    80003740:	c9c50513          	addi	a0,a0,-868 # 800093d8 <CONSOLE_STATUS+0x3c8>
    80003744:	00001097          	auipc	ra,0x1
    80003748:	598080e7          	jalr	1432(ra) # 80004cdc <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000374c:	00700313          	li	t1,7
    thread_dispatch();
    80003750:	ffffe097          	auipc	ra,0xffffe
    80003754:	b24080e7          	jalr	-1244(ra) # 80001274 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003758:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    8000375c:	00006517          	auipc	a0,0x6
    80003760:	8ec50513          	addi	a0,a0,-1812 # 80009048 <CONSOLE_STATUS+0x38>
    80003764:	00001097          	auipc	ra,0x1
    80003768:	578080e7          	jalr	1400(ra) # 80004cdc <_Z11printStringPKc>
    8000376c:	00000613          	li	a2,0
    80003770:	00a00593          	li	a1,10
    80003774:	0009051b          	sext.w	a0,s2
    80003778:	00001097          	auipc	ra,0x1
    8000377c:	714080e7          	jalr	1812(ra) # 80004e8c <_Z8printIntiii>
    80003780:	00006517          	auipc	a0,0x6
    80003784:	e7050513          	addi	a0,a0,-400 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80003788:	00001097          	auipc	ra,0x1
    8000378c:	554080e7          	jalr	1364(ra) # 80004cdc <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003790:	00c00513          	li	a0,12
    80003794:	00000097          	auipc	ra,0x0
    80003798:	d30080e7          	jalr	-720(ra) # 800034c4 <_ZL9fibonaccim>
    8000379c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800037a0:	00006517          	auipc	a0,0x6
    800037a4:	8b050513          	addi	a0,a0,-1872 # 80009050 <CONSOLE_STATUS+0x40>
    800037a8:	00001097          	auipc	ra,0x1
    800037ac:	534080e7          	jalr	1332(ra) # 80004cdc <_Z11printStringPKc>
    800037b0:	00000613          	li	a2,0
    800037b4:	00a00593          	li	a1,10
    800037b8:	0009051b          	sext.w	a0,s2
    800037bc:	00001097          	auipc	ra,0x1
    800037c0:	6d0080e7          	jalr	1744(ra) # 80004e8c <_Z8printIntiii>
    800037c4:	00006517          	auipc	a0,0x6
    800037c8:	e2c50513          	addi	a0,a0,-468 # 800095f0 <CONSOLE_STATUS+0x5e0>
    800037cc:	00001097          	auipc	ra,0x1
    800037d0:	510080e7          	jalr	1296(ra) # 80004cdc <_Z11printStringPKc>
    800037d4:	0400006f          	j	80003814 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800037d8:	00006517          	auipc	a0,0x6
    800037dc:	85850513          	addi	a0,a0,-1960 # 80009030 <CONSOLE_STATUS+0x20>
    800037e0:	00001097          	auipc	ra,0x1
    800037e4:	4fc080e7          	jalr	1276(ra) # 80004cdc <_Z11printStringPKc>
    800037e8:	00000613          	li	a2,0
    800037ec:	00a00593          	li	a1,10
    800037f0:	00048513          	mv	a0,s1
    800037f4:	00001097          	auipc	ra,0x1
    800037f8:	698080e7          	jalr	1688(ra) # 80004e8c <_Z8printIntiii>
    800037fc:	00006517          	auipc	a0,0x6
    80003800:	df450513          	addi	a0,a0,-524 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80003804:	00001097          	auipc	ra,0x1
    80003808:	4d8080e7          	jalr	1240(ra) # 80004cdc <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000380c:	0014849b          	addiw	s1,s1,1
    80003810:	0ff4f493          	andi	s1,s1,255
    80003814:	00500793          	li	a5,5
    80003818:	fc97f0e3          	bgeu	a5,s1,800037d8 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    8000381c:	00006517          	auipc	a0,0x6
    80003820:	b9c50513          	addi	a0,a0,-1124 # 800093b8 <CONSOLE_STATUS+0x3a8>
    80003824:	00001097          	auipc	ra,0x1
    80003828:	4b8080e7          	jalr	1208(ra) # 80004cdc <_Z11printStringPKc>
    finishedC = true;
    8000382c:	00100793          	li	a5,1
    80003830:	00008717          	auipc	a4,0x8
    80003834:	daf70923          	sb	a5,-590(a4) # 8000b5e2 <_ZL9finishedC>
    thread_dispatch();
    80003838:	ffffe097          	auipc	ra,0xffffe
    8000383c:	a3c080e7          	jalr	-1476(ra) # 80001274 <thread_dispatch>
}
    80003840:	01813083          	ld	ra,24(sp)
    80003844:	01013403          	ld	s0,16(sp)
    80003848:	00813483          	ld	s1,8(sp)
    8000384c:	00013903          	ld	s2,0(sp)
    80003850:	02010113          	addi	sp,sp,32
    80003854:	00008067          	ret

0000000080003858 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003858:	fe010113          	addi	sp,sp,-32
    8000385c:	00113c23          	sd	ra,24(sp)
    80003860:	00813823          	sd	s0,16(sp)
    80003864:	00913423          	sd	s1,8(sp)
    80003868:	01213023          	sd	s2,0(sp)
    8000386c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003870:	00a00493          	li	s1,10
    80003874:	0400006f          	j	800038b4 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003878:	00005517          	auipc	a0,0x5
    8000387c:	7e850513          	addi	a0,a0,2024 # 80009060 <CONSOLE_STATUS+0x50>
    80003880:	00001097          	auipc	ra,0x1
    80003884:	45c080e7          	jalr	1116(ra) # 80004cdc <_Z11printStringPKc>
    80003888:	00000613          	li	a2,0
    8000388c:	00a00593          	li	a1,10
    80003890:	00048513          	mv	a0,s1
    80003894:	00001097          	auipc	ra,0x1
    80003898:	5f8080e7          	jalr	1528(ra) # 80004e8c <_Z8printIntiii>
    8000389c:	00006517          	auipc	a0,0x6
    800038a0:	d5450513          	addi	a0,a0,-684 # 800095f0 <CONSOLE_STATUS+0x5e0>
    800038a4:	00001097          	auipc	ra,0x1
    800038a8:	438080e7          	jalr	1080(ra) # 80004cdc <_Z11printStringPKc>
    for (; i < 13; i++) {
    800038ac:	0014849b          	addiw	s1,s1,1
    800038b0:	0ff4f493          	andi	s1,s1,255
    800038b4:	00c00793          	li	a5,12
    800038b8:	fc97f0e3          	bgeu	a5,s1,80003878 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    800038bc:	00006517          	auipc	a0,0x6
    800038c0:	b2c50513          	addi	a0,a0,-1236 # 800093e8 <CONSOLE_STATUS+0x3d8>
    800038c4:	00001097          	auipc	ra,0x1
    800038c8:	418080e7          	jalr	1048(ra) # 80004cdc <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800038cc:	00500313          	li	t1,5
    thread_dispatch();
    800038d0:	ffffe097          	auipc	ra,0xffffe
    800038d4:	9a4080e7          	jalr	-1628(ra) # 80001274 <thread_dispatch>

    uint64 result = fibonacci(16);
    800038d8:	01000513          	li	a0,16
    800038dc:	00000097          	auipc	ra,0x0
    800038e0:	be8080e7          	jalr	-1048(ra) # 800034c4 <_ZL9fibonaccim>
    800038e4:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800038e8:	00005517          	auipc	a0,0x5
    800038ec:	79050513          	addi	a0,a0,1936 # 80009078 <CONSOLE_STATUS+0x68>
    800038f0:	00001097          	auipc	ra,0x1
    800038f4:	3ec080e7          	jalr	1004(ra) # 80004cdc <_Z11printStringPKc>
    800038f8:	00000613          	li	a2,0
    800038fc:	00a00593          	li	a1,10
    80003900:	0009051b          	sext.w	a0,s2
    80003904:	00001097          	auipc	ra,0x1
    80003908:	588080e7          	jalr	1416(ra) # 80004e8c <_Z8printIntiii>
    8000390c:	00006517          	auipc	a0,0x6
    80003910:	ce450513          	addi	a0,a0,-796 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80003914:	00001097          	auipc	ra,0x1
    80003918:	3c8080e7          	jalr	968(ra) # 80004cdc <_Z11printStringPKc>
    8000391c:	0400006f          	j	8000395c <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003920:	00005517          	auipc	a0,0x5
    80003924:	74050513          	addi	a0,a0,1856 # 80009060 <CONSOLE_STATUS+0x50>
    80003928:	00001097          	auipc	ra,0x1
    8000392c:	3b4080e7          	jalr	948(ra) # 80004cdc <_Z11printStringPKc>
    80003930:	00000613          	li	a2,0
    80003934:	00a00593          	li	a1,10
    80003938:	00048513          	mv	a0,s1
    8000393c:	00001097          	auipc	ra,0x1
    80003940:	550080e7          	jalr	1360(ra) # 80004e8c <_Z8printIntiii>
    80003944:	00006517          	auipc	a0,0x6
    80003948:	cac50513          	addi	a0,a0,-852 # 800095f0 <CONSOLE_STATUS+0x5e0>
    8000394c:	00001097          	auipc	ra,0x1
    80003950:	390080e7          	jalr	912(ra) # 80004cdc <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003954:	0014849b          	addiw	s1,s1,1
    80003958:	0ff4f493          	andi	s1,s1,255
    8000395c:	00f00793          	li	a5,15
    80003960:	fc97f0e3          	bgeu	a5,s1,80003920 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003964:	00006517          	auipc	a0,0x6
    80003968:	a9450513          	addi	a0,a0,-1388 # 800093f8 <CONSOLE_STATUS+0x3e8>
    8000396c:	00001097          	auipc	ra,0x1
    80003970:	370080e7          	jalr	880(ra) # 80004cdc <_Z11printStringPKc>
    finishedD = true;
    80003974:	00100793          	li	a5,1
    80003978:	00008717          	auipc	a4,0x8
    8000397c:	c6f705a3          	sb	a5,-917(a4) # 8000b5e3 <_ZL9finishedD>
    thread_dispatch();
    80003980:	ffffe097          	auipc	ra,0xffffe
    80003984:	8f4080e7          	jalr	-1804(ra) # 80001274 <thread_dispatch>
}
    80003988:	01813083          	ld	ra,24(sp)
    8000398c:	01013403          	ld	s0,16(sp)
    80003990:	00813483          	ld	s1,8(sp)
    80003994:	00013903          	ld	s2,0(sp)
    80003998:	02010113          	addi	sp,sp,32
    8000399c:	00008067          	ret

00000000800039a0 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    800039a0:	fc010113          	addi	sp,sp,-64
    800039a4:	02113c23          	sd	ra,56(sp)
    800039a8:	02813823          	sd	s0,48(sp)
    800039ac:	02913423          	sd	s1,40(sp)
    800039b0:	03213023          	sd	s2,32(sp)
    800039b4:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    800039b8:	02000513          	li	a0,32
    800039bc:	ffffe097          	auipc	ra,0xffffe
    800039c0:	428080e7          	jalr	1064(ra) # 80001de4 <_Znwm>
    800039c4:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    800039c8:	ffffe097          	auipc	ra,0xffffe
    800039cc:	524080e7          	jalr	1316(ra) # 80001eec <_ZN6ThreadC1Ev>
    800039d0:	00008797          	auipc	a5,0x8
    800039d4:	a0078793          	addi	a5,a5,-1536 # 8000b3d0 <_ZTV7WorkerA+0x10>
    800039d8:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    800039dc:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    800039e0:	00006517          	auipc	a0,0x6
    800039e4:	a2850513          	addi	a0,a0,-1496 # 80009408 <CONSOLE_STATUS+0x3f8>
    800039e8:	00001097          	auipc	ra,0x1
    800039ec:	2f4080e7          	jalr	756(ra) # 80004cdc <_Z11printStringPKc>

    threads[1] = new WorkerB();
    800039f0:	02000513          	li	a0,32
    800039f4:	ffffe097          	auipc	ra,0xffffe
    800039f8:	3f0080e7          	jalr	1008(ra) # 80001de4 <_Znwm>
    800039fc:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003a00:	ffffe097          	auipc	ra,0xffffe
    80003a04:	4ec080e7          	jalr	1260(ra) # 80001eec <_ZN6ThreadC1Ev>
    80003a08:	00008797          	auipc	a5,0x8
    80003a0c:	9f078793          	addi	a5,a5,-1552 # 8000b3f8 <_ZTV7WorkerB+0x10>
    80003a10:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80003a14:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003a18:	00006517          	auipc	a0,0x6
    80003a1c:	a0850513          	addi	a0,a0,-1528 # 80009420 <CONSOLE_STATUS+0x410>
    80003a20:	00001097          	auipc	ra,0x1
    80003a24:	2bc080e7          	jalr	700(ra) # 80004cdc <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003a28:	02000513          	li	a0,32
    80003a2c:	ffffe097          	auipc	ra,0xffffe
    80003a30:	3b8080e7          	jalr	952(ra) # 80001de4 <_Znwm>
    80003a34:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003a38:	ffffe097          	auipc	ra,0xffffe
    80003a3c:	4b4080e7          	jalr	1204(ra) # 80001eec <_ZN6ThreadC1Ev>
    80003a40:	00008797          	auipc	a5,0x8
    80003a44:	9e078793          	addi	a5,a5,-1568 # 8000b420 <_ZTV7WorkerC+0x10>
    80003a48:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003a4c:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003a50:	00006517          	auipc	a0,0x6
    80003a54:	9e850513          	addi	a0,a0,-1560 # 80009438 <CONSOLE_STATUS+0x428>
    80003a58:	00001097          	auipc	ra,0x1
    80003a5c:	284080e7          	jalr	644(ra) # 80004cdc <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003a60:	02000513          	li	a0,32
    80003a64:	ffffe097          	auipc	ra,0xffffe
    80003a68:	380080e7          	jalr	896(ra) # 80001de4 <_Znwm>
    80003a6c:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003a70:	ffffe097          	auipc	ra,0xffffe
    80003a74:	47c080e7          	jalr	1148(ra) # 80001eec <_ZN6ThreadC1Ev>
    80003a78:	00008797          	auipc	a5,0x8
    80003a7c:	9d078793          	addi	a5,a5,-1584 # 8000b448 <_ZTV7WorkerD+0x10>
    80003a80:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80003a84:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003a88:	00006517          	auipc	a0,0x6
    80003a8c:	9c850513          	addi	a0,a0,-1592 # 80009450 <CONSOLE_STATUS+0x440>
    80003a90:	00001097          	auipc	ra,0x1
    80003a94:	24c080e7          	jalr	588(ra) # 80004cdc <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003a98:	00000493          	li	s1,0
    80003a9c:	00300793          	li	a5,3
    80003aa0:	0297c663          	blt	a5,s1,80003acc <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003aa4:	00349793          	slli	a5,s1,0x3
    80003aa8:	fe040713          	addi	a4,s0,-32
    80003aac:	00f707b3          	add	a5,a4,a5
    80003ab0:	fe07b503          	ld	a0,-32(a5)
    80003ab4:	ffffe097          	auipc	ra,0xffffe
    80003ab8:	4c8080e7          	jalr	1224(ra) # 80001f7c <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003abc:	0014849b          	addiw	s1,s1,1
    80003ac0:	fddff06f          	j	80003a9c <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80003ac4:	ffffe097          	auipc	ra,0xffffe
    80003ac8:	50c080e7          	jalr	1292(ra) # 80001fd0 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003acc:	00008797          	auipc	a5,0x8
    80003ad0:	b147c783          	lbu	a5,-1260(a5) # 8000b5e0 <_ZL9finishedA>
    80003ad4:	fe0788e3          	beqz	a5,80003ac4 <_Z20Threads_CPP_API_testv+0x124>
    80003ad8:	00008797          	auipc	a5,0x8
    80003adc:	b097c783          	lbu	a5,-1271(a5) # 8000b5e1 <_ZL9finishedB>
    80003ae0:	fe0782e3          	beqz	a5,80003ac4 <_Z20Threads_CPP_API_testv+0x124>
    80003ae4:	00008797          	auipc	a5,0x8
    80003ae8:	afe7c783          	lbu	a5,-1282(a5) # 8000b5e2 <_ZL9finishedC>
    80003aec:	fc078ce3          	beqz	a5,80003ac4 <_Z20Threads_CPP_API_testv+0x124>
    80003af0:	00008797          	auipc	a5,0x8
    80003af4:	af37c783          	lbu	a5,-1293(a5) # 8000b5e3 <_ZL9finishedD>
    80003af8:	fc0786e3          	beqz	a5,80003ac4 <_Z20Threads_CPP_API_testv+0x124>
    80003afc:	fc040493          	addi	s1,s0,-64
    80003b00:	0080006f          	j	80003b08 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80003b04:	00848493          	addi	s1,s1,8
    80003b08:	fe040793          	addi	a5,s0,-32
    80003b0c:	08f48663          	beq	s1,a5,80003b98 <_Z20Threads_CPP_API_testv+0x1f8>
    80003b10:	0004b503          	ld	a0,0(s1)
    80003b14:	fe0508e3          	beqz	a0,80003b04 <_Z20Threads_CPP_API_testv+0x164>
    80003b18:	00053783          	ld	a5,0(a0)
    80003b1c:	0087b783          	ld	a5,8(a5)
    80003b20:	000780e7          	jalr	a5
    80003b24:	fe1ff06f          	j	80003b04 <_Z20Threads_CPP_API_testv+0x164>
    80003b28:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80003b2c:	00048513          	mv	a0,s1
    80003b30:	ffffe097          	auipc	ra,0xffffe
    80003b34:	304080e7          	jalr	772(ra) # 80001e34 <_ZdlPv>
    80003b38:	00090513          	mv	a0,s2
    80003b3c:	00009097          	auipc	ra,0x9
    80003b40:	b9c080e7          	jalr	-1124(ra) # 8000c6d8 <_Unwind_Resume>
    80003b44:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003b48:	00048513          	mv	a0,s1
    80003b4c:	ffffe097          	auipc	ra,0xffffe
    80003b50:	2e8080e7          	jalr	744(ra) # 80001e34 <_ZdlPv>
    80003b54:	00090513          	mv	a0,s2
    80003b58:	00009097          	auipc	ra,0x9
    80003b5c:	b80080e7          	jalr	-1152(ra) # 8000c6d8 <_Unwind_Resume>
    80003b60:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80003b64:	00048513          	mv	a0,s1
    80003b68:	ffffe097          	auipc	ra,0xffffe
    80003b6c:	2cc080e7          	jalr	716(ra) # 80001e34 <_ZdlPv>
    80003b70:	00090513          	mv	a0,s2
    80003b74:	00009097          	auipc	ra,0x9
    80003b78:	b64080e7          	jalr	-1180(ra) # 8000c6d8 <_Unwind_Resume>
    80003b7c:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003b80:	00048513          	mv	a0,s1
    80003b84:	ffffe097          	auipc	ra,0xffffe
    80003b88:	2b0080e7          	jalr	688(ra) # 80001e34 <_ZdlPv>
    80003b8c:	00090513          	mv	a0,s2
    80003b90:	00009097          	auipc	ra,0x9
    80003b94:	b48080e7          	jalr	-1208(ra) # 8000c6d8 <_Unwind_Resume>
}
    80003b98:	03813083          	ld	ra,56(sp)
    80003b9c:	03013403          	ld	s0,48(sp)
    80003ba0:	02813483          	ld	s1,40(sp)
    80003ba4:	02013903          	ld	s2,32(sp)
    80003ba8:	04010113          	addi	sp,sp,64
    80003bac:	00008067          	ret

0000000080003bb0 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003bb0:	ff010113          	addi	sp,sp,-16
    80003bb4:	00113423          	sd	ra,8(sp)
    80003bb8:	00813023          	sd	s0,0(sp)
    80003bbc:	01010413          	addi	s0,sp,16
    80003bc0:	00008797          	auipc	a5,0x8
    80003bc4:	81078793          	addi	a5,a5,-2032 # 8000b3d0 <_ZTV7WorkerA+0x10>
    80003bc8:	00f53023          	sd	a5,0(a0)
    80003bcc:	ffffe097          	auipc	ra,0xffffe
    80003bd0:	19c080e7          	jalr	412(ra) # 80001d68 <_ZN6ThreadD1Ev>
    80003bd4:	00813083          	ld	ra,8(sp)
    80003bd8:	00013403          	ld	s0,0(sp)
    80003bdc:	01010113          	addi	sp,sp,16
    80003be0:	00008067          	ret

0000000080003be4 <_ZN7WorkerAD0Ev>:
    80003be4:	fe010113          	addi	sp,sp,-32
    80003be8:	00113c23          	sd	ra,24(sp)
    80003bec:	00813823          	sd	s0,16(sp)
    80003bf0:	00913423          	sd	s1,8(sp)
    80003bf4:	02010413          	addi	s0,sp,32
    80003bf8:	00050493          	mv	s1,a0
    80003bfc:	00007797          	auipc	a5,0x7
    80003c00:	7d478793          	addi	a5,a5,2004 # 8000b3d0 <_ZTV7WorkerA+0x10>
    80003c04:	00f53023          	sd	a5,0(a0)
    80003c08:	ffffe097          	auipc	ra,0xffffe
    80003c0c:	160080e7          	jalr	352(ra) # 80001d68 <_ZN6ThreadD1Ev>
    80003c10:	00048513          	mv	a0,s1
    80003c14:	ffffe097          	auipc	ra,0xffffe
    80003c18:	220080e7          	jalr	544(ra) # 80001e34 <_ZdlPv>
    80003c1c:	01813083          	ld	ra,24(sp)
    80003c20:	01013403          	ld	s0,16(sp)
    80003c24:	00813483          	ld	s1,8(sp)
    80003c28:	02010113          	addi	sp,sp,32
    80003c2c:	00008067          	ret

0000000080003c30 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003c30:	ff010113          	addi	sp,sp,-16
    80003c34:	00113423          	sd	ra,8(sp)
    80003c38:	00813023          	sd	s0,0(sp)
    80003c3c:	01010413          	addi	s0,sp,16
    80003c40:	00007797          	auipc	a5,0x7
    80003c44:	7b878793          	addi	a5,a5,1976 # 8000b3f8 <_ZTV7WorkerB+0x10>
    80003c48:	00f53023          	sd	a5,0(a0)
    80003c4c:	ffffe097          	auipc	ra,0xffffe
    80003c50:	11c080e7          	jalr	284(ra) # 80001d68 <_ZN6ThreadD1Ev>
    80003c54:	00813083          	ld	ra,8(sp)
    80003c58:	00013403          	ld	s0,0(sp)
    80003c5c:	01010113          	addi	sp,sp,16
    80003c60:	00008067          	ret

0000000080003c64 <_ZN7WorkerBD0Ev>:
    80003c64:	fe010113          	addi	sp,sp,-32
    80003c68:	00113c23          	sd	ra,24(sp)
    80003c6c:	00813823          	sd	s0,16(sp)
    80003c70:	00913423          	sd	s1,8(sp)
    80003c74:	02010413          	addi	s0,sp,32
    80003c78:	00050493          	mv	s1,a0
    80003c7c:	00007797          	auipc	a5,0x7
    80003c80:	77c78793          	addi	a5,a5,1916 # 8000b3f8 <_ZTV7WorkerB+0x10>
    80003c84:	00f53023          	sd	a5,0(a0)
    80003c88:	ffffe097          	auipc	ra,0xffffe
    80003c8c:	0e0080e7          	jalr	224(ra) # 80001d68 <_ZN6ThreadD1Ev>
    80003c90:	00048513          	mv	a0,s1
    80003c94:	ffffe097          	auipc	ra,0xffffe
    80003c98:	1a0080e7          	jalr	416(ra) # 80001e34 <_ZdlPv>
    80003c9c:	01813083          	ld	ra,24(sp)
    80003ca0:	01013403          	ld	s0,16(sp)
    80003ca4:	00813483          	ld	s1,8(sp)
    80003ca8:	02010113          	addi	sp,sp,32
    80003cac:	00008067          	ret

0000000080003cb0 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003cb0:	ff010113          	addi	sp,sp,-16
    80003cb4:	00113423          	sd	ra,8(sp)
    80003cb8:	00813023          	sd	s0,0(sp)
    80003cbc:	01010413          	addi	s0,sp,16
    80003cc0:	00007797          	auipc	a5,0x7
    80003cc4:	76078793          	addi	a5,a5,1888 # 8000b420 <_ZTV7WorkerC+0x10>
    80003cc8:	00f53023          	sd	a5,0(a0)
    80003ccc:	ffffe097          	auipc	ra,0xffffe
    80003cd0:	09c080e7          	jalr	156(ra) # 80001d68 <_ZN6ThreadD1Ev>
    80003cd4:	00813083          	ld	ra,8(sp)
    80003cd8:	00013403          	ld	s0,0(sp)
    80003cdc:	01010113          	addi	sp,sp,16
    80003ce0:	00008067          	ret

0000000080003ce4 <_ZN7WorkerCD0Ev>:
    80003ce4:	fe010113          	addi	sp,sp,-32
    80003ce8:	00113c23          	sd	ra,24(sp)
    80003cec:	00813823          	sd	s0,16(sp)
    80003cf0:	00913423          	sd	s1,8(sp)
    80003cf4:	02010413          	addi	s0,sp,32
    80003cf8:	00050493          	mv	s1,a0
    80003cfc:	00007797          	auipc	a5,0x7
    80003d00:	72478793          	addi	a5,a5,1828 # 8000b420 <_ZTV7WorkerC+0x10>
    80003d04:	00f53023          	sd	a5,0(a0)
    80003d08:	ffffe097          	auipc	ra,0xffffe
    80003d0c:	060080e7          	jalr	96(ra) # 80001d68 <_ZN6ThreadD1Ev>
    80003d10:	00048513          	mv	a0,s1
    80003d14:	ffffe097          	auipc	ra,0xffffe
    80003d18:	120080e7          	jalr	288(ra) # 80001e34 <_ZdlPv>
    80003d1c:	01813083          	ld	ra,24(sp)
    80003d20:	01013403          	ld	s0,16(sp)
    80003d24:	00813483          	ld	s1,8(sp)
    80003d28:	02010113          	addi	sp,sp,32
    80003d2c:	00008067          	ret

0000000080003d30 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80003d30:	ff010113          	addi	sp,sp,-16
    80003d34:	00113423          	sd	ra,8(sp)
    80003d38:	00813023          	sd	s0,0(sp)
    80003d3c:	01010413          	addi	s0,sp,16
    80003d40:	00007797          	auipc	a5,0x7
    80003d44:	70878793          	addi	a5,a5,1800 # 8000b448 <_ZTV7WorkerD+0x10>
    80003d48:	00f53023          	sd	a5,0(a0)
    80003d4c:	ffffe097          	auipc	ra,0xffffe
    80003d50:	01c080e7          	jalr	28(ra) # 80001d68 <_ZN6ThreadD1Ev>
    80003d54:	00813083          	ld	ra,8(sp)
    80003d58:	00013403          	ld	s0,0(sp)
    80003d5c:	01010113          	addi	sp,sp,16
    80003d60:	00008067          	ret

0000000080003d64 <_ZN7WorkerDD0Ev>:
    80003d64:	fe010113          	addi	sp,sp,-32
    80003d68:	00113c23          	sd	ra,24(sp)
    80003d6c:	00813823          	sd	s0,16(sp)
    80003d70:	00913423          	sd	s1,8(sp)
    80003d74:	02010413          	addi	s0,sp,32
    80003d78:	00050493          	mv	s1,a0
    80003d7c:	00007797          	auipc	a5,0x7
    80003d80:	6cc78793          	addi	a5,a5,1740 # 8000b448 <_ZTV7WorkerD+0x10>
    80003d84:	00f53023          	sd	a5,0(a0)
    80003d88:	ffffe097          	auipc	ra,0xffffe
    80003d8c:	fe0080e7          	jalr	-32(ra) # 80001d68 <_ZN6ThreadD1Ev>
    80003d90:	00048513          	mv	a0,s1
    80003d94:	ffffe097          	auipc	ra,0xffffe
    80003d98:	0a0080e7          	jalr	160(ra) # 80001e34 <_ZdlPv>
    80003d9c:	01813083          	ld	ra,24(sp)
    80003da0:	01013403          	ld	s0,16(sp)
    80003da4:	00813483          	ld	s1,8(sp)
    80003da8:	02010113          	addi	sp,sp,32
    80003dac:	00008067          	ret

0000000080003db0 <_ZN7WorkerA3runEv>:
    void run() override {
    80003db0:	ff010113          	addi	sp,sp,-16
    80003db4:	00113423          	sd	ra,8(sp)
    80003db8:	00813023          	sd	s0,0(sp)
    80003dbc:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80003dc0:	00000593          	li	a1,0
    80003dc4:	fffff097          	auipc	ra,0xfffff
    80003dc8:	774080e7          	jalr	1908(ra) # 80003538 <_ZN7WorkerA11workerBodyAEPv>
    }
    80003dcc:	00813083          	ld	ra,8(sp)
    80003dd0:	00013403          	ld	s0,0(sp)
    80003dd4:	01010113          	addi	sp,sp,16
    80003dd8:	00008067          	ret

0000000080003ddc <_ZN7WorkerB3runEv>:
    void run() override {
    80003ddc:	ff010113          	addi	sp,sp,-16
    80003de0:	00113423          	sd	ra,8(sp)
    80003de4:	00813023          	sd	s0,0(sp)
    80003de8:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80003dec:	00000593          	li	a1,0
    80003df0:	00000097          	auipc	ra,0x0
    80003df4:	814080e7          	jalr	-2028(ra) # 80003604 <_ZN7WorkerB11workerBodyBEPv>
    }
    80003df8:	00813083          	ld	ra,8(sp)
    80003dfc:	00013403          	ld	s0,0(sp)
    80003e00:	01010113          	addi	sp,sp,16
    80003e04:	00008067          	ret

0000000080003e08 <_ZN7WorkerC3runEv>:
    void run() override {
    80003e08:	ff010113          	addi	sp,sp,-16
    80003e0c:	00113423          	sd	ra,8(sp)
    80003e10:	00813023          	sd	s0,0(sp)
    80003e14:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80003e18:	00000593          	li	a1,0
    80003e1c:	00000097          	auipc	ra,0x0
    80003e20:	8bc080e7          	jalr	-1860(ra) # 800036d8 <_ZN7WorkerC11workerBodyCEPv>
    }
    80003e24:	00813083          	ld	ra,8(sp)
    80003e28:	00013403          	ld	s0,0(sp)
    80003e2c:	01010113          	addi	sp,sp,16
    80003e30:	00008067          	ret

0000000080003e34 <_ZN7WorkerD3runEv>:
    void run() override {
    80003e34:	ff010113          	addi	sp,sp,-16
    80003e38:	00113423          	sd	ra,8(sp)
    80003e3c:	00813023          	sd	s0,0(sp)
    80003e40:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80003e44:	00000593          	li	a1,0
    80003e48:	00000097          	auipc	ra,0x0
    80003e4c:	a10080e7          	jalr	-1520(ra) # 80003858 <_ZN7WorkerD11workerBodyDEPv>
    }
    80003e50:	00813083          	ld	ra,8(sp)
    80003e54:	00013403          	ld	s0,0(sp)
    80003e58:	01010113          	addi	sp,sp,16
    80003e5c:	00008067          	ret

0000000080003e60 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003e60:	fe010113          	addi	sp,sp,-32
    80003e64:	00113c23          	sd	ra,24(sp)
    80003e68:	00813823          	sd	s0,16(sp)
    80003e6c:	00913423          	sd	s1,8(sp)
    80003e70:	01213023          	sd	s2,0(sp)
    80003e74:	02010413          	addi	s0,sp,32
    80003e78:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003e7c:	00100793          	li	a5,1
    80003e80:	02a7f863          	bgeu	a5,a0,80003eb0 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003e84:	00a00793          	li	a5,10
    80003e88:	02f577b3          	remu	a5,a0,a5
    80003e8c:	02078e63          	beqz	a5,80003ec8 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003e90:	fff48513          	addi	a0,s1,-1
    80003e94:	00000097          	auipc	ra,0x0
    80003e98:	fcc080e7          	jalr	-52(ra) # 80003e60 <_ZL9fibonaccim>
    80003e9c:	00050913          	mv	s2,a0
    80003ea0:	ffe48513          	addi	a0,s1,-2
    80003ea4:	00000097          	auipc	ra,0x0
    80003ea8:	fbc080e7          	jalr	-68(ra) # 80003e60 <_ZL9fibonaccim>
    80003eac:	00a90533          	add	a0,s2,a0
}
    80003eb0:	01813083          	ld	ra,24(sp)
    80003eb4:	01013403          	ld	s0,16(sp)
    80003eb8:	00813483          	ld	s1,8(sp)
    80003ebc:	00013903          	ld	s2,0(sp)
    80003ec0:	02010113          	addi	sp,sp,32
    80003ec4:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003ec8:	ffffd097          	auipc	ra,0xffffd
    80003ecc:	3ac080e7          	jalr	940(ra) # 80001274 <thread_dispatch>
    80003ed0:	fc1ff06f          	j	80003e90 <_ZL9fibonaccim+0x30>

0000000080003ed4 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80003ed4:	fe010113          	addi	sp,sp,-32
    80003ed8:	00113c23          	sd	ra,24(sp)
    80003edc:	00813823          	sd	s0,16(sp)
    80003ee0:	00913423          	sd	s1,8(sp)
    80003ee4:	01213023          	sd	s2,0(sp)
    80003ee8:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003eec:	00a00493          	li	s1,10
    80003ef0:	0400006f          	j	80003f30 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003ef4:	00005517          	auipc	a0,0x5
    80003ef8:	16c50513          	addi	a0,a0,364 # 80009060 <CONSOLE_STATUS+0x50>
    80003efc:	00001097          	auipc	ra,0x1
    80003f00:	de0080e7          	jalr	-544(ra) # 80004cdc <_Z11printStringPKc>
    80003f04:	00000613          	li	a2,0
    80003f08:	00a00593          	li	a1,10
    80003f0c:	00048513          	mv	a0,s1
    80003f10:	00001097          	auipc	ra,0x1
    80003f14:	f7c080e7          	jalr	-132(ra) # 80004e8c <_Z8printIntiii>
    80003f18:	00005517          	auipc	a0,0x5
    80003f1c:	6d850513          	addi	a0,a0,1752 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80003f20:	00001097          	auipc	ra,0x1
    80003f24:	dbc080e7          	jalr	-580(ra) # 80004cdc <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003f28:	0014849b          	addiw	s1,s1,1
    80003f2c:	0ff4f493          	andi	s1,s1,255
    80003f30:	00c00793          	li	a5,12
    80003f34:	fc97f0e3          	bgeu	a5,s1,80003ef4 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80003f38:	00005517          	auipc	a0,0x5
    80003f3c:	4b050513          	addi	a0,a0,1200 # 800093e8 <CONSOLE_STATUS+0x3d8>
    80003f40:	00001097          	auipc	ra,0x1
    80003f44:	d9c080e7          	jalr	-612(ra) # 80004cdc <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003f48:	00500313          	li	t1,5
    thread_dispatch();
    80003f4c:	ffffd097          	auipc	ra,0xffffd
    80003f50:	328080e7          	jalr	808(ra) # 80001274 <thread_dispatch>

    uint64 result = fibonacci(16);
    80003f54:	01000513          	li	a0,16
    80003f58:	00000097          	auipc	ra,0x0
    80003f5c:	f08080e7          	jalr	-248(ra) # 80003e60 <_ZL9fibonaccim>
    80003f60:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003f64:	00005517          	auipc	a0,0x5
    80003f68:	11450513          	addi	a0,a0,276 # 80009078 <CONSOLE_STATUS+0x68>
    80003f6c:	00001097          	auipc	ra,0x1
    80003f70:	d70080e7          	jalr	-656(ra) # 80004cdc <_Z11printStringPKc>
    80003f74:	00000613          	li	a2,0
    80003f78:	00a00593          	li	a1,10
    80003f7c:	0009051b          	sext.w	a0,s2
    80003f80:	00001097          	auipc	ra,0x1
    80003f84:	f0c080e7          	jalr	-244(ra) # 80004e8c <_Z8printIntiii>
    80003f88:	00005517          	auipc	a0,0x5
    80003f8c:	66850513          	addi	a0,a0,1640 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80003f90:	00001097          	auipc	ra,0x1
    80003f94:	d4c080e7          	jalr	-692(ra) # 80004cdc <_Z11printStringPKc>
    80003f98:	0400006f          	j	80003fd8 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003f9c:	00005517          	auipc	a0,0x5
    80003fa0:	0c450513          	addi	a0,a0,196 # 80009060 <CONSOLE_STATUS+0x50>
    80003fa4:	00001097          	auipc	ra,0x1
    80003fa8:	d38080e7          	jalr	-712(ra) # 80004cdc <_Z11printStringPKc>
    80003fac:	00000613          	li	a2,0
    80003fb0:	00a00593          	li	a1,10
    80003fb4:	00048513          	mv	a0,s1
    80003fb8:	00001097          	auipc	ra,0x1
    80003fbc:	ed4080e7          	jalr	-300(ra) # 80004e8c <_Z8printIntiii>
    80003fc0:	00005517          	auipc	a0,0x5
    80003fc4:	63050513          	addi	a0,a0,1584 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80003fc8:	00001097          	auipc	ra,0x1
    80003fcc:	d14080e7          	jalr	-748(ra) # 80004cdc <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003fd0:	0014849b          	addiw	s1,s1,1
    80003fd4:	0ff4f493          	andi	s1,s1,255
    80003fd8:	00f00793          	li	a5,15
    80003fdc:	fc97f0e3          	bgeu	a5,s1,80003f9c <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80003fe0:	00005517          	auipc	a0,0x5
    80003fe4:	41850513          	addi	a0,a0,1048 # 800093f8 <CONSOLE_STATUS+0x3e8>
    80003fe8:	00001097          	auipc	ra,0x1
    80003fec:	cf4080e7          	jalr	-780(ra) # 80004cdc <_Z11printStringPKc>
    finishedD = true;
    80003ff0:	00100793          	li	a5,1
    80003ff4:	00007717          	auipc	a4,0x7
    80003ff8:	5ef70823          	sb	a5,1520(a4) # 8000b5e4 <_ZL9finishedD>
    thread_dispatch();
    80003ffc:	ffffd097          	auipc	ra,0xffffd
    80004000:	278080e7          	jalr	632(ra) # 80001274 <thread_dispatch>
}
    80004004:	01813083          	ld	ra,24(sp)
    80004008:	01013403          	ld	s0,16(sp)
    8000400c:	00813483          	ld	s1,8(sp)
    80004010:	00013903          	ld	s2,0(sp)
    80004014:	02010113          	addi	sp,sp,32
    80004018:	00008067          	ret

000000008000401c <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    8000401c:	fe010113          	addi	sp,sp,-32
    80004020:	00113c23          	sd	ra,24(sp)
    80004024:	00813823          	sd	s0,16(sp)
    80004028:	00913423          	sd	s1,8(sp)
    8000402c:	01213023          	sd	s2,0(sp)
    80004030:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004034:	00000493          	li	s1,0
    80004038:	0400006f          	j	80004078 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    8000403c:	00005517          	auipc	a0,0x5
    80004040:	ff450513          	addi	a0,a0,-12 # 80009030 <CONSOLE_STATUS+0x20>
    80004044:	00001097          	auipc	ra,0x1
    80004048:	c98080e7          	jalr	-872(ra) # 80004cdc <_Z11printStringPKc>
    8000404c:	00000613          	li	a2,0
    80004050:	00a00593          	li	a1,10
    80004054:	00048513          	mv	a0,s1
    80004058:	00001097          	auipc	ra,0x1
    8000405c:	e34080e7          	jalr	-460(ra) # 80004e8c <_Z8printIntiii>
    80004060:	00005517          	auipc	a0,0x5
    80004064:	59050513          	addi	a0,a0,1424 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80004068:	00001097          	auipc	ra,0x1
    8000406c:	c74080e7          	jalr	-908(ra) # 80004cdc <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004070:	0014849b          	addiw	s1,s1,1
    80004074:	0ff4f493          	andi	s1,s1,255
    80004078:	00200793          	li	a5,2
    8000407c:	fc97f0e3          	bgeu	a5,s1,8000403c <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004080:	00005517          	auipc	a0,0x5
    80004084:	35850513          	addi	a0,a0,856 # 800093d8 <CONSOLE_STATUS+0x3c8>
    80004088:	00001097          	auipc	ra,0x1
    8000408c:	c54080e7          	jalr	-940(ra) # 80004cdc <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004090:	00700313          	li	t1,7
    thread_dispatch();
    80004094:	ffffd097          	auipc	ra,0xffffd
    80004098:	1e0080e7          	jalr	480(ra) # 80001274 <thread_dispatch>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000409c:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800040a0:	00005517          	auipc	a0,0x5
    800040a4:	fa850513          	addi	a0,a0,-88 # 80009048 <CONSOLE_STATUS+0x38>
    800040a8:	00001097          	auipc	ra,0x1
    800040ac:	c34080e7          	jalr	-972(ra) # 80004cdc <_Z11printStringPKc>
    800040b0:	00000613          	li	a2,0
    800040b4:	00a00593          	li	a1,10
    800040b8:	0009051b          	sext.w	a0,s2
    800040bc:	00001097          	auipc	ra,0x1
    800040c0:	dd0080e7          	jalr	-560(ra) # 80004e8c <_Z8printIntiii>
    800040c4:	00005517          	auipc	a0,0x5
    800040c8:	52c50513          	addi	a0,a0,1324 # 800095f0 <CONSOLE_STATUS+0x5e0>
    800040cc:	00001097          	auipc	ra,0x1
    800040d0:	c10080e7          	jalr	-1008(ra) # 80004cdc <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800040d4:	00c00513          	li	a0,12
    800040d8:	00000097          	auipc	ra,0x0
    800040dc:	d88080e7          	jalr	-632(ra) # 80003e60 <_ZL9fibonaccim>
    800040e0:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800040e4:	00005517          	auipc	a0,0x5
    800040e8:	f6c50513          	addi	a0,a0,-148 # 80009050 <CONSOLE_STATUS+0x40>
    800040ec:	00001097          	auipc	ra,0x1
    800040f0:	bf0080e7          	jalr	-1040(ra) # 80004cdc <_Z11printStringPKc>
    800040f4:	00000613          	li	a2,0
    800040f8:	00a00593          	li	a1,10
    800040fc:	0009051b          	sext.w	a0,s2
    80004100:	00001097          	auipc	ra,0x1
    80004104:	d8c080e7          	jalr	-628(ra) # 80004e8c <_Z8printIntiii>
    80004108:	00005517          	auipc	a0,0x5
    8000410c:	4e850513          	addi	a0,a0,1256 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80004110:	00001097          	auipc	ra,0x1
    80004114:	bcc080e7          	jalr	-1076(ra) # 80004cdc <_Z11printStringPKc>
    80004118:	0400006f          	j	80004158 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    8000411c:	00005517          	auipc	a0,0x5
    80004120:	f1450513          	addi	a0,a0,-236 # 80009030 <CONSOLE_STATUS+0x20>
    80004124:	00001097          	auipc	ra,0x1
    80004128:	bb8080e7          	jalr	-1096(ra) # 80004cdc <_Z11printStringPKc>
    8000412c:	00000613          	li	a2,0
    80004130:	00a00593          	li	a1,10
    80004134:	00048513          	mv	a0,s1
    80004138:	00001097          	auipc	ra,0x1
    8000413c:	d54080e7          	jalr	-684(ra) # 80004e8c <_Z8printIntiii>
    80004140:	00005517          	auipc	a0,0x5
    80004144:	4b050513          	addi	a0,a0,1200 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80004148:	00001097          	auipc	ra,0x1
    8000414c:	b94080e7          	jalr	-1132(ra) # 80004cdc <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004150:	0014849b          	addiw	s1,s1,1
    80004154:	0ff4f493          	andi	s1,s1,255
    80004158:	00500793          	li	a5,5
    8000415c:	fc97f0e3          	bgeu	a5,s1,8000411c <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80004160:	00005517          	auipc	a0,0x5
    80004164:	25850513          	addi	a0,a0,600 # 800093b8 <CONSOLE_STATUS+0x3a8>
    80004168:	00001097          	auipc	ra,0x1
    8000416c:	b74080e7          	jalr	-1164(ra) # 80004cdc <_Z11printStringPKc>
    finishedC = true;
    80004170:	00100793          	li	a5,1
    80004174:	00007717          	auipc	a4,0x7
    80004178:	46f708a3          	sb	a5,1137(a4) # 8000b5e5 <_ZL9finishedC>
    thread_dispatch();
    8000417c:	ffffd097          	auipc	ra,0xffffd
    80004180:	0f8080e7          	jalr	248(ra) # 80001274 <thread_dispatch>
}
    80004184:	01813083          	ld	ra,24(sp)
    80004188:	01013403          	ld	s0,16(sp)
    8000418c:	00813483          	ld	s1,8(sp)
    80004190:	00013903          	ld	s2,0(sp)
    80004194:	02010113          	addi	sp,sp,32
    80004198:	00008067          	ret

000000008000419c <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    8000419c:	fe010113          	addi	sp,sp,-32
    800041a0:	00113c23          	sd	ra,24(sp)
    800041a4:	00813823          	sd	s0,16(sp)
    800041a8:	00913423          	sd	s1,8(sp)
    800041ac:	01213023          	sd	s2,0(sp)
    800041b0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800041b4:	00000913          	li	s2,0
    800041b8:	0380006f          	j	800041f0 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    800041bc:	ffffd097          	auipc	ra,0xffffd
    800041c0:	0b8080e7          	jalr	184(ra) # 80001274 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    800041c4:	00148493          	addi	s1,s1,1
    800041c8:	000027b7          	lui	a5,0x2
    800041cc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800041d0:	0097ee63          	bltu	a5,s1,800041ec <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800041d4:	00000713          	li	a4,0
    800041d8:	000077b7          	lui	a5,0x7
    800041dc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800041e0:	fce7eee3          	bltu	a5,a4,800041bc <_ZL11workerBodyBPv+0x20>
    800041e4:	00170713          	addi	a4,a4,1
    800041e8:	ff1ff06f          	j	800041d8 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800041ec:	00190913          	addi	s2,s2,1
    800041f0:	00f00793          	li	a5,15
    800041f4:	0527e063          	bltu	a5,s2,80004234 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800041f8:	00005517          	auipc	a0,0x5
    800041fc:	e3050513          	addi	a0,a0,-464 # 80009028 <CONSOLE_STATUS+0x18>
    80004200:	00001097          	auipc	ra,0x1
    80004204:	adc080e7          	jalr	-1316(ra) # 80004cdc <_Z11printStringPKc>
    80004208:	00000613          	li	a2,0
    8000420c:	00a00593          	li	a1,10
    80004210:	0009051b          	sext.w	a0,s2
    80004214:	00001097          	auipc	ra,0x1
    80004218:	c78080e7          	jalr	-904(ra) # 80004e8c <_Z8printIntiii>
    8000421c:	00005517          	auipc	a0,0x5
    80004220:	3d450513          	addi	a0,a0,980 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80004224:	00001097          	auipc	ra,0x1
    80004228:	ab8080e7          	jalr	-1352(ra) # 80004cdc <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000422c:	00000493          	li	s1,0
    80004230:	f99ff06f          	j	800041c8 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80004234:	00005517          	auipc	a0,0x5
    80004238:	19450513          	addi	a0,a0,404 # 800093c8 <CONSOLE_STATUS+0x3b8>
    8000423c:	00001097          	auipc	ra,0x1
    80004240:	aa0080e7          	jalr	-1376(ra) # 80004cdc <_Z11printStringPKc>
    finishedB = true;
    80004244:	00100793          	li	a5,1
    80004248:	00007717          	auipc	a4,0x7
    8000424c:	38f70f23          	sb	a5,926(a4) # 8000b5e6 <_ZL9finishedB>
    thread_dispatch();
    80004250:	ffffd097          	auipc	ra,0xffffd
    80004254:	024080e7          	jalr	36(ra) # 80001274 <thread_dispatch>
}
    80004258:	01813083          	ld	ra,24(sp)
    8000425c:	01013403          	ld	s0,16(sp)
    80004260:	00813483          	ld	s1,8(sp)
    80004264:	00013903          	ld	s2,0(sp)
    80004268:	02010113          	addi	sp,sp,32
    8000426c:	00008067          	ret

0000000080004270 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004270:	fe010113          	addi	sp,sp,-32
    80004274:	00113c23          	sd	ra,24(sp)
    80004278:	00813823          	sd	s0,16(sp)
    8000427c:	00913423          	sd	s1,8(sp)
    80004280:	01213023          	sd	s2,0(sp)
    80004284:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004288:	00000913          	li	s2,0
    8000428c:	0380006f          	j	800042c4 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80004290:	ffffd097          	auipc	ra,0xffffd
    80004294:	fe4080e7          	jalr	-28(ra) # 80001274 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80004298:	00148493          	addi	s1,s1,1
    8000429c:	000027b7          	lui	a5,0x2
    800042a0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800042a4:	0097ee63          	bltu	a5,s1,800042c0 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800042a8:	00000713          	li	a4,0
    800042ac:	000077b7          	lui	a5,0x7
    800042b0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800042b4:	fce7eee3          	bltu	a5,a4,80004290 <_ZL11workerBodyAPv+0x20>
    800042b8:	00170713          	addi	a4,a4,1
    800042bc:	ff1ff06f          	j	800042ac <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800042c0:	00190913          	addi	s2,s2,1
    800042c4:	00900793          	li	a5,9
    800042c8:	0527e063          	bltu	a5,s2,80004308 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800042cc:	00005517          	auipc	a0,0x5
    800042d0:	d5450513          	addi	a0,a0,-684 # 80009020 <CONSOLE_STATUS+0x10>
    800042d4:	00001097          	auipc	ra,0x1
    800042d8:	a08080e7          	jalr	-1528(ra) # 80004cdc <_Z11printStringPKc>
    800042dc:	00000613          	li	a2,0
    800042e0:	00a00593          	li	a1,10
    800042e4:	0009051b          	sext.w	a0,s2
    800042e8:	00001097          	auipc	ra,0x1
    800042ec:	ba4080e7          	jalr	-1116(ra) # 80004e8c <_Z8printIntiii>
    800042f0:	00005517          	auipc	a0,0x5
    800042f4:	30050513          	addi	a0,a0,768 # 800095f0 <CONSOLE_STATUS+0x5e0>
    800042f8:	00001097          	auipc	ra,0x1
    800042fc:	9e4080e7          	jalr	-1564(ra) # 80004cdc <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004300:	00000493          	li	s1,0
    80004304:	f99ff06f          	j	8000429c <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80004308:	00005517          	auipc	a0,0x5
    8000430c:	0b050513          	addi	a0,a0,176 # 800093b8 <CONSOLE_STATUS+0x3a8>
    80004310:	00001097          	auipc	ra,0x1
    80004314:	9cc080e7          	jalr	-1588(ra) # 80004cdc <_Z11printStringPKc>
    finishedA = true;
    80004318:	00100793          	li	a5,1
    8000431c:	00007717          	auipc	a4,0x7
    80004320:	2cf705a3          	sb	a5,715(a4) # 8000b5e7 <_ZL9finishedA>
}
    80004324:	01813083          	ld	ra,24(sp)
    80004328:	01013403          	ld	s0,16(sp)
    8000432c:	00813483          	ld	s1,8(sp)
    80004330:	00013903          	ld	s2,0(sp)
    80004334:	02010113          	addi	sp,sp,32
    80004338:	00008067          	ret

000000008000433c <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    8000433c:	fd010113          	addi	sp,sp,-48
    80004340:	02113423          	sd	ra,40(sp)
    80004344:	02813023          	sd	s0,32(sp)
    80004348:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    8000434c:	00000613          	li	a2,0
    80004350:	00000597          	auipc	a1,0x0
    80004354:	f2058593          	addi	a1,a1,-224 # 80004270 <_ZL11workerBodyAPv>
    80004358:	fd040513          	addi	a0,s0,-48
    8000435c:	ffffd097          	auipc	ra,0xffffd
    80004360:	e78080e7          	jalr	-392(ra) # 800011d4 <thread_create>
    printString("ThreadA created\n");
    80004364:	00005517          	auipc	a0,0x5
    80004368:	0a450513          	addi	a0,a0,164 # 80009408 <CONSOLE_STATUS+0x3f8>
    8000436c:	00001097          	auipc	ra,0x1
    80004370:	970080e7          	jalr	-1680(ra) # 80004cdc <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004374:	00000613          	li	a2,0
    80004378:	00000597          	auipc	a1,0x0
    8000437c:	e2458593          	addi	a1,a1,-476 # 8000419c <_ZL11workerBodyBPv>
    80004380:	fd840513          	addi	a0,s0,-40
    80004384:	ffffd097          	auipc	ra,0xffffd
    80004388:	e50080e7          	jalr	-432(ra) # 800011d4 <thread_create>
    printString("ThreadB created\n");
    8000438c:	00005517          	auipc	a0,0x5
    80004390:	09450513          	addi	a0,a0,148 # 80009420 <CONSOLE_STATUS+0x410>
    80004394:	00001097          	auipc	ra,0x1
    80004398:	948080e7          	jalr	-1720(ra) # 80004cdc <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    8000439c:	00000613          	li	a2,0
    800043a0:	00000597          	auipc	a1,0x0
    800043a4:	c7c58593          	addi	a1,a1,-900 # 8000401c <_ZL11workerBodyCPv>
    800043a8:	fe040513          	addi	a0,s0,-32
    800043ac:	ffffd097          	auipc	ra,0xffffd
    800043b0:	e28080e7          	jalr	-472(ra) # 800011d4 <thread_create>
    printString("ThreadC created\n");
    800043b4:	00005517          	auipc	a0,0x5
    800043b8:	08450513          	addi	a0,a0,132 # 80009438 <CONSOLE_STATUS+0x428>
    800043bc:	00001097          	auipc	ra,0x1
    800043c0:	920080e7          	jalr	-1760(ra) # 80004cdc <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800043c4:	00000613          	li	a2,0
    800043c8:	00000597          	auipc	a1,0x0
    800043cc:	b0c58593          	addi	a1,a1,-1268 # 80003ed4 <_ZL11workerBodyDPv>
    800043d0:	fe840513          	addi	a0,s0,-24
    800043d4:	ffffd097          	auipc	ra,0xffffd
    800043d8:	e00080e7          	jalr	-512(ra) # 800011d4 <thread_create>
    printString("ThreadD created\n");
    800043dc:	00005517          	auipc	a0,0x5
    800043e0:	07450513          	addi	a0,a0,116 # 80009450 <CONSOLE_STATUS+0x440>
    800043e4:	00001097          	auipc	ra,0x1
    800043e8:	8f8080e7          	jalr	-1800(ra) # 80004cdc <_Z11printStringPKc>
    800043ec:	00c0006f          	j	800043f8 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800043f0:	ffffd097          	auipc	ra,0xffffd
    800043f4:	e84080e7          	jalr	-380(ra) # 80001274 <thread_dispatch>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800043f8:	00007797          	auipc	a5,0x7
    800043fc:	1ef7c783          	lbu	a5,495(a5) # 8000b5e7 <_ZL9finishedA>
    80004400:	fe0788e3          	beqz	a5,800043f0 <_Z18Threads_C_API_testv+0xb4>
    80004404:	00007797          	auipc	a5,0x7
    80004408:	1e27c783          	lbu	a5,482(a5) # 8000b5e6 <_ZL9finishedB>
    8000440c:	fe0782e3          	beqz	a5,800043f0 <_Z18Threads_C_API_testv+0xb4>
    80004410:	00007797          	auipc	a5,0x7
    80004414:	1d57c783          	lbu	a5,469(a5) # 8000b5e5 <_ZL9finishedC>
    80004418:	fc078ce3          	beqz	a5,800043f0 <_Z18Threads_C_API_testv+0xb4>
    8000441c:	00007797          	auipc	a5,0x7
    80004420:	1c87c783          	lbu	a5,456(a5) # 8000b5e4 <_ZL9finishedD>
    80004424:	fc0786e3          	beqz	a5,800043f0 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80004428:	02813083          	ld	ra,40(sp)
    8000442c:	02013403          	ld	s0,32(sp)
    80004430:	03010113          	addi	sp,sp,48
    80004434:	00008067          	ret

0000000080004438 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80004438:	fd010113          	addi	sp,sp,-48
    8000443c:	02113423          	sd	ra,40(sp)
    80004440:	02813023          	sd	s0,32(sp)
    80004444:	00913c23          	sd	s1,24(sp)
    80004448:	01213823          	sd	s2,16(sp)
    8000444c:	01313423          	sd	s3,8(sp)
    80004450:	03010413          	addi	s0,sp,48
    80004454:	00050993          	mv	s3,a0
    80004458:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    8000445c:	00000913          	li	s2,0
    80004460:	00c0006f          	j	8000446c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
        data->buffer->put(key);
        //printString("\n");
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004464:	ffffe097          	auipc	ra,0xffffe
    80004468:	b6c080e7          	jalr	-1172(ra) # 80001fd0 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x30) {
    8000446c:	ffffd097          	auipc	ra,0xffffd
    80004470:	ff0080e7          	jalr	-16(ra) # 8000145c <getc>
    80004474:	0005059b          	sext.w	a1,a0
    80004478:	03000793          	li	a5,48
    8000447c:	02f58a63          	beq	a1,a5,800044b0 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004480:	0084b503          	ld	a0,8(s1)
    80004484:	00001097          	auipc	ra,0x1
    80004488:	c7c080e7          	jalr	-900(ra) # 80005100 <_ZN9BufferCPP3putEi>
        i++;
    8000448c:	0019071b          	addiw	a4,s2,1
    80004490:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004494:	0004a683          	lw	a3,0(s1)
    80004498:	0026979b          	slliw	a5,a3,0x2
    8000449c:	00d787bb          	addw	a5,a5,a3
    800044a0:	0017979b          	slliw	a5,a5,0x1
    800044a4:	02f767bb          	remw	a5,a4,a5
    800044a8:	fc0792e3          	bnez	a5,8000446c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    800044ac:	fb9ff06f          	j	80004464 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    800044b0:	00100793          	li	a5,1
    800044b4:	00007717          	auipc	a4,0x7
    800044b8:	12f72a23          	sw	a5,308(a4) # 8000b5e8 <_ZL9threadEnd>
    td->buffer->put('!');
    800044bc:	0209b783          	ld	a5,32(s3)
    800044c0:	02100593          	li	a1,33
    800044c4:	0087b503          	ld	a0,8(a5)
    800044c8:	00001097          	auipc	ra,0x1
    800044cc:	c38080e7          	jalr	-968(ra) # 80005100 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    800044d0:	0104b503          	ld	a0,16(s1)
    800044d4:	ffffe097          	auipc	ra,0xffffe
    800044d8:	b8c080e7          	jalr	-1140(ra) # 80002060 <_ZN9Semaphore6signalEv>
}
    800044dc:	02813083          	ld	ra,40(sp)
    800044e0:	02013403          	ld	s0,32(sp)
    800044e4:	01813483          	ld	s1,24(sp)
    800044e8:	01013903          	ld	s2,16(sp)
    800044ec:	00813983          	ld	s3,8(sp)
    800044f0:	03010113          	addi	sp,sp,48
    800044f4:	00008067          	ret

00000000800044f8 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    800044f8:	fd010113          	addi	sp,sp,-48
    800044fc:	02113423          	sd	ra,40(sp)
    80004500:	02813023          	sd	s0,32(sp)
    80004504:	00913c23          	sd	s1,24(sp)
    80004508:	01213823          	sd	s2,16(sp)
    8000450c:	01313423          	sd	s3,8(sp)
    80004510:	03010413          	addi	s0,sp,48
    80004514:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004518:	00000993          	li	s3,0
    8000451c:	00c0006f          	j	80004528 <_ZN12ProducerSync8producerEPv+0x30>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;
        printString("\n");
        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004520:	ffffe097          	auipc	ra,0xffffe
    80004524:	ab0080e7          	jalr	-1360(ra) # 80001fd0 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80004528:	00007797          	auipc	a5,0x7
    8000452c:	0c07a783          	lw	a5,192(a5) # 8000b5e8 <_ZL9threadEnd>
    80004530:	04079663          	bnez	a5,8000457c <_ZN12ProducerSync8producerEPv+0x84>
        data->buffer->put(data->id + '0');
    80004534:	00092583          	lw	a1,0(s2)
    80004538:	0305859b          	addiw	a1,a1,48
    8000453c:	00893503          	ld	a0,8(s2)
    80004540:	00001097          	auipc	ra,0x1
    80004544:	bc0080e7          	jalr	-1088(ra) # 80005100 <_ZN9BufferCPP3putEi>
        i++;
    80004548:	0019849b          	addiw	s1,s3,1
    8000454c:	0004899b          	sext.w	s3,s1
        printString("\n");
    80004550:	00005517          	auipc	a0,0x5
    80004554:	0a050513          	addi	a0,a0,160 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80004558:	00000097          	auipc	ra,0x0
    8000455c:	784080e7          	jalr	1924(ra) # 80004cdc <_Z11printStringPKc>
        if (i % (10 * data->id) == 0) {
    80004560:	00092703          	lw	a4,0(s2)
    80004564:	0027179b          	slliw	a5,a4,0x2
    80004568:	00e787bb          	addw	a5,a5,a4
    8000456c:	0017979b          	slliw	a5,a5,0x1
    80004570:	02f4e7bb          	remw	a5,s1,a5
    80004574:	fa079ae3          	bnez	a5,80004528 <_ZN12ProducerSync8producerEPv+0x30>
    80004578:	fa9ff06f          	j	80004520 <_ZN12ProducerSync8producerEPv+0x28>
        }
    }

    data->wait->signal();
    8000457c:	01093503          	ld	a0,16(s2)
    80004580:	ffffe097          	auipc	ra,0xffffe
    80004584:	ae0080e7          	jalr	-1312(ra) # 80002060 <_ZN9Semaphore6signalEv>
}
    80004588:	02813083          	ld	ra,40(sp)
    8000458c:	02013403          	ld	s0,32(sp)
    80004590:	01813483          	ld	s1,24(sp)
    80004594:	01013903          	ld	s2,16(sp)
    80004598:	00813983          	ld	s3,8(sp)
    8000459c:	03010113          	addi	sp,sp,48
    800045a0:	00008067          	ret

00000000800045a4 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    800045a4:	fd010113          	addi	sp,sp,-48
    800045a8:	02113423          	sd	ra,40(sp)
    800045ac:	02813023          	sd	s0,32(sp)
    800045b0:	00913c23          	sd	s1,24(sp)
    800045b4:	01213823          	sd	s2,16(sp)
    800045b8:	01313423          	sd	s3,8(sp)
    800045bc:	01413023          	sd	s4,0(sp)
    800045c0:	03010413          	addi	s0,sp,48
    800045c4:	00050993          	mv	s3,a0
    800045c8:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800045cc:	00000a13          	li	s4,0
    800045d0:	01c0006f          	j	800045ec <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    800045d4:	ffffe097          	auipc	ra,0xffffe
    800045d8:	9fc080e7          	jalr	-1540(ra) # 80001fd0 <_ZN6Thread8dispatchEv>
    800045dc:	0500006f          	j	8000462c <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    800045e0:	00a00513          	li	a0,10
    800045e4:	ffffd097          	auipc	ra,0xffffd
    800045e8:	e50080e7          	jalr	-432(ra) # 80001434 <putc>
    while (!threadEnd) {
    800045ec:	00007797          	auipc	a5,0x7
    800045f0:	ffc7a783          	lw	a5,-4(a5) # 8000b5e8 <_ZL9threadEnd>
    800045f4:	06079263          	bnez	a5,80004658 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    800045f8:	00893503          	ld	a0,8(s2)
    800045fc:	00001097          	auipc	ra,0x1
    80004600:	b94080e7          	jalr	-1132(ra) # 80005190 <_ZN9BufferCPP3getEv>
        i++;
    80004604:	001a049b          	addiw	s1,s4,1
    80004608:	00048a1b          	sext.w	s4,s1
        putc(key);
    8000460c:	0ff57513          	andi	a0,a0,255
    80004610:	ffffd097          	auipc	ra,0xffffd
    80004614:	e24080e7          	jalr	-476(ra) # 80001434 <putc>
        if (i % (5 * data->id) == 0) {
    80004618:	00092703          	lw	a4,0(s2)
    8000461c:	0027179b          	slliw	a5,a4,0x2
    80004620:	00e787bb          	addw	a5,a5,a4
    80004624:	02f4e7bb          	remw	a5,s1,a5
    80004628:	fa0786e3          	beqz	a5,800045d4 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    8000462c:	05000793          	li	a5,80
    80004630:	02f4e4bb          	remw	s1,s1,a5
    80004634:	fa049ce3          	bnez	s1,800045ec <_ZN12ConsumerSync8consumerEPv+0x48>
    80004638:	fa9ff06f          	j	800045e0 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    8000463c:	0209b783          	ld	a5,32(s3)
    80004640:	0087b503          	ld	a0,8(a5)
    80004644:	00001097          	auipc	ra,0x1
    80004648:	b4c080e7          	jalr	-1204(ra) # 80005190 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    8000464c:	0ff57513          	andi	a0,a0,255
    80004650:	ffffe097          	auipc	ra,0xffffe
    80004654:	ae4080e7          	jalr	-1308(ra) # 80002134 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80004658:	0209b783          	ld	a5,32(s3)
    8000465c:	0087b503          	ld	a0,8(a5)
    80004660:	00001097          	auipc	ra,0x1
    80004664:	bbc080e7          	jalr	-1092(ra) # 8000521c <_ZN9BufferCPP6getCntEv>
    80004668:	fca04ae3          	bgtz	a0,8000463c <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    8000466c:	01093503          	ld	a0,16(s2)
    80004670:	ffffe097          	auipc	ra,0xffffe
    80004674:	9f0080e7          	jalr	-1552(ra) # 80002060 <_ZN9Semaphore6signalEv>
}
    80004678:	02813083          	ld	ra,40(sp)
    8000467c:	02013403          	ld	s0,32(sp)
    80004680:	01813483          	ld	s1,24(sp)
    80004684:	01013903          	ld	s2,16(sp)
    80004688:	00813983          	ld	s3,8(sp)
    8000468c:	00013a03          	ld	s4,0(sp)
    80004690:	03010113          	addi	sp,sp,48
    80004694:	00008067          	ret

0000000080004698 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80004698:	f8010113          	addi	sp,sp,-128
    8000469c:	06113c23          	sd	ra,120(sp)
    800046a0:	06813823          	sd	s0,112(sp)
    800046a4:	06913423          	sd	s1,104(sp)
    800046a8:	07213023          	sd	s2,96(sp)
    800046ac:	05313c23          	sd	s3,88(sp)
    800046b0:	05413823          	sd	s4,80(sp)
    800046b4:	05513423          	sd	s5,72(sp)
    800046b8:	05613023          	sd	s6,64(sp)
    800046bc:	03713c23          	sd	s7,56(sp)
    800046c0:	03813823          	sd	s8,48(sp)
    800046c4:	03913423          	sd	s9,40(sp)
    800046c8:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    800046cc:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    800046d0:	00005517          	auipc	a0,0x5
    800046d4:	c0050513          	addi	a0,a0,-1024 # 800092d0 <CONSOLE_STATUS+0x2c0>
    800046d8:	00000097          	auipc	ra,0x0
    800046dc:	604080e7          	jalr	1540(ra) # 80004cdc <_Z11printStringPKc>
    getString(input, 30);
    800046e0:	01e00593          	li	a1,30
    800046e4:	f8040493          	addi	s1,s0,-128
    800046e8:	00048513          	mv	a0,s1
    800046ec:	00000097          	auipc	ra,0x0
    800046f0:	678080e7          	jalr	1656(ra) # 80004d64 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800046f4:	00048513          	mv	a0,s1
    800046f8:	00000097          	auipc	ra,0x0
    800046fc:	744080e7          	jalr	1860(ra) # 80004e3c <_Z11stringToIntPKc>
    80004700:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80004704:	00005517          	auipc	a0,0x5
    80004708:	bec50513          	addi	a0,a0,-1044 # 800092f0 <CONSOLE_STATUS+0x2e0>
    8000470c:	00000097          	auipc	ra,0x0
    80004710:	5d0080e7          	jalr	1488(ra) # 80004cdc <_Z11printStringPKc>
    getString(input, 30);
    80004714:	01e00593          	li	a1,30
    80004718:	00048513          	mv	a0,s1
    8000471c:	00000097          	auipc	ra,0x0
    80004720:	648080e7          	jalr	1608(ra) # 80004d64 <_Z9getStringPci>
    n = stringToInt(input);
    80004724:	00048513          	mv	a0,s1
    80004728:	00000097          	auipc	ra,0x0
    8000472c:	714080e7          	jalr	1812(ra) # 80004e3c <_Z11stringToIntPKc>
    80004730:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80004734:	00005517          	auipc	a0,0x5
    80004738:	bdc50513          	addi	a0,a0,-1060 # 80009310 <CONSOLE_STATUS+0x300>
    8000473c:	00000097          	auipc	ra,0x0
    80004740:	5a0080e7          	jalr	1440(ra) # 80004cdc <_Z11printStringPKc>
    80004744:	00000613          	li	a2,0
    80004748:	00a00593          	li	a1,10
    8000474c:	00090513          	mv	a0,s2
    80004750:	00000097          	auipc	ra,0x0
    80004754:	73c080e7          	jalr	1852(ra) # 80004e8c <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004758:	00005517          	auipc	a0,0x5
    8000475c:	bd050513          	addi	a0,a0,-1072 # 80009328 <CONSOLE_STATUS+0x318>
    80004760:	00000097          	auipc	ra,0x0
    80004764:	57c080e7          	jalr	1404(ra) # 80004cdc <_Z11printStringPKc>
    80004768:	00000613          	li	a2,0
    8000476c:	00a00593          	li	a1,10
    80004770:	00048513          	mv	a0,s1
    80004774:	00000097          	auipc	ra,0x0
    80004778:	718080e7          	jalr	1816(ra) # 80004e8c <_Z8printIntiii>
    printString(".\n");
    8000477c:	00005517          	auipc	a0,0x5
    80004780:	bc450513          	addi	a0,a0,-1084 # 80009340 <CONSOLE_STATUS+0x330>
    80004784:	00000097          	auipc	ra,0x0
    80004788:	558080e7          	jalr	1368(ra) # 80004cdc <_Z11printStringPKc>
    if(threadNum > n) {
    8000478c:	0324c463          	blt	s1,s2,800047b4 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80004790:	03205c63          	blez	s2,800047c8 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004794:	03800513          	li	a0,56
    80004798:	ffffd097          	auipc	ra,0xffffd
    8000479c:	64c080e7          	jalr	1612(ra) # 80001de4 <_Znwm>
    800047a0:	00050a93          	mv	s5,a0
    800047a4:	00048593          	mv	a1,s1
    800047a8:	00001097          	auipc	ra,0x1
    800047ac:	804080e7          	jalr	-2044(ra) # 80004fac <_ZN9BufferCPPC1Ei>
    800047b0:	0300006f          	j	800047e0 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800047b4:	00005517          	auipc	a0,0x5
    800047b8:	b9450513          	addi	a0,a0,-1132 # 80009348 <CONSOLE_STATUS+0x338>
    800047bc:	00000097          	auipc	ra,0x0
    800047c0:	520080e7          	jalr	1312(ra) # 80004cdc <_Z11printStringPKc>
        return;
    800047c4:	0140006f          	j	800047d8 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800047c8:	00005517          	auipc	a0,0x5
    800047cc:	bc050513          	addi	a0,a0,-1088 # 80009388 <CONSOLE_STATUS+0x378>
    800047d0:	00000097          	auipc	ra,0x0
    800047d4:	50c080e7          	jalr	1292(ra) # 80004cdc <_Z11printStringPKc>
        return;
    800047d8:	000b8113          	mv	sp,s7
    800047dc:	2380006f          	j	80004a14 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    800047e0:	01800513          	li	a0,24
    800047e4:	ffffd097          	auipc	ra,0xffffd
    800047e8:	600080e7          	jalr	1536(ra) # 80001de4 <_Znwm>
    800047ec:	00050493          	mv	s1,a0
    800047f0:	00000593          	li	a1,0
    800047f4:	ffffe097          	auipc	ra,0xffffe
    800047f8:	804080e7          	jalr	-2044(ra) # 80001ff8 <_ZN9SemaphoreC1Ej>
    800047fc:	00007797          	auipc	a5,0x7
    80004800:	de97ba23          	sd	s1,-524(a5) # 8000b5f0 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80004804:	00391793          	slli	a5,s2,0x3
    80004808:	00f78793          	addi	a5,a5,15
    8000480c:	ff07f793          	andi	a5,a5,-16
    80004810:	40f10133          	sub	sp,sp,a5
    80004814:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80004818:	0019071b          	addiw	a4,s2,1
    8000481c:	00171793          	slli	a5,a4,0x1
    80004820:	00e787b3          	add	a5,a5,a4
    80004824:	00379793          	slli	a5,a5,0x3
    80004828:	00f78793          	addi	a5,a5,15
    8000482c:	ff07f793          	andi	a5,a5,-16
    80004830:	40f10133          	sub	sp,sp,a5
    80004834:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80004838:	00191c13          	slli	s8,s2,0x1
    8000483c:	012c07b3          	add	a5,s8,s2
    80004840:	00379793          	slli	a5,a5,0x3
    80004844:	00fa07b3          	add	a5,s4,a5
    80004848:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    8000484c:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80004850:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80004854:	02800513          	li	a0,40
    80004858:	ffffd097          	auipc	ra,0xffffd
    8000485c:	58c080e7          	jalr	1420(ra) # 80001de4 <_Znwm>
    80004860:	00050b13          	mv	s6,a0
    80004864:	012c0c33          	add	s8,s8,s2
    80004868:	003c1c13          	slli	s8,s8,0x3
    8000486c:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80004870:	ffffd097          	auipc	ra,0xffffd
    80004874:	67c080e7          	jalr	1660(ra) # 80001eec <_ZN6ThreadC1Ev>
    80004878:	00007797          	auipc	a5,0x7
    8000487c:	c4878793          	addi	a5,a5,-952 # 8000b4c0 <_ZTV12ConsumerSync+0x10>
    80004880:	00fb3023          	sd	a5,0(s6)
    80004884:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80004888:	000b0513          	mv	a0,s6
    8000488c:	ffffd097          	auipc	ra,0xffffd
    80004890:	6f0080e7          	jalr	1776(ra) # 80001f7c <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004894:	00000493          	li	s1,0
    80004898:	0380006f          	j	800048d0 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    8000489c:	00007797          	auipc	a5,0x7
    800048a0:	bfc78793          	addi	a5,a5,-1028 # 8000b498 <_ZTV12ProducerSync+0x10>
    800048a4:	00fcb023          	sd	a5,0(s9)
    800048a8:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    800048ac:	00349793          	slli	a5,s1,0x3
    800048b0:	00f987b3          	add	a5,s3,a5
    800048b4:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    800048b8:	00349793          	slli	a5,s1,0x3
    800048bc:	00f987b3          	add	a5,s3,a5
    800048c0:	0007b503          	ld	a0,0(a5)
    800048c4:	ffffd097          	auipc	ra,0xffffd
    800048c8:	6b8080e7          	jalr	1720(ra) # 80001f7c <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800048cc:	0014849b          	addiw	s1,s1,1
    800048d0:	0b24d063          	bge	s1,s2,80004970 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    800048d4:	00149793          	slli	a5,s1,0x1
    800048d8:	009787b3          	add	a5,a5,s1
    800048dc:	00379793          	slli	a5,a5,0x3
    800048e0:	00fa07b3          	add	a5,s4,a5
    800048e4:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800048e8:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    800048ec:	00007717          	auipc	a4,0x7
    800048f0:	d0473703          	ld	a4,-764(a4) # 8000b5f0 <_ZL10waitForAll>
    800048f4:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    800048f8:	02905863          	blez	s1,80004928 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    800048fc:	02800513          	li	a0,40
    80004900:	ffffd097          	auipc	ra,0xffffd
    80004904:	4e4080e7          	jalr	1252(ra) # 80001de4 <_Znwm>
    80004908:	00050c93          	mv	s9,a0
    8000490c:	00149c13          	slli	s8,s1,0x1
    80004910:	009c0c33          	add	s8,s8,s1
    80004914:	003c1c13          	slli	s8,s8,0x3
    80004918:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    8000491c:	ffffd097          	auipc	ra,0xffffd
    80004920:	5d0080e7          	jalr	1488(ra) # 80001eec <_ZN6ThreadC1Ev>
    80004924:	f79ff06f          	j	8000489c <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80004928:	02800513          	li	a0,40
    8000492c:	ffffd097          	auipc	ra,0xffffd
    80004930:	4b8080e7          	jalr	1208(ra) # 80001de4 <_Znwm>
    80004934:	00050c93          	mv	s9,a0
    80004938:	00149c13          	slli	s8,s1,0x1
    8000493c:	009c0c33          	add	s8,s8,s1
    80004940:	003c1c13          	slli	s8,s8,0x3
    80004944:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80004948:	ffffd097          	auipc	ra,0xffffd
    8000494c:	5a4080e7          	jalr	1444(ra) # 80001eec <_ZN6ThreadC1Ev>
    80004950:	00007797          	auipc	a5,0x7
    80004954:	b2078793          	addi	a5,a5,-1248 # 8000b470 <_ZTV16ProducerKeyboard+0x10>
    80004958:	00fcb023          	sd	a5,0(s9)
    8000495c:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80004960:	00349793          	slli	a5,s1,0x3
    80004964:	00f987b3          	add	a5,s3,a5
    80004968:	0197b023          	sd	s9,0(a5)
    8000496c:	f4dff06f          	j	800048b8 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80004970:	ffffd097          	auipc	ra,0xffffd
    80004974:	660080e7          	jalr	1632(ra) # 80001fd0 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004978:	00000493          	li	s1,0
    8000497c:	00994e63          	blt	s2,s1,80004998 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80004980:	00007517          	auipc	a0,0x7
    80004984:	c7053503          	ld	a0,-912(a0) # 8000b5f0 <_ZL10waitForAll>
    80004988:	ffffd097          	auipc	ra,0xffffd
    8000498c:	6ac080e7          	jalr	1708(ra) # 80002034 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004990:	0014849b          	addiw	s1,s1,1
    80004994:	fe9ff06f          	j	8000497c <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80004998:	00000493          	li	s1,0
    8000499c:	0080006f          	j	800049a4 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    800049a0:	0014849b          	addiw	s1,s1,1
    800049a4:	0324d263          	bge	s1,s2,800049c8 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    800049a8:	00349793          	slli	a5,s1,0x3
    800049ac:	00f987b3          	add	a5,s3,a5
    800049b0:	0007b503          	ld	a0,0(a5)
    800049b4:	fe0506e3          	beqz	a0,800049a0 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    800049b8:	00053783          	ld	a5,0(a0)
    800049bc:	0087b783          	ld	a5,8(a5)
    800049c0:	000780e7          	jalr	a5
    800049c4:	fddff06f          	j	800049a0 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    800049c8:	000b0a63          	beqz	s6,800049dc <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    800049cc:	000b3783          	ld	a5,0(s6)
    800049d0:	0087b783          	ld	a5,8(a5)
    800049d4:	000b0513          	mv	a0,s6
    800049d8:	000780e7          	jalr	a5
    delete waitForAll;
    800049dc:	00007517          	auipc	a0,0x7
    800049e0:	c1453503          	ld	a0,-1004(a0) # 8000b5f0 <_ZL10waitForAll>
    800049e4:	00050863          	beqz	a0,800049f4 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    800049e8:	00053783          	ld	a5,0(a0)
    800049ec:	0087b783          	ld	a5,8(a5)
    800049f0:	000780e7          	jalr	a5
    delete buffer;
    800049f4:	000a8e63          	beqz	s5,80004a10 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    800049f8:	000a8513          	mv	a0,s5
    800049fc:	00001097          	auipc	ra,0x1
    80004a00:	8a8080e7          	jalr	-1880(ra) # 800052a4 <_ZN9BufferCPPD1Ev>
    80004a04:	000a8513          	mv	a0,s5
    80004a08:	ffffd097          	auipc	ra,0xffffd
    80004a0c:	42c080e7          	jalr	1068(ra) # 80001e34 <_ZdlPv>
    80004a10:	000b8113          	mv	sp,s7

}
    80004a14:	f8040113          	addi	sp,s0,-128
    80004a18:	07813083          	ld	ra,120(sp)
    80004a1c:	07013403          	ld	s0,112(sp)
    80004a20:	06813483          	ld	s1,104(sp)
    80004a24:	06013903          	ld	s2,96(sp)
    80004a28:	05813983          	ld	s3,88(sp)
    80004a2c:	05013a03          	ld	s4,80(sp)
    80004a30:	04813a83          	ld	s5,72(sp)
    80004a34:	04013b03          	ld	s6,64(sp)
    80004a38:	03813b83          	ld	s7,56(sp)
    80004a3c:	03013c03          	ld	s8,48(sp)
    80004a40:	02813c83          	ld	s9,40(sp)
    80004a44:	08010113          	addi	sp,sp,128
    80004a48:	00008067          	ret
    80004a4c:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004a50:	000a8513          	mv	a0,s5
    80004a54:	ffffd097          	auipc	ra,0xffffd
    80004a58:	3e0080e7          	jalr	992(ra) # 80001e34 <_ZdlPv>
    80004a5c:	00048513          	mv	a0,s1
    80004a60:	00008097          	auipc	ra,0x8
    80004a64:	c78080e7          	jalr	-904(ra) # 8000c6d8 <_Unwind_Resume>
    80004a68:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80004a6c:	00048513          	mv	a0,s1
    80004a70:	ffffd097          	auipc	ra,0xffffd
    80004a74:	3c4080e7          	jalr	964(ra) # 80001e34 <_ZdlPv>
    80004a78:	00090513          	mv	a0,s2
    80004a7c:	00008097          	auipc	ra,0x8
    80004a80:	c5c080e7          	jalr	-932(ra) # 8000c6d8 <_Unwind_Resume>
    80004a84:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80004a88:	000b0513          	mv	a0,s6
    80004a8c:	ffffd097          	auipc	ra,0xffffd
    80004a90:	3a8080e7          	jalr	936(ra) # 80001e34 <_ZdlPv>
    80004a94:	00048513          	mv	a0,s1
    80004a98:	00008097          	auipc	ra,0x8
    80004a9c:	c40080e7          	jalr	-960(ra) # 8000c6d8 <_Unwind_Resume>
    80004aa0:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80004aa4:	000c8513          	mv	a0,s9
    80004aa8:	ffffd097          	auipc	ra,0xffffd
    80004aac:	38c080e7          	jalr	908(ra) # 80001e34 <_ZdlPv>
    80004ab0:	00048513          	mv	a0,s1
    80004ab4:	00008097          	auipc	ra,0x8
    80004ab8:	c24080e7          	jalr	-988(ra) # 8000c6d8 <_Unwind_Resume>
    80004abc:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80004ac0:	000c8513          	mv	a0,s9
    80004ac4:	ffffd097          	auipc	ra,0xffffd
    80004ac8:	370080e7          	jalr	880(ra) # 80001e34 <_ZdlPv>
    80004acc:	00048513          	mv	a0,s1
    80004ad0:	00008097          	auipc	ra,0x8
    80004ad4:	c08080e7          	jalr	-1016(ra) # 8000c6d8 <_Unwind_Resume>

0000000080004ad8 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80004ad8:	ff010113          	addi	sp,sp,-16
    80004adc:	00113423          	sd	ra,8(sp)
    80004ae0:	00813023          	sd	s0,0(sp)
    80004ae4:	01010413          	addi	s0,sp,16
    80004ae8:	00007797          	auipc	a5,0x7
    80004aec:	9d878793          	addi	a5,a5,-1576 # 8000b4c0 <_ZTV12ConsumerSync+0x10>
    80004af0:	00f53023          	sd	a5,0(a0)
    80004af4:	ffffd097          	auipc	ra,0xffffd
    80004af8:	274080e7          	jalr	628(ra) # 80001d68 <_ZN6ThreadD1Ev>
    80004afc:	00813083          	ld	ra,8(sp)
    80004b00:	00013403          	ld	s0,0(sp)
    80004b04:	01010113          	addi	sp,sp,16
    80004b08:	00008067          	ret

0000000080004b0c <_ZN12ConsumerSyncD0Ev>:
    80004b0c:	fe010113          	addi	sp,sp,-32
    80004b10:	00113c23          	sd	ra,24(sp)
    80004b14:	00813823          	sd	s0,16(sp)
    80004b18:	00913423          	sd	s1,8(sp)
    80004b1c:	02010413          	addi	s0,sp,32
    80004b20:	00050493          	mv	s1,a0
    80004b24:	00007797          	auipc	a5,0x7
    80004b28:	99c78793          	addi	a5,a5,-1636 # 8000b4c0 <_ZTV12ConsumerSync+0x10>
    80004b2c:	00f53023          	sd	a5,0(a0)
    80004b30:	ffffd097          	auipc	ra,0xffffd
    80004b34:	238080e7          	jalr	568(ra) # 80001d68 <_ZN6ThreadD1Ev>
    80004b38:	00048513          	mv	a0,s1
    80004b3c:	ffffd097          	auipc	ra,0xffffd
    80004b40:	2f8080e7          	jalr	760(ra) # 80001e34 <_ZdlPv>
    80004b44:	01813083          	ld	ra,24(sp)
    80004b48:	01013403          	ld	s0,16(sp)
    80004b4c:	00813483          	ld	s1,8(sp)
    80004b50:	02010113          	addi	sp,sp,32
    80004b54:	00008067          	ret

0000000080004b58 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80004b58:	ff010113          	addi	sp,sp,-16
    80004b5c:	00113423          	sd	ra,8(sp)
    80004b60:	00813023          	sd	s0,0(sp)
    80004b64:	01010413          	addi	s0,sp,16
    80004b68:	00007797          	auipc	a5,0x7
    80004b6c:	93078793          	addi	a5,a5,-1744 # 8000b498 <_ZTV12ProducerSync+0x10>
    80004b70:	00f53023          	sd	a5,0(a0)
    80004b74:	ffffd097          	auipc	ra,0xffffd
    80004b78:	1f4080e7          	jalr	500(ra) # 80001d68 <_ZN6ThreadD1Ev>
    80004b7c:	00813083          	ld	ra,8(sp)
    80004b80:	00013403          	ld	s0,0(sp)
    80004b84:	01010113          	addi	sp,sp,16
    80004b88:	00008067          	ret

0000000080004b8c <_ZN12ProducerSyncD0Ev>:
    80004b8c:	fe010113          	addi	sp,sp,-32
    80004b90:	00113c23          	sd	ra,24(sp)
    80004b94:	00813823          	sd	s0,16(sp)
    80004b98:	00913423          	sd	s1,8(sp)
    80004b9c:	02010413          	addi	s0,sp,32
    80004ba0:	00050493          	mv	s1,a0
    80004ba4:	00007797          	auipc	a5,0x7
    80004ba8:	8f478793          	addi	a5,a5,-1804 # 8000b498 <_ZTV12ProducerSync+0x10>
    80004bac:	00f53023          	sd	a5,0(a0)
    80004bb0:	ffffd097          	auipc	ra,0xffffd
    80004bb4:	1b8080e7          	jalr	440(ra) # 80001d68 <_ZN6ThreadD1Ev>
    80004bb8:	00048513          	mv	a0,s1
    80004bbc:	ffffd097          	auipc	ra,0xffffd
    80004bc0:	278080e7          	jalr	632(ra) # 80001e34 <_ZdlPv>
    80004bc4:	01813083          	ld	ra,24(sp)
    80004bc8:	01013403          	ld	s0,16(sp)
    80004bcc:	00813483          	ld	s1,8(sp)
    80004bd0:	02010113          	addi	sp,sp,32
    80004bd4:	00008067          	ret

0000000080004bd8 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80004bd8:	ff010113          	addi	sp,sp,-16
    80004bdc:	00113423          	sd	ra,8(sp)
    80004be0:	00813023          	sd	s0,0(sp)
    80004be4:	01010413          	addi	s0,sp,16
    80004be8:	00007797          	auipc	a5,0x7
    80004bec:	88878793          	addi	a5,a5,-1912 # 8000b470 <_ZTV16ProducerKeyboard+0x10>
    80004bf0:	00f53023          	sd	a5,0(a0)
    80004bf4:	ffffd097          	auipc	ra,0xffffd
    80004bf8:	174080e7          	jalr	372(ra) # 80001d68 <_ZN6ThreadD1Ev>
    80004bfc:	00813083          	ld	ra,8(sp)
    80004c00:	00013403          	ld	s0,0(sp)
    80004c04:	01010113          	addi	sp,sp,16
    80004c08:	00008067          	ret

0000000080004c0c <_ZN16ProducerKeyboardD0Ev>:
    80004c0c:	fe010113          	addi	sp,sp,-32
    80004c10:	00113c23          	sd	ra,24(sp)
    80004c14:	00813823          	sd	s0,16(sp)
    80004c18:	00913423          	sd	s1,8(sp)
    80004c1c:	02010413          	addi	s0,sp,32
    80004c20:	00050493          	mv	s1,a0
    80004c24:	00007797          	auipc	a5,0x7
    80004c28:	84c78793          	addi	a5,a5,-1972 # 8000b470 <_ZTV16ProducerKeyboard+0x10>
    80004c2c:	00f53023          	sd	a5,0(a0)
    80004c30:	ffffd097          	auipc	ra,0xffffd
    80004c34:	138080e7          	jalr	312(ra) # 80001d68 <_ZN6ThreadD1Ev>
    80004c38:	00048513          	mv	a0,s1
    80004c3c:	ffffd097          	auipc	ra,0xffffd
    80004c40:	1f8080e7          	jalr	504(ra) # 80001e34 <_ZdlPv>
    80004c44:	01813083          	ld	ra,24(sp)
    80004c48:	01013403          	ld	s0,16(sp)
    80004c4c:	00813483          	ld	s1,8(sp)
    80004c50:	02010113          	addi	sp,sp,32
    80004c54:	00008067          	ret

0000000080004c58 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80004c58:	ff010113          	addi	sp,sp,-16
    80004c5c:	00113423          	sd	ra,8(sp)
    80004c60:	00813023          	sd	s0,0(sp)
    80004c64:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80004c68:	02053583          	ld	a1,32(a0)
    80004c6c:	fffff097          	auipc	ra,0xfffff
    80004c70:	7cc080e7          	jalr	1996(ra) # 80004438 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80004c74:	00813083          	ld	ra,8(sp)
    80004c78:	00013403          	ld	s0,0(sp)
    80004c7c:	01010113          	addi	sp,sp,16
    80004c80:	00008067          	ret

0000000080004c84 <_ZN12ProducerSync3runEv>:
    void run() override {
    80004c84:	ff010113          	addi	sp,sp,-16
    80004c88:	00113423          	sd	ra,8(sp)
    80004c8c:	00813023          	sd	s0,0(sp)
    80004c90:	01010413          	addi	s0,sp,16
        producer(td);
    80004c94:	02053583          	ld	a1,32(a0)
    80004c98:	00000097          	auipc	ra,0x0
    80004c9c:	860080e7          	jalr	-1952(ra) # 800044f8 <_ZN12ProducerSync8producerEPv>
    }
    80004ca0:	00813083          	ld	ra,8(sp)
    80004ca4:	00013403          	ld	s0,0(sp)
    80004ca8:	01010113          	addi	sp,sp,16
    80004cac:	00008067          	ret

0000000080004cb0 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80004cb0:	ff010113          	addi	sp,sp,-16
    80004cb4:	00113423          	sd	ra,8(sp)
    80004cb8:	00813023          	sd	s0,0(sp)
    80004cbc:	01010413          	addi	s0,sp,16
        consumer(td);
    80004cc0:	02053583          	ld	a1,32(a0)
    80004cc4:	00000097          	auipc	ra,0x0
    80004cc8:	8e0080e7          	jalr	-1824(ra) # 800045a4 <_ZN12ConsumerSync8consumerEPv>
    }
    80004ccc:	00813083          	ld	ra,8(sp)
    80004cd0:	00013403          	ld	s0,0(sp)
    80004cd4:	01010113          	addi	sp,sp,16
    80004cd8:	00008067          	ret

0000000080004cdc <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80004cdc:	fe010113          	addi	sp,sp,-32
    80004ce0:	00113c23          	sd	ra,24(sp)
    80004ce4:	00813823          	sd	s0,16(sp)
    80004ce8:	00913423          	sd	s1,8(sp)
    80004cec:	02010413          	addi	s0,sp,32
    80004cf0:	00050493          	mv	s1,a0
    LOCK();
    80004cf4:	00100613          	li	a2,1
    80004cf8:	00000593          	li	a1,0
    80004cfc:	00007517          	auipc	a0,0x7
    80004d00:	8fc50513          	addi	a0,a0,-1796 # 8000b5f8 <lockPrint>
    80004d04:	ffffc097          	auipc	ra,0xffffc
    80004d08:	420080e7          	jalr	1056(ra) # 80001124 <copy_and_swap>
    80004d0c:	00050863          	beqz	a0,80004d1c <_Z11printStringPKc+0x40>
    80004d10:	ffffc097          	auipc	ra,0xffffc
    80004d14:	564080e7          	jalr	1380(ra) # 80001274 <thread_dispatch>
    80004d18:	fddff06f          	j	80004cf4 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80004d1c:	0004c503          	lbu	a0,0(s1)
    80004d20:	00050a63          	beqz	a0,80004d34 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80004d24:	ffffc097          	auipc	ra,0xffffc
    80004d28:	710080e7          	jalr	1808(ra) # 80001434 <putc>
        string++;
    80004d2c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80004d30:	fedff06f          	j	80004d1c <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80004d34:	00000613          	li	a2,0
    80004d38:	00100593          	li	a1,1
    80004d3c:	00007517          	auipc	a0,0x7
    80004d40:	8bc50513          	addi	a0,a0,-1860 # 8000b5f8 <lockPrint>
    80004d44:	ffffc097          	auipc	ra,0xffffc
    80004d48:	3e0080e7          	jalr	992(ra) # 80001124 <copy_and_swap>
    80004d4c:	fe0514e3          	bnez	a0,80004d34 <_Z11printStringPKc+0x58>
}
    80004d50:	01813083          	ld	ra,24(sp)
    80004d54:	01013403          	ld	s0,16(sp)
    80004d58:	00813483          	ld	s1,8(sp)
    80004d5c:	02010113          	addi	sp,sp,32
    80004d60:	00008067          	ret

0000000080004d64 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80004d64:	fd010113          	addi	sp,sp,-48
    80004d68:	02113423          	sd	ra,40(sp)
    80004d6c:	02813023          	sd	s0,32(sp)
    80004d70:	00913c23          	sd	s1,24(sp)
    80004d74:	01213823          	sd	s2,16(sp)
    80004d78:	01313423          	sd	s3,8(sp)
    80004d7c:	01413023          	sd	s4,0(sp)
    80004d80:	03010413          	addi	s0,sp,48
    80004d84:	00050993          	mv	s3,a0
    80004d88:	00058a13          	mv	s4,a1
    LOCK();
    80004d8c:	00100613          	li	a2,1
    80004d90:	00000593          	li	a1,0
    80004d94:	00007517          	auipc	a0,0x7
    80004d98:	86450513          	addi	a0,a0,-1948 # 8000b5f8 <lockPrint>
    80004d9c:	ffffc097          	auipc	ra,0xffffc
    80004da0:	388080e7          	jalr	904(ra) # 80001124 <copy_and_swap>
    80004da4:	00050863          	beqz	a0,80004db4 <_Z9getStringPci+0x50>
    80004da8:	ffffc097          	auipc	ra,0xffffc
    80004dac:	4cc080e7          	jalr	1228(ra) # 80001274 <thread_dispatch>
    80004db0:	fddff06f          	j	80004d8c <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80004db4:	00000913          	li	s2,0
    80004db8:	00090493          	mv	s1,s2
    80004dbc:	0019091b          	addiw	s2,s2,1
    80004dc0:	03495a63          	bge	s2,s4,80004df4 <_Z9getStringPci+0x90>
        cc = getc();
    80004dc4:	ffffc097          	auipc	ra,0xffffc
    80004dc8:	698080e7          	jalr	1688(ra) # 8000145c <getc>
        if(cc < 1)
    80004dcc:	02050463          	beqz	a0,80004df4 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80004dd0:	009984b3          	add	s1,s3,s1
    80004dd4:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80004dd8:	00a00793          	li	a5,10
    80004ddc:	00f50a63          	beq	a0,a5,80004df0 <_Z9getStringPci+0x8c>
    80004de0:	00d00793          	li	a5,13
    80004de4:	fcf51ae3          	bne	a0,a5,80004db8 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80004de8:	00090493          	mv	s1,s2
    80004dec:	0080006f          	j	80004df4 <_Z9getStringPci+0x90>
    80004df0:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80004df4:	009984b3          	add	s1,s3,s1
    80004df8:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80004dfc:	00000613          	li	a2,0
    80004e00:	00100593          	li	a1,1
    80004e04:	00006517          	auipc	a0,0x6
    80004e08:	7f450513          	addi	a0,a0,2036 # 8000b5f8 <lockPrint>
    80004e0c:	ffffc097          	auipc	ra,0xffffc
    80004e10:	318080e7          	jalr	792(ra) # 80001124 <copy_and_swap>
    80004e14:	fe0514e3          	bnez	a0,80004dfc <_Z9getStringPci+0x98>
    return buf;
}
    80004e18:	00098513          	mv	a0,s3
    80004e1c:	02813083          	ld	ra,40(sp)
    80004e20:	02013403          	ld	s0,32(sp)
    80004e24:	01813483          	ld	s1,24(sp)
    80004e28:	01013903          	ld	s2,16(sp)
    80004e2c:	00813983          	ld	s3,8(sp)
    80004e30:	00013a03          	ld	s4,0(sp)
    80004e34:	03010113          	addi	sp,sp,48
    80004e38:	00008067          	ret

0000000080004e3c <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80004e3c:	ff010113          	addi	sp,sp,-16
    80004e40:	00813423          	sd	s0,8(sp)
    80004e44:	01010413          	addi	s0,sp,16
    80004e48:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80004e4c:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80004e50:	0006c603          	lbu	a2,0(a3)
    80004e54:	fd06071b          	addiw	a4,a2,-48
    80004e58:	0ff77713          	andi	a4,a4,255
    80004e5c:	00900793          	li	a5,9
    80004e60:	02e7e063          	bltu	a5,a4,80004e80 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80004e64:	0025179b          	slliw	a5,a0,0x2
    80004e68:	00a787bb          	addw	a5,a5,a0
    80004e6c:	0017979b          	slliw	a5,a5,0x1
    80004e70:	00168693          	addi	a3,a3,1
    80004e74:	00c787bb          	addw	a5,a5,a2
    80004e78:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80004e7c:	fd5ff06f          	j	80004e50 <_Z11stringToIntPKc+0x14>
    return n;
}
    80004e80:	00813403          	ld	s0,8(sp)
    80004e84:	01010113          	addi	sp,sp,16
    80004e88:	00008067          	ret

0000000080004e8c <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80004e8c:	fc010113          	addi	sp,sp,-64
    80004e90:	02113c23          	sd	ra,56(sp)
    80004e94:	02813823          	sd	s0,48(sp)
    80004e98:	02913423          	sd	s1,40(sp)
    80004e9c:	03213023          	sd	s2,32(sp)
    80004ea0:	01313c23          	sd	s3,24(sp)
    80004ea4:	04010413          	addi	s0,sp,64
    80004ea8:	00050493          	mv	s1,a0
    80004eac:	00058913          	mv	s2,a1
    80004eb0:	00060993          	mv	s3,a2
    LOCK();
    80004eb4:	00100613          	li	a2,1
    80004eb8:	00000593          	li	a1,0
    80004ebc:	00006517          	auipc	a0,0x6
    80004ec0:	73c50513          	addi	a0,a0,1852 # 8000b5f8 <lockPrint>
    80004ec4:	ffffc097          	auipc	ra,0xffffc
    80004ec8:	260080e7          	jalr	608(ra) # 80001124 <copy_and_swap>
    80004ecc:	00050863          	beqz	a0,80004edc <_Z8printIntiii+0x50>
    80004ed0:	ffffc097          	auipc	ra,0xffffc
    80004ed4:	3a4080e7          	jalr	932(ra) # 80001274 <thread_dispatch>
    80004ed8:	fddff06f          	j	80004eb4 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80004edc:	00098463          	beqz	s3,80004ee4 <_Z8printIntiii+0x58>
    80004ee0:	0804c463          	bltz	s1,80004f68 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80004ee4:	0004851b          	sext.w	a0,s1
    neg = 0;
    80004ee8:	00000593          	li	a1,0
    }

    i = 0;
    80004eec:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80004ef0:	0009079b          	sext.w	a5,s2
    80004ef4:	0325773b          	remuw	a4,a0,s2
    80004ef8:	00048613          	mv	a2,s1
    80004efc:	0014849b          	addiw	s1,s1,1
    80004f00:	02071693          	slli	a3,a4,0x20
    80004f04:	0206d693          	srli	a3,a3,0x20
    80004f08:	00006717          	auipc	a4,0x6
    80004f0c:	5d070713          	addi	a4,a4,1488 # 8000b4d8 <digits>
    80004f10:	00d70733          	add	a4,a4,a3
    80004f14:	00074683          	lbu	a3,0(a4)
    80004f18:	fd040713          	addi	a4,s0,-48
    80004f1c:	00c70733          	add	a4,a4,a2
    80004f20:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80004f24:	0005071b          	sext.w	a4,a0
    80004f28:	0325553b          	divuw	a0,a0,s2
    80004f2c:	fcf772e3          	bgeu	a4,a5,80004ef0 <_Z8printIntiii+0x64>
    if(neg)
    80004f30:	00058c63          	beqz	a1,80004f48 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80004f34:	fd040793          	addi	a5,s0,-48
    80004f38:	009784b3          	add	s1,a5,s1
    80004f3c:	02d00793          	li	a5,45
    80004f40:	fef48823          	sb	a5,-16(s1)
    80004f44:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80004f48:	fff4849b          	addiw	s1,s1,-1
    80004f4c:	0204c463          	bltz	s1,80004f74 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80004f50:	fd040793          	addi	a5,s0,-48
    80004f54:	009787b3          	add	a5,a5,s1
    80004f58:	ff07c503          	lbu	a0,-16(a5)
    80004f5c:	ffffc097          	auipc	ra,0xffffc
    80004f60:	4d8080e7          	jalr	1240(ra) # 80001434 <putc>
    80004f64:	fe5ff06f          	j	80004f48 <_Z8printIntiii+0xbc>
        x = -xx;
    80004f68:	4090053b          	negw	a0,s1
        neg = 1;
    80004f6c:	00100593          	li	a1,1
        x = -xx;
    80004f70:	f7dff06f          	j	80004eec <_Z8printIntiii+0x60>

    UNLOCK();
    80004f74:	00000613          	li	a2,0
    80004f78:	00100593          	li	a1,1
    80004f7c:	00006517          	auipc	a0,0x6
    80004f80:	67c50513          	addi	a0,a0,1660 # 8000b5f8 <lockPrint>
    80004f84:	ffffc097          	auipc	ra,0xffffc
    80004f88:	1a0080e7          	jalr	416(ra) # 80001124 <copy_and_swap>
    80004f8c:	fe0514e3          	bnez	a0,80004f74 <_Z8printIntiii+0xe8>
    80004f90:	03813083          	ld	ra,56(sp)
    80004f94:	03013403          	ld	s0,48(sp)
    80004f98:	02813483          	ld	s1,40(sp)
    80004f9c:	02013903          	ld	s2,32(sp)
    80004fa0:	01813983          	ld	s3,24(sp)
    80004fa4:	04010113          	addi	sp,sp,64
    80004fa8:	00008067          	ret

0000000080004fac <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80004fac:	fd010113          	addi	sp,sp,-48
    80004fb0:	02113423          	sd	ra,40(sp)
    80004fb4:	02813023          	sd	s0,32(sp)
    80004fb8:	00913c23          	sd	s1,24(sp)
    80004fbc:	01213823          	sd	s2,16(sp)
    80004fc0:	01313423          	sd	s3,8(sp)
    80004fc4:	03010413          	addi	s0,sp,48
    80004fc8:	00050493          	mv	s1,a0
    80004fcc:	00058913          	mv	s2,a1
    80004fd0:	0015879b          	addiw	a5,a1,1
    80004fd4:	0007851b          	sext.w	a0,a5
    80004fd8:	00f4a023          	sw	a5,0(s1)
    80004fdc:	0004a823          	sw	zero,16(s1)
    80004fe0:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004fe4:	00251513          	slli	a0,a0,0x2
    80004fe8:	ffffc097          	auipc	ra,0xffffc
    80004fec:	15c080e7          	jalr	348(ra) # 80001144 <mem_alloc>
    80004ff0:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80004ff4:	01800513          	li	a0,24
    80004ff8:	ffffd097          	auipc	ra,0xffffd
    80004ffc:	dec080e7          	jalr	-532(ra) # 80001de4 <_Znwm>
    80005000:	00050993          	mv	s3,a0
    80005004:	00000593          	li	a1,0
    80005008:	ffffd097          	auipc	ra,0xffffd
    8000500c:	ff0080e7          	jalr	-16(ra) # 80001ff8 <_ZN9SemaphoreC1Ej>
    80005010:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005014:	01800513          	li	a0,24
    80005018:	ffffd097          	auipc	ra,0xffffd
    8000501c:	dcc080e7          	jalr	-564(ra) # 80001de4 <_Znwm>
    80005020:	00050993          	mv	s3,a0
    80005024:	00090593          	mv	a1,s2
    80005028:	ffffd097          	auipc	ra,0xffffd
    8000502c:	fd0080e7          	jalr	-48(ra) # 80001ff8 <_ZN9SemaphoreC1Ej>
    80005030:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005034:	01800513          	li	a0,24
    80005038:	ffffd097          	auipc	ra,0xffffd
    8000503c:	dac080e7          	jalr	-596(ra) # 80001de4 <_Znwm>
    80005040:	00050913          	mv	s2,a0
    80005044:	00100593          	li	a1,1
    80005048:	ffffd097          	auipc	ra,0xffffd
    8000504c:	fb0080e7          	jalr	-80(ra) # 80001ff8 <_ZN9SemaphoreC1Ej>
    80005050:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005054:	01800513          	li	a0,24
    80005058:	ffffd097          	auipc	ra,0xffffd
    8000505c:	d8c080e7          	jalr	-628(ra) # 80001de4 <_Znwm>
    80005060:	00050913          	mv	s2,a0
    80005064:	00100593          	li	a1,1
    80005068:	ffffd097          	auipc	ra,0xffffd
    8000506c:	f90080e7          	jalr	-112(ra) # 80001ff8 <_ZN9SemaphoreC1Ej>
    80005070:	0324b823          	sd	s2,48(s1)
}
    80005074:	02813083          	ld	ra,40(sp)
    80005078:	02013403          	ld	s0,32(sp)
    8000507c:	01813483          	ld	s1,24(sp)
    80005080:	01013903          	ld	s2,16(sp)
    80005084:	00813983          	ld	s3,8(sp)
    80005088:	03010113          	addi	sp,sp,48
    8000508c:	00008067          	ret
    80005090:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005094:	00098513          	mv	a0,s3
    80005098:	ffffd097          	auipc	ra,0xffffd
    8000509c:	d9c080e7          	jalr	-612(ra) # 80001e34 <_ZdlPv>
    800050a0:	00048513          	mv	a0,s1
    800050a4:	00007097          	auipc	ra,0x7
    800050a8:	634080e7          	jalr	1588(ra) # 8000c6d8 <_Unwind_Resume>
    800050ac:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    800050b0:	00098513          	mv	a0,s3
    800050b4:	ffffd097          	auipc	ra,0xffffd
    800050b8:	d80080e7          	jalr	-640(ra) # 80001e34 <_ZdlPv>
    800050bc:	00048513          	mv	a0,s1
    800050c0:	00007097          	auipc	ra,0x7
    800050c4:	618080e7          	jalr	1560(ra) # 8000c6d8 <_Unwind_Resume>
    800050c8:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    800050cc:	00090513          	mv	a0,s2
    800050d0:	ffffd097          	auipc	ra,0xffffd
    800050d4:	d64080e7          	jalr	-668(ra) # 80001e34 <_ZdlPv>
    800050d8:	00048513          	mv	a0,s1
    800050dc:	00007097          	auipc	ra,0x7
    800050e0:	5fc080e7          	jalr	1532(ra) # 8000c6d8 <_Unwind_Resume>
    800050e4:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    800050e8:	00090513          	mv	a0,s2
    800050ec:	ffffd097          	auipc	ra,0xffffd
    800050f0:	d48080e7          	jalr	-696(ra) # 80001e34 <_ZdlPv>
    800050f4:	00048513          	mv	a0,s1
    800050f8:	00007097          	auipc	ra,0x7
    800050fc:	5e0080e7          	jalr	1504(ra) # 8000c6d8 <_Unwind_Resume>

0000000080005100 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005100:	fe010113          	addi	sp,sp,-32
    80005104:	00113c23          	sd	ra,24(sp)
    80005108:	00813823          	sd	s0,16(sp)
    8000510c:	00913423          	sd	s1,8(sp)
    80005110:	01213023          	sd	s2,0(sp)
    80005114:	02010413          	addi	s0,sp,32
    80005118:	00050493          	mv	s1,a0
    8000511c:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005120:	01853503          	ld	a0,24(a0)
    80005124:	ffffd097          	auipc	ra,0xffffd
    80005128:	f10080e7          	jalr	-240(ra) # 80002034 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    8000512c:	0304b503          	ld	a0,48(s1)
    80005130:	ffffd097          	auipc	ra,0xffffd
    80005134:	f04080e7          	jalr	-252(ra) # 80002034 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005138:	0084b783          	ld	a5,8(s1)
    8000513c:	0144a703          	lw	a4,20(s1)
    80005140:	00271713          	slli	a4,a4,0x2
    80005144:	00e787b3          	add	a5,a5,a4
    80005148:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000514c:	0144a783          	lw	a5,20(s1)
    80005150:	0017879b          	addiw	a5,a5,1
    80005154:	0004a703          	lw	a4,0(s1)
    80005158:	02e7e7bb          	remw	a5,a5,a4
    8000515c:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005160:	0304b503          	ld	a0,48(s1)
    80005164:	ffffd097          	auipc	ra,0xffffd
    80005168:	efc080e7          	jalr	-260(ra) # 80002060 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    8000516c:	0204b503          	ld	a0,32(s1)
    80005170:	ffffd097          	auipc	ra,0xffffd
    80005174:	ef0080e7          	jalr	-272(ra) # 80002060 <_ZN9Semaphore6signalEv>

}
    80005178:	01813083          	ld	ra,24(sp)
    8000517c:	01013403          	ld	s0,16(sp)
    80005180:	00813483          	ld	s1,8(sp)
    80005184:	00013903          	ld	s2,0(sp)
    80005188:	02010113          	addi	sp,sp,32
    8000518c:	00008067          	ret

0000000080005190 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005190:	fe010113          	addi	sp,sp,-32
    80005194:	00113c23          	sd	ra,24(sp)
    80005198:	00813823          	sd	s0,16(sp)
    8000519c:	00913423          	sd	s1,8(sp)
    800051a0:	01213023          	sd	s2,0(sp)
    800051a4:	02010413          	addi	s0,sp,32
    800051a8:	00050493          	mv	s1,a0
    itemAvailable->wait();
    800051ac:	02053503          	ld	a0,32(a0)
    800051b0:	ffffd097          	auipc	ra,0xffffd
    800051b4:	e84080e7          	jalr	-380(ra) # 80002034 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    800051b8:	0284b503          	ld	a0,40(s1)
    800051bc:	ffffd097          	auipc	ra,0xffffd
    800051c0:	e78080e7          	jalr	-392(ra) # 80002034 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    800051c4:	0084b703          	ld	a4,8(s1)
    800051c8:	0104a783          	lw	a5,16(s1)
    800051cc:	00279693          	slli	a3,a5,0x2
    800051d0:	00d70733          	add	a4,a4,a3
    800051d4:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800051d8:	0017879b          	addiw	a5,a5,1
    800051dc:	0004a703          	lw	a4,0(s1)
    800051e0:	02e7e7bb          	remw	a5,a5,a4
    800051e4:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800051e8:	0284b503          	ld	a0,40(s1)
    800051ec:	ffffd097          	auipc	ra,0xffffd
    800051f0:	e74080e7          	jalr	-396(ra) # 80002060 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800051f4:	0184b503          	ld	a0,24(s1)
    800051f8:	ffffd097          	auipc	ra,0xffffd
    800051fc:	e68080e7          	jalr	-408(ra) # 80002060 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005200:	00090513          	mv	a0,s2
    80005204:	01813083          	ld	ra,24(sp)
    80005208:	01013403          	ld	s0,16(sp)
    8000520c:	00813483          	ld	s1,8(sp)
    80005210:	00013903          	ld	s2,0(sp)
    80005214:	02010113          	addi	sp,sp,32
    80005218:	00008067          	ret

000000008000521c <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    8000521c:	fe010113          	addi	sp,sp,-32
    80005220:	00113c23          	sd	ra,24(sp)
    80005224:	00813823          	sd	s0,16(sp)
    80005228:	00913423          	sd	s1,8(sp)
    8000522c:	01213023          	sd	s2,0(sp)
    80005230:	02010413          	addi	s0,sp,32
    80005234:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005238:	02853503          	ld	a0,40(a0)
    8000523c:	ffffd097          	auipc	ra,0xffffd
    80005240:	df8080e7          	jalr	-520(ra) # 80002034 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005244:	0304b503          	ld	a0,48(s1)
    80005248:	ffffd097          	auipc	ra,0xffffd
    8000524c:	dec080e7          	jalr	-532(ra) # 80002034 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005250:	0144a783          	lw	a5,20(s1)
    80005254:	0104a903          	lw	s2,16(s1)
    80005258:	0327ce63          	blt	a5,s2,80005294 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    8000525c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005260:	0304b503          	ld	a0,48(s1)
    80005264:	ffffd097          	auipc	ra,0xffffd
    80005268:	dfc080e7          	jalr	-516(ra) # 80002060 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    8000526c:	0284b503          	ld	a0,40(s1)
    80005270:	ffffd097          	auipc	ra,0xffffd
    80005274:	df0080e7          	jalr	-528(ra) # 80002060 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005278:	00090513          	mv	a0,s2
    8000527c:	01813083          	ld	ra,24(sp)
    80005280:	01013403          	ld	s0,16(sp)
    80005284:	00813483          	ld	s1,8(sp)
    80005288:	00013903          	ld	s2,0(sp)
    8000528c:	02010113          	addi	sp,sp,32
    80005290:	00008067          	ret
        ret = cap - head + tail;
    80005294:	0004a703          	lw	a4,0(s1)
    80005298:	4127093b          	subw	s2,a4,s2
    8000529c:	00f9093b          	addw	s2,s2,a5
    800052a0:	fc1ff06f          	j	80005260 <_ZN9BufferCPP6getCntEv+0x44>

00000000800052a4 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    800052a4:	fe010113          	addi	sp,sp,-32
    800052a8:	00113c23          	sd	ra,24(sp)
    800052ac:	00813823          	sd	s0,16(sp)
    800052b0:	00913423          	sd	s1,8(sp)
    800052b4:	02010413          	addi	s0,sp,32
    800052b8:	00050493          	mv	s1,a0
    Console::putc('\n');
    800052bc:	00a00513          	li	a0,10
    800052c0:	ffffd097          	auipc	ra,0xffffd
    800052c4:	e74080e7          	jalr	-396(ra) # 80002134 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    800052c8:	00004517          	auipc	a0,0x4
    800052cc:	1a050513          	addi	a0,a0,416 # 80009468 <CONSOLE_STATUS+0x458>
    800052d0:	00000097          	auipc	ra,0x0
    800052d4:	a0c080e7          	jalr	-1524(ra) # 80004cdc <_Z11printStringPKc>
    while (getCnt()) {
    800052d8:	00048513          	mv	a0,s1
    800052dc:	00000097          	auipc	ra,0x0
    800052e0:	f40080e7          	jalr	-192(ra) # 8000521c <_ZN9BufferCPP6getCntEv>
    800052e4:	02050c63          	beqz	a0,8000531c <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    800052e8:	0084b783          	ld	a5,8(s1)
    800052ec:	0104a703          	lw	a4,16(s1)
    800052f0:	00271713          	slli	a4,a4,0x2
    800052f4:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    800052f8:	0007c503          	lbu	a0,0(a5)
    800052fc:	ffffd097          	auipc	ra,0xffffd
    80005300:	e38080e7          	jalr	-456(ra) # 80002134 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005304:	0104a783          	lw	a5,16(s1)
    80005308:	0017879b          	addiw	a5,a5,1
    8000530c:	0004a703          	lw	a4,0(s1)
    80005310:	02e7e7bb          	remw	a5,a5,a4
    80005314:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005318:	fc1ff06f          	j	800052d8 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    8000531c:	02100513          	li	a0,33
    80005320:	ffffd097          	auipc	ra,0xffffd
    80005324:	e14080e7          	jalr	-492(ra) # 80002134 <_ZN7Console4putcEc>
    Console::putc('\n');
    80005328:	00a00513          	li	a0,10
    8000532c:	ffffd097          	auipc	ra,0xffffd
    80005330:	e08080e7          	jalr	-504(ra) # 80002134 <_ZN7Console4putcEc>
    mem_free(buffer);
    80005334:	0084b503          	ld	a0,8(s1)
    80005338:	ffffc097          	auipc	ra,0xffffc
    8000533c:	e4c080e7          	jalr	-436(ra) # 80001184 <mem_free>
    delete itemAvailable;
    80005340:	0204b503          	ld	a0,32(s1)
    80005344:	00050863          	beqz	a0,80005354 <_ZN9BufferCPPD1Ev+0xb0>
    80005348:	00053783          	ld	a5,0(a0)
    8000534c:	0087b783          	ld	a5,8(a5)
    80005350:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005354:	0184b503          	ld	a0,24(s1)
    80005358:	00050863          	beqz	a0,80005368 <_ZN9BufferCPPD1Ev+0xc4>
    8000535c:	00053783          	ld	a5,0(a0)
    80005360:	0087b783          	ld	a5,8(a5)
    80005364:	000780e7          	jalr	a5
    delete mutexTail;
    80005368:	0304b503          	ld	a0,48(s1)
    8000536c:	00050863          	beqz	a0,8000537c <_ZN9BufferCPPD1Ev+0xd8>
    80005370:	00053783          	ld	a5,0(a0)
    80005374:	0087b783          	ld	a5,8(a5)
    80005378:	000780e7          	jalr	a5
    delete mutexHead;
    8000537c:	0284b503          	ld	a0,40(s1)
    80005380:	00050863          	beqz	a0,80005390 <_ZN9BufferCPPD1Ev+0xec>
    80005384:	00053783          	ld	a5,0(a0)
    80005388:	0087b783          	ld	a5,8(a5)
    8000538c:	000780e7          	jalr	a5
}
    80005390:	01813083          	ld	ra,24(sp)
    80005394:	01013403          	ld	s0,16(sp)
    80005398:	00813483          	ld	s1,8(sp)
    8000539c:	02010113          	addi	sp,sp,32
    800053a0:	00008067          	ret

00000000800053a4 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    800053a4:	fe010113          	addi	sp,sp,-32
    800053a8:	00113c23          	sd	ra,24(sp)
    800053ac:	00813823          	sd	s0,16(sp)
    800053b0:	00913423          	sd	s1,8(sp)
    800053b4:	01213023          	sd	s2,0(sp)
    800053b8:	02010413          	addi	s0,sp,32
       printString("Unesite broj testa? [1-7]\n");
    800053bc:	00004517          	auipc	a0,0x4
    800053c0:	0c450513          	addi	a0,a0,196 # 80009480 <CONSOLE_STATUS+0x470>
    800053c4:	00000097          	auipc	ra,0x0
    800053c8:	918080e7          	jalr	-1768(ra) # 80004cdc <_Z11printStringPKc>
    int test = getc() - '0';
    800053cc:	ffffc097          	auipc	ra,0xffffc
    800053d0:	090080e7          	jalr	144(ra) # 8000145c <getc>
    800053d4:	00050913          	mv	s2,a0
    800053d8:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    800053dc:	ffffc097          	auipc	ra,0xffffc
    800053e0:	080080e7          	jalr	128(ra) # 8000145c <getc>
               printString("Nije navedeno da je zadatak 3 implementiran\n");
               return;
           }
       }

       if (test >= 5 && test <= 6) {
    800053e4:	fcb9091b          	addiw	s2,s2,-53
    800053e8:	00100793          	li	a5,1
    800053ec:	0327f463          	bgeu	a5,s2,80005414 <_Z8userMainv+0x70>
               printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
           }
       }

       switch (test) {
    800053f0:	00700793          	li	a5,7
    800053f4:	0e97e263          	bltu	a5,s1,800054d8 <_Z8userMainv+0x134>
    800053f8:	00249493          	slli	s1,s1,0x2
    800053fc:	00004717          	auipc	a4,0x4
    80005400:	29c70713          	addi	a4,a4,668 # 80009698 <CONSOLE_STATUS+0x688>
    80005404:	00e484b3          	add	s1,s1,a4
    80005408:	0004a783          	lw	a5,0(s1)
    8000540c:	00e787b3          	add	a5,a5,a4
    80005410:	00078067          	jr	a5
               printString("Nije navedeno da je zadatak 4 implementiran\n");
    80005414:	00004517          	auipc	a0,0x4
    80005418:	08c50513          	addi	a0,a0,140 # 800094a0 <CONSOLE_STATUS+0x490>
    8000541c:	00000097          	auipc	ra,0x0
    80005420:	8c0080e7          	jalr	-1856(ra) # 80004cdc <_Z11printStringPKc>
           default:
               printString("Niste uneli odgovarajuci broj za test\n");
       }


    80005424:	01813083          	ld	ra,24(sp)
    80005428:	01013403          	ld	s0,16(sp)
    8000542c:	00813483          	ld	s1,8(sp)
    80005430:	00013903          	ld	s2,0(sp)
    80005434:	02010113          	addi	sp,sp,32
    80005438:	00008067          	ret
               Threads_C_API_test();
    8000543c:	fffff097          	auipc	ra,0xfffff
    80005440:	f00080e7          	jalr	-256(ra) # 8000433c <_Z18Threads_C_API_testv>
               printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80005444:	00004517          	auipc	a0,0x4
    80005448:	08c50513          	addi	a0,a0,140 # 800094d0 <CONSOLE_STATUS+0x4c0>
    8000544c:	00000097          	auipc	ra,0x0
    80005450:	890080e7          	jalr	-1904(ra) # 80004cdc <_Z11printStringPKc>
               break;
    80005454:	fd1ff06f          	j	80005424 <_Z8userMainv+0x80>
               Threads_CPP_API_test();
    80005458:	ffffe097          	auipc	ra,0xffffe
    8000545c:	548080e7          	jalr	1352(ra) # 800039a0 <_Z20Threads_CPP_API_testv>
               printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80005460:	00004517          	auipc	a0,0x4
    80005464:	0b050513          	addi	a0,a0,176 # 80009510 <CONSOLE_STATUS+0x500>
    80005468:	00000097          	auipc	ra,0x0
    8000546c:	874080e7          	jalr	-1932(ra) # 80004cdc <_Z11printStringPKc>
               break;
    80005470:	fb5ff06f          	j	80005424 <_Z8userMainv+0x80>
               producerConsumer_C_API();
    80005474:	ffffe097          	auipc	ra,0xffffe
    80005478:	d80080e7          	jalr	-640(ra) # 800031f4 <_Z22producerConsumer_C_APIv>
               printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    8000547c:	00004517          	auipc	a0,0x4
    80005480:	0d450513          	addi	a0,a0,212 # 80009550 <CONSOLE_STATUS+0x540>
    80005484:	00000097          	auipc	ra,0x0
    80005488:	858080e7          	jalr	-1960(ra) # 80004cdc <_Z11printStringPKc>
               break;
    8000548c:	f99ff06f          	j	80005424 <_Z8userMainv+0x80>
               producerConsumer_CPP_Sync_API();
    80005490:	fffff097          	auipc	ra,0xfffff
    80005494:	208080e7          	jalr	520(ra) # 80004698 <_Z29producerConsumer_CPP_Sync_APIv>
               printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80005498:	00004517          	auipc	a0,0x4
    8000549c:	10850513          	addi	a0,a0,264 # 800095a0 <CONSOLE_STATUS+0x590>
    800054a0:	00000097          	auipc	ra,0x0
    800054a4:	83c080e7          	jalr	-1988(ra) # 80004cdc <_Z11printStringPKc>
               break;
    800054a8:	f7dff06f          	j	80005424 <_Z8userMainv+0x80>
               System_Mode_test();
    800054ac:	00000097          	auipc	ra,0x0
    800054b0:	52c080e7          	jalr	1324(ra) # 800059d8 <_Z16System_Mode_testv>
               printString("Test se nije uspesno zavrsio\n");
    800054b4:	00004517          	auipc	a0,0x4
    800054b8:	14450513          	addi	a0,a0,324 # 800095f8 <CONSOLE_STATUS+0x5e8>
    800054bc:	00000097          	auipc	ra,0x0
    800054c0:	820080e7          	jalr	-2016(ra) # 80004cdc <_Z11printStringPKc>
               printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    800054c4:	00004517          	auipc	a0,0x4
    800054c8:	15450513          	addi	a0,a0,340 # 80009618 <CONSOLE_STATUS+0x608>
    800054cc:	00000097          	auipc	ra,0x0
    800054d0:	810080e7          	jalr	-2032(ra) # 80004cdc <_Z11printStringPKc>
               break;
    800054d4:	f51ff06f          	j	80005424 <_Z8userMainv+0x80>
               printString("Niste uneli odgovarajuci broj za test\n");
    800054d8:	00004517          	auipc	a0,0x4
    800054dc:	19850513          	addi	a0,a0,408 # 80009670 <CONSOLE_STATUS+0x660>
    800054e0:	fffff097          	auipc	ra,0xfffff
    800054e4:	7fc080e7          	jalr	2044(ra) # 80004cdc <_Z11printStringPKc>
    800054e8:	f3dff06f          	j	80005424 <_Z8userMainv+0x80>

00000000800054ec <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800054ec:	fe010113          	addi	sp,sp,-32
    800054f0:	00113c23          	sd	ra,24(sp)
    800054f4:	00813823          	sd	s0,16(sp)
    800054f8:	00913423          	sd	s1,8(sp)
    800054fc:	01213023          	sd	s2,0(sp)
    80005500:	02010413          	addi	s0,sp,32
    80005504:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005508:	00100793          	li	a5,1
    8000550c:	02a7f863          	bgeu	a5,a0,8000553c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005510:	00a00793          	li	a5,10
    80005514:	02f577b3          	remu	a5,a0,a5
    80005518:	02078e63          	beqz	a5,80005554 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    8000551c:	fff48513          	addi	a0,s1,-1
    80005520:	00000097          	auipc	ra,0x0
    80005524:	fcc080e7          	jalr	-52(ra) # 800054ec <_ZL9fibonaccim>
    80005528:	00050913          	mv	s2,a0
    8000552c:	ffe48513          	addi	a0,s1,-2
    80005530:	00000097          	auipc	ra,0x0
    80005534:	fbc080e7          	jalr	-68(ra) # 800054ec <_ZL9fibonaccim>
    80005538:	00a90533          	add	a0,s2,a0
}
    8000553c:	01813083          	ld	ra,24(sp)
    80005540:	01013403          	ld	s0,16(sp)
    80005544:	00813483          	ld	s1,8(sp)
    80005548:	00013903          	ld	s2,0(sp)
    8000554c:	02010113          	addi	sp,sp,32
    80005550:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005554:	ffffc097          	auipc	ra,0xffffc
    80005558:	d20080e7          	jalr	-736(ra) # 80001274 <thread_dispatch>
    8000555c:	fc1ff06f          	j	8000551c <_ZL9fibonaccim+0x30>

0000000080005560 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005560:	fe010113          	addi	sp,sp,-32
    80005564:	00113c23          	sd	ra,24(sp)
    80005568:	00813823          	sd	s0,16(sp)
    8000556c:	00913423          	sd	s1,8(sp)
    80005570:	01213023          	sd	s2,0(sp)
    80005574:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005578:	00a00493          	li	s1,10
    8000557c:	0400006f          	j	800055bc <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005580:	00004517          	auipc	a0,0x4
    80005584:	ae050513          	addi	a0,a0,-1312 # 80009060 <CONSOLE_STATUS+0x50>
    80005588:	fffff097          	auipc	ra,0xfffff
    8000558c:	754080e7          	jalr	1876(ra) # 80004cdc <_Z11printStringPKc>
    80005590:	00000613          	li	a2,0
    80005594:	00a00593          	li	a1,10
    80005598:	00048513          	mv	a0,s1
    8000559c:	00000097          	auipc	ra,0x0
    800055a0:	8f0080e7          	jalr	-1808(ra) # 80004e8c <_Z8printIntiii>
    800055a4:	00004517          	auipc	a0,0x4
    800055a8:	04c50513          	addi	a0,a0,76 # 800095f0 <CONSOLE_STATUS+0x5e0>
    800055ac:	fffff097          	auipc	ra,0xfffff
    800055b0:	730080e7          	jalr	1840(ra) # 80004cdc <_Z11printStringPKc>
    for (; i < 13; i++) {
    800055b4:	0014849b          	addiw	s1,s1,1
    800055b8:	0ff4f493          	andi	s1,s1,255
    800055bc:	00c00793          	li	a5,12
    800055c0:	fc97f0e3          	bgeu	a5,s1,80005580 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800055c4:	00004517          	auipc	a0,0x4
    800055c8:	e2450513          	addi	a0,a0,-476 # 800093e8 <CONSOLE_STATUS+0x3d8>
    800055cc:	fffff097          	auipc	ra,0xfffff
    800055d0:	710080e7          	jalr	1808(ra) # 80004cdc <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800055d4:	00500313          	li	t1,5
    thread_dispatch();
    800055d8:	ffffc097          	auipc	ra,0xffffc
    800055dc:	c9c080e7          	jalr	-868(ra) # 80001274 <thread_dispatch>

    uint64 result = fibonacci(16);
    800055e0:	01000513          	li	a0,16
    800055e4:	00000097          	auipc	ra,0x0
    800055e8:	f08080e7          	jalr	-248(ra) # 800054ec <_ZL9fibonaccim>
    800055ec:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800055f0:	00004517          	auipc	a0,0x4
    800055f4:	a8850513          	addi	a0,a0,-1400 # 80009078 <CONSOLE_STATUS+0x68>
    800055f8:	fffff097          	auipc	ra,0xfffff
    800055fc:	6e4080e7          	jalr	1764(ra) # 80004cdc <_Z11printStringPKc>
    80005600:	00000613          	li	a2,0
    80005604:	00a00593          	li	a1,10
    80005608:	0009051b          	sext.w	a0,s2
    8000560c:	00000097          	auipc	ra,0x0
    80005610:	880080e7          	jalr	-1920(ra) # 80004e8c <_Z8printIntiii>
    80005614:	00004517          	auipc	a0,0x4
    80005618:	fdc50513          	addi	a0,a0,-36 # 800095f0 <CONSOLE_STATUS+0x5e0>
    8000561c:	fffff097          	auipc	ra,0xfffff
    80005620:	6c0080e7          	jalr	1728(ra) # 80004cdc <_Z11printStringPKc>
    80005624:	0400006f          	j	80005664 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005628:	00004517          	auipc	a0,0x4
    8000562c:	a3850513          	addi	a0,a0,-1480 # 80009060 <CONSOLE_STATUS+0x50>
    80005630:	fffff097          	auipc	ra,0xfffff
    80005634:	6ac080e7          	jalr	1708(ra) # 80004cdc <_Z11printStringPKc>
    80005638:	00000613          	li	a2,0
    8000563c:	00a00593          	li	a1,10
    80005640:	00048513          	mv	a0,s1
    80005644:	00000097          	auipc	ra,0x0
    80005648:	848080e7          	jalr	-1976(ra) # 80004e8c <_Z8printIntiii>
    8000564c:	00004517          	auipc	a0,0x4
    80005650:	fa450513          	addi	a0,a0,-92 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80005654:	fffff097          	auipc	ra,0xfffff
    80005658:	688080e7          	jalr	1672(ra) # 80004cdc <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000565c:	0014849b          	addiw	s1,s1,1
    80005660:	0ff4f493          	andi	s1,s1,255
    80005664:	00f00793          	li	a5,15
    80005668:	fc97f0e3          	bgeu	a5,s1,80005628 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    8000566c:	00004517          	auipc	a0,0x4
    80005670:	d8c50513          	addi	a0,a0,-628 # 800093f8 <CONSOLE_STATUS+0x3e8>
    80005674:	fffff097          	auipc	ra,0xfffff
    80005678:	668080e7          	jalr	1640(ra) # 80004cdc <_Z11printStringPKc>
    finishedD = true;
    8000567c:	00100793          	li	a5,1
    80005680:	00006717          	auipc	a4,0x6
    80005684:	f8f70023          	sb	a5,-128(a4) # 8000b600 <_ZL9finishedD>
    thread_dispatch();
    80005688:	ffffc097          	auipc	ra,0xffffc
    8000568c:	bec080e7          	jalr	-1044(ra) # 80001274 <thread_dispatch>
}
    80005690:	01813083          	ld	ra,24(sp)
    80005694:	01013403          	ld	s0,16(sp)
    80005698:	00813483          	ld	s1,8(sp)
    8000569c:	00013903          	ld	s2,0(sp)
    800056a0:	02010113          	addi	sp,sp,32
    800056a4:	00008067          	ret

00000000800056a8 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800056a8:	fe010113          	addi	sp,sp,-32
    800056ac:	00113c23          	sd	ra,24(sp)
    800056b0:	00813823          	sd	s0,16(sp)
    800056b4:	00913423          	sd	s1,8(sp)
    800056b8:	01213023          	sd	s2,0(sp)
    800056bc:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800056c0:	00000493          	li	s1,0
    800056c4:	0400006f          	j	80005704 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800056c8:	00004517          	auipc	a0,0x4
    800056cc:	96850513          	addi	a0,a0,-1688 # 80009030 <CONSOLE_STATUS+0x20>
    800056d0:	fffff097          	auipc	ra,0xfffff
    800056d4:	60c080e7          	jalr	1548(ra) # 80004cdc <_Z11printStringPKc>
    800056d8:	00000613          	li	a2,0
    800056dc:	00a00593          	li	a1,10
    800056e0:	00048513          	mv	a0,s1
    800056e4:	fffff097          	auipc	ra,0xfffff
    800056e8:	7a8080e7          	jalr	1960(ra) # 80004e8c <_Z8printIntiii>
    800056ec:	00004517          	auipc	a0,0x4
    800056f0:	f0450513          	addi	a0,a0,-252 # 800095f0 <CONSOLE_STATUS+0x5e0>
    800056f4:	fffff097          	auipc	ra,0xfffff
    800056f8:	5e8080e7          	jalr	1512(ra) # 80004cdc <_Z11printStringPKc>
    for (; i < 3; i++) {
    800056fc:	0014849b          	addiw	s1,s1,1
    80005700:	0ff4f493          	andi	s1,s1,255
    80005704:	00200793          	li	a5,2
    80005708:	fc97f0e3          	bgeu	a5,s1,800056c8 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    8000570c:	00004517          	auipc	a0,0x4
    80005710:	ccc50513          	addi	a0,a0,-820 # 800093d8 <CONSOLE_STATUS+0x3c8>
    80005714:	fffff097          	auipc	ra,0xfffff
    80005718:	5c8080e7          	jalr	1480(ra) # 80004cdc <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000571c:	00700313          	li	t1,7
    thread_dispatch();
    80005720:	ffffc097          	auipc	ra,0xffffc
    80005724:	b54080e7          	jalr	-1196(ra) # 80001274 <thread_dispatch>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005728:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    8000572c:	00004517          	auipc	a0,0x4
    80005730:	91c50513          	addi	a0,a0,-1764 # 80009048 <CONSOLE_STATUS+0x38>
    80005734:	fffff097          	auipc	ra,0xfffff
    80005738:	5a8080e7          	jalr	1448(ra) # 80004cdc <_Z11printStringPKc>
    8000573c:	00000613          	li	a2,0
    80005740:	00a00593          	li	a1,10
    80005744:	0009051b          	sext.w	a0,s2
    80005748:	fffff097          	auipc	ra,0xfffff
    8000574c:	744080e7          	jalr	1860(ra) # 80004e8c <_Z8printIntiii>
    80005750:	00004517          	auipc	a0,0x4
    80005754:	ea050513          	addi	a0,a0,-352 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80005758:	fffff097          	auipc	ra,0xfffff
    8000575c:	584080e7          	jalr	1412(ra) # 80004cdc <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005760:	00c00513          	li	a0,12
    80005764:	00000097          	auipc	ra,0x0
    80005768:	d88080e7          	jalr	-632(ra) # 800054ec <_ZL9fibonaccim>
    8000576c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005770:	00004517          	auipc	a0,0x4
    80005774:	8e050513          	addi	a0,a0,-1824 # 80009050 <CONSOLE_STATUS+0x40>
    80005778:	fffff097          	auipc	ra,0xfffff
    8000577c:	564080e7          	jalr	1380(ra) # 80004cdc <_Z11printStringPKc>
    80005780:	00000613          	li	a2,0
    80005784:	00a00593          	li	a1,10
    80005788:	0009051b          	sext.w	a0,s2
    8000578c:	fffff097          	auipc	ra,0xfffff
    80005790:	700080e7          	jalr	1792(ra) # 80004e8c <_Z8printIntiii>
    80005794:	00004517          	auipc	a0,0x4
    80005798:	e5c50513          	addi	a0,a0,-420 # 800095f0 <CONSOLE_STATUS+0x5e0>
    8000579c:	fffff097          	auipc	ra,0xfffff
    800057a0:	540080e7          	jalr	1344(ra) # 80004cdc <_Z11printStringPKc>
    800057a4:	0400006f          	j	800057e4 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800057a8:	00004517          	auipc	a0,0x4
    800057ac:	88850513          	addi	a0,a0,-1912 # 80009030 <CONSOLE_STATUS+0x20>
    800057b0:	fffff097          	auipc	ra,0xfffff
    800057b4:	52c080e7          	jalr	1324(ra) # 80004cdc <_Z11printStringPKc>
    800057b8:	00000613          	li	a2,0
    800057bc:	00a00593          	li	a1,10
    800057c0:	00048513          	mv	a0,s1
    800057c4:	fffff097          	auipc	ra,0xfffff
    800057c8:	6c8080e7          	jalr	1736(ra) # 80004e8c <_Z8printIntiii>
    800057cc:	00004517          	auipc	a0,0x4
    800057d0:	e2450513          	addi	a0,a0,-476 # 800095f0 <CONSOLE_STATUS+0x5e0>
    800057d4:	fffff097          	auipc	ra,0xfffff
    800057d8:	508080e7          	jalr	1288(ra) # 80004cdc <_Z11printStringPKc>
    for (; i < 6; i++) {
    800057dc:	0014849b          	addiw	s1,s1,1
    800057e0:	0ff4f493          	andi	s1,s1,255
    800057e4:	00500793          	li	a5,5
    800057e8:	fc97f0e3          	bgeu	a5,s1,800057a8 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800057ec:	00004517          	auipc	a0,0x4
    800057f0:	bcc50513          	addi	a0,a0,-1076 # 800093b8 <CONSOLE_STATUS+0x3a8>
    800057f4:	fffff097          	auipc	ra,0xfffff
    800057f8:	4e8080e7          	jalr	1256(ra) # 80004cdc <_Z11printStringPKc>
    finishedC = true;
    800057fc:	00100793          	li	a5,1
    80005800:	00006717          	auipc	a4,0x6
    80005804:	e0f700a3          	sb	a5,-511(a4) # 8000b601 <_ZL9finishedC>
    thread_dispatch();
    80005808:	ffffc097          	auipc	ra,0xffffc
    8000580c:	a6c080e7          	jalr	-1428(ra) # 80001274 <thread_dispatch>
}
    80005810:	01813083          	ld	ra,24(sp)
    80005814:	01013403          	ld	s0,16(sp)
    80005818:	00813483          	ld	s1,8(sp)
    8000581c:	00013903          	ld	s2,0(sp)
    80005820:	02010113          	addi	sp,sp,32
    80005824:	00008067          	ret

0000000080005828 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005828:	fe010113          	addi	sp,sp,-32
    8000582c:	00113c23          	sd	ra,24(sp)
    80005830:	00813823          	sd	s0,16(sp)
    80005834:	00913423          	sd	s1,8(sp)
    80005838:	01213023          	sd	s2,0(sp)
    8000583c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005840:	00000913          	li	s2,0
    80005844:	0400006f          	j	80005884 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80005848:	ffffc097          	auipc	ra,0xffffc
    8000584c:	a2c080e7          	jalr	-1492(ra) # 80001274 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80005850:	00148493          	addi	s1,s1,1
    80005854:	000027b7          	lui	a5,0x2
    80005858:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000585c:	0097ee63          	bltu	a5,s1,80005878 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005860:	00000713          	li	a4,0
    80005864:	000077b7          	lui	a5,0x7
    80005868:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000586c:	fce7eee3          	bltu	a5,a4,80005848 <_ZL11workerBodyBPv+0x20>
    80005870:	00170713          	addi	a4,a4,1
    80005874:	ff1ff06f          	j	80005864 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80005878:	00a00793          	li	a5,10
    8000587c:	04f90663          	beq	s2,a5,800058c8 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80005880:	00190913          	addi	s2,s2,1
    80005884:	00f00793          	li	a5,15
    80005888:	0527e463          	bltu	a5,s2,800058d0 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    8000588c:	00003517          	auipc	a0,0x3
    80005890:	79c50513          	addi	a0,a0,1948 # 80009028 <CONSOLE_STATUS+0x18>
    80005894:	fffff097          	auipc	ra,0xfffff
    80005898:	448080e7          	jalr	1096(ra) # 80004cdc <_Z11printStringPKc>
    8000589c:	00000613          	li	a2,0
    800058a0:	00a00593          	li	a1,10
    800058a4:	0009051b          	sext.w	a0,s2
    800058a8:	fffff097          	auipc	ra,0xfffff
    800058ac:	5e4080e7          	jalr	1508(ra) # 80004e8c <_Z8printIntiii>
    800058b0:	00004517          	auipc	a0,0x4
    800058b4:	d4050513          	addi	a0,a0,-704 # 800095f0 <CONSOLE_STATUS+0x5e0>
    800058b8:	fffff097          	auipc	ra,0xfffff
    800058bc:	424080e7          	jalr	1060(ra) # 80004cdc <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800058c0:	00000493          	li	s1,0
    800058c4:	f91ff06f          	j	80005854 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    800058c8:	14102ff3          	csrr	t6,sepc
    800058cc:	fb5ff06f          	j	80005880 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    800058d0:	00004517          	auipc	a0,0x4
    800058d4:	af850513          	addi	a0,a0,-1288 # 800093c8 <CONSOLE_STATUS+0x3b8>
    800058d8:	fffff097          	auipc	ra,0xfffff
    800058dc:	404080e7          	jalr	1028(ra) # 80004cdc <_Z11printStringPKc>
    finishedB = true;
    800058e0:	00100793          	li	a5,1
    800058e4:	00006717          	auipc	a4,0x6
    800058e8:	d0f70f23          	sb	a5,-738(a4) # 8000b602 <_ZL9finishedB>
    thread_dispatch();
    800058ec:	ffffc097          	auipc	ra,0xffffc
    800058f0:	988080e7          	jalr	-1656(ra) # 80001274 <thread_dispatch>
}
    800058f4:	01813083          	ld	ra,24(sp)
    800058f8:	01013403          	ld	s0,16(sp)
    800058fc:	00813483          	ld	s1,8(sp)
    80005900:	00013903          	ld	s2,0(sp)
    80005904:	02010113          	addi	sp,sp,32
    80005908:	00008067          	ret

000000008000590c <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    8000590c:	fe010113          	addi	sp,sp,-32
    80005910:	00113c23          	sd	ra,24(sp)
    80005914:	00813823          	sd	s0,16(sp)
    80005918:	00913423          	sd	s1,8(sp)
    8000591c:	01213023          	sd	s2,0(sp)
    80005920:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005924:	00000913          	li	s2,0
    80005928:	0380006f          	j	80005960 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    8000592c:	ffffc097          	auipc	ra,0xffffc
    80005930:	948080e7          	jalr	-1720(ra) # 80001274 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80005934:	00148493          	addi	s1,s1,1
    80005938:	000027b7          	lui	a5,0x2
    8000593c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005940:	0097ee63          	bltu	a5,s1,8000595c <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005944:	00000713          	li	a4,0
    80005948:	000077b7          	lui	a5,0x7
    8000594c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005950:	fce7eee3          	bltu	a5,a4,8000592c <_ZL11workerBodyAPv+0x20>
    80005954:	00170713          	addi	a4,a4,1
    80005958:	ff1ff06f          	j	80005948 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000595c:	00190913          	addi	s2,s2,1
    80005960:	00900793          	li	a5,9
    80005964:	0527e063          	bltu	a5,s2,800059a4 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005968:	00003517          	auipc	a0,0x3
    8000596c:	6b850513          	addi	a0,a0,1720 # 80009020 <CONSOLE_STATUS+0x10>
    80005970:	fffff097          	auipc	ra,0xfffff
    80005974:	36c080e7          	jalr	876(ra) # 80004cdc <_Z11printStringPKc>
    80005978:	00000613          	li	a2,0
    8000597c:	00a00593          	li	a1,10
    80005980:	0009051b          	sext.w	a0,s2
    80005984:	fffff097          	auipc	ra,0xfffff
    80005988:	508080e7          	jalr	1288(ra) # 80004e8c <_Z8printIntiii>
    8000598c:	00004517          	auipc	a0,0x4
    80005990:	c6450513          	addi	a0,a0,-924 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80005994:	fffff097          	auipc	ra,0xfffff
    80005998:	348080e7          	jalr	840(ra) # 80004cdc <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000599c:	00000493          	li	s1,0
    800059a0:	f99ff06f          	j	80005938 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800059a4:	00004517          	auipc	a0,0x4
    800059a8:	a1450513          	addi	a0,a0,-1516 # 800093b8 <CONSOLE_STATUS+0x3a8>
    800059ac:	fffff097          	auipc	ra,0xfffff
    800059b0:	330080e7          	jalr	816(ra) # 80004cdc <_Z11printStringPKc>
    finishedA = true;
    800059b4:	00100793          	li	a5,1
    800059b8:	00006717          	auipc	a4,0x6
    800059bc:	c4f705a3          	sb	a5,-949(a4) # 8000b603 <_ZL9finishedA>
}
    800059c0:	01813083          	ld	ra,24(sp)
    800059c4:	01013403          	ld	s0,16(sp)
    800059c8:	00813483          	ld	s1,8(sp)
    800059cc:	00013903          	ld	s2,0(sp)
    800059d0:	02010113          	addi	sp,sp,32
    800059d4:	00008067          	ret

00000000800059d8 <_Z16System_Mode_testv>:


void System_Mode_test() {
    800059d8:	fd010113          	addi	sp,sp,-48
    800059dc:	02113423          	sd	ra,40(sp)
    800059e0:	02813023          	sd	s0,32(sp)
    800059e4:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800059e8:	00000613          	li	a2,0
    800059ec:	00000597          	auipc	a1,0x0
    800059f0:	f2058593          	addi	a1,a1,-224 # 8000590c <_ZL11workerBodyAPv>
    800059f4:	fd040513          	addi	a0,s0,-48
    800059f8:	ffffb097          	auipc	ra,0xffffb
    800059fc:	7dc080e7          	jalr	2012(ra) # 800011d4 <thread_create>
    printString("ThreadA created\n");
    80005a00:	00004517          	auipc	a0,0x4
    80005a04:	a0850513          	addi	a0,a0,-1528 # 80009408 <CONSOLE_STATUS+0x3f8>
    80005a08:	fffff097          	auipc	ra,0xfffff
    80005a0c:	2d4080e7          	jalr	724(ra) # 80004cdc <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005a10:	00000613          	li	a2,0
    80005a14:	00000597          	auipc	a1,0x0
    80005a18:	e1458593          	addi	a1,a1,-492 # 80005828 <_ZL11workerBodyBPv>
    80005a1c:	fd840513          	addi	a0,s0,-40
    80005a20:	ffffb097          	auipc	ra,0xffffb
    80005a24:	7b4080e7          	jalr	1972(ra) # 800011d4 <thread_create>
    printString("ThreadB created\n");
    80005a28:	00004517          	auipc	a0,0x4
    80005a2c:	9f850513          	addi	a0,a0,-1544 # 80009420 <CONSOLE_STATUS+0x410>
    80005a30:	fffff097          	auipc	ra,0xfffff
    80005a34:	2ac080e7          	jalr	684(ra) # 80004cdc <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005a38:	00000613          	li	a2,0
    80005a3c:	00000597          	auipc	a1,0x0
    80005a40:	c6c58593          	addi	a1,a1,-916 # 800056a8 <_ZL11workerBodyCPv>
    80005a44:	fe040513          	addi	a0,s0,-32
    80005a48:	ffffb097          	auipc	ra,0xffffb
    80005a4c:	78c080e7          	jalr	1932(ra) # 800011d4 <thread_create>
    printString("ThreadC created\n");
    80005a50:	00004517          	auipc	a0,0x4
    80005a54:	9e850513          	addi	a0,a0,-1560 # 80009438 <CONSOLE_STATUS+0x428>
    80005a58:	fffff097          	auipc	ra,0xfffff
    80005a5c:	284080e7          	jalr	644(ra) # 80004cdc <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005a60:	00000613          	li	a2,0
    80005a64:	00000597          	auipc	a1,0x0
    80005a68:	afc58593          	addi	a1,a1,-1284 # 80005560 <_ZL11workerBodyDPv>
    80005a6c:	fe840513          	addi	a0,s0,-24
    80005a70:	ffffb097          	auipc	ra,0xffffb
    80005a74:	764080e7          	jalr	1892(ra) # 800011d4 <thread_create>
    printString("ThreadD created\n");
    80005a78:	00004517          	auipc	a0,0x4
    80005a7c:	9d850513          	addi	a0,a0,-1576 # 80009450 <CONSOLE_STATUS+0x440>
    80005a80:	fffff097          	auipc	ra,0xfffff
    80005a84:	25c080e7          	jalr	604(ra) # 80004cdc <_Z11printStringPKc>
    80005a88:	00c0006f          	j	80005a94 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005a8c:	ffffb097          	auipc	ra,0xffffb
    80005a90:	7e8080e7          	jalr	2024(ra) # 80001274 <thread_dispatch>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005a94:	00006797          	auipc	a5,0x6
    80005a98:	b6f7c783          	lbu	a5,-1169(a5) # 8000b603 <_ZL9finishedA>
    80005a9c:	fe0788e3          	beqz	a5,80005a8c <_Z16System_Mode_testv+0xb4>
    80005aa0:	00006797          	auipc	a5,0x6
    80005aa4:	b627c783          	lbu	a5,-1182(a5) # 8000b602 <_ZL9finishedB>
    80005aa8:	fe0782e3          	beqz	a5,80005a8c <_Z16System_Mode_testv+0xb4>
    80005aac:	00006797          	auipc	a5,0x6
    80005ab0:	b557c783          	lbu	a5,-1195(a5) # 8000b601 <_ZL9finishedC>
    80005ab4:	fc078ce3          	beqz	a5,80005a8c <_Z16System_Mode_testv+0xb4>
    80005ab8:	00006797          	auipc	a5,0x6
    80005abc:	b487c783          	lbu	a5,-1208(a5) # 8000b600 <_ZL9finishedD>
    80005ac0:	fc0786e3          	beqz	a5,80005a8c <_Z16System_Mode_testv+0xb4>
    }

}
    80005ac4:	02813083          	ld	ra,40(sp)
    80005ac8:	02013403          	ld	s0,32(sp)
    80005acc:	03010113          	addi	sp,sp,48
    80005ad0:	00008067          	ret

0000000080005ad4 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005ad4:	fe010113          	addi	sp,sp,-32
    80005ad8:	00113c23          	sd	ra,24(sp)
    80005adc:	00813823          	sd	s0,16(sp)
    80005ae0:	00913423          	sd	s1,8(sp)
    80005ae4:	01213023          	sd	s2,0(sp)
    80005ae8:	02010413          	addi	s0,sp,32
    80005aec:	00050493          	mv	s1,a0
    80005af0:	00058913          	mv	s2,a1
    80005af4:	0015879b          	addiw	a5,a1,1
    80005af8:	0007851b          	sext.w	a0,a5
    80005afc:	00f4a023          	sw	a5,0(s1)
    80005b00:	0004a823          	sw	zero,16(s1)
    80005b04:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005b08:	00251513          	slli	a0,a0,0x2
    80005b0c:	ffffb097          	auipc	ra,0xffffb
    80005b10:	638080e7          	jalr	1592(ra) # 80001144 <mem_alloc>
    80005b14:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80005b18:	00000593          	li	a1,0
    80005b1c:	02048513          	addi	a0,s1,32
    80005b20:	ffffb097          	auipc	ra,0xffffb
    80005b24:	7b4080e7          	jalr	1972(ra) # 800012d4 <sem_open>
    sem_open(&spaceAvailable, _cap);
    80005b28:	00090593          	mv	a1,s2
    80005b2c:	01848513          	addi	a0,s1,24
    80005b30:	ffffb097          	auipc	ra,0xffffb
    80005b34:	7a4080e7          	jalr	1956(ra) # 800012d4 <sem_open>
    sem_open(&mutexHead, 1);
    80005b38:	00100593          	li	a1,1
    80005b3c:	02848513          	addi	a0,s1,40
    80005b40:	ffffb097          	auipc	ra,0xffffb
    80005b44:	794080e7          	jalr	1940(ra) # 800012d4 <sem_open>
    sem_open(&mutexTail, 1);
    80005b48:	00100593          	li	a1,1
    80005b4c:	03048513          	addi	a0,s1,48
    80005b50:	ffffb097          	auipc	ra,0xffffb
    80005b54:	784080e7          	jalr	1924(ra) # 800012d4 <sem_open>
}
    80005b58:	01813083          	ld	ra,24(sp)
    80005b5c:	01013403          	ld	s0,16(sp)
    80005b60:	00813483          	ld	s1,8(sp)
    80005b64:	00013903          	ld	s2,0(sp)
    80005b68:	02010113          	addi	sp,sp,32
    80005b6c:	00008067          	ret

0000000080005b70 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80005b70:	fe010113          	addi	sp,sp,-32
    80005b74:	00113c23          	sd	ra,24(sp)
    80005b78:	00813823          	sd	s0,16(sp)
    80005b7c:	00913423          	sd	s1,8(sp)
    80005b80:	01213023          	sd	s2,0(sp)
    80005b84:	02010413          	addi	s0,sp,32
    80005b88:	00050493          	mv	s1,a0
    80005b8c:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80005b90:	01853503          	ld	a0,24(a0)
    80005b94:	ffffb097          	auipc	ra,0xffffb
    80005b98:	7e4080e7          	jalr	2020(ra) # 80001378 <sem_wait>

    sem_wait(mutexTail);
    80005b9c:	0304b503          	ld	a0,48(s1)
    80005ba0:	ffffb097          	auipc	ra,0xffffb
    80005ba4:	7d8080e7          	jalr	2008(ra) # 80001378 <sem_wait>
    buffer[tail] = val;
    80005ba8:	0084b783          	ld	a5,8(s1)
    80005bac:	0144a703          	lw	a4,20(s1)
    80005bb0:	00271713          	slli	a4,a4,0x2
    80005bb4:	00e787b3          	add	a5,a5,a4
    80005bb8:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005bbc:	0144a783          	lw	a5,20(s1)
    80005bc0:	0017879b          	addiw	a5,a5,1
    80005bc4:	0004a703          	lw	a4,0(s1)
    80005bc8:	02e7e7bb          	remw	a5,a5,a4
    80005bcc:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80005bd0:	0304b503          	ld	a0,48(s1)
    80005bd4:	ffffb097          	auipc	ra,0xffffb
    80005bd8:	7f0080e7          	jalr	2032(ra) # 800013c4 <sem_signal>

    sem_signal(itemAvailable);
    80005bdc:	0204b503          	ld	a0,32(s1)
    80005be0:	ffffb097          	auipc	ra,0xffffb
    80005be4:	7e4080e7          	jalr	2020(ra) # 800013c4 <sem_signal>

}
    80005be8:	01813083          	ld	ra,24(sp)
    80005bec:	01013403          	ld	s0,16(sp)
    80005bf0:	00813483          	ld	s1,8(sp)
    80005bf4:	00013903          	ld	s2,0(sp)
    80005bf8:	02010113          	addi	sp,sp,32
    80005bfc:	00008067          	ret

0000000080005c00 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80005c00:	fe010113          	addi	sp,sp,-32
    80005c04:	00113c23          	sd	ra,24(sp)
    80005c08:	00813823          	sd	s0,16(sp)
    80005c0c:	00913423          	sd	s1,8(sp)
    80005c10:	01213023          	sd	s2,0(sp)
    80005c14:	02010413          	addi	s0,sp,32
    80005c18:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80005c1c:	02053503          	ld	a0,32(a0)
    80005c20:	ffffb097          	auipc	ra,0xffffb
    80005c24:	758080e7          	jalr	1880(ra) # 80001378 <sem_wait>

    sem_wait(mutexHead);
    80005c28:	0284b503          	ld	a0,40(s1)
    80005c2c:	ffffb097          	auipc	ra,0xffffb
    80005c30:	74c080e7          	jalr	1868(ra) # 80001378 <sem_wait>

    int ret = buffer[head];
    80005c34:	0084b703          	ld	a4,8(s1)
    80005c38:	0104a783          	lw	a5,16(s1)
    80005c3c:	00279693          	slli	a3,a5,0x2
    80005c40:	00d70733          	add	a4,a4,a3
    80005c44:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005c48:	0017879b          	addiw	a5,a5,1
    80005c4c:	0004a703          	lw	a4,0(s1)
    80005c50:	02e7e7bb          	remw	a5,a5,a4
    80005c54:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80005c58:	0284b503          	ld	a0,40(s1)
    80005c5c:	ffffb097          	auipc	ra,0xffffb
    80005c60:	768080e7          	jalr	1896(ra) # 800013c4 <sem_signal>

    sem_signal(spaceAvailable);
    80005c64:	0184b503          	ld	a0,24(s1)
    80005c68:	ffffb097          	auipc	ra,0xffffb
    80005c6c:	75c080e7          	jalr	1884(ra) # 800013c4 <sem_signal>

    return ret;
}
    80005c70:	00090513          	mv	a0,s2
    80005c74:	01813083          	ld	ra,24(sp)
    80005c78:	01013403          	ld	s0,16(sp)
    80005c7c:	00813483          	ld	s1,8(sp)
    80005c80:	00013903          	ld	s2,0(sp)
    80005c84:	02010113          	addi	sp,sp,32
    80005c88:	00008067          	ret

0000000080005c8c <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80005c8c:	fe010113          	addi	sp,sp,-32
    80005c90:	00113c23          	sd	ra,24(sp)
    80005c94:	00813823          	sd	s0,16(sp)
    80005c98:	00913423          	sd	s1,8(sp)
    80005c9c:	01213023          	sd	s2,0(sp)
    80005ca0:	02010413          	addi	s0,sp,32
    80005ca4:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80005ca8:	02853503          	ld	a0,40(a0)
    80005cac:	ffffb097          	auipc	ra,0xffffb
    80005cb0:	6cc080e7          	jalr	1740(ra) # 80001378 <sem_wait>
    sem_wait(mutexTail);
    80005cb4:	0304b503          	ld	a0,48(s1)
    80005cb8:	ffffb097          	auipc	ra,0xffffb
    80005cbc:	6c0080e7          	jalr	1728(ra) # 80001378 <sem_wait>

    if (tail >= head) {
    80005cc0:	0144a783          	lw	a5,20(s1)
    80005cc4:	0104a903          	lw	s2,16(s1)
    80005cc8:	0327ce63          	blt	a5,s2,80005d04 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80005ccc:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80005cd0:	0304b503          	ld	a0,48(s1)
    80005cd4:	ffffb097          	auipc	ra,0xffffb
    80005cd8:	6f0080e7          	jalr	1776(ra) # 800013c4 <sem_signal>
    sem_signal(mutexHead);
    80005cdc:	0284b503          	ld	a0,40(s1)
    80005ce0:	ffffb097          	auipc	ra,0xffffb
    80005ce4:	6e4080e7          	jalr	1764(ra) # 800013c4 <sem_signal>

    return ret;
}
    80005ce8:	00090513          	mv	a0,s2
    80005cec:	01813083          	ld	ra,24(sp)
    80005cf0:	01013403          	ld	s0,16(sp)
    80005cf4:	00813483          	ld	s1,8(sp)
    80005cf8:	00013903          	ld	s2,0(sp)
    80005cfc:	02010113          	addi	sp,sp,32
    80005d00:	00008067          	ret
        ret = cap - head + tail;
    80005d04:	0004a703          	lw	a4,0(s1)
    80005d08:	4127093b          	subw	s2,a4,s2
    80005d0c:	00f9093b          	addw	s2,s2,a5
    80005d10:	fc1ff06f          	j	80005cd0 <_ZN6Buffer6getCntEv+0x44>

0000000080005d14 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80005d14:	fe010113          	addi	sp,sp,-32
    80005d18:	00113c23          	sd	ra,24(sp)
    80005d1c:	00813823          	sd	s0,16(sp)
    80005d20:	00913423          	sd	s1,8(sp)
    80005d24:	02010413          	addi	s0,sp,32
    80005d28:	00050493          	mv	s1,a0
    putc('\n');
    80005d2c:	00a00513          	li	a0,10
    80005d30:	ffffb097          	auipc	ra,0xffffb
    80005d34:	704080e7          	jalr	1796(ra) # 80001434 <putc>
    printString("Buffer deleted!\n");
    80005d38:	00003517          	auipc	a0,0x3
    80005d3c:	73050513          	addi	a0,a0,1840 # 80009468 <CONSOLE_STATUS+0x458>
    80005d40:	fffff097          	auipc	ra,0xfffff
    80005d44:	f9c080e7          	jalr	-100(ra) # 80004cdc <_Z11printStringPKc>
    while (getCnt() > 0) {
    80005d48:	00048513          	mv	a0,s1
    80005d4c:	00000097          	auipc	ra,0x0
    80005d50:	f40080e7          	jalr	-192(ra) # 80005c8c <_ZN6Buffer6getCntEv>
    80005d54:	02a05c63          	blez	a0,80005d8c <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80005d58:	0084b783          	ld	a5,8(s1)
    80005d5c:	0104a703          	lw	a4,16(s1)
    80005d60:	00271713          	slli	a4,a4,0x2
    80005d64:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80005d68:	0007c503          	lbu	a0,0(a5)
    80005d6c:	ffffb097          	auipc	ra,0xffffb
    80005d70:	6c8080e7          	jalr	1736(ra) # 80001434 <putc>
        head = (head + 1) % cap;
    80005d74:	0104a783          	lw	a5,16(s1)
    80005d78:	0017879b          	addiw	a5,a5,1
    80005d7c:	0004a703          	lw	a4,0(s1)
    80005d80:	02e7e7bb          	remw	a5,a5,a4
    80005d84:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80005d88:	fc1ff06f          	j	80005d48 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80005d8c:	02100513          	li	a0,33
    80005d90:	ffffb097          	auipc	ra,0xffffb
    80005d94:	6a4080e7          	jalr	1700(ra) # 80001434 <putc>
    putc('\n');
    80005d98:	00a00513          	li	a0,10
    80005d9c:	ffffb097          	auipc	ra,0xffffb
    80005da0:	698080e7          	jalr	1688(ra) # 80001434 <putc>
    mem_free(buffer);
    80005da4:	0084b503          	ld	a0,8(s1)
    80005da8:	ffffb097          	auipc	ra,0xffffb
    80005dac:	3dc080e7          	jalr	988(ra) # 80001184 <mem_free>
    sem_close(itemAvailable);
    80005db0:	0204b503          	ld	a0,32(s1)
    80005db4:	ffffb097          	auipc	ra,0xffffb
    80005db8:	578080e7          	jalr	1400(ra) # 8000132c <sem_close>
    sem_close(spaceAvailable);
    80005dbc:	0184b503          	ld	a0,24(s1)
    80005dc0:	ffffb097          	auipc	ra,0xffffb
    80005dc4:	56c080e7          	jalr	1388(ra) # 8000132c <sem_close>
    sem_close(mutexTail);
    80005dc8:	0304b503          	ld	a0,48(s1)
    80005dcc:	ffffb097          	auipc	ra,0xffffb
    80005dd0:	560080e7          	jalr	1376(ra) # 8000132c <sem_close>
    sem_close(mutexHead);
    80005dd4:	0284b503          	ld	a0,40(s1)
    80005dd8:	ffffb097          	auipc	ra,0xffffb
    80005ddc:	554080e7          	jalr	1364(ra) # 8000132c <sem_close>
}
    80005de0:	01813083          	ld	ra,24(sp)
    80005de4:	01013403          	ld	s0,16(sp)
    80005de8:	00813483          	ld	s1,8(sp)
    80005dec:	02010113          	addi	sp,sp,32
    80005df0:	00008067          	ret

0000000080005df4 <start>:
    80005df4:	ff010113          	addi	sp,sp,-16
    80005df8:	00813423          	sd	s0,8(sp)
    80005dfc:	01010413          	addi	s0,sp,16
    80005e00:	300027f3          	csrr	a5,mstatus
    80005e04:	ffffe737          	lui	a4,0xffffe
    80005e08:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1f7f>
    80005e0c:	00e7f7b3          	and	a5,a5,a4
    80005e10:	00001737          	lui	a4,0x1
    80005e14:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80005e18:	00e7e7b3          	or	a5,a5,a4
    80005e1c:	30079073          	csrw	mstatus,a5
    80005e20:	00000797          	auipc	a5,0x0
    80005e24:	16078793          	addi	a5,a5,352 # 80005f80 <system_main>
    80005e28:	34179073          	csrw	mepc,a5
    80005e2c:	00000793          	li	a5,0
    80005e30:	18079073          	csrw	satp,a5
    80005e34:	000107b7          	lui	a5,0x10
    80005e38:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80005e3c:	30279073          	csrw	medeleg,a5
    80005e40:	30379073          	csrw	mideleg,a5
    80005e44:	104027f3          	csrr	a5,sie
    80005e48:	2227e793          	ori	a5,a5,546
    80005e4c:	10479073          	csrw	sie,a5
    80005e50:	fff00793          	li	a5,-1
    80005e54:	00a7d793          	srli	a5,a5,0xa
    80005e58:	3b079073          	csrw	pmpaddr0,a5
    80005e5c:	00f00793          	li	a5,15
    80005e60:	3a079073          	csrw	pmpcfg0,a5
    80005e64:	f14027f3          	csrr	a5,mhartid
    80005e68:	0200c737          	lui	a4,0x200c
    80005e6c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005e70:	0007869b          	sext.w	a3,a5
    80005e74:	00269713          	slli	a4,a3,0x2
    80005e78:	000f4637          	lui	a2,0xf4
    80005e7c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005e80:	00d70733          	add	a4,a4,a3
    80005e84:	0037979b          	slliw	a5,a5,0x3
    80005e88:	020046b7          	lui	a3,0x2004
    80005e8c:	00d787b3          	add	a5,a5,a3
    80005e90:	00c585b3          	add	a1,a1,a2
    80005e94:	00371693          	slli	a3,a4,0x3
    80005e98:	00005717          	auipc	a4,0x5
    80005e9c:	77870713          	addi	a4,a4,1912 # 8000b610 <timer_scratch>
    80005ea0:	00b7b023          	sd	a1,0(a5)
    80005ea4:	00d70733          	add	a4,a4,a3
    80005ea8:	00f73c23          	sd	a5,24(a4)
    80005eac:	02c73023          	sd	a2,32(a4)
    80005eb0:	34071073          	csrw	mscratch,a4
    80005eb4:	00000797          	auipc	a5,0x0
    80005eb8:	6ec78793          	addi	a5,a5,1772 # 800065a0 <timervec>
    80005ebc:	30579073          	csrw	mtvec,a5
    80005ec0:	300027f3          	csrr	a5,mstatus
    80005ec4:	0087e793          	ori	a5,a5,8
    80005ec8:	30079073          	csrw	mstatus,a5
    80005ecc:	304027f3          	csrr	a5,mie
    80005ed0:	0807e793          	ori	a5,a5,128
    80005ed4:	30479073          	csrw	mie,a5
    80005ed8:	f14027f3          	csrr	a5,mhartid
    80005edc:	0007879b          	sext.w	a5,a5
    80005ee0:	00078213          	mv	tp,a5
    80005ee4:	30200073          	mret
    80005ee8:	00813403          	ld	s0,8(sp)
    80005eec:	01010113          	addi	sp,sp,16
    80005ef0:	00008067          	ret

0000000080005ef4 <timerinit>:
    80005ef4:	ff010113          	addi	sp,sp,-16
    80005ef8:	00813423          	sd	s0,8(sp)
    80005efc:	01010413          	addi	s0,sp,16
    80005f00:	f14027f3          	csrr	a5,mhartid
    80005f04:	0200c737          	lui	a4,0x200c
    80005f08:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005f0c:	0007869b          	sext.w	a3,a5
    80005f10:	00269713          	slli	a4,a3,0x2
    80005f14:	000f4637          	lui	a2,0xf4
    80005f18:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005f1c:	00d70733          	add	a4,a4,a3
    80005f20:	0037979b          	slliw	a5,a5,0x3
    80005f24:	020046b7          	lui	a3,0x2004
    80005f28:	00d787b3          	add	a5,a5,a3
    80005f2c:	00c585b3          	add	a1,a1,a2
    80005f30:	00371693          	slli	a3,a4,0x3
    80005f34:	00005717          	auipc	a4,0x5
    80005f38:	6dc70713          	addi	a4,a4,1756 # 8000b610 <timer_scratch>
    80005f3c:	00b7b023          	sd	a1,0(a5)
    80005f40:	00d70733          	add	a4,a4,a3
    80005f44:	00f73c23          	sd	a5,24(a4)
    80005f48:	02c73023          	sd	a2,32(a4)
    80005f4c:	34071073          	csrw	mscratch,a4
    80005f50:	00000797          	auipc	a5,0x0
    80005f54:	65078793          	addi	a5,a5,1616 # 800065a0 <timervec>
    80005f58:	30579073          	csrw	mtvec,a5
    80005f5c:	300027f3          	csrr	a5,mstatus
    80005f60:	0087e793          	ori	a5,a5,8
    80005f64:	30079073          	csrw	mstatus,a5
    80005f68:	304027f3          	csrr	a5,mie
    80005f6c:	0807e793          	ori	a5,a5,128
    80005f70:	30479073          	csrw	mie,a5
    80005f74:	00813403          	ld	s0,8(sp)
    80005f78:	01010113          	addi	sp,sp,16
    80005f7c:	00008067          	ret

0000000080005f80 <system_main>:
    80005f80:	fe010113          	addi	sp,sp,-32
    80005f84:	00813823          	sd	s0,16(sp)
    80005f88:	00913423          	sd	s1,8(sp)
    80005f8c:	00113c23          	sd	ra,24(sp)
    80005f90:	02010413          	addi	s0,sp,32
    80005f94:	00000097          	auipc	ra,0x0
    80005f98:	0c4080e7          	jalr	196(ra) # 80006058 <cpuid>
    80005f9c:	00005497          	auipc	s1,0x5
    80005fa0:	5b448493          	addi	s1,s1,1460 # 8000b550 <started>
    80005fa4:	02050263          	beqz	a0,80005fc8 <system_main+0x48>
    80005fa8:	0004a783          	lw	a5,0(s1)
    80005fac:	0007879b          	sext.w	a5,a5
    80005fb0:	fe078ce3          	beqz	a5,80005fa8 <system_main+0x28>
    80005fb4:	0ff0000f          	fence
    80005fb8:	00003517          	auipc	a0,0x3
    80005fbc:	73050513          	addi	a0,a0,1840 # 800096e8 <CONSOLE_STATUS+0x6d8>
    80005fc0:	00001097          	auipc	ra,0x1
    80005fc4:	a7c080e7          	jalr	-1412(ra) # 80006a3c <panic>
    80005fc8:	00001097          	auipc	ra,0x1
    80005fcc:	9d0080e7          	jalr	-1584(ra) # 80006998 <consoleinit>
    80005fd0:	00001097          	auipc	ra,0x1
    80005fd4:	15c080e7          	jalr	348(ra) # 8000712c <printfinit>
    80005fd8:	00003517          	auipc	a0,0x3
    80005fdc:	61850513          	addi	a0,a0,1560 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80005fe0:	00001097          	auipc	ra,0x1
    80005fe4:	ab8080e7          	jalr	-1352(ra) # 80006a98 <__printf>
    80005fe8:	00003517          	auipc	a0,0x3
    80005fec:	6d050513          	addi	a0,a0,1744 # 800096b8 <CONSOLE_STATUS+0x6a8>
    80005ff0:	00001097          	auipc	ra,0x1
    80005ff4:	aa8080e7          	jalr	-1368(ra) # 80006a98 <__printf>
    80005ff8:	00003517          	auipc	a0,0x3
    80005ffc:	5f850513          	addi	a0,a0,1528 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80006000:	00001097          	auipc	ra,0x1
    80006004:	a98080e7          	jalr	-1384(ra) # 80006a98 <__printf>
    80006008:	00001097          	auipc	ra,0x1
    8000600c:	4b0080e7          	jalr	1200(ra) # 800074b8 <kinit>
    80006010:	00000097          	auipc	ra,0x0
    80006014:	148080e7          	jalr	328(ra) # 80006158 <trapinit>
    80006018:	00000097          	auipc	ra,0x0
    8000601c:	16c080e7          	jalr	364(ra) # 80006184 <trapinithart>
    80006020:	00000097          	auipc	ra,0x0
    80006024:	5c0080e7          	jalr	1472(ra) # 800065e0 <plicinit>
    80006028:	00000097          	auipc	ra,0x0
    8000602c:	5e0080e7          	jalr	1504(ra) # 80006608 <plicinithart>
    80006030:	00000097          	auipc	ra,0x0
    80006034:	078080e7          	jalr	120(ra) # 800060a8 <userinit>
    80006038:	0ff0000f          	fence
    8000603c:	00100793          	li	a5,1
    80006040:	00003517          	auipc	a0,0x3
    80006044:	69050513          	addi	a0,a0,1680 # 800096d0 <CONSOLE_STATUS+0x6c0>
    80006048:	00f4a023          	sw	a5,0(s1)
    8000604c:	00001097          	auipc	ra,0x1
    80006050:	a4c080e7          	jalr	-1460(ra) # 80006a98 <__printf>
    80006054:	0000006f          	j	80006054 <system_main+0xd4>

0000000080006058 <cpuid>:
    80006058:	ff010113          	addi	sp,sp,-16
    8000605c:	00813423          	sd	s0,8(sp)
    80006060:	01010413          	addi	s0,sp,16
    80006064:	00020513          	mv	a0,tp
    80006068:	00813403          	ld	s0,8(sp)
    8000606c:	0005051b          	sext.w	a0,a0
    80006070:	01010113          	addi	sp,sp,16
    80006074:	00008067          	ret

0000000080006078 <mycpu>:
    80006078:	ff010113          	addi	sp,sp,-16
    8000607c:	00813423          	sd	s0,8(sp)
    80006080:	01010413          	addi	s0,sp,16
    80006084:	00020793          	mv	a5,tp
    80006088:	00813403          	ld	s0,8(sp)
    8000608c:	0007879b          	sext.w	a5,a5
    80006090:	00779793          	slli	a5,a5,0x7
    80006094:	00006517          	auipc	a0,0x6
    80006098:	5ac50513          	addi	a0,a0,1452 # 8000c640 <cpus>
    8000609c:	00f50533          	add	a0,a0,a5
    800060a0:	01010113          	addi	sp,sp,16
    800060a4:	00008067          	ret

00000000800060a8 <userinit>:
    800060a8:	ff010113          	addi	sp,sp,-16
    800060ac:	00813423          	sd	s0,8(sp)
    800060b0:	01010413          	addi	s0,sp,16
    800060b4:	00813403          	ld	s0,8(sp)
    800060b8:	01010113          	addi	sp,sp,16
    800060bc:	ffffc317          	auipc	t1,0xffffc
    800060c0:	8ac30067          	jr	-1876(t1) # 80001968 <main>

00000000800060c4 <either_copyout>:
    800060c4:	ff010113          	addi	sp,sp,-16
    800060c8:	00813023          	sd	s0,0(sp)
    800060cc:	00113423          	sd	ra,8(sp)
    800060d0:	01010413          	addi	s0,sp,16
    800060d4:	02051663          	bnez	a0,80006100 <either_copyout+0x3c>
    800060d8:	00058513          	mv	a0,a1
    800060dc:	00060593          	mv	a1,a2
    800060e0:	0006861b          	sext.w	a2,a3
    800060e4:	00002097          	auipc	ra,0x2
    800060e8:	c60080e7          	jalr	-928(ra) # 80007d44 <__memmove>
    800060ec:	00813083          	ld	ra,8(sp)
    800060f0:	00013403          	ld	s0,0(sp)
    800060f4:	00000513          	li	a0,0
    800060f8:	01010113          	addi	sp,sp,16
    800060fc:	00008067          	ret
    80006100:	00003517          	auipc	a0,0x3
    80006104:	61050513          	addi	a0,a0,1552 # 80009710 <CONSOLE_STATUS+0x700>
    80006108:	00001097          	auipc	ra,0x1
    8000610c:	934080e7          	jalr	-1740(ra) # 80006a3c <panic>

0000000080006110 <either_copyin>:
    80006110:	ff010113          	addi	sp,sp,-16
    80006114:	00813023          	sd	s0,0(sp)
    80006118:	00113423          	sd	ra,8(sp)
    8000611c:	01010413          	addi	s0,sp,16
    80006120:	02059463          	bnez	a1,80006148 <either_copyin+0x38>
    80006124:	00060593          	mv	a1,a2
    80006128:	0006861b          	sext.w	a2,a3
    8000612c:	00002097          	auipc	ra,0x2
    80006130:	c18080e7          	jalr	-1000(ra) # 80007d44 <__memmove>
    80006134:	00813083          	ld	ra,8(sp)
    80006138:	00013403          	ld	s0,0(sp)
    8000613c:	00000513          	li	a0,0
    80006140:	01010113          	addi	sp,sp,16
    80006144:	00008067          	ret
    80006148:	00003517          	auipc	a0,0x3
    8000614c:	5f050513          	addi	a0,a0,1520 # 80009738 <CONSOLE_STATUS+0x728>
    80006150:	00001097          	auipc	ra,0x1
    80006154:	8ec080e7          	jalr	-1812(ra) # 80006a3c <panic>

0000000080006158 <trapinit>:
    80006158:	ff010113          	addi	sp,sp,-16
    8000615c:	00813423          	sd	s0,8(sp)
    80006160:	01010413          	addi	s0,sp,16
    80006164:	00813403          	ld	s0,8(sp)
    80006168:	00003597          	auipc	a1,0x3
    8000616c:	5f858593          	addi	a1,a1,1528 # 80009760 <CONSOLE_STATUS+0x750>
    80006170:	00006517          	auipc	a0,0x6
    80006174:	55050513          	addi	a0,a0,1360 # 8000c6c0 <tickslock>
    80006178:	01010113          	addi	sp,sp,16
    8000617c:	00001317          	auipc	t1,0x1
    80006180:	5cc30067          	jr	1484(t1) # 80007748 <initlock>

0000000080006184 <trapinithart>:
    80006184:	ff010113          	addi	sp,sp,-16
    80006188:	00813423          	sd	s0,8(sp)
    8000618c:	01010413          	addi	s0,sp,16
    80006190:	00000797          	auipc	a5,0x0
    80006194:	30078793          	addi	a5,a5,768 # 80006490 <kernelvec>
    80006198:	10579073          	csrw	stvec,a5
    8000619c:	00813403          	ld	s0,8(sp)
    800061a0:	01010113          	addi	sp,sp,16
    800061a4:	00008067          	ret

00000000800061a8 <usertrap>:
    800061a8:	ff010113          	addi	sp,sp,-16
    800061ac:	00813423          	sd	s0,8(sp)
    800061b0:	01010413          	addi	s0,sp,16
    800061b4:	00813403          	ld	s0,8(sp)
    800061b8:	01010113          	addi	sp,sp,16
    800061bc:	00008067          	ret

00000000800061c0 <usertrapret>:
    800061c0:	ff010113          	addi	sp,sp,-16
    800061c4:	00813423          	sd	s0,8(sp)
    800061c8:	01010413          	addi	s0,sp,16
    800061cc:	00813403          	ld	s0,8(sp)
    800061d0:	01010113          	addi	sp,sp,16
    800061d4:	00008067          	ret

00000000800061d8 <kerneltrap>:
    800061d8:	fe010113          	addi	sp,sp,-32
    800061dc:	00813823          	sd	s0,16(sp)
    800061e0:	00113c23          	sd	ra,24(sp)
    800061e4:	00913423          	sd	s1,8(sp)
    800061e8:	02010413          	addi	s0,sp,32
    800061ec:	142025f3          	csrr	a1,scause
    800061f0:	100027f3          	csrr	a5,sstatus
    800061f4:	0027f793          	andi	a5,a5,2
    800061f8:	10079c63          	bnez	a5,80006310 <kerneltrap+0x138>
    800061fc:	142027f3          	csrr	a5,scause
    80006200:	0207ce63          	bltz	a5,8000623c <kerneltrap+0x64>
    80006204:	00003517          	auipc	a0,0x3
    80006208:	5a450513          	addi	a0,a0,1444 # 800097a8 <CONSOLE_STATUS+0x798>
    8000620c:	00001097          	auipc	ra,0x1
    80006210:	88c080e7          	jalr	-1908(ra) # 80006a98 <__printf>
    80006214:	141025f3          	csrr	a1,sepc
    80006218:	14302673          	csrr	a2,stval
    8000621c:	00003517          	auipc	a0,0x3
    80006220:	59c50513          	addi	a0,a0,1436 # 800097b8 <CONSOLE_STATUS+0x7a8>
    80006224:	00001097          	auipc	ra,0x1
    80006228:	874080e7          	jalr	-1932(ra) # 80006a98 <__printf>
    8000622c:	00003517          	auipc	a0,0x3
    80006230:	5a450513          	addi	a0,a0,1444 # 800097d0 <CONSOLE_STATUS+0x7c0>
    80006234:	00001097          	auipc	ra,0x1
    80006238:	808080e7          	jalr	-2040(ra) # 80006a3c <panic>
    8000623c:	0ff7f713          	andi	a4,a5,255
    80006240:	00900693          	li	a3,9
    80006244:	04d70063          	beq	a4,a3,80006284 <kerneltrap+0xac>
    80006248:	fff00713          	li	a4,-1
    8000624c:	03f71713          	slli	a4,a4,0x3f
    80006250:	00170713          	addi	a4,a4,1
    80006254:	fae798e3          	bne	a5,a4,80006204 <kerneltrap+0x2c>
    80006258:	00000097          	auipc	ra,0x0
    8000625c:	e00080e7          	jalr	-512(ra) # 80006058 <cpuid>
    80006260:	06050663          	beqz	a0,800062cc <kerneltrap+0xf4>
    80006264:	144027f3          	csrr	a5,sip
    80006268:	ffd7f793          	andi	a5,a5,-3
    8000626c:	14479073          	csrw	sip,a5
    80006270:	01813083          	ld	ra,24(sp)
    80006274:	01013403          	ld	s0,16(sp)
    80006278:	00813483          	ld	s1,8(sp)
    8000627c:	02010113          	addi	sp,sp,32
    80006280:	00008067          	ret
    80006284:	00000097          	auipc	ra,0x0
    80006288:	3d0080e7          	jalr	976(ra) # 80006654 <plic_claim>
    8000628c:	00a00793          	li	a5,10
    80006290:	00050493          	mv	s1,a0
    80006294:	06f50863          	beq	a0,a5,80006304 <kerneltrap+0x12c>
    80006298:	fc050ce3          	beqz	a0,80006270 <kerneltrap+0x98>
    8000629c:	00050593          	mv	a1,a0
    800062a0:	00003517          	auipc	a0,0x3
    800062a4:	4e850513          	addi	a0,a0,1256 # 80009788 <CONSOLE_STATUS+0x778>
    800062a8:	00000097          	auipc	ra,0x0
    800062ac:	7f0080e7          	jalr	2032(ra) # 80006a98 <__printf>
    800062b0:	01013403          	ld	s0,16(sp)
    800062b4:	01813083          	ld	ra,24(sp)
    800062b8:	00048513          	mv	a0,s1
    800062bc:	00813483          	ld	s1,8(sp)
    800062c0:	02010113          	addi	sp,sp,32
    800062c4:	00000317          	auipc	t1,0x0
    800062c8:	3c830067          	jr	968(t1) # 8000668c <plic_complete>
    800062cc:	00006517          	auipc	a0,0x6
    800062d0:	3f450513          	addi	a0,a0,1012 # 8000c6c0 <tickslock>
    800062d4:	00001097          	auipc	ra,0x1
    800062d8:	498080e7          	jalr	1176(ra) # 8000776c <acquire>
    800062dc:	00005717          	auipc	a4,0x5
    800062e0:	27870713          	addi	a4,a4,632 # 8000b554 <ticks>
    800062e4:	00072783          	lw	a5,0(a4)
    800062e8:	00006517          	auipc	a0,0x6
    800062ec:	3d850513          	addi	a0,a0,984 # 8000c6c0 <tickslock>
    800062f0:	0017879b          	addiw	a5,a5,1
    800062f4:	00f72023          	sw	a5,0(a4)
    800062f8:	00001097          	auipc	ra,0x1
    800062fc:	540080e7          	jalr	1344(ra) # 80007838 <release>
    80006300:	f65ff06f          	j	80006264 <kerneltrap+0x8c>
    80006304:	00001097          	auipc	ra,0x1
    80006308:	09c080e7          	jalr	156(ra) # 800073a0 <uartintr>
    8000630c:	fa5ff06f          	j	800062b0 <kerneltrap+0xd8>
    80006310:	00003517          	auipc	a0,0x3
    80006314:	45850513          	addi	a0,a0,1112 # 80009768 <CONSOLE_STATUS+0x758>
    80006318:	00000097          	auipc	ra,0x0
    8000631c:	724080e7          	jalr	1828(ra) # 80006a3c <panic>

0000000080006320 <clockintr>:
    80006320:	fe010113          	addi	sp,sp,-32
    80006324:	00813823          	sd	s0,16(sp)
    80006328:	00913423          	sd	s1,8(sp)
    8000632c:	00113c23          	sd	ra,24(sp)
    80006330:	02010413          	addi	s0,sp,32
    80006334:	00006497          	auipc	s1,0x6
    80006338:	38c48493          	addi	s1,s1,908 # 8000c6c0 <tickslock>
    8000633c:	00048513          	mv	a0,s1
    80006340:	00001097          	auipc	ra,0x1
    80006344:	42c080e7          	jalr	1068(ra) # 8000776c <acquire>
    80006348:	00005717          	auipc	a4,0x5
    8000634c:	20c70713          	addi	a4,a4,524 # 8000b554 <ticks>
    80006350:	00072783          	lw	a5,0(a4)
    80006354:	01013403          	ld	s0,16(sp)
    80006358:	01813083          	ld	ra,24(sp)
    8000635c:	00048513          	mv	a0,s1
    80006360:	0017879b          	addiw	a5,a5,1
    80006364:	00813483          	ld	s1,8(sp)
    80006368:	00f72023          	sw	a5,0(a4)
    8000636c:	02010113          	addi	sp,sp,32
    80006370:	00001317          	auipc	t1,0x1
    80006374:	4c830067          	jr	1224(t1) # 80007838 <release>

0000000080006378 <devintr>:
    80006378:	142027f3          	csrr	a5,scause
    8000637c:	00000513          	li	a0,0
    80006380:	0007c463          	bltz	a5,80006388 <devintr+0x10>
    80006384:	00008067          	ret
    80006388:	fe010113          	addi	sp,sp,-32
    8000638c:	00813823          	sd	s0,16(sp)
    80006390:	00113c23          	sd	ra,24(sp)
    80006394:	00913423          	sd	s1,8(sp)
    80006398:	02010413          	addi	s0,sp,32
    8000639c:	0ff7f713          	andi	a4,a5,255
    800063a0:	00900693          	li	a3,9
    800063a4:	04d70c63          	beq	a4,a3,800063fc <devintr+0x84>
    800063a8:	fff00713          	li	a4,-1
    800063ac:	03f71713          	slli	a4,a4,0x3f
    800063b0:	00170713          	addi	a4,a4,1
    800063b4:	00e78c63          	beq	a5,a4,800063cc <devintr+0x54>
    800063b8:	01813083          	ld	ra,24(sp)
    800063bc:	01013403          	ld	s0,16(sp)
    800063c0:	00813483          	ld	s1,8(sp)
    800063c4:	02010113          	addi	sp,sp,32
    800063c8:	00008067          	ret
    800063cc:	00000097          	auipc	ra,0x0
    800063d0:	c8c080e7          	jalr	-884(ra) # 80006058 <cpuid>
    800063d4:	06050663          	beqz	a0,80006440 <devintr+0xc8>
    800063d8:	144027f3          	csrr	a5,sip
    800063dc:	ffd7f793          	andi	a5,a5,-3
    800063e0:	14479073          	csrw	sip,a5
    800063e4:	01813083          	ld	ra,24(sp)
    800063e8:	01013403          	ld	s0,16(sp)
    800063ec:	00813483          	ld	s1,8(sp)
    800063f0:	00200513          	li	a0,2
    800063f4:	02010113          	addi	sp,sp,32
    800063f8:	00008067          	ret
    800063fc:	00000097          	auipc	ra,0x0
    80006400:	258080e7          	jalr	600(ra) # 80006654 <plic_claim>
    80006404:	00a00793          	li	a5,10
    80006408:	00050493          	mv	s1,a0
    8000640c:	06f50663          	beq	a0,a5,80006478 <devintr+0x100>
    80006410:	00100513          	li	a0,1
    80006414:	fa0482e3          	beqz	s1,800063b8 <devintr+0x40>
    80006418:	00048593          	mv	a1,s1
    8000641c:	00003517          	auipc	a0,0x3
    80006420:	36c50513          	addi	a0,a0,876 # 80009788 <CONSOLE_STATUS+0x778>
    80006424:	00000097          	auipc	ra,0x0
    80006428:	674080e7          	jalr	1652(ra) # 80006a98 <__printf>
    8000642c:	00048513          	mv	a0,s1
    80006430:	00000097          	auipc	ra,0x0
    80006434:	25c080e7          	jalr	604(ra) # 8000668c <plic_complete>
    80006438:	00100513          	li	a0,1
    8000643c:	f7dff06f          	j	800063b8 <devintr+0x40>
    80006440:	00006517          	auipc	a0,0x6
    80006444:	28050513          	addi	a0,a0,640 # 8000c6c0 <tickslock>
    80006448:	00001097          	auipc	ra,0x1
    8000644c:	324080e7          	jalr	804(ra) # 8000776c <acquire>
    80006450:	00005717          	auipc	a4,0x5
    80006454:	10470713          	addi	a4,a4,260 # 8000b554 <ticks>
    80006458:	00072783          	lw	a5,0(a4)
    8000645c:	00006517          	auipc	a0,0x6
    80006460:	26450513          	addi	a0,a0,612 # 8000c6c0 <tickslock>
    80006464:	0017879b          	addiw	a5,a5,1
    80006468:	00f72023          	sw	a5,0(a4)
    8000646c:	00001097          	auipc	ra,0x1
    80006470:	3cc080e7          	jalr	972(ra) # 80007838 <release>
    80006474:	f65ff06f          	j	800063d8 <devintr+0x60>
    80006478:	00001097          	auipc	ra,0x1
    8000647c:	f28080e7          	jalr	-216(ra) # 800073a0 <uartintr>
    80006480:	fadff06f          	j	8000642c <devintr+0xb4>
	...

0000000080006490 <kernelvec>:
    80006490:	f0010113          	addi	sp,sp,-256
    80006494:	00113023          	sd	ra,0(sp)
    80006498:	00213423          	sd	sp,8(sp)
    8000649c:	00313823          	sd	gp,16(sp)
    800064a0:	00413c23          	sd	tp,24(sp)
    800064a4:	02513023          	sd	t0,32(sp)
    800064a8:	02613423          	sd	t1,40(sp)
    800064ac:	02713823          	sd	t2,48(sp)
    800064b0:	02813c23          	sd	s0,56(sp)
    800064b4:	04913023          	sd	s1,64(sp)
    800064b8:	04a13423          	sd	a0,72(sp)
    800064bc:	04b13823          	sd	a1,80(sp)
    800064c0:	04c13c23          	sd	a2,88(sp)
    800064c4:	06d13023          	sd	a3,96(sp)
    800064c8:	06e13423          	sd	a4,104(sp)
    800064cc:	06f13823          	sd	a5,112(sp)
    800064d0:	07013c23          	sd	a6,120(sp)
    800064d4:	09113023          	sd	a7,128(sp)
    800064d8:	09213423          	sd	s2,136(sp)
    800064dc:	09313823          	sd	s3,144(sp)
    800064e0:	09413c23          	sd	s4,152(sp)
    800064e4:	0b513023          	sd	s5,160(sp)
    800064e8:	0b613423          	sd	s6,168(sp)
    800064ec:	0b713823          	sd	s7,176(sp)
    800064f0:	0b813c23          	sd	s8,184(sp)
    800064f4:	0d913023          	sd	s9,192(sp)
    800064f8:	0da13423          	sd	s10,200(sp)
    800064fc:	0db13823          	sd	s11,208(sp)
    80006500:	0dc13c23          	sd	t3,216(sp)
    80006504:	0fd13023          	sd	t4,224(sp)
    80006508:	0fe13423          	sd	t5,232(sp)
    8000650c:	0ff13823          	sd	t6,240(sp)
    80006510:	cc9ff0ef          	jal	ra,800061d8 <kerneltrap>
    80006514:	00013083          	ld	ra,0(sp)
    80006518:	00813103          	ld	sp,8(sp)
    8000651c:	01013183          	ld	gp,16(sp)
    80006520:	02013283          	ld	t0,32(sp)
    80006524:	02813303          	ld	t1,40(sp)
    80006528:	03013383          	ld	t2,48(sp)
    8000652c:	03813403          	ld	s0,56(sp)
    80006530:	04013483          	ld	s1,64(sp)
    80006534:	04813503          	ld	a0,72(sp)
    80006538:	05013583          	ld	a1,80(sp)
    8000653c:	05813603          	ld	a2,88(sp)
    80006540:	06013683          	ld	a3,96(sp)
    80006544:	06813703          	ld	a4,104(sp)
    80006548:	07013783          	ld	a5,112(sp)
    8000654c:	07813803          	ld	a6,120(sp)
    80006550:	08013883          	ld	a7,128(sp)
    80006554:	08813903          	ld	s2,136(sp)
    80006558:	09013983          	ld	s3,144(sp)
    8000655c:	09813a03          	ld	s4,152(sp)
    80006560:	0a013a83          	ld	s5,160(sp)
    80006564:	0a813b03          	ld	s6,168(sp)
    80006568:	0b013b83          	ld	s7,176(sp)
    8000656c:	0b813c03          	ld	s8,184(sp)
    80006570:	0c013c83          	ld	s9,192(sp)
    80006574:	0c813d03          	ld	s10,200(sp)
    80006578:	0d013d83          	ld	s11,208(sp)
    8000657c:	0d813e03          	ld	t3,216(sp)
    80006580:	0e013e83          	ld	t4,224(sp)
    80006584:	0e813f03          	ld	t5,232(sp)
    80006588:	0f013f83          	ld	t6,240(sp)
    8000658c:	10010113          	addi	sp,sp,256
    80006590:	10200073          	sret
    80006594:	00000013          	nop
    80006598:	00000013          	nop
    8000659c:	00000013          	nop

00000000800065a0 <timervec>:
    800065a0:	34051573          	csrrw	a0,mscratch,a0
    800065a4:	00b53023          	sd	a1,0(a0)
    800065a8:	00c53423          	sd	a2,8(a0)
    800065ac:	00d53823          	sd	a3,16(a0)
    800065b0:	01853583          	ld	a1,24(a0)
    800065b4:	02053603          	ld	a2,32(a0)
    800065b8:	0005b683          	ld	a3,0(a1)
    800065bc:	00c686b3          	add	a3,a3,a2
    800065c0:	00d5b023          	sd	a3,0(a1)
    800065c4:	00200593          	li	a1,2
    800065c8:	14459073          	csrw	sip,a1
    800065cc:	01053683          	ld	a3,16(a0)
    800065d0:	00853603          	ld	a2,8(a0)
    800065d4:	00053583          	ld	a1,0(a0)
    800065d8:	34051573          	csrrw	a0,mscratch,a0
    800065dc:	30200073          	mret

00000000800065e0 <plicinit>:
    800065e0:	ff010113          	addi	sp,sp,-16
    800065e4:	00813423          	sd	s0,8(sp)
    800065e8:	01010413          	addi	s0,sp,16
    800065ec:	00813403          	ld	s0,8(sp)
    800065f0:	0c0007b7          	lui	a5,0xc000
    800065f4:	00100713          	li	a4,1
    800065f8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800065fc:	00e7a223          	sw	a4,4(a5)
    80006600:	01010113          	addi	sp,sp,16
    80006604:	00008067          	ret

0000000080006608 <plicinithart>:
    80006608:	ff010113          	addi	sp,sp,-16
    8000660c:	00813023          	sd	s0,0(sp)
    80006610:	00113423          	sd	ra,8(sp)
    80006614:	01010413          	addi	s0,sp,16
    80006618:	00000097          	auipc	ra,0x0
    8000661c:	a40080e7          	jalr	-1472(ra) # 80006058 <cpuid>
    80006620:	0085171b          	slliw	a4,a0,0x8
    80006624:	0c0027b7          	lui	a5,0xc002
    80006628:	00e787b3          	add	a5,a5,a4
    8000662c:	40200713          	li	a4,1026
    80006630:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006634:	00813083          	ld	ra,8(sp)
    80006638:	00013403          	ld	s0,0(sp)
    8000663c:	00d5151b          	slliw	a0,a0,0xd
    80006640:	0c2017b7          	lui	a5,0xc201
    80006644:	00a78533          	add	a0,a5,a0
    80006648:	00052023          	sw	zero,0(a0)
    8000664c:	01010113          	addi	sp,sp,16
    80006650:	00008067          	ret

0000000080006654 <plic_claim>:
    80006654:	ff010113          	addi	sp,sp,-16
    80006658:	00813023          	sd	s0,0(sp)
    8000665c:	00113423          	sd	ra,8(sp)
    80006660:	01010413          	addi	s0,sp,16
    80006664:	00000097          	auipc	ra,0x0
    80006668:	9f4080e7          	jalr	-1548(ra) # 80006058 <cpuid>
    8000666c:	00813083          	ld	ra,8(sp)
    80006670:	00013403          	ld	s0,0(sp)
    80006674:	00d5151b          	slliw	a0,a0,0xd
    80006678:	0c2017b7          	lui	a5,0xc201
    8000667c:	00a78533          	add	a0,a5,a0
    80006680:	00452503          	lw	a0,4(a0)
    80006684:	01010113          	addi	sp,sp,16
    80006688:	00008067          	ret

000000008000668c <plic_complete>:
    8000668c:	fe010113          	addi	sp,sp,-32
    80006690:	00813823          	sd	s0,16(sp)
    80006694:	00913423          	sd	s1,8(sp)
    80006698:	00113c23          	sd	ra,24(sp)
    8000669c:	02010413          	addi	s0,sp,32
    800066a0:	00050493          	mv	s1,a0
    800066a4:	00000097          	auipc	ra,0x0
    800066a8:	9b4080e7          	jalr	-1612(ra) # 80006058 <cpuid>
    800066ac:	01813083          	ld	ra,24(sp)
    800066b0:	01013403          	ld	s0,16(sp)
    800066b4:	00d5179b          	slliw	a5,a0,0xd
    800066b8:	0c201737          	lui	a4,0xc201
    800066bc:	00f707b3          	add	a5,a4,a5
    800066c0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800066c4:	00813483          	ld	s1,8(sp)
    800066c8:	02010113          	addi	sp,sp,32
    800066cc:	00008067          	ret

00000000800066d0 <consolewrite>:
    800066d0:	fb010113          	addi	sp,sp,-80
    800066d4:	04813023          	sd	s0,64(sp)
    800066d8:	04113423          	sd	ra,72(sp)
    800066dc:	02913c23          	sd	s1,56(sp)
    800066e0:	03213823          	sd	s2,48(sp)
    800066e4:	03313423          	sd	s3,40(sp)
    800066e8:	03413023          	sd	s4,32(sp)
    800066ec:	01513c23          	sd	s5,24(sp)
    800066f0:	05010413          	addi	s0,sp,80
    800066f4:	06c05c63          	blez	a2,8000676c <consolewrite+0x9c>
    800066f8:	00060993          	mv	s3,a2
    800066fc:	00050a13          	mv	s4,a0
    80006700:	00058493          	mv	s1,a1
    80006704:	00000913          	li	s2,0
    80006708:	fff00a93          	li	s5,-1
    8000670c:	01c0006f          	j	80006728 <consolewrite+0x58>
    80006710:	fbf44503          	lbu	a0,-65(s0)
    80006714:	0019091b          	addiw	s2,s2,1
    80006718:	00148493          	addi	s1,s1,1
    8000671c:	00001097          	auipc	ra,0x1
    80006720:	a9c080e7          	jalr	-1380(ra) # 800071b8 <uartputc>
    80006724:	03298063          	beq	s3,s2,80006744 <consolewrite+0x74>
    80006728:	00048613          	mv	a2,s1
    8000672c:	00100693          	li	a3,1
    80006730:	000a0593          	mv	a1,s4
    80006734:	fbf40513          	addi	a0,s0,-65
    80006738:	00000097          	auipc	ra,0x0
    8000673c:	9d8080e7          	jalr	-1576(ra) # 80006110 <either_copyin>
    80006740:	fd5518e3          	bne	a0,s5,80006710 <consolewrite+0x40>
    80006744:	04813083          	ld	ra,72(sp)
    80006748:	04013403          	ld	s0,64(sp)
    8000674c:	03813483          	ld	s1,56(sp)
    80006750:	02813983          	ld	s3,40(sp)
    80006754:	02013a03          	ld	s4,32(sp)
    80006758:	01813a83          	ld	s5,24(sp)
    8000675c:	00090513          	mv	a0,s2
    80006760:	03013903          	ld	s2,48(sp)
    80006764:	05010113          	addi	sp,sp,80
    80006768:	00008067          	ret
    8000676c:	00000913          	li	s2,0
    80006770:	fd5ff06f          	j	80006744 <consolewrite+0x74>

0000000080006774 <consoleread>:
    80006774:	f9010113          	addi	sp,sp,-112
    80006778:	06813023          	sd	s0,96(sp)
    8000677c:	04913c23          	sd	s1,88(sp)
    80006780:	05213823          	sd	s2,80(sp)
    80006784:	05313423          	sd	s3,72(sp)
    80006788:	05413023          	sd	s4,64(sp)
    8000678c:	03513c23          	sd	s5,56(sp)
    80006790:	03613823          	sd	s6,48(sp)
    80006794:	03713423          	sd	s7,40(sp)
    80006798:	03813023          	sd	s8,32(sp)
    8000679c:	06113423          	sd	ra,104(sp)
    800067a0:	01913c23          	sd	s9,24(sp)
    800067a4:	07010413          	addi	s0,sp,112
    800067a8:	00060b93          	mv	s7,a2
    800067ac:	00050913          	mv	s2,a0
    800067b0:	00058c13          	mv	s8,a1
    800067b4:	00060b1b          	sext.w	s6,a2
    800067b8:	00006497          	auipc	s1,0x6
    800067bc:	f3048493          	addi	s1,s1,-208 # 8000c6e8 <cons>
    800067c0:	00400993          	li	s3,4
    800067c4:	fff00a13          	li	s4,-1
    800067c8:	00a00a93          	li	s5,10
    800067cc:	05705e63          	blez	s7,80006828 <consoleread+0xb4>
    800067d0:	09c4a703          	lw	a4,156(s1)
    800067d4:	0984a783          	lw	a5,152(s1)
    800067d8:	0007071b          	sext.w	a4,a4
    800067dc:	08e78463          	beq	a5,a4,80006864 <consoleread+0xf0>
    800067e0:	07f7f713          	andi	a4,a5,127
    800067e4:	00e48733          	add	a4,s1,a4
    800067e8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800067ec:	0017869b          	addiw	a3,a5,1
    800067f0:	08d4ac23          	sw	a3,152(s1)
    800067f4:	00070c9b          	sext.w	s9,a4
    800067f8:	0b370663          	beq	a4,s3,800068a4 <consoleread+0x130>
    800067fc:	00100693          	li	a3,1
    80006800:	f9f40613          	addi	a2,s0,-97
    80006804:	000c0593          	mv	a1,s8
    80006808:	00090513          	mv	a0,s2
    8000680c:	f8e40fa3          	sb	a4,-97(s0)
    80006810:	00000097          	auipc	ra,0x0
    80006814:	8b4080e7          	jalr	-1868(ra) # 800060c4 <either_copyout>
    80006818:	01450863          	beq	a0,s4,80006828 <consoleread+0xb4>
    8000681c:	001c0c13          	addi	s8,s8,1
    80006820:	fffb8b9b          	addiw	s7,s7,-1
    80006824:	fb5c94e3          	bne	s9,s5,800067cc <consoleread+0x58>
    80006828:	000b851b          	sext.w	a0,s7
    8000682c:	06813083          	ld	ra,104(sp)
    80006830:	06013403          	ld	s0,96(sp)
    80006834:	05813483          	ld	s1,88(sp)
    80006838:	05013903          	ld	s2,80(sp)
    8000683c:	04813983          	ld	s3,72(sp)
    80006840:	04013a03          	ld	s4,64(sp)
    80006844:	03813a83          	ld	s5,56(sp)
    80006848:	02813b83          	ld	s7,40(sp)
    8000684c:	02013c03          	ld	s8,32(sp)
    80006850:	01813c83          	ld	s9,24(sp)
    80006854:	40ab053b          	subw	a0,s6,a0
    80006858:	03013b03          	ld	s6,48(sp)
    8000685c:	07010113          	addi	sp,sp,112
    80006860:	00008067          	ret
    80006864:	00001097          	auipc	ra,0x1
    80006868:	1d8080e7          	jalr	472(ra) # 80007a3c <push_on>
    8000686c:	0984a703          	lw	a4,152(s1)
    80006870:	09c4a783          	lw	a5,156(s1)
    80006874:	0007879b          	sext.w	a5,a5
    80006878:	fef70ce3          	beq	a4,a5,80006870 <consoleread+0xfc>
    8000687c:	00001097          	auipc	ra,0x1
    80006880:	234080e7          	jalr	564(ra) # 80007ab0 <pop_on>
    80006884:	0984a783          	lw	a5,152(s1)
    80006888:	07f7f713          	andi	a4,a5,127
    8000688c:	00e48733          	add	a4,s1,a4
    80006890:	01874703          	lbu	a4,24(a4)
    80006894:	0017869b          	addiw	a3,a5,1
    80006898:	08d4ac23          	sw	a3,152(s1)
    8000689c:	00070c9b          	sext.w	s9,a4
    800068a0:	f5371ee3          	bne	a4,s3,800067fc <consoleread+0x88>
    800068a4:	000b851b          	sext.w	a0,s7
    800068a8:	f96bf2e3          	bgeu	s7,s6,8000682c <consoleread+0xb8>
    800068ac:	08f4ac23          	sw	a5,152(s1)
    800068b0:	f7dff06f          	j	8000682c <consoleread+0xb8>

00000000800068b4 <consputc>:
    800068b4:	10000793          	li	a5,256
    800068b8:	00f50663          	beq	a0,a5,800068c4 <consputc+0x10>
    800068bc:	00001317          	auipc	t1,0x1
    800068c0:	9f430067          	jr	-1548(t1) # 800072b0 <uartputc_sync>
    800068c4:	ff010113          	addi	sp,sp,-16
    800068c8:	00113423          	sd	ra,8(sp)
    800068cc:	00813023          	sd	s0,0(sp)
    800068d0:	01010413          	addi	s0,sp,16
    800068d4:	00800513          	li	a0,8
    800068d8:	00001097          	auipc	ra,0x1
    800068dc:	9d8080e7          	jalr	-1576(ra) # 800072b0 <uartputc_sync>
    800068e0:	02000513          	li	a0,32
    800068e4:	00001097          	auipc	ra,0x1
    800068e8:	9cc080e7          	jalr	-1588(ra) # 800072b0 <uartputc_sync>
    800068ec:	00013403          	ld	s0,0(sp)
    800068f0:	00813083          	ld	ra,8(sp)
    800068f4:	00800513          	li	a0,8
    800068f8:	01010113          	addi	sp,sp,16
    800068fc:	00001317          	auipc	t1,0x1
    80006900:	9b430067          	jr	-1612(t1) # 800072b0 <uartputc_sync>

0000000080006904 <consoleintr>:
    80006904:	fe010113          	addi	sp,sp,-32
    80006908:	00813823          	sd	s0,16(sp)
    8000690c:	00913423          	sd	s1,8(sp)
    80006910:	01213023          	sd	s2,0(sp)
    80006914:	00113c23          	sd	ra,24(sp)
    80006918:	02010413          	addi	s0,sp,32
    8000691c:	00006917          	auipc	s2,0x6
    80006920:	dcc90913          	addi	s2,s2,-564 # 8000c6e8 <cons>
    80006924:	00050493          	mv	s1,a0
    80006928:	00090513          	mv	a0,s2
    8000692c:	00001097          	auipc	ra,0x1
    80006930:	e40080e7          	jalr	-448(ra) # 8000776c <acquire>
    80006934:	02048c63          	beqz	s1,8000696c <consoleintr+0x68>
    80006938:	0a092783          	lw	a5,160(s2)
    8000693c:	09892703          	lw	a4,152(s2)
    80006940:	07f00693          	li	a3,127
    80006944:	40e7873b          	subw	a4,a5,a4
    80006948:	02e6e263          	bltu	a3,a4,8000696c <consoleintr+0x68>
    8000694c:	00d00713          	li	a4,13
    80006950:	04e48063          	beq	s1,a4,80006990 <consoleintr+0x8c>
    80006954:	07f7f713          	andi	a4,a5,127
    80006958:	00e90733          	add	a4,s2,a4
    8000695c:	0017879b          	addiw	a5,a5,1
    80006960:	0af92023          	sw	a5,160(s2)
    80006964:	00970c23          	sb	s1,24(a4)
    80006968:	08f92e23          	sw	a5,156(s2)
    8000696c:	01013403          	ld	s0,16(sp)
    80006970:	01813083          	ld	ra,24(sp)
    80006974:	00813483          	ld	s1,8(sp)
    80006978:	00013903          	ld	s2,0(sp)
    8000697c:	00006517          	auipc	a0,0x6
    80006980:	d6c50513          	addi	a0,a0,-660 # 8000c6e8 <cons>
    80006984:	02010113          	addi	sp,sp,32
    80006988:	00001317          	auipc	t1,0x1
    8000698c:	eb030067          	jr	-336(t1) # 80007838 <release>
    80006990:	00a00493          	li	s1,10
    80006994:	fc1ff06f          	j	80006954 <consoleintr+0x50>

0000000080006998 <consoleinit>:
    80006998:	fe010113          	addi	sp,sp,-32
    8000699c:	00113c23          	sd	ra,24(sp)
    800069a0:	00813823          	sd	s0,16(sp)
    800069a4:	00913423          	sd	s1,8(sp)
    800069a8:	02010413          	addi	s0,sp,32
    800069ac:	00006497          	auipc	s1,0x6
    800069b0:	d3c48493          	addi	s1,s1,-708 # 8000c6e8 <cons>
    800069b4:	00048513          	mv	a0,s1
    800069b8:	00003597          	auipc	a1,0x3
    800069bc:	e2858593          	addi	a1,a1,-472 # 800097e0 <CONSOLE_STATUS+0x7d0>
    800069c0:	00001097          	auipc	ra,0x1
    800069c4:	d88080e7          	jalr	-632(ra) # 80007748 <initlock>
    800069c8:	00000097          	auipc	ra,0x0
    800069cc:	7ac080e7          	jalr	1964(ra) # 80007174 <uartinit>
    800069d0:	01813083          	ld	ra,24(sp)
    800069d4:	01013403          	ld	s0,16(sp)
    800069d8:	00000797          	auipc	a5,0x0
    800069dc:	d9c78793          	addi	a5,a5,-612 # 80006774 <consoleread>
    800069e0:	0af4bc23          	sd	a5,184(s1)
    800069e4:	00000797          	auipc	a5,0x0
    800069e8:	cec78793          	addi	a5,a5,-788 # 800066d0 <consolewrite>
    800069ec:	0cf4b023          	sd	a5,192(s1)
    800069f0:	00813483          	ld	s1,8(sp)
    800069f4:	02010113          	addi	sp,sp,32
    800069f8:	00008067          	ret

00000000800069fc <console_read>:
    800069fc:	ff010113          	addi	sp,sp,-16
    80006a00:	00813423          	sd	s0,8(sp)
    80006a04:	01010413          	addi	s0,sp,16
    80006a08:	00813403          	ld	s0,8(sp)
    80006a0c:	00006317          	auipc	t1,0x6
    80006a10:	d9433303          	ld	t1,-620(t1) # 8000c7a0 <devsw+0x10>
    80006a14:	01010113          	addi	sp,sp,16
    80006a18:	00030067          	jr	t1

0000000080006a1c <console_write>:
    80006a1c:	ff010113          	addi	sp,sp,-16
    80006a20:	00813423          	sd	s0,8(sp)
    80006a24:	01010413          	addi	s0,sp,16
    80006a28:	00813403          	ld	s0,8(sp)
    80006a2c:	00006317          	auipc	t1,0x6
    80006a30:	d7c33303          	ld	t1,-644(t1) # 8000c7a8 <devsw+0x18>
    80006a34:	01010113          	addi	sp,sp,16
    80006a38:	00030067          	jr	t1

0000000080006a3c <panic>:
    80006a3c:	fe010113          	addi	sp,sp,-32
    80006a40:	00113c23          	sd	ra,24(sp)
    80006a44:	00813823          	sd	s0,16(sp)
    80006a48:	00913423          	sd	s1,8(sp)
    80006a4c:	02010413          	addi	s0,sp,32
    80006a50:	00050493          	mv	s1,a0
    80006a54:	00003517          	auipc	a0,0x3
    80006a58:	d9450513          	addi	a0,a0,-620 # 800097e8 <CONSOLE_STATUS+0x7d8>
    80006a5c:	00006797          	auipc	a5,0x6
    80006a60:	de07a623          	sw	zero,-532(a5) # 8000c848 <pr+0x18>
    80006a64:	00000097          	auipc	ra,0x0
    80006a68:	034080e7          	jalr	52(ra) # 80006a98 <__printf>
    80006a6c:	00048513          	mv	a0,s1
    80006a70:	00000097          	auipc	ra,0x0
    80006a74:	028080e7          	jalr	40(ra) # 80006a98 <__printf>
    80006a78:	00003517          	auipc	a0,0x3
    80006a7c:	b7850513          	addi	a0,a0,-1160 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80006a80:	00000097          	auipc	ra,0x0
    80006a84:	018080e7          	jalr	24(ra) # 80006a98 <__printf>
    80006a88:	00100793          	li	a5,1
    80006a8c:	00005717          	auipc	a4,0x5
    80006a90:	acf72623          	sw	a5,-1332(a4) # 8000b558 <panicked>
    80006a94:	0000006f          	j	80006a94 <panic+0x58>

0000000080006a98 <__printf>:
    80006a98:	f3010113          	addi	sp,sp,-208
    80006a9c:	08813023          	sd	s0,128(sp)
    80006aa0:	07313423          	sd	s3,104(sp)
    80006aa4:	09010413          	addi	s0,sp,144
    80006aa8:	05813023          	sd	s8,64(sp)
    80006aac:	08113423          	sd	ra,136(sp)
    80006ab0:	06913c23          	sd	s1,120(sp)
    80006ab4:	07213823          	sd	s2,112(sp)
    80006ab8:	07413023          	sd	s4,96(sp)
    80006abc:	05513c23          	sd	s5,88(sp)
    80006ac0:	05613823          	sd	s6,80(sp)
    80006ac4:	05713423          	sd	s7,72(sp)
    80006ac8:	03913c23          	sd	s9,56(sp)
    80006acc:	03a13823          	sd	s10,48(sp)
    80006ad0:	03b13423          	sd	s11,40(sp)
    80006ad4:	00006317          	auipc	t1,0x6
    80006ad8:	d5c30313          	addi	t1,t1,-676 # 8000c830 <pr>
    80006adc:	01832c03          	lw	s8,24(t1)
    80006ae0:	00b43423          	sd	a1,8(s0)
    80006ae4:	00c43823          	sd	a2,16(s0)
    80006ae8:	00d43c23          	sd	a3,24(s0)
    80006aec:	02e43023          	sd	a4,32(s0)
    80006af0:	02f43423          	sd	a5,40(s0)
    80006af4:	03043823          	sd	a6,48(s0)
    80006af8:	03143c23          	sd	a7,56(s0)
    80006afc:	00050993          	mv	s3,a0
    80006b00:	4a0c1663          	bnez	s8,80006fac <__printf+0x514>
    80006b04:	60098c63          	beqz	s3,8000711c <__printf+0x684>
    80006b08:	0009c503          	lbu	a0,0(s3)
    80006b0c:	00840793          	addi	a5,s0,8
    80006b10:	f6f43c23          	sd	a5,-136(s0)
    80006b14:	00000493          	li	s1,0
    80006b18:	22050063          	beqz	a0,80006d38 <__printf+0x2a0>
    80006b1c:	00002a37          	lui	s4,0x2
    80006b20:	00018ab7          	lui	s5,0x18
    80006b24:	000f4b37          	lui	s6,0xf4
    80006b28:	00989bb7          	lui	s7,0x989
    80006b2c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80006b30:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80006b34:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80006b38:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80006b3c:	00148c9b          	addiw	s9,s1,1
    80006b40:	02500793          	li	a5,37
    80006b44:	01998933          	add	s2,s3,s9
    80006b48:	38f51263          	bne	a0,a5,80006ecc <__printf+0x434>
    80006b4c:	00094783          	lbu	a5,0(s2)
    80006b50:	00078c9b          	sext.w	s9,a5
    80006b54:	1e078263          	beqz	a5,80006d38 <__printf+0x2a0>
    80006b58:	0024849b          	addiw	s1,s1,2
    80006b5c:	07000713          	li	a4,112
    80006b60:	00998933          	add	s2,s3,s1
    80006b64:	38e78a63          	beq	a5,a4,80006ef8 <__printf+0x460>
    80006b68:	20f76863          	bltu	a4,a5,80006d78 <__printf+0x2e0>
    80006b6c:	42a78863          	beq	a5,a0,80006f9c <__printf+0x504>
    80006b70:	06400713          	li	a4,100
    80006b74:	40e79663          	bne	a5,a4,80006f80 <__printf+0x4e8>
    80006b78:	f7843783          	ld	a5,-136(s0)
    80006b7c:	0007a603          	lw	a2,0(a5)
    80006b80:	00878793          	addi	a5,a5,8
    80006b84:	f6f43c23          	sd	a5,-136(s0)
    80006b88:	42064a63          	bltz	a2,80006fbc <__printf+0x524>
    80006b8c:	00a00713          	li	a4,10
    80006b90:	02e677bb          	remuw	a5,a2,a4
    80006b94:	00003d97          	auipc	s11,0x3
    80006b98:	c7cd8d93          	addi	s11,s11,-900 # 80009810 <digits>
    80006b9c:	00900593          	li	a1,9
    80006ba0:	0006051b          	sext.w	a0,a2
    80006ba4:	00000c93          	li	s9,0
    80006ba8:	02079793          	slli	a5,a5,0x20
    80006bac:	0207d793          	srli	a5,a5,0x20
    80006bb0:	00fd87b3          	add	a5,s11,a5
    80006bb4:	0007c783          	lbu	a5,0(a5)
    80006bb8:	02e656bb          	divuw	a3,a2,a4
    80006bbc:	f8f40023          	sb	a5,-128(s0)
    80006bc0:	14c5d863          	bge	a1,a2,80006d10 <__printf+0x278>
    80006bc4:	06300593          	li	a1,99
    80006bc8:	00100c93          	li	s9,1
    80006bcc:	02e6f7bb          	remuw	a5,a3,a4
    80006bd0:	02079793          	slli	a5,a5,0x20
    80006bd4:	0207d793          	srli	a5,a5,0x20
    80006bd8:	00fd87b3          	add	a5,s11,a5
    80006bdc:	0007c783          	lbu	a5,0(a5)
    80006be0:	02e6d73b          	divuw	a4,a3,a4
    80006be4:	f8f400a3          	sb	a5,-127(s0)
    80006be8:	12a5f463          	bgeu	a1,a0,80006d10 <__printf+0x278>
    80006bec:	00a00693          	li	a3,10
    80006bf0:	00900593          	li	a1,9
    80006bf4:	02d777bb          	remuw	a5,a4,a3
    80006bf8:	02079793          	slli	a5,a5,0x20
    80006bfc:	0207d793          	srli	a5,a5,0x20
    80006c00:	00fd87b3          	add	a5,s11,a5
    80006c04:	0007c503          	lbu	a0,0(a5)
    80006c08:	02d757bb          	divuw	a5,a4,a3
    80006c0c:	f8a40123          	sb	a0,-126(s0)
    80006c10:	48e5f263          	bgeu	a1,a4,80007094 <__printf+0x5fc>
    80006c14:	06300513          	li	a0,99
    80006c18:	02d7f5bb          	remuw	a1,a5,a3
    80006c1c:	02059593          	slli	a1,a1,0x20
    80006c20:	0205d593          	srli	a1,a1,0x20
    80006c24:	00bd85b3          	add	a1,s11,a1
    80006c28:	0005c583          	lbu	a1,0(a1)
    80006c2c:	02d7d7bb          	divuw	a5,a5,a3
    80006c30:	f8b401a3          	sb	a1,-125(s0)
    80006c34:	48e57263          	bgeu	a0,a4,800070b8 <__printf+0x620>
    80006c38:	3e700513          	li	a0,999
    80006c3c:	02d7f5bb          	remuw	a1,a5,a3
    80006c40:	02059593          	slli	a1,a1,0x20
    80006c44:	0205d593          	srli	a1,a1,0x20
    80006c48:	00bd85b3          	add	a1,s11,a1
    80006c4c:	0005c583          	lbu	a1,0(a1)
    80006c50:	02d7d7bb          	divuw	a5,a5,a3
    80006c54:	f8b40223          	sb	a1,-124(s0)
    80006c58:	46e57663          	bgeu	a0,a4,800070c4 <__printf+0x62c>
    80006c5c:	02d7f5bb          	remuw	a1,a5,a3
    80006c60:	02059593          	slli	a1,a1,0x20
    80006c64:	0205d593          	srli	a1,a1,0x20
    80006c68:	00bd85b3          	add	a1,s11,a1
    80006c6c:	0005c583          	lbu	a1,0(a1)
    80006c70:	02d7d7bb          	divuw	a5,a5,a3
    80006c74:	f8b402a3          	sb	a1,-123(s0)
    80006c78:	46ea7863          	bgeu	s4,a4,800070e8 <__printf+0x650>
    80006c7c:	02d7f5bb          	remuw	a1,a5,a3
    80006c80:	02059593          	slli	a1,a1,0x20
    80006c84:	0205d593          	srli	a1,a1,0x20
    80006c88:	00bd85b3          	add	a1,s11,a1
    80006c8c:	0005c583          	lbu	a1,0(a1)
    80006c90:	02d7d7bb          	divuw	a5,a5,a3
    80006c94:	f8b40323          	sb	a1,-122(s0)
    80006c98:	3eeaf863          	bgeu	s5,a4,80007088 <__printf+0x5f0>
    80006c9c:	02d7f5bb          	remuw	a1,a5,a3
    80006ca0:	02059593          	slli	a1,a1,0x20
    80006ca4:	0205d593          	srli	a1,a1,0x20
    80006ca8:	00bd85b3          	add	a1,s11,a1
    80006cac:	0005c583          	lbu	a1,0(a1)
    80006cb0:	02d7d7bb          	divuw	a5,a5,a3
    80006cb4:	f8b403a3          	sb	a1,-121(s0)
    80006cb8:	42eb7e63          	bgeu	s6,a4,800070f4 <__printf+0x65c>
    80006cbc:	02d7f5bb          	remuw	a1,a5,a3
    80006cc0:	02059593          	slli	a1,a1,0x20
    80006cc4:	0205d593          	srli	a1,a1,0x20
    80006cc8:	00bd85b3          	add	a1,s11,a1
    80006ccc:	0005c583          	lbu	a1,0(a1)
    80006cd0:	02d7d7bb          	divuw	a5,a5,a3
    80006cd4:	f8b40423          	sb	a1,-120(s0)
    80006cd8:	42ebfc63          	bgeu	s7,a4,80007110 <__printf+0x678>
    80006cdc:	02079793          	slli	a5,a5,0x20
    80006ce0:	0207d793          	srli	a5,a5,0x20
    80006ce4:	00fd8db3          	add	s11,s11,a5
    80006ce8:	000dc703          	lbu	a4,0(s11)
    80006cec:	00a00793          	li	a5,10
    80006cf0:	00900c93          	li	s9,9
    80006cf4:	f8e404a3          	sb	a4,-119(s0)
    80006cf8:	00065c63          	bgez	a2,80006d10 <__printf+0x278>
    80006cfc:	f9040713          	addi	a4,s0,-112
    80006d00:	00f70733          	add	a4,a4,a5
    80006d04:	02d00693          	li	a3,45
    80006d08:	fed70823          	sb	a3,-16(a4)
    80006d0c:	00078c93          	mv	s9,a5
    80006d10:	f8040793          	addi	a5,s0,-128
    80006d14:	01978cb3          	add	s9,a5,s9
    80006d18:	f7f40d13          	addi	s10,s0,-129
    80006d1c:	000cc503          	lbu	a0,0(s9)
    80006d20:	fffc8c93          	addi	s9,s9,-1
    80006d24:	00000097          	auipc	ra,0x0
    80006d28:	b90080e7          	jalr	-1136(ra) # 800068b4 <consputc>
    80006d2c:	ffac98e3          	bne	s9,s10,80006d1c <__printf+0x284>
    80006d30:	00094503          	lbu	a0,0(s2)
    80006d34:	e00514e3          	bnez	a0,80006b3c <__printf+0xa4>
    80006d38:	1a0c1663          	bnez	s8,80006ee4 <__printf+0x44c>
    80006d3c:	08813083          	ld	ra,136(sp)
    80006d40:	08013403          	ld	s0,128(sp)
    80006d44:	07813483          	ld	s1,120(sp)
    80006d48:	07013903          	ld	s2,112(sp)
    80006d4c:	06813983          	ld	s3,104(sp)
    80006d50:	06013a03          	ld	s4,96(sp)
    80006d54:	05813a83          	ld	s5,88(sp)
    80006d58:	05013b03          	ld	s6,80(sp)
    80006d5c:	04813b83          	ld	s7,72(sp)
    80006d60:	04013c03          	ld	s8,64(sp)
    80006d64:	03813c83          	ld	s9,56(sp)
    80006d68:	03013d03          	ld	s10,48(sp)
    80006d6c:	02813d83          	ld	s11,40(sp)
    80006d70:	0d010113          	addi	sp,sp,208
    80006d74:	00008067          	ret
    80006d78:	07300713          	li	a4,115
    80006d7c:	1ce78a63          	beq	a5,a4,80006f50 <__printf+0x4b8>
    80006d80:	07800713          	li	a4,120
    80006d84:	1ee79e63          	bne	a5,a4,80006f80 <__printf+0x4e8>
    80006d88:	f7843783          	ld	a5,-136(s0)
    80006d8c:	0007a703          	lw	a4,0(a5)
    80006d90:	00878793          	addi	a5,a5,8
    80006d94:	f6f43c23          	sd	a5,-136(s0)
    80006d98:	28074263          	bltz	a4,8000701c <__printf+0x584>
    80006d9c:	00003d97          	auipc	s11,0x3
    80006da0:	a74d8d93          	addi	s11,s11,-1420 # 80009810 <digits>
    80006da4:	00f77793          	andi	a5,a4,15
    80006da8:	00fd87b3          	add	a5,s11,a5
    80006dac:	0007c683          	lbu	a3,0(a5)
    80006db0:	00f00613          	li	a2,15
    80006db4:	0007079b          	sext.w	a5,a4
    80006db8:	f8d40023          	sb	a3,-128(s0)
    80006dbc:	0047559b          	srliw	a1,a4,0x4
    80006dc0:	0047569b          	srliw	a3,a4,0x4
    80006dc4:	00000c93          	li	s9,0
    80006dc8:	0ee65063          	bge	a2,a4,80006ea8 <__printf+0x410>
    80006dcc:	00f6f693          	andi	a3,a3,15
    80006dd0:	00dd86b3          	add	a3,s11,a3
    80006dd4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80006dd8:	0087d79b          	srliw	a5,a5,0x8
    80006ddc:	00100c93          	li	s9,1
    80006de0:	f8d400a3          	sb	a3,-127(s0)
    80006de4:	0cb67263          	bgeu	a2,a1,80006ea8 <__printf+0x410>
    80006de8:	00f7f693          	andi	a3,a5,15
    80006dec:	00dd86b3          	add	a3,s11,a3
    80006df0:	0006c583          	lbu	a1,0(a3)
    80006df4:	00f00613          	li	a2,15
    80006df8:	0047d69b          	srliw	a3,a5,0x4
    80006dfc:	f8b40123          	sb	a1,-126(s0)
    80006e00:	0047d593          	srli	a1,a5,0x4
    80006e04:	28f67e63          	bgeu	a2,a5,800070a0 <__printf+0x608>
    80006e08:	00f6f693          	andi	a3,a3,15
    80006e0c:	00dd86b3          	add	a3,s11,a3
    80006e10:	0006c503          	lbu	a0,0(a3)
    80006e14:	0087d813          	srli	a6,a5,0x8
    80006e18:	0087d69b          	srliw	a3,a5,0x8
    80006e1c:	f8a401a3          	sb	a0,-125(s0)
    80006e20:	28b67663          	bgeu	a2,a1,800070ac <__printf+0x614>
    80006e24:	00f6f693          	andi	a3,a3,15
    80006e28:	00dd86b3          	add	a3,s11,a3
    80006e2c:	0006c583          	lbu	a1,0(a3)
    80006e30:	00c7d513          	srli	a0,a5,0xc
    80006e34:	00c7d69b          	srliw	a3,a5,0xc
    80006e38:	f8b40223          	sb	a1,-124(s0)
    80006e3c:	29067a63          	bgeu	a2,a6,800070d0 <__printf+0x638>
    80006e40:	00f6f693          	andi	a3,a3,15
    80006e44:	00dd86b3          	add	a3,s11,a3
    80006e48:	0006c583          	lbu	a1,0(a3)
    80006e4c:	0107d813          	srli	a6,a5,0x10
    80006e50:	0107d69b          	srliw	a3,a5,0x10
    80006e54:	f8b402a3          	sb	a1,-123(s0)
    80006e58:	28a67263          	bgeu	a2,a0,800070dc <__printf+0x644>
    80006e5c:	00f6f693          	andi	a3,a3,15
    80006e60:	00dd86b3          	add	a3,s11,a3
    80006e64:	0006c683          	lbu	a3,0(a3)
    80006e68:	0147d79b          	srliw	a5,a5,0x14
    80006e6c:	f8d40323          	sb	a3,-122(s0)
    80006e70:	21067663          	bgeu	a2,a6,8000707c <__printf+0x5e4>
    80006e74:	02079793          	slli	a5,a5,0x20
    80006e78:	0207d793          	srli	a5,a5,0x20
    80006e7c:	00fd8db3          	add	s11,s11,a5
    80006e80:	000dc683          	lbu	a3,0(s11)
    80006e84:	00800793          	li	a5,8
    80006e88:	00700c93          	li	s9,7
    80006e8c:	f8d403a3          	sb	a3,-121(s0)
    80006e90:	00075c63          	bgez	a4,80006ea8 <__printf+0x410>
    80006e94:	f9040713          	addi	a4,s0,-112
    80006e98:	00f70733          	add	a4,a4,a5
    80006e9c:	02d00693          	li	a3,45
    80006ea0:	fed70823          	sb	a3,-16(a4)
    80006ea4:	00078c93          	mv	s9,a5
    80006ea8:	f8040793          	addi	a5,s0,-128
    80006eac:	01978cb3          	add	s9,a5,s9
    80006eb0:	f7f40d13          	addi	s10,s0,-129
    80006eb4:	000cc503          	lbu	a0,0(s9)
    80006eb8:	fffc8c93          	addi	s9,s9,-1
    80006ebc:	00000097          	auipc	ra,0x0
    80006ec0:	9f8080e7          	jalr	-1544(ra) # 800068b4 <consputc>
    80006ec4:	ff9d18e3          	bne	s10,s9,80006eb4 <__printf+0x41c>
    80006ec8:	0100006f          	j	80006ed8 <__printf+0x440>
    80006ecc:	00000097          	auipc	ra,0x0
    80006ed0:	9e8080e7          	jalr	-1560(ra) # 800068b4 <consputc>
    80006ed4:	000c8493          	mv	s1,s9
    80006ed8:	00094503          	lbu	a0,0(s2)
    80006edc:	c60510e3          	bnez	a0,80006b3c <__printf+0xa4>
    80006ee0:	e40c0ee3          	beqz	s8,80006d3c <__printf+0x2a4>
    80006ee4:	00006517          	auipc	a0,0x6
    80006ee8:	94c50513          	addi	a0,a0,-1716 # 8000c830 <pr>
    80006eec:	00001097          	auipc	ra,0x1
    80006ef0:	94c080e7          	jalr	-1716(ra) # 80007838 <release>
    80006ef4:	e49ff06f          	j	80006d3c <__printf+0x2a4>
    80006ef8:	f7843783          	ld	a5,-136(s0)
    80006efc:	03000513          	li	a0,48
    80006f00:	01000d13          	li	s10,16
    80006f04:	00878713          	addi	a4,a5,8
    80006f08:	0007bc83          	ld	s9,0(a5)
    80006f0c:	f6e43c23          	sd	a4,-136(s0)
    80006f10:	00000097          	auipc	ra,0x0
    80006f14:	9a4080e7          	jalr	-1628(ra) # 800068b4 <consputc>
    80006f18:	07800513          	li	a0,120
    80006f1c:	00000097          	auipc	ra,0x0
    80006f20:	998080e7          	jalr	-1640(ra) # 800068b4 <consputc>
    80006f24:	00003d97          	auipc	s11,0x3
    80006f28:	8ecd8d93          	addi	s11,s11,-1812 # 80009810 <digits>
    80006f2c:	03ccd793          	srli	a5,s9,0x3c
    80006f30:	00fd87b3          	add	a5,s11,a5
    80006f34:	0007c503          	lbu	a0,0(a5)
    80006f38:	fffd0d1b          	addiw	s10,s10,-1
    80006f3c:	004c9c93          	slli	s9,s9,0x4
    80006f40:	00000097          	auipc	ra,0x0
    80006f44:	974080e7          	jalr	-1676(ra) # 800068b4 <consputc>
    80006f48:	fe0d12e3          	bnez	s10,80006f2c <__printf+0x494>
    80006f4c:	f8dff06f          	j	80006ed8 <__printf+0x440>
    80006f50:	f7843783          	ld	a5,-136(s0)
    80006f54:	0007bc83          	ld	s9,0(a5)
    80006f58:	00878793          	addi	a5,a5,8
    80006f5c:	f6f43c23          	sd	a5,-136(s0)
    80006f60:	000c9a63          	bnez	s9,80006f74 <__printf+0x4dc>
    80006f64:	1080006f          	j	8000706c <__printf+0x5d4>
    80006f68:	001c8c93          	addi	s9,s9,1
    80006f6c:	00000097          	auipc	ra,0x0
    80006f70:	948080e7          	jalr	-1720(ra) # 800068b4 <consputc>
    80006f74:	000cc503          	lbu	a0,0(s9)
    80006f78:	fe0518e3          	bnez	a0,80006f68 <__printf+0x4d0>
    80006f7c:	f5dff06f          	j	80006ed8 <__printf+0x440>
    80006f80:	02500513          	li	a0,37
    80006f84:	00000097          	auipc	ra,0x0
    80006f88:	930080e7          	jalr	-1744(ra) # 800068b4 <consputc>
    80006f8c:	000c8513          	mv	a0,s9
    80006f90:	00000097          	auipc	ra,0x0
    80006f94:	924080e7          	jalr	-1756(ra) # 800068b4 <consputc>
    80006f98:	f41ff06f          	j	80006ed8 <__printf+0x440>
    80006f9c:	02500513          	li	a0,37
    80006fa0:	00000097          	auipc	ra,0x0
    80006fa4:	914080e7          	jalr	-1772(ra) # 800068b4 <consputc>
    80006fa8:	f31ff06f          	j	80006ed8 <__printf+0x440>
    80006fac:	00030513          	mv	a0,t1
    80006fb0:	00000097          	auipc	ra,0x0
    80006fb4:	7bc080e7          	jalr	1980(ra) # 8000776c <acquire>
    80006fb8:	b4dff06f          	j	80006b04 <__printf+0x6c>
    80006fbc:	40c0053b          	negw	a0,a2
    80006fc0:	00a00713          	li	a4,10
    80006fc4:	02e576bb          	remuw	a3,a0,a4
    80006fc8:	00003d97          	auipc	s11,0x3
    80006fcc:	848d8d93          	addi	s11,s11,-1976 # 80009810 <digits>
    80006fd0:	ff700593          	li	a1,-9
    80006fd4:	02069693          	slli	a3,a3,0x20
    80006fd8:	0206d693          	srli	a3,a3,0x20
    80006fdc:	00dd86b3          	add	a3,s11,a3
    80006fe0:	0006c683          	lbu	a3,0(a3)
    80006fe4:	02e557bb          	divuw	a5,a0,a4
    80006fe8:	f8d40023          	sb	a3,-128(s0)
    80006fec:	10b65e63          	bge	a2,a1,80007108 <__printf+0x670>
    80006ff0:	06300593          	li	a1,99
    80006ff4:	02e7f6bb          	remuw	a3,a5,a4
    80006ff8:	02069693          	slli	a3,a3,0x20
    80006ffc:	0206d693          	srli	a3,a3,0x20
    80007000:	00dd86b3          	add	a3,s11,a3
    80007004:	0006c683          	lbu	a3,0(a3)
    80007008:	02e7d73b          	divuw	a4,a5,a4
    8000700c:	00200793          	li	a5,2
    80007010:	f8d400a3          	sb	a3,-127(s0)
    80007014:	bca5ece3          	bltu	a1,a0,80006bec <__printf+0x154>
    80007018:	ce5ff06f          	j	80006cfc <__printf+0x264>
    8000701c:	40e007bb          	negw	a5,a4
    80007020:	00002d97          	auipc	s11,0x2
    80007024:	7f0d8d93          	addi	s11,s11,2032 # 80009810 <digits>
    80007028:	00f7f693          	andi	a3,a5,15
    8000702c:	00dd86b3          	add	a3,s11,a3
    80007030:	0006c583          	lbu	a1,0(a3)
    80007034:	ff100613          	li	a2,-15
    80007038:	0047d69b          	srliw	a3,a5,0x4
    8000703c:	f8b40023          	sb	a1,-128(s0)
    80007040:	0047d59b          	srliw	a1,a5,0x4
    80007044:	0ac75e63          	bge	a4,a2,80007100 <__printf+0x668>
    80007048:	00f6f693          	andi	a3,a3,15
    8000704c:	00dd86b3          	add	a3,s11,a3
    80007050:	0006c603          	lbu	a2,0(a3)
    80007054:	00f00693          	li	a3,15
    80007058:	0087d79b          	srliw	a5,a5,0x8
    8000705c:	f8c400a3          	sb	a2,-127(s0)
    80007060:	d8b6e4e3          	bltu	a3,a1,80006de8 <__printf+0x350>
    80007064:	00200793          	li	a5,2
    80007068:	e2dff06f          	j	80006e94 <__printf+0x3fc>
    8000706c:	00002c97          	auipc	s9,0x2
    80007070:	784c8c93          	addi	s9,s9,1924 # 800097f0 <CONSOLE_STATUS+0x7e0>
    80007074:	02800513          	li	a0,40
    80007078:	ef1ff06f          	j	80006f68 <__printf+0x4d0>
    8000707c:	00700793          	li	a5,7
    80007080:	00600c93          	li	s9,6
    80007084:	e0dff06f          	j	80006e90 <__printf+0x3f8>
    80007088:	00700793          	li	a5,7
    8000708c:	00600c93          	li	s9,6
    80007090:	c69ff06f          	j	80006cf8 <__printf+0x260>
    80007094:	00300793          	li	a5,3
    80007098:	00200c93          	li	s9,2
    8000709c:	c5dff06f          	j	80006cf8 <__printf+0x260>
    800070a0:	00300793          	li	a5,3
    800070a4:	00200c93          	li	s9,2
    800070a8:	de9ff06f          	j	80006e90 <__printf+0x3f8>
    800070ac:	00400793          	li	a5,4
    800070b0:	00300c93          	li	s9,3
    800070b4:	dddff06f          	j	80006e90 <__printf+0x3f8>
    800070b8:	00400793          	li	a5,4
    800070bc:	00300c93          	li	s9,3
    800070c0:	c39ff06f          	j	80006cf8 <__printf+0x260>
    800070c4:	00500793          	li	a5,5
    800070c8:	00400c93          	li	s9,4
    800070cc:	c2dff06f          	j	80006cf8 <__printf+0x260>
    800070d0:	00500793          	li	a5,5
    800070d4:	00400c93          	li	s9,4
    800070d8:	db9ff06f          	j	80006e90 <__printf+0x3f8>
    800070dc:	00600793          	li	a5,6
    800070e0:	00500c93          	li	s9,5
    800070e4:	dadff06f          	j	80006e90 <__printf+0x3f8>
    800070e8:	00600793          	li	a5,6
    800070ec:	00500c93          	li	s9,5
    800070f0:	c09ff06f          	j	80006cf8 <__printf+0x260>
    800070f4:	00800793          	li	a5,8
    800070f8:	00700c93          	li	s9,7
    800070fc:	bfdff06f          	j	80006cf8 <__printf+0x260>
    80007100:	00100793          	li	a5,1
    80007104:	d91ff06f          	j	80006e94 <__printf+0x3fc>
    80007108:	00100793          	li	a5,1
    8000710c:	bf1ff06f          	j	80006cfc <__printf+0x264>
    80007110:	00900793          	li	a5,9
    80007114:	00800c93          	li	s9,8
    80007118:	be1ff06f          	j	80006cf8 <__printf+0x260>
    8000711c:	00002517          	auipc	a0,0x2
    80007120:	6dc50513          	addi	a0,a0,1756 # 800097f8 <CONSOLE_STATUS+0x7e8>
    80007124:	00000097          	auipc	ra,0x0
    80007128:	918080e7          	jalr	-1768(ra) # 80006a3c <panic>

000000008000712c <printfinit>:
    8000712c:	fe010113          	addi	sp,sp,-32
    80007130:	00813823          	sd	s0,16(sp)
    80007134:	00913423          	sd	s1,8(sp)
    80007138:	00113c23          	sd	ra,24(sp)
    8000713c:	02010413          	addi	s0,sp,32
    80007140:	00005497          	auipc	s1,0x5
    80007144:	6f048493          	addi	s1,s1,1776 # 8000c830 <pr>
    80007148:	00048513          	mv	a0,s1
    8000714c:	00002597          	auipc	a1,0x2
    80007150:	6bc58593          	addi	a1,a1,1724 # 80009808 <CONSOLE_STATUS+0x7f8>
    80007154:	00000097          	auipc	ra,0x0
    80007158:	5f4080e7          	jalr	1524(ra) # 80007748 <initlock>
    8000715c:	01813083          	ld	ra,24(sp)
    80007160:	01013403          	ld	s0,16(sp)
    80007164:	0004ac23          	sw	zero,24(s1)
    80007168:	00813483          	ld	s1,8(sp)
    8000716c:	02010113          	addi	sp,sp,32
    80007170:	00008067          	ret

0000000080007174 <uartinit>:
    80007174:	ff010113          	addi	sp,sp,-16
    80007178:	00813423          	sd	s0,8(sp)
    8000717c:	01010413          	addi	s0,sp,16
    80007180:	100007b7          	lui	a5,0x10000
    80007184:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007188:	f8000713          	li	a4,-128
    8000718c:	00e781a3          	sb	a4,3(a5)
    80007190:	00300713          	li	a4,3
    80007194:	00e78023          	sb	a4,0(a5)
    80007198:	000780a3          	sb	zero,1(a5)
    8000719c:	00e781a3          	sb	a4,3(a5)
    800071a0:	00700693          	li	a3,7
    800071a4:	00d78123          	sb	a3,2(a5)
    800071a8:	00e780a3          	sb	a4,1(a5)
    800071ac:	00813403          	ld	s0,8(sp)
    800071b0:	01010113          	addi	sp,sp,16
    800071b4:	00008067          	ret

00000000800071b8 <uartputc>:
    800071b8:	00004797          	auipc	a5,0x4
    800071bc:	3a07a783          	lw	a5,928(a5) # 8000b558 <panicked>
    800071c0:	00078463          	beqz	a5,800071c8 <uartputc+0x10>
    800071c4:	0000006f          	j	800071c4 <uartputc+0xc>
    800071c8:	fd010113          	addi	sp,sp,-48
    800071cc:	02813023          	sd	s0,32(sp)
    800071d0:	00913c23          	sd	s1,24(sp)
    800071d4:	01213823          	sd	s2,16(sp)
    800071d8:	01313423          	sd	s3,8(sp)
    800071dc:	02113423          	sd	ra,40(sp)
    800071e0:	03010413          	addi	s0,sp,48
    800071e4:	00004917          	auipc	s2,0x4
    800071e8:	37c90913          	addi	s2,s2,892 # 8000b560 <uart_tx_r>
    800071ec:	00093783          	ld	a5,0(s2)
    800071f0:	00004497          	auipc	s1,0x4
    800071f4:	37848493          	addi	s1,s1,888 # 8000b568 <uart_tx_w>
    800071f8:	0004b703          	ld	a4,0(s1)
    800071fc:	02078693          	addi	a3,a5,32
    80007200:	00050993          	mv	s3,a0
    80007204:	02e69c63          	bne	a3,a4,8000723c <uartputc+0x84>
    80007208:	00001097          	auipc	ra,0x1
    8000720c:	834080e7          	jalr	-1996(ra) # 80007a3c <push_on>
    80007210:	00093783          	ld	a5,0(s2)
    80007214:	0004b703          	ld	a4,0(s1)
    80007218:	02078793          	addi	a5,a5,32
    8000721c:	00e79463          	bne	a5,a4,80007224 <uartputc+0x6c>
    80007220:	0000006f          	j	80007220 <uartputc+0x68>
    80007224:	00001097          	auipc	ra,0x1
    80007228:	88c080e7          	jalr	-1908(ra) # 80007ab0 <pop_on>
    8000722c:	00093783          	ld	a5,0(s2)
    80007230:	0004b703          	ld	a4,0(s1)
    80007234:	02078693          	addi	a3,a5,32
    80007238:	fce688e3          	beq	a3,a4,80007208 <uartputc+0x50>
    8000723c:	01f77693          	andi	a3,a4,31
    80007240:	00005597          	auipc	a1,0x5
    80007244:	61058593          	addi	a1,a1,1552 # 8000c850 <uart_tx_buf>
    80007248:	00d586b3          	add	a3,a1,a3
    8000724c:	00170713          	addi	a4,a4,1
    80007250:	01368023          	sb	s3,0(a3)
    80007254:	00e4b023          	sd	a4,0(s1)
    80007258:	10000637          	lui	a2,0x10000
    8000725c:	02f71063          	bne	a4,a5,8000727c <uartputc+0xc4>
    80007260:	0340006f          	j	80007294 <uartputc+0xdc>
    80007264:	00074703          	lbu	a4,0(a4)
    80007268:	00f93023          	sd	a5,0(s2)
    8000726c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007270:	00093783          	ld	a5,0(s2)
    80007274:	0004b703          	ld	a4,0(s1)
    80007278:	00f70e63          	beq	a4,a5,80007294 <uartputc+0xdc>
    8000727c:	00564683          	lbu	a3,5(a2)
    80007280:	01f7f713          	andi	a4,a5,31
    80007284:	00e58733          	add	a4,a1,a4
    80007288:	0206f693          	andi	a3,a3,32
    8000728c:	00178793          	addi	a5,a5,1
    80007290:	fc069ae3          	bnez	a3,80007264 <uartputc+0xac>
    80007294:	02813083          	ld	ra,40(sp)
    80007298:	02013403          	ld	s0,32(sp)
    8000729c:	01813483          	ld	s1,24(sp)
    800072a0:	01013903          	ld	s2,16(sp)
    800072a4:	00813983          	ld	s3,8(sp)
    800072a8:	03010113          	addi	sp,sp,48
    800072ac:	00008067          	ret

00000000800072b0 <uartputc_sync>:
    800072b0:	ff010113          	addi	sp,sp,-16
    800072b4:	00813423          	sd	s0,8(sp)
    800072b8:	01010413          	addi	s0,sp,16
    800072bc:	00004717          	auipc	a4,0x4
    800072c0:	29c72703          	lw	a4,668(a4) # 8000b558 <panicked>
    800072c4:	02071663          	bnez	a4,800072f0 <uartputc_sync+0x40>
    800072c8:	00050793          	mv	a5,a0
    800072cc:	100006b7          	lui	a3,0x10000
    800072d0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800072d4:	02077713          	andi	a4,a4,32
    800072d8:	fe070ce3          	beqz	a4,800072d0 <uartputc_sync+0x20>
    800072dc:	0ff7f793          	andi	a5,a5,255
    800072e0:	00f68023          	sb	a5,0(a3)
    800072e4:	00813403          	ld	s0,8(sp)
    800072e8:	01010113          	addi	sp,sp,16
    800072ec:	00008067          	ret
    800072f0:	0000006f          	j	800072f0 <uartputc_sync+0x40>

00000000800072f4 <uartstart>:
    800072f4:	ff010113          	addi	sp,sp,-16
    800072f8:	00813423          	sd	s0,8(sp)
    800072fc:	01010413          	addi	s0,sp,16
    80007300:	00004617          	auipc	a2,0x4
    80007304:	26060613          	addi	a2,a2,608 # 8000b560 <uart_tx_r>
    80007308:	00004517          	auipc	a0,0x4
    8000730c:	26050513          	addi	a0,a0,608 # 8000b568 <uart_tx_w>
    80007310:	00063783          	ld	a5,0(a2)
    80007314:	00053703          	ld	a4,0(a0)
    80007318:	04f70263          	beq	a4,a5,8000735c <uartstart+0x68>
    8000731c:	100005b7          	lui	a1,0x10000
    80007320:	00005817          	auipc	a6,0x5
    80007324:	53080813          	addi	a6,a6,1328 # 8000c850 <uart_tx_buf>
    80007328:	01c0006f          	j	80007344 <uartstart+0x50>
    8000732c:	0006c703          	lbu	a4,0(a3)
    80007330:	00f63023          	sd	a5,0(a2)
    80007334:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007338:	00063783          	ld	a5,0(a2)
    8000733c:	00053703          	ld	a4,0(a0)
    80007340:	00f70e63          	beq	a4,a5,8000735c <uartstart+0x68>
    80007344:	01f7f713          	andi	a4,a5,31
    80007348:	00e806b3          	add	a3,a6,a4
    8000734c:	0055c703          	lbu	a4,5(a1)
    80007350:	00178793          	addi	a5,a5,1
    80007354:	02077713          	andi	a4,a4,32
    80007358:	fc071ae3          	bnez	a4,8000732c <uartstart+0x38>
    8000735c:	00813403          	ld	s0,8(sp)
    80007360:	01010113          	addi	sp,sp,16
    80007364:	00008067          	ret

0000000080007368 <uartgetc>:
    80007368:	ff010113          	addi	sp,sp,-16
    8000736c:	00813423          	sd	s0,8(sp)
    80007370:	01010413          	addi	s0,sp,16
    80007374:	10000737          	lui	a4,0x10000
    80007378:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000737c:	0017f793          	andi	a5,a5,1
    80007380:	00078c63          	beqz	a5,80007398 <uartgetc+0x30>
    80007384:	00074503          	lbu	a0,0(a4)
    80007388:	0ff57513          	andi	a0,a0,255
    8000738c:	00813403          	ld	s0,8(sp)
    80007390:	01010113          	addi	sp,sp,16
    80007394:	00008067          	ret
    80007398:	fff00513          	li	a0,-1
    8000739c:	ff1ff06f          	j	8000738c <uartgetc+0x24>

00000000800073a0 <uartintr>:
    800073a0:	100007b7          	lui	a5,0x10000
    800073a4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800073a8:	0017f793          	andi	a5,a5,1
    800073ac:	0a078463          	beqz	a5,80007454 <uartintr+0xb4>
    800073b0:	fe010113          	addi	sp,sp,-32
    800073b4:	00813823          	sd	s0,16(sp)
    800073b8:	00913423          	sd	s1,8(sp)
    800073bc:	00113c23          	sd	ra,24(sp)
    800073c0:	02010413          	addi	s0,sp,32
    800073c4:	100004b7          	lui	s1,0x10000
    800073c8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800073cc:	0ff57513          	andi	a0,a0,255
    800073d0:	fffff097          	auipc	ra,0xfffff
    800073d4:	534080e7          	jalr	1332(ra) # 80006904 <consoleintr>
    800073d8:	0054c783          	lbu	a5,5(s1)
    800073dc:	0017f793          	andi	a5,a5,1
    800073e0:	fe0794e3          	bnez	a5,800073c8 <uartintr+0x28>
    800073e4:	00004617          	auipc	a2,0x4
    800073e8:	17c60613          	addi	a2,a2,380 # 8000b560 <uart_tx_r>
    800073ec:	00004517          	auipc	a0,0x4
    800073f0:	17c50513          	addi	a0,a0,380 # 8000b568 <uart_tx_w>
    800073f4:	00063783          	ld	a5,0(a2)
    800073f8:	00053703          	ld	a4,0(a0)
    800073fc:	04f70263          	beq	a4,a5,80007440 <uartintr+0xa0>
    80007400:	100005b7          	lui	a1,0x10000
    80007404:	00005817          	auipc	a6,0x5
    80007408:	44c80813          	addi	a6,a6,1100 # 8000c850 <uart_tx_buf>
    8000740c:	01c0006f          	j	80007428 <uartintr+0x88>
    80007410:	0006c703          	lbu	a4,0(a3)
    80007414:	00f63023          	sd	a5,0(a2)
    80007418:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000741c:	00063783          	ld	a5,0(a2)
    80007420:	00053703          	ld	a4,0(a0)
    80007424:	00f70e63          	beq	a4,a5,80007440 <uartintr+0xa0>
    80007428:	01f7f713          	andi	a4,a5,31
    8000742c:	00e806b3          	add	a3,a6,a4
    80007430:	0055c703          	lbu	a4,5(a1)
    80007434:	00178793          	addi	a5,a5,1
    80007438:	02077713          	andi	a4,a4,32
    8000743c:	fc071ae3          	bnez	a4,80007410 <uartintr+0x70>
    80007440:	01813083          	ld	ra,24(sp)
    80007444:	01013403          	ld	s0,16(sp)
    80007448:	00813483          	ld	s1,8(sp)
    8000744c:	02010113          	addi	sp,sp,32
    80007450:	00008067          	ret
    80007454:	00004617          	auipc	a2,0x4
    80007458:	10c60613          	addi	a2,a2,268 # 8000b560 <uart_tx_r>
    8000745c:	00004517          	auipc	a0,0x4
    80007460:	10c50513          	addi	a0,a0,268 # 8000b568 <uart_tx_w>
    80007464:	00063783          	ld	a5,0(a2)
    80007468:	00053703          	ld	a4,0(a0)
    8000746c:	04f70263          	beq	a4,a5,800074b0 <uartintr+0x110>
    80007470:	100005b7          	lui	a1,0x10000
    80007474:	00005817          	auipc	a6,0x5
    80007478:	3dc80813          	addi	a6,a6,988 # 8000c850 <uart_tx_buf>
    8000747c:	01c0006f          	j	80007498 <uartintr+0xf8>
    80007480:	0006c703          	lbu	a4,0(a3)
    80007484:	00f63023          	sd	a5,0(a2)
    80007488:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000748c:	00063783          	ld	a5,0(a2)
    80007490:	00053703          	ld	a4,0(a0)
    80007494:	02f70063          	beq	a4,a5,800074b4 <uartintr+0x114>
    80007498:	01f7f713          	andi	a4,a5,31
    8000749c:	00e806b3          	add	a3,a6,a4
    800074a0:	0055c703          	lbu	a4,5(a1)
    800074a4:	00178793          	addi	a5,a5,1
    800074a8:	02077713          	andi	a4,a4,32
    800074ac:	fc071ae3          	bnez	a4,80007480 <uartintr+0xe0>
    800074b0:	00008067          	ret
    800074b4:	00008067          	ret

00000000800074b8 <kinit>:
    800074b8:	fc010113          	addi	sp,sp,-64
    800074bc:	02913423          	sd	s1,40(sp)
    800074c0:	fffff7b7          	lui	a5,0xfffff
    800074c4:	00006497          	auipc	s1,0x6
    800074c8:	3bb48493          	addi	s1,s1,955 # 8000d87f <end+0xfff>
    800074cc:	02813823          	sd	s0,48(sp)
    800074d0:	01313c23          	sd	s3,24(sp)
    800074d4:	00f4f4b3          	and	s1,s1,a5
    800074d8:	02113c23          	sd	ra,56(sp)
    800074dc:	03213023          	sd	s2,32(sp)
    800074e0:	01413823          	sd	s4,16(sp)
    800074e4:	01513423          	sd	s5,8(sp)
    800074e8:	04010413          	addi	s0,sp,64
    800074ec:	000017b7          	lui	a5,0x1
    800074f0:	01100993          	li	s3,17
    800074f4:	00f487b3          	add	a5,s1,a5
    800074f8:	01b99993          	slli	s3,s3,0x1b
    800074fc:	06f9e063          	bltu	s3,a5,8000755c <kinit+0xa4>
    80007500:	00005a97          	auipc	s5,0x5
    80007504:	380a8a93          	addi	s5,s5,896 # 8000c880 <end>
    80007508:	0754ec63          	bltu	s1,s5,80007580 <kinit+0xc8>
    8000750c:	0734fa63          	bgeu	s1,s3,80007580 <kinit+0xc8>
    80007510:	00088a37          	lui	s4,0x88
    80007514:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007518:	00004917          	auipc	s2,0x4
    8000751c:	05890913          	addi	s2,s2,88 # 8000b570 <kmem>
    80007520:	00ca1a13          	slli	s4,s4,0xc
    80007524:	0140006f          	j	80007538 <kinit+0x80>
    80007528:	000017b7          	lui	a5,0x1
    8000752c:	00f484b3          	add	s1,s1,a5
    80007530:	0554e863          	bltu	s1,s5,80007580 <kinit+0xc8>
    80007534:	0534f663          	bgeu	s1,s3,80007580 <kinit+0xc8>
    80007538:	00001637          	lui	a2,0x1
    8000753c:	00100593          	li	a1,1
    80007540:	00048513          	mv	a0,s1
    80007544:	00000097          	auipc	ra,0x0
    80007548:	5e4080e7          	jalr	1508(ra) # 80007b28 <__memset>
    8000754c:	00093783          	ld	a5,0(s2)
    80007550:	00f4b023          	sd	a5,0(s1)
    80007554:	00993023          	sd	s1,0(s2)
    80007558:	fd4498e3          	bne	s1,s4,80007528 <kinit+0x70>
    8000755c:	03813083          	ld	ra,56(sp)
    80007560:	03013403          	ld	s0,48(sp)
    80007564:	02813483          	ld	s1,40(sp)
    80007568:	02013903          	ld	s2,32(sp)
    8000756c:	01813983          	ld	s3,24(sp)
    80007570:	01013a03          	ld	s4,16(sp)
    80007574:	00813a83          	ld	s5,8(sp)
    80007578:	04010113          	addi	sp,sp,64
    8000757c:	00008067          	ret
    80007580:	00002517          	auipc	a0,0x2
    80007584:	2a850513          	addi	a0,a0,680 # 80009828 <digits+0x18>
    80007588:	fffff097          	auipc	ra,0xfffff
    8000758c:	4b4080e7          	jalr	1204(ra) # 80006a3c <panic>

0000000080007590 <freerange>:
    80007590:	fc010113          	addi	sp,sp,-64
    80007594:	000017b7          	lui	a5,0x1
    80007598:	02913423          	sd	s1,40(sp)
    8000759c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800075a0:	009504b3          	add	s1,a0,s1
    800075a4:	fffff537          	lui	a0,0xfffff
    800075a8:	02813823          	sd	s0,48(sp)
    800075ac:	02113c23          	sd	ra,56(sp)
    800075b0:	03213023          	sd	s2,32(sp)
    800075b4:	01313c23          	sd	s3,24(sp)
    800075b8:	01413823          	sd	s4,16(sp)
    800075bc:	01513423          	sd	s5,8(sp)
    800075c0:	01613023          	sd	s6,0(sp)
    800075c4:	04010413          	addi	s0,sp,64
    800075c8:	00a4f4b3          	and	s1,s1,a0
    800075cc:	00f487b3          	add	a5,s1,a5
    800075d0:	06f5e463          	bltu	a1,a5,80007638 <freerange+0xa8>
    800075d4:	00005a97          	auipc	s5,0x5
    800075d8:	2aca8a93          	addi	s5,s5,684 # 8000c880 <end>
    800075dc:	0954e263          	bltu	s1,s5,80007660 <freerange+0xd0>
    800075e0:	01100993          	li	s3,17
    800075e4:	01b99993          	slli	s3,s3,0x1b
    800075e8:	0734fc63          	bgeu	s1,s3,80007660 <freerange+0xd0>
    800075ec:	00058a13          	mv	s4,a1
    800075f0:	00004917          	auipc	s2,0x4
    800075f4:	f8090913          	addi	s2,s2,-128 # 8000b570 <kmem>
    800075f8:	00002b37          	lui	s6,0x2
    800075fc:	0140006f          	j	80007610 <freerange+0x80>
    80007600:	000017b7          	lui	a5,0x1
    80007604:	00f484b3          	add	s1,s1,a5
    80007608:	0554ec63          	bltu	s1,s5,80007660 <freerange+0xd0>
    8000760c:	0534fa63          	bgeu	s1,s3,80007660 <freerange+0xd0>
    80007610:	00001637          	lui	a2,0x1
    80007614:	00100593          	li	a1,1
    80007618:	00048513          	mv	a0,s1
    8000761c:	00000097          	auipc	ra,0x0
    80007620:	50c080e7          	jalr	1292(ra) # 80007b28 <__memset>
    80007624:	00093703          	ld	a4,0(s2)
    80007628:	016487b3          	add	a5,s1,s6
    8000762c:	00e4b023          	sd	a4,0(s1)
    80007630:	00993023          	sd	s1,0(s2)
    80007634:	fcfa76e3          	bgeu	s4,a5,80007600 <freerange+0x70>
    80007638:	03813083          	ld	ra,56(sp)
    8000763c:	03013403          	ld	s0,48(sp)
    80007640:	02813483          	ld	s1,40(sp)
    80007644:	02013903          	ld	s2,32(sp)
    80007648:	01813983          	ld	s3,24(sp)
    8000764c:	01013a03          	ld	s4,16(sp)
    80007650:	00813a83          	ld	s5,8(sp)
    80007654:	00013b03          	ld	s6,0(sp)
    80007658:	04010113          	addi	sp,sp,64
    8000765c:	00008067          	ret
    80007660:	00002517          	auipc	a0,0x2
    80007664:	1c850513          	addi	a0,a0,456 # 80009828 <digits+0x18>
    80007668:	fffff097          	auipc	ra,0xfffff
    8000766c:	3d4080e7          	jalr	980(ra) # 80006a3c <panic>

0000000080007670 <kfree>:
    80007670:	fe010113          	addi	sp,sp,-32
    80007674:	00813823          	sd	s0,16(sp)
    80007678:	00113c23          	sd	ra,24(sp)
    8000767c:	00913423          	sd	s1,8(sp)
    80007680:	02010413          	addi	s0,sp,32
    80007684:	03451793          	slli	a5,a0,0x34
    80007688:	04079c63          	bnez	a5,800076e0 <kfree+0x70>
    8000768c:	00005797          	auipc	a5,0x5
    80007690:	1f478793          	addi	a5,a5,500 # 8000c880 <end>
    80007694:	00050493          	mv	s1,a0
    80007698:	04f56463          	bltu	a0,a5,800076e0 <kfree+0x70>
    8000769c:	01100793          	li	a5,17
    800076a0:	01b79793          	slli	a5,a5,0x1b
    800076a4:	02f57e63          	bgeu	a0,a5,800076e0 <kfree+0x70>
    800076a8:	00001637          	lui	a2,0x1
    800076ac:	00100593          	li	a1,1
    800076b0:	00000097          	auipc	ra,0x0
    800076b4:	478080e7          	jalr	1144(ra) # 80007b28 <__memset>
    800076b8:	00004797          	auipc	a5,0x4
    800076bc:	eb878793          	addi	a5,a5,-328 # 8000b570 <kmem>
    800076c0:	0007b703          	ld	a4,0(a5)
    800076c4:	01813083          	ld	ra,24(sp)
    800076c8:	01013403          	ld	s0,16(sp)
    800076cc:	00e4b023          	sd	a4,0(s1)
    800076d0:	0097b023          	sd	s1,0(a5)
    800076d4:	00813483          	ld	s1,8(sp)
    800076d8:	02010113          	addi	sp,sp,32
    800076dc:	00008067          	ret
    800076e0:	00002517          	auipc	a0,0x2
    800076e4:	14850513          	addi	a0,a0,328 # 80009828 <digits+0x18>
    800076e8:	fffff097          	auipc	ra,0xfffff
    800076ec:	354080e7          	jalr	852(ra) # 80006a3c <panic>

00000000800076f0 <kalloc>:
    800076f0:	fe010113          	addi	sp,sp,-32
    800076f4:	00813823          	sd	s0,16(sp)
    800076f8:	00913423          	sd	s1,8(sp)
    800076fc:	00113c23          	sd	ra,24(sp)
    80007700:	02010413          	addi	s0,sp,32
    80007704:	00004797          	auipc	a5,0x4
    80007708:	e6c78793          	addi	a5,a5,-404 # 8000b570 <kmem>
    8000770c:	0007b483          	ld	s1,0(a5)
    80007710:	02048063          	beqz	s1,80007730 <kalloc+0x40>
    80007714:	0004b703          	ld	a4,0(s1)
    80007718:	00001637          	lui	a2,0x1
    8000771c:	00500593          	li	a1,5
    80007720:	00048513          	mv	a0,s1
    80007724:	00e7b023          	sd	a4,0(a5)
    80007728:	00000097          	auipc	ra,0x0
    8000772c:	400080e7          	jalr	1024(ra) # 80007b28 <__memset>
    80007730:	01813083          	ld	ra,24(sp)
    80007734:	01013403          	ld	s0,16(sp)
    80007738:	00048513          	mv	a0,s1
    8000773c:	00813483          	ld	s1,8(sp)
    80007740:	02010113          	addi	sp,sp,32
    80007744:	00008067          	ret

0000000080007748 <initlock>:
    80007748:	ff010113          	addi	sp,sp,-16
    8000774c:	00813423          	sd	s0,8(sp)
    80007750:	01010413          	addi	s0,sp,16
    80007754:	00813403          	ld	s0,8(sp)
    80007758:	00b53423          	sd	a1,8(a0)
    8000775c:	00052023          	sw	zero,0(a0)
    80007760:	00053823          	sd	zero,16(a0)
    80007764:	01010113          	addi	sp,sp,16
    80007768:	00008067          	ret

000000008000776c <acquire>:
    8000776c:	fe010113          	addi	sp,sp,-32
    80007770:	00813823          	sd	s0,16(sp)
    80007774:	00913423          	sd	s1,8(sp)
    80007778:	00113c23          	sd	ra,24(sp)
    8000777c:	01213023          	sd	s2,0(sp)
    80007780:	02010413          	addi	s0,sp,32
    80007784:	00050493          	mv	s1,a0
    80007788:	10002973          	csrr	s2,sstatus
    8000778c:	100027f3          	csrr	a5,sstatus
    80007790:	ffd7f793          	andi	a5,a5,-3
    80007794:	10079073          	csrw	sstatus,a5
    80007798:	fffff097          	auipc	ra,0xfffff
    8000779c:	8e0080e7          	jalr	-1824(ra) # 80006078 <mycpu>
    800077a0:	07852783          	lw	a5,120(a0)
    800077a4:	06078e63          	beqz	a5,80007820 <acquire+0xb4>
    800077a8:	fffff097          	auipc	ra,0xfffff
    800077ac:	8d0080e7          	jalr	-1840(ra) # 80006078 <mycpu>
    800077b0:	07852783          	lw	a5,120(a0)
    800077b4:	0004a703          	lw	a4,0(s1)
    800077b8:	0017879b          	addiw	a5,a5,1
    800077bc:	06f52c23          	sw	a5,120(a0)
    800077c0:	04071063          	bnez	a4,80007800 <acquire+0x94>
    800077c4:	00100713          	li	a4,1
    800077c8:	00070793          	mv	a5,a4
    800077cc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800077d0:	0007879b          	sext.w	a5,a5
    800077d4:	fe079ae3          	bnez	a5,800077c8 <acquire+0x5c>
    800077d8:	0ff0000f          	fence
    800077dc:	fffff097          	auipc	ra,0xfffff
    800077e0:	89c080e7          	jalr	-1892(ra) # 80006078 <mycpu>
    800077e4:	01813083          	ld	ra,24(sp)
    800077e8:	01013403          	ld	s0,16(sp)
    800077ec:	00a4b823          	sd	a0,16(s1)
    800077f0:	00013903          	ld	s2,0(sp)
    800077f4:	00813483          	ld	s1,8(sp)
    800077f8:	02010113          	addi	sp,sp,32
    800077fc:	00008067          	ret
    80007800:	0104b903          	ld	s2,16(s1)
    80007804:	fffff097          	auipc	ra,0xfffff
    80007808:	874080e7          	jalr	-1932(ra) # 80006078 <mycpu>
    8000780c:	faa91ce3          	bne	s2,a0,800077c4 <acquire+0x58>
    80007810:	00002517          	auipc	a0,0x2
    80007814:	02050513          	addi	a0,a0,32 # 80009830 <digits+0x20>
    80007818:	fffff097          	auipc	ra,0xfffff
    8000781c:	224080e7          	jalr	548(ra) # 80006a3c <panic>
    80007820:	00195913          	srli	s2,s2,0x1
    80007824:	fffff097          	auipc	ra,0xfffff
    80007828:	854080e7          	jalr	-1964(ra) # 80006078 <mycpu>
    8000782c:	00197913          	andi	s2,s2,1
    80007830:	07252e23          	sw	s2,124(a0)
    80007834:	f75ff06f          	j	800077a8 <acquire+0x3c>

0000000080007838 <release>:
    80007838:	fe010113          	addi	sp,sp,-32
    8000783c:	00813823          	sd	s0,16(sp)
    80007840:	00113c23          	sd	ra,24(sp)
    80007844:	00913423          	sd	s1,8(sp)
    80007848:	01213023          	sd	s2,0(sp)
    8000784c:	02010413          	addi	s0,sp,32
    80007850:	00052783          	lw	a5,0(a0)
    80007854:	00079a63          	bnez	a5,80007868 <release+0x30>
    80007858:	00002517          	auipc	a0,0x2
    8000785c:	fe050513          	addi	a0,a0,-32 # 80009838 <digits+0x28>
    80007860:	fffff097          	auipc	ra,0xfffff
    80007864:	1dc080e7          	jalr	476(ra) # 80006a3c <panic>
    80007868:	01053903          	ld	s2,16(a0)
    8000786c:	00050493          	mv	s1,a0
    80007870:	fffff097          	auipc	ra,0xfffff
    80007874:	808080e7          	jalr	-2040(ra) # 80006078 <mycpu>
    80007878:	fea910e3          	bne	s2,a0,80007858 <release+0x20>
    8000787c:	0004b823          	sd	zero,16(s1)
    80007880:	0ff0000f          	fence
    80007884:	0f50000f          	fence	iorw,ow
    80007888:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000788c:	ffffe097          	auipc	ra,0xffffe
    80007890:	7ec080e7          	jalr	2028(ra) # 80006078 <mycpu>
    80007894:	100027f3          	csrr	a5,sstatus
    80007898:	0027f793          	andi	a5,a5,2
    8000789c:	04079a63          	bnez	a5,800078f0 <release+0xb8>
    800078a0:	07852783          	lw	a5,120(a0)
    800078a4:	02f05e63          	blez	a5,800078e0 <release+0xa8>
    800078a8:	fff7871b          	addiw	a4,a5,-1
    800078ac:	06e52c23          	sw	a4,120(a0)
    800078b0:	00071c63          	bnez	a4,800078c8 <release+0x90>
    800078b4:	07c52783          	lw	a5,124(a0)
    800078b8:	00078863          	beqz	a5,800078c8 <release+0x90>
    800078bc:	100027f3          	csrr	a5,sstatus
    800078c0:	0027e793          	ori	a5,a5,2
    800078c4:	10079073          	csrw	sstatus,a5
    800078c8:	01813083          	ld	ra,24(sp)
    800078cc:	01013403          	ld	s0,16(sp)
    800078d0:	00813483          	ld	s1,8(sp)
    800078d4:	00013903          	ld	s2,0(sp)
    800078d8:	02010113          	addi	sp,sp,32
    800078dc:	00008067          	ret
    800078e0:	00002517          	auipc	a0,0x2
    800078e4:	f7850513          	addi	a0,a0,-136 # 80009858 <digits+0x48>
    800078e8:	fffff097          	auipc	ra,0xfffff
    800078ec:	154080e7          	jalr	340(ra) # 80006a3c <panic>
    800078f0:	00002517          	auipc	a0,0x2
    800078f4:	f5050513          	addi	a0,a0,-176 # 80009840 <digits+0x30>
    800078f8:	fffff097          	auipc	ra,0xfffff
    800078fc:	144080e7          	jalr	324(ra) # 80006a3c <panic>

0000000080007900 <holding>:
    80007900:	00052783          	lw	a5,0(a0)
    80007904:	00079663          	bnez	a5,80007910 <holding+0x10>
    80007908:	00000513          	li	a0,0
    8000790c:	00008067          	ret
    80007910:	fe010113          	addi	sp,sp,-32
    80007914:	00813823          	sd	s0,16(sp)
    80007918:	00913423          	sd	s1,8(sp)
    8000791c:	00113c23          	sd	ra,24(sp)
    80007920:	02010413          	addi	s0,sp,32
    80007924:	01053483          	ld	s1,16(a0)
    80007928:	ffffe097          	auipc	ra,0xffffe
    8000792c:	750080e7          	jalr	1872(ra) # 80006078 <mycpu>
    80007930:	01813083          	ld	ra,24(sp)
    80007934:	01013403          	ld	s0,16(sp)
    80007938:	40a48533          	sub	a0,s1,a0
    8000793c:	00153513          	seqz	a0,a0
    80007940:	00813483          	ld	s1,8(sp)
    80007944:	02010113          	addi	sp,sp,32
    80007948:	00008067          	ret

000000008000794c <push_off>:
    8000794c:	fe010113          	addi	sp,sp,-32
    80007950:	00813823          	sd	s0,16(sp)
    80007954:	00113c23          	sd	ra,24(sp)
    80007958:	00913423          	sd	s1,8(sp)
    8000795c:	02010413          	addi	s0,sp,32
    80007960:	100024f3          	csrr	s1,sstatus
    80007964:	100027f3          	csrr	a5,sstatus
    80007968:	ffd7f793          	andi	a5,a5,-3
    8000796c:	10079073          	csrw	sstatus,a5
    80007970:	ffffe097          	auipc	ra,0xffffe
    80007974:	708080e7          	jalr	1800(ra) # 80006078 <mycpu>
    80007978:	07852783          	lw	a5,120(a0)
    8000797c:	02078663          	beqz	a5,800079a8 <push_off+0x5c>
    80007980:	ffffe097          	auipc	ra,0xffffe
    80007984:	6f8080e7          	jalr	1784(ra) # 80006078 <mycpu>
    80007988:	07852783          	lw	a5,120(a0)
    8000798c:	01813083          	ld	ra,24(sp)
    80007990:	01013403          	ld	s0,16(sp)
    80007994:	0017879b          	addiw	a5,a5,1
    80007998:	06f52c23          	sw	a5,120(a0)
    8000799c:	00813483          	ld	s1,8(sp)
    800079a0:	02010113          	addi	sp,sp,32
    800079a4:	00008067          	ret
    800079a8:	0014d493          	srli	s1,s1,0x1
    800079ac:	ffffe097          	auipc	ra,0xffffe
    800079b0:	6cc080e7          	jalr	1740(ra) # 80006078 <mycpu>
    800079b4:	0014f493          	andi	s1,s1,1
    800079b8:	06952e23          	sw	s1,124(a0)
    800079bc:	fc5ff06f          	j	80007980 <push_off+0x34>

00000000800079c0 <pop_off>:
    800079c0:	ff010113          	addi	sp,sp,-16
    800079c4:	00813023          	sd	s0,0(sp)
    800079c8:	00113423          	sd	ra,8(sp)
    800079cc:	01010413          	addi	s0,sp,16
    800079d0:	ffffe097          	auipc	ra,0xffffe
    800079d4:	6a8080e7          	jalr	1704(ra) # 80006078 <mycpu>
    800079d8:	100027f3          	csrr	a5,sstatus
    800079dc:	0027f793          	andi	a5,a5,2
    800079e0:	04079663          	bnez	a5,80007a2c <pop_off+0x6c>
    800079e4:	07852783          	lw	a5,120(a0)
    800079e8:	02f05a63          	blez	a5,80007a1c <pop_off+0x5c>
    800079ec:	fff7871b          	addiw	a4,a5,-1
    800079f0:	06e52c23          	sw	a4,120(a0)
    800079f4:	00071c63          	bnez	a4,80007a0c <pop_off+0x4c>
    800079f8:	07c52783          	lw	a5,124(a0)
    800079fc:	00078863          	beqz	a5,80007a0c <pop_off+0x4c>
    80007a00:	100027f3          	csrr	a5,sstatus
    80007a04:	0027e793          	ori	a5,a5,2
    80007a08:	10079073          	csrw	sstatus,a5
    80007a0c:	00813083          	ld	ra,8(sp)
    80007a10:	00013403          	ld	s0,0(sp)
    80007a14:	01010113          	addi	sp,sp,16
    80007a18:	00008067          	ret
    80007a1c:	00002517          	auipc	a0,0x2
    80007a20:	e3c50513          	addi	a0,a0,-452 # 80009858 <digits+0x48>
    80007a24:	fffff097          	auipc	ra,0xfffff
    80007a28:	018080e7          	jalr	24(ra) # 80006a3c <panic>
    80007a2c:	00002517          	auipc	a0,0x2
    80007a30:	e1450513          	addi	a0,a0,-492 # 80009840 <digits+0x30>
    80007a34:	fffff097          	auipc	ra,0xfffff
    80007a38:	008080e7          	jalr	8(ra) # 80006a3c <panic>

0000000080007a3c <push_on>:
    80007a3c:	fe010113          	addi	sp,sp,-32
    80007a40:	00813823          	sd	s0,16(sp)
    80007a44:	00113c23          	sd	ra,24(sp)
    80007a48:	00913423          	sd	s1,8(sp)
    80007a4c:	02010413          	addi	s0,sp,32
    80007a50:	100024f3          	csrr	s1,sstatus
    80007a54:	100027f3          	csrr	a5,sstatus
    80007a58:	0027e793          	ori	a5,a5,2
    80007a5c:	10079073          	csrw	sstatus,a5
    80007a60:	ffffe097          	auipc	ra,0xffffe
    80007a64:	618080e7          	jalr	1560(ra) # 80006078 <mycpu>
    80007a68:	07852783          	lw	a5,120(a0)
    80007a6c:	02078663          	beqz	a5,80007a98 <push_on+0x5c>
    80007a70:	ffffe097          	auipc	ra,0xffffe
    80007a74:	608080e7          	jalr	1544(ra) # 80006078 <mycpu>
    80007a78:	07852783          	lw	a5,120(a0)
    80007a7c:	01813083          	ld	ra,24(sp)
    80007a80:	01013403          	ld	s0,16(sp)
    80007a84:	0017879b          	addiw	a5,a5,1
    80007a88:	06f52c23          	sw	a5,120(a0)
    80007a8c:	00813483          	ld	s1,8(sp)
    80007a90:	02010113          	addi	sp,sp,32
    80007a94:	00008067          	ret
    80007a98:	0014d493          	srli	s1,s1,0x1
    80007a9c:	ffffe097          	auipc	ra,0xffffe
    80007aa0:	5dc080e7          	jalr	1500(ra) # 80006078 <mycpu>
    80007aa4:	0014f493          	andi	s1,s1,1
    80007aa8:	06952e23          	sw	s1,124(a0)
    80007aac:	fc5ff06f          	j	80007a70 <push_on+0x34>

0000000080007ab0 <pop_on>:
    80007ab0:	ff010113          	addi	sp,sp,-16
    80007ab4:	00813023          	sd	s0,0(sp)
    80007ab8:	00113423          	sd	ra,8(sp)
    80007abc:	01010413          	addi	s0,sp,16
    80007ac0:	ffffe097          	auipc	ra,0xffffe
    80007ac4:	5b8080e7          	jalr	1464(ra) # 80006078 <mycpu>
    80007ac8:	100027f3          	csrr	a5,sstatus
    80007acc:	0027f793          	andi	a5,a5,2
    80007ad0:	04078463          	beqz	a5,80007b18 <pop_on+0x68>
    80007ad4:	07852783          	lw	a5,120(a0)
    80007ad8:	02f05863          	blez	a5,80007b08 <pop_on+0x58>
    80007adc:	fff7879b          	addiw	a5,a5,-1
    80007ae0:	06f52c23          	sw	a5,120(a0)
    80007ae4:	07853783          	ld	a5,120(a0)
    80007ae8:	00079863          	bnez	a5,80007af8 <pop_on+0x48>
    80007aec:	100027f3          	csrr	a5,sstatus
    80007af0:	ffd7f793          	andi	a5,a5,-3
    80007af4:	10079073          	csrw	sstatus,a5
    80007af8:	00813083          	ld	ra,8(sp)
    80007afc:	00013403          	ld	s0,0(sp)
    80007b00:	01010113          	addi	sp,sp,16
    80007b04:	00008067          	ret
    80007b08:	00002517          	auipc	a0,0x2
    80007b0c:	d7850513          	addi	a0,a0,-648 # 80009880 <digits+0x70>
    80007b10:	fffff097          	auipc	ra,0xfffff
    80007b14:	f2c080e7          	jalr	-212(ra) # 80006a3c <panic>
    80007b18:	00002517          	auipc	a0,0x2
    80007b1c:	d4850513          	addi	a0,a0,-696 # 80009860 <digits+0x50>
    80007b20:	fffff097          	auipc	ra,0xfffff
    80007b24:	f1c080e7          	jalr	-228(ra) # 80006a3c <panic>

0000000080007b28 <__memset>:
    80007b28:	ff010113          	addi	sp,sp,-16
    80007b2c:	00813423          	sd	s0,8(sp)
    80007b30:	01010413          	addi	s0,sp,16
    80007b34:	1a060e63          	beqz	a2,80007cf0 <__memset+0x1c8>
    80007b38:	40a007b3          	neg	a5,a0
    80007b3c:	0077f793          	andi	a5,a5,7
    80007b40:	00778693          	addi	a3,a5,7
    80007b44:	00b00813          	li	a6,11
    80007b48:	0ff5f593          	andi	a1,a1,255
    80007b4c:	fff6071b          	addiw	a4,a2,-1
    80007b50:	1b06e663          	bltu	a3,a6,80007cfc <__memset+0x1d4>
    80007b54:	1cd76463          	bltu	a4,a3,80007d1c <__memset+0x1f4>
    80007b58:	1a078e63          	beqz	a5,80007d14 <__memset+0x1ec>
    80007b5c:	00b50023          	sb	a1,0(a0)
    80007b60:	00100713          	li	a4,1
    80007b64:	1ae78463          	beq	a5,a4,80007d0c <__memset+0x1e4>
    80007b68:	00b500a3          	sb	a1,1(a0)
    80007b6c:	00200713          	li	a4,2
    80007b70:	1ae78a63          	beq	a5,a4,80007d24 <__memset+0x1fc>
    80007b74:	00b50123          	sb	a1,2(a0)
    80007b78:	00300713          	li	a4,3
    80007b7c:	18e78463          	beq	a5,a4,80007d04 <__memset+0x1dc>
    80007b80:	00b501a3          	sb	a1,3(a0)
    80007b84:	00400713          	li	a4,4
    80007b88:	1ae78263          	beq	a5,a4,80007d2c <__memset+0x204>
    80007b8c:	00b50223          	sb	a1,4(a0)
    80007b90:	00500713          	li	a4,5
    80007b94:	1ae78063          	beq	a5,a4,80007d34 <__memset+0x20c>
    80007b98:	00b502a3          	sb	a1,5(a0)
    80007b9c:	00700713          	li	a4,7
    80007ba0:	18e79e63          	bne	a5,a4,80007d3c <__memset+0x214>
    80007ba4:	00b50323          	sb	a1,6(a0)
    80007ba8:	00700e93          	li	t4,7
    80007bac:	00859713          	slli	a4,a1,0x8
    80007bb0:	00e5e733          	or	a4,a1,a4
    80007bb4:	01059e13          	slli	t3,a1,0x10
    80007bb8:	01c76e33          	or	t3,a4,t3
    80007bbc:	01859313          	slli	t1,a1,0x18
    80007bc0:	006e6333          	or	t1,t3,t1
    80007bc4:	02059893          	slli	a7,a1,0x20
    80007bc8:	40f60e3b          	subw	t3,a2,a5
    80007bcc:	011368b3          	or	a7,t1,a7
    80007bd0:	02859813          	slli	a6,a1,0x28
    80007bd4:	0108e833          	or	a6,a7,a6
    80007bd8:	03059693          	slli	a3,a1,0x30
    80007bdc:	003e589b          	srliw	a7,t3,0x3
    80007be0:	00d866b3          	or	a3,a6,a3
    80007be4:	03859713          	slli	a4,a1,0x38
    80007be8:	00389813          	slli	a6,a7,0x3
    80007bec:	00f507b3          	add	a5,a0,a5
    80007bf0:	00e6e733          	or	a4,a3,a4
    80007bf4:	000e089b          	sext.w	a7,t3
    80007bf8:	00f806b3          	add	a3,a6,a5
    80007bfc:	00e7b023          	sd	a4,0(a5)
    80007c00:	00878793          	addi	a5,a5,8
    80007c04:	fed79ce3          	bne	a5,a3,80007bfc <__memset+0xd4>
    80007c08:	ff8e7793          	andi	a5,t3,-8
    80007c0c:	0007871b          	sext.w	a4,a5
    80007c10:	01d787bb          	addw	a5,a5,t4
    80007c14:	0ce88e63          	beq	a7,a4,80007cf0 <__memset+0x1c8>
    80007c18:	00f50733          	add	a4,a0,a5
    80007c1c:	00b70023          	sb	a1,0(a4)
    80007c20:	0017871b          	addiw	a4,a5,1
    80007c24:	0cc77663          	bgeu	a4,a2,80007cf0 <__memset+0x1c8>
    80007c28:	00e50733          	add	a4,a0,a4
    80007c2c:	00b70023          	sb	a1,0(a4)
    80007c30:	0027871b          	addiw	a4,a5,2
    80007c34:	0ac77e63          	bgeu	a4,a2,80007cf0 <__memset+0x1c8>
    80007c38:	00e50733          	add	a4,a0,a4
    80007c3c:	00b70023          	sb	a1,0(a4)
    80007c40:	0037871b          	addiw	a4,a5,3
    80007c44:	0ac77663          	bgeu	a4,a2,80007cf0 <__memset+0x1c8>
    80007c48:	00e50733          	add	a4,a0,a4
    80007c4c:	00b70023          	sb	a1,0(a4)
    80007c50:	0047871b          	addiw	a4,a5,4
    80007c54:	08c77e63          	bgeu	a4,a2,80007cf0 <__memset+0x1c8>
    80007c58:	00e50733          	add	a4,a0,a4
    80007c5c:	00b70023          	sb	a1,0(a4)
    80007c60:	0057871b          	addiw	a4,a5,5
    80007c64:	08c77663          	bgeu	a4,a2,80007cf0 <__memset+0x1c8>
    80007c68:	00e50733          	add	a4,a0,a4
    80007c6c:	00b70023          	sb	a1,0(a4)
    80007c70:	0067871b          	addiw	a4,a5,6
    80007c74:	06c77e63          	bgeu	a4,a2,80007cf0 <__memset+0x1c8>
    80007c78:	00e50733          	add	a4,a0,a4
    80007c7c:	00b70023          	sb	a1,0(a4)
    80007c80:	0077871b          	addiw	a4,a5,7
    80007c84:	06c77663          	bgeu	a4,a2,80007cf0 <__memset+0x1c8>
    80007c88:	00e50733          	add	a4,a0,a4
    80007c8c:	00b70023          	sb	a1,0(a4)
    80007c90:	0087871b          	addiw	a4,a5,8
    80007c94:	04c77e63          	bgeu	a4,a2,80007cf0 <__memset+0x1c8>
    80007c98:	00e50733          	add	a4,a0,a4
    80007c9c:	00b70023          	sb	a1,0(a4)
    80007ca0:	0097871b          	addiw	a4,a5,9
    80007ca4:	04c77663          	bgeu	a4,a2,80007cf0 <__memset+0x1c8>
    80007ca8:	00e50733          	add	a4,a0,a4
    80007cac:	00b70023          	sb	a1,0(a4)
    80007cb0:	00a7871b          	addiw	a4,a5,10
    80007cb4:	02c77e63          	bgeu	a4,a2,80007cf0 <__memset+0x1c8>
    80007cb8:	00e50733          	add	a4,a0,a4
    80007cbc:	00b70023          	sb	a1,0(a4)
    80007cc0:	00b7871b          	addiw	a4,a5,11
    80007cc4:	02c77663          	bgeu	a4,a2,80007cf0 <__memset+0x1c8>
    80007cc8:	00e50733          	add	a4,a0,a4
    80007ccc:	00b70023          	sb	a1,0(a4)
    80007cd0:	00c7871b          	addiw	a4,a5,12
    80007cd4:	00c77e63          	bgeu	a4,a2,80007cf0 <__memset+0x1c8>
    80007cd8:	00e50733          	add	a4,a0,a4
    80007cdc:	00b70023          	sb	a1,0(a4)
    80007ce0:	00d7879b          	addiw	a5,a5,13
    80007ce4:	00c7f663          	bgeu	a5,a2,80007cf0 <__memset+0x1c8>
    80007ce8:	00f507b3          	add	a5,a0,a5
    80007cec:	00b78023          	sb	a1,0(a5)
    80007cf0:	00813403          	ld	s0,8(sp)
    80007cf4:	01010113          	addi	sp,sp,16
    80007cf8:	00008067          	ret
    80007cfc:	00b00693          	li	a3,11
    80007d00:	e55ff06f          	j	80007b54 <__memset+0x2c>
    80007d04:	00300e93          	li	t4,3
    80007d08:	ea5ff06f          	j	80007bac <__memset+0x84>
    80007d0c:	00100e93          	li	t4,1
    80007d10:	e9dff06f          	j	80007bac <__memset+0x84>
    80007d14:	00000e93          	li	t4,0
    80007d18:	e95ff06f          	j	80007bac <__memset+0x84>
    80007d1c:	00000793          	li	a5,0
    80007d20:	ef9ff06f          	j	80007c18 <__memset+0xf0>
    80007d24:	00200e93          	li	t4,2
    80007d28:	e85ff06f          	j	80007bac <__memset+0x84>
    80007d2c:	00400e93          	li	t4,4
    80007d30:	e7dff06f          	j	80007bac <__memset+0x84>
    80007d34:	00500e93          	li	t4,5
    80007d38:	e75ff06f          	j	80007bac <__memset+0x84>
    80007d3c:	00600e93          	li	t4,6
    80007d40:	e6dff06f          	j	80007bac <__memset+0x84>

0000000080007d44 <__memmove>:
    80007d44:	ff010113          	addi	sp,sp,-16
    80007d48:	00813423          	sd	s0,8(sp)
    80007d4c:	01010413          	addi	s0,sp,16
    80007d50:	0e060863          	beqz	a2,80007e40 <__memmove+0xfc>
    80007d54:	fff6069b          	addiw	a3,a2,-1
    80007d58:	0006881b          	sext.w	a6,a3
    80007d5c:	0ea5e863          	bltu	a1,a0,80007e4c <__memmove+0x108>
    80007d60:	00758713          	addi	a4,a1,7
    80007d64:	00a5e7b3          	or	a5,a1,a0
    80007d68:	40a70733          	sub	a4,a4,a0
    80007d6c:	0077f793          	andi	a5,a5,7
    80007d70:	00f73713          	sltiu	a4,a4,15
    80007d74:	00174713          	xori	a4,a4,1
    80007d78:	0017b793          	seqz	a5,a5
    80007d7c:	00e7f7b3          	and	a5,a5,a4
    80007d80:	10078863          	beqz	a5,80007e90 <__memmove+0x14c>
    80007d84:	00900793          	li	a5,9
    80007d88:	1107f463          	bgeu	a5,a6,80007e90 <__memmove+0x14c>
    80007d8c:	0036581b          	srliw	a6,a2,0x3
    80007d90:	fff8081b          	addiw	a6,a6,-1
    80007d94:	02081813          	slli	a6,a6,0x20
    80007d98:	01d85893          	srli	a7,a6,0x1d
    80007d9c:	00858813          	addi	a6,a1,8
    80007da0:	00058793          	mv	a5,a1
    80007da4:	00050713          	mv	a4,a0
    80007da8:	01088833          	add	a6,a7,a6
    80007dac:	0007b883          	ld	a7,0(a5)
    80007db0:	00878793          	addi	a5,a5,8
    80007db4:	00870713          	addi	a4,a4,8
    80007db8:	ff173c23          	sd	a7,-8(a4)
    80007dbc:	ff0798e3          	bne	a5,a6,80007dac <__memmove+0x68>
    80007dc0:	ff867713          	andi	a4,a2,-8
    80007dc4:	02071793          	slli	a5,a4,0x20
    80007dc8:	0207d793          	srli	a5,a5,0x20
    80007dcc:	00f585b3          	add	a1,a1,a5
    80007dd0:	40e686bb          	subw	a3,a3,a4
    80007dd4:	00f507b3          	add	a5,a0,a5
    80007dd8:	06e60463          	beq	a2,a4,80007e40 <__memmove+0xfc>
    80007ddc:	0005c703          	lbu	a4,0(a1)
    80007de0:	00e78023          	sb	a4,0(a5)
    80007de4:	04068e63          	beqz	a3,80007e40 <__memmove+0xfc>
    80007de8:	0015c603          	lbu	a2,1(a1)
    80007dec:	00100713          	li	a4,1
    80007df0:	00c780a3          	sb	a2,1(a5)
    80007df4:	04e68663          	beq	a3,a4,80007e40 <__memmove+0xfc>
    80007df8:	0025c603          	lbu	a2,2(a1)
    80007dfc:	00200713          	li	a4,2
    80007e00:	00c78123          	sb	a2,2(a5)
    80007e04:	02e68e63          	beq	a3,a4,80007e40 <__memmove+0xfc>
    80007e08:	0035c603          	lbu	a2,3(a1)
    80007e0c:	00300713          	li	a4,3
    80007e10:	00c781a3          	sb	a2,3(a5)
    80007e14:	02e68663          	beq	a3,a4,80007e40 <__memmove+0xfc>
    80007e18:	0045c603          	lbu	a2,4(a1)
    80007e1c:	00400713          	li	a4,4
    80007e20:	00c78223          	sb	a2,4(a5)
    80007e24:	00e68e63          	beq	a3,a4,80007e40 <__memmove+0xfc>
    80007e28:	0055c603          	lbu	a2,5(a1)
    80007e2c:	00500713          	li	a4,5
    80007e30:	00c782a3          	sb	a2,5(a5)
    80007e34:	00e68663          	beq	a3,a4,80007e40 <__memmove+0xfc>
    80007e38:	0065c703          	lbu	a4,6(a1)
    80007e3c:	00e78323          	sb	a4,6(a5)
    80007e40:	00813403          	ld	s0,8(sp)
    80007e44:	01010113          	addi	sp,sp,16
    80007e48:	00008067          	ret
    80007e4c:	02061713          	slli	a4,a2,0x20
    80007e50:	02075713          	srli	a4,a4,0x20
    80007e54:	00e587b3          	add	a5,a1,a4
    80007e58:	f0f574e3          	bgeu	a0,a5,80007d60 <__memmove+0x1c>
    80007e5c:	02069613          	slli	a2,a3,0x20
    80007e60:	02065613          	srli	a2,a2,0x20
    80007e64:	fff64613          	not	a2,a2
    80007e68:	00e50733          	add	a4,a0,a4
    80007e6c:	00c78633          	add	a2,a5,a2
    80007e70:	fff7c683          	lbu	a3,-1(a5)
    80007e74:	fff78793          	addi	a5,a5,-1
    80007e78:	fff70713          	addi	a4,a4,-1
    80007e7c:	00d70023          	sb	a3,0(a4)
    80007e80:	fec798e3          	bne	a5,a2,80007e70 <__memmove+0x12c>
    80007e84:	00813403          	ld	s0,8(sp)
    80007e88:	01010113          	addi	sp,sp,16
    80007e8c:	00008067          	ret
    80007e90:	02069713          	slli	a4,a3,0x20
    80007e94:	02075713          	srli	a4,a4,0x20
    80007e98:	00170713          	addi	a4,a4,1
    80007e9c:	00e50733          	add	a4,a0,a4
    80007ea0:	00050793          	mv	a5,a0
    80007ea4:	0005c683          	lbu	a3,0(a1)
    80007ea8:	00178793          	addi	a5,a5,1
    80007eac:	00158593          	addi	a1,a1,1
    80007eb0:	fed78fa3          	sb	a3,-1(a5)
    80007eb4:	fee798e3          	bne	a5,a4,80007ea4 <__memmove+0x160>
    80007eb8:	f89ff06f          	j	80007e40 <__memmove+0xfc>

0000000080007ebc <__mem_free>:
    80007ebc:	ff010113          	addi	sp,sp,-16
    80007ec0:	00813423          	sd	s0,8(sp)
    80007ec4:	01010413          	addi	s0,sp,16
    80007ec8:	00003597          	auipc	a1,0x3
    80007ecc:	6b058593          	addi	a1,a1,1712 # 8000b578 <freep>
    80007ed0:	0005b783          	ld	a5,0(a1)
    80007ed4:	ff050693          	addi	a3,a0,-16
    80007ed8:	0007b703          	ld	a4,0(a5)
    80007edc:	00d7fc63          	bgeu	a5,a3,80007ef4 <__mem_free+0x38>
    80007ee0:	00e6ee63          	bltu	a3,a4,80007efc <__mem_free+0x40>
    80007ee4:	00e7fc63          	bgeu	a5,a4,80007efc <__mem_free+0x40>
    80007ee8:	00070793          	mv	a5,a4
    80007eec:	0007b703          	ld	a4,0(a5)
    80007ef0:	fed7e8e3          	bltu	a5,a3,80007ee0 <__mem_free+0x24>
    80007ef4:	fee7eae3          	bltu	a5,a4,80007ee8 <__mem_free+0x2c>
    80007ef8:	fee6f8e3          	bgeu	a3,a4,80007ee8 <__mem_free+0x2c>
    80007efc:	ff852803          	lw	a6,-8(a0)
    80007f00:	02081613          	slli	a2,a6,0x20
    80007f04:	01c65613          	srli	a2,a2,0x1c
    80007f08:	00c68633          	add	a2,a3,a2
    80007f0c:	02c70a63          	beq	a4,a2,80007f40 <__mem_free+0x84>
    80007f10:	fee53823          	sd	a4,-16(a0)
    80007f14:	0087a503          	lw	a0,8(a5)
    80007f18:	02051613          	slli	a2,a0,0x20
    80007f1c:	01c65613          	srli	a2,a2,0x1c
    80007f20:	00c78633          	add	a2,a5,a2
    80007f24:	04c68263          	beq	a3,a2,80007f68 <__mem_free+0xac>
    80007f28:	00813403          	ld	s0,8(sp)
    80007f2c:	00d7b023          	sd	a3,0(a5)
    80007f30:	00f5b023          	sd	a5,0(a1)
    80007f34:	00000513          	li	a0,0
    80007f38:	01010113          	addi	sp,sp,16
    80007f3c:	00008067          	ret
    80007f40:	00872603          	lw	a2,8(a4)
    80007f44:	00073703          	ld	a4,0(a4)
    80007f48:	0106083b          	addw	a6,a2,a6
    80007f4c:	ff052c23          	sw	a6,-8(a0)
    80007f50:	fee53823          	sd	a4,-16(a0)
    80007f54:	0087a503          	lw	a0,8(a5)
    80007f58:	02051613          	slli	a2,a0,0x20
    80007f5c:	01c65613          	srli	a2,a2,0x1c
    80007f60:	00c78633          	add	a2,a5,a2
    80007f64:	fcc692e3          	bne	a3,a2,80007f28 <__mem_free+0x6c>
    80007f68:	00813403          	ld	s0,8(sp)
    80007f6c:	0105053b          	addw	a0,a0,a6
    80007f70:	00a7a423          	sw	a0,8(a5)
    80007f74:	00e7b023          	sd	a4,0(a5)
    80007f78:	00f5b023          	sd	a5,0(a1)
    80007f7c:	00000513          	li	a0,0
    80007f80:	01010113          	addi	sp,sp,16
    80007f84:	00008067          	ret

0000000080007f88 <__mem_alloc>:
    80007f88:	fc010113          	addi	sp,sp,-64
    80007f8c:	02813823          	sd	s0,48(sp)
    80007f90:	02913423          	sd	s1,40(sp)
    80007f94:	03213023          	sd	s2,32(sp)
    80007f98:	01513423          	sd	s5,8(sp)
    80007f9c:	02113c23          	sd	ra,56(sp)
    80007fa0:	01313c23          	sd	s3,24(sp)
    80007fa4:	01413823          	sd	s4,16(sp)
    80007fa8:	01613023          	sd	s6,0(sp)
    80007fac:	04010413          	addi	s0,sp,64
    80007fb0:	00003a97          	auipc	s5,0x3
    80007fb4:	5c8a8a93          	addi	s5,s5,1480 # 8000b578 <freep>
    80007fb8:	00f50913          	addi	s2,a0,15
    80007fbc:	000ab683          	ld	a3,0(s5)
    80007fc0:	00495913          	srli	s2,s2,0x4
    80007fc4:	0019049b          	addiw	s1,s2,1
    80007fc8:	00048913          	mv	s2,s1
    80007fcc:	0c068c63          	beqz	a3,800080a4 <__mem_alloc+0x11c>
    80007fd0:	0006b503          	ld	a0,0(a3)
    80007fd4:	00852703          	lw	a4,8(a0)
    80007fd8:	10977063          	bgeu	a4,s1,800080d8 <__mem_alloc+0x150>
    80007fdc:	000017b7          	lui	a5,0x1
    80007fe0:	0009099b          	sext.w	s3,s2
    80007fe4:	0af4e863          	bltu	s1,a5,80008094 <__mem_alloc+0x10c>
    80007fe8:	02099a13          	slli	s4,s3,0x20
    80007fec:	01ca5a13          	srli	s4,s4,0x1c
    80007ff0:	fff00b13          	li	s6,-1
    80007ff4:	0100006f          	j	80008004 <__mem_alloc+0x7c>
    80007ff8:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    80007ffc:	00852703          	lw	a4,8(a0)
    80008000:	04977463          	bgeu	a4,s1,80008048 <__mem_alloc+0xc0>
    80008004:	00050793          	mv	a5,a0
    80008008:	fea698e3          	bne	a3,a0,80007ff8 <__mem_alloc+0x70>
    8000800c:	000a0513          	mv	a0,s4
    80008010:	00000097          	auipc	ra,0x0
    80008014:	1f0080e7          	jalr	496(ra) # 80008200 <kvmincrease>
    80008018:	00050793          	mv	a5,a0
    8000801c:	01050513          	addi	a0,a0,16
    80008020:	07678e63          	beq	a5,s6,8000809c <__mem_alloc+0x114>
    80008024:	0137a423          	sw	s3,8(a5)
    80008028:	00000097          	auipc	ra,0x0
    8000802c:	e94080e7          	jalr	-364(ra) # 80007ebc <__mem_free>
    80008030:	000ab783          	ld	a5,0(s5)
    80008034:	06078463          	beqz	a5,8000809c <__mem_alloc+0x114>
    80008038:	0007b503          	ld	a0,0(a5)
    8000803c:	00078693          	mv	a3,a5
    80008040:	00852703          	lw	a4,8(a0)
    80008044:	fc9760e3          	bltu	a4,s1,80008004 <__mem_alloc+0x7c>
    80008048:	08e48263          	beq	s1,a4,800080cc <__mem_alloc+0x144>
    8000804c:	4127073b          	subw	a4,a4,s2
    80008050:	02071693          	slli	a3,a4,0x20
    80008054:	01c6d693          	srli	a3,a3,0x1c
    80008058:	00e52423          	sw	a4,8(a0)
    8000805c:	00d50533          	add	a0,a0,a3
    80008060:	01252423          	sw	s2,8(a0)
    80008064:	00fab023          	sd	a5,0(s5)
    80008068:	01050513          	addi	a0,a0,16
    8000806c:	03813083          	ld	ra,56(sp)
    80008070:	03013403          	ld	s0,48(sp)
    80008074:	02813483          	ld	s1,40(sp)
    80008078:	02013903          	ld	s2,32(sp)
    8000807c:	01813983          	ld	s3,24(sp)
    80008080:	01013a03          	ld	s4,16(sp)
    80008084:	00813a83          	ld	s5,8(sp)
    80008088:	00013b03          	ld	s6,0(sp)
    8000808c:	04010113          	addi	sp,sp,64
    80008090:	00008067          	ret
    80008094:	000019b7          	lui	s3,0x1
    80008098:	f51ff06f          	j	80007fe8 <__mem_alloc+0x60>
    8000809c:	00000513          	li	a0,0
    800080a0:	fcdff06f          	j	8000806c <__mem_alloc+0xe4>
    800080a4:	00004797          	auipc	a5,0x4
    800080a8:	7cc78793          	addi	a5,a5,1996 # 8000c870 <base>
    800080ac:	00078513          	mv	a0,a5
    800080b0:	00fab023          	sd	a5,0(s5)
    800080b4:	00f7b023          	sd	a5,0(a5)
    800080b8:	00000713          	li	a4,0
    800080bc:	00004797          	auipc	a5,0x4
    800080c0:	7a07ae23          	sw	zero,1980(a5) # 8000c878 <base+0x8>
    800080c4:	00050693          	mv	a3,a0
    800080c8:	f11ff06f          	j	80007fd8 <__mem_alloc+0x50>
    800080cc:	00053703          	ld	a4,0(a0)
    800080d0:	00e7b023          	sd	a4,0(a5)
    800080d4:	f91ff06f          	j	80008064 <__mem_alloc+0xdc>
    800080d8:	00068793          	mv	a5,a3
    800080dc:	f6dff06f          	j	80008048 <__mem_alloc+0xc0>

00000000800080e0 <__putc>:
    800080e0:	fe010113          	addi	sp,sp,-32
    800080e4:	00813823          	sd	s0,16(sp)
    800080e8:	00113c23          	sd	ra,24(sp)
    800080ec:	02010413          	addi	s0,sp,32
    800080f0:	00050793          	mv	a5,a0
    800080f4:	fef40593          	addi	a1,s0,-17
    800080f8:	00100613          	li	a2,1
    800080fc:	00000513          	li	a0,0
    80008100:	fef407a3          	sb	a5,-17(s0)
    80008104:	fffff097          	auipc	ra,0xfffff
    80008108:	918080e7          	jalr	-1768(ra) # 80006a1c <console_write>
    8000810c:	01813083          	ld	ra,24(sp)
    80008110:	01013403          	ld	s0,16(sp)
    80008114:	02010113          	addi	sp,sp,32
    80008118:	00008067          	ret

000000008000811c <__getc>:
    8000811c:	fe010113          	addi	sp,sp,-32
    80008120:	00813823          	sd	s0,16(sp)
    80008124:	00113c23          	sd	ra,24(sp)
    80008128:	02010413          	addi	s0,sp,32
    8000812c:	fe840593          	addi	a1,s0,-24
    80008130:	00100613          	li	a2,1
    80008134:	00000513          	li	a0,0
    80008138:	fffff097          	auipc	ra,0xfffff
    8000813c:	8c4080e7          	jalr	-1852(ra) # 800069fc <console_read>
    80008140:	fe844503          	lbu	a0,-24(s0)
    80008144:	01813083          	ld	ra,24(sp)
    80008148:	01013403          	ld	s0,16(sp)
    8000814c:	02010113          	addi	sp,sp,32
    80008150:	00008067          	ret

0000000080008154 <console_handler>:
    80008154:	fe010113          	addi	sp,sp,-32
    80008158:	00813823          	sd	s0,16(sp)
    8000815c:	00113c23          	sd	ra,24(sp)
    80008160:	00913423          	sd	s1,8(sp)
    80008164:	02010413          	addi	s0,sp,32
    80008168:	14202773          	csrr	a4,scause
    8000816c:	100027f3          	csrr	a5,sstatus
    80008170:	0027f793          	andi	a5,a5,2
    80008174:	06079e63          	bnez	a5,800081f0 <console_handler+0x9c>
    80008178:	00074c63          	bltz	a4,80008190 <console_handler+0x3c>
    8000817c:	01813083          	ld	ra,24(sp)
    80008180:	01013403          	ld	s0,16(sp)
    80008184:	00813483          	ld	s1,8(sp)
    80008188:	02010113          	addi	sp,sp,32
    8000818c:	00008067          	ret
    80008190:	0ff77713          	andi	a4,a4,255
    80008194:	00900793          	li	a5,9
    80008198:	fef712e3          	bne	a4,a5,8000817c <console_handler+0x28>
    8000819c:	ffffe097          	auipc	ra,0xffffe
    800081a0:	4b8080e7          	jalr	1208(ra) # 80006654 <plic_claim>
    800081a4:	00a00793          	li	a5,10
    800081a8:	00050493          	mv	s1,a0
    800081ac:	02f50c63          	beq	a0,a5,800081e4 <console_handler+0x90>
    800081b0:	fc0506e3          	beqz	a0,8000817c <console_handler+0x28>
    800081b4:	00050593          	mv	a1,a0
    800081b8:	00001517          	auipc	a0,0x1
    800081bc:	5d050513          	addi	a0,a0,1488 # 80009788 <CONSOLE_STATUS+0x778>
    800081c0:	fffff097          	auipc	ra,0xfffff
    800081c4:	8d8080e7          	jalr	-1832(ra) # 80006a98 <__printf>
    800081c8:	01013403          	ld	s0,16(sp)
    800081cc:	01813083          	ld	ra,24(sp)
    800081d0:	00048513          	mv	a0,s1
    800081d4:	00813483          	ld	s1,8(sp)
    800081d8:	02010113          	addi	sp,sp,32
    800081dc:	ffffe317          	auipc	t1,0xffffe
    800081e0:	4b030067          	jr	1200(t1) # 8000668c <plic_complete>
    800081e4:	fffff097          	auipc	ra,0xfffff
    800081e8:	1bc080e7          	jalr	444(ra) # 800073a0 <uartintr>
    800081ec:	fddff06f          	j	800081c8 <console_handler+0x74>
    800081f0:	00001517          	auipc	a0,0x1
    800081f4:	69850513          	addi	a0,a0,1688 # 80009888 <digits+0x78>
    800081f8:	fffff097          	auipc	ra,0xfffff
    800081fc:	844080e7          	jalr	-1980(ra) # 80006a3c <panic>

0000000080008200 <kvmincrease>:
    80008200:	fe010113          	addi	sp,sp,-32
    80008204:	01213023          	sd	s2,0(sp)
    80008208:	00001937          	lui	s2,0x1
    8000820c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80008210:	00813823          	sd	s0,16(sp)
    80008214:	00113c23          	sd	ra,24(sp)
    80008218:	00913423          	sd	s1,8(sp)
    8000821c:	02010413          	addi	s0,sp,32
    80008220:	01250933          	add	s2,a0,s2
    80008224:	00c95913          	srli	s2,s2,0xc
    80008228:	02090863          	beqz	s2,80008258 <kvmincrease+0x58>
    8000822c:	00000493          	li	s1,0
    80008230:	00148493          	addi	s1,s1,1
    80008234:	fffff097          	auipc	ra,0xfffff
    80008238:	4bc080e7          	jalr	1212(ra) # 800076f0 <kalloc>
    8000823c:	fe991ae3          	bne	s2,s1,80008230 <kvmincrease+0x30>
    80008240:	01813083          	ld	ra,24(sp)
    80008244:	01013403          	ld	s0,16(sp)
    80008248:	00813483          	ld	s1,8(sp)
    8000824c:	00013903          	ld	s2,0(sp)
    80008250:	02010113          	addi	sp,sp,32
    80008254:	00008067          	ret
    80008258:	01813083          	ld	ra,24(sp)
    8000825c:	01013403          	ld	s0,16(sp)
    80008260:	00813483          	ld	s1,8(sp)
    80008264:	00013903          	ld	s2,0(sp)
    80008268:	00000513          	li	a0,0
    8000826c:	02010113          	addi	sp,sp,32
    80008270:	00008067          	ret
	...
