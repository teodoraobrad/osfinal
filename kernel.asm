
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	8a813103          	ld	sp,-1880(sp) # 8000b8a8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	664060ef          	jal	ra,80006680 <start>

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
    800015c4:	00004097          	auipc	ra,0x4
    800015c8:	e6c080e7          	jalr	-404(ra) # 80005430 <_Z11printStringPKc>
        printInt(i);
    800015cc:	00090513          	mv	a0,s2
    800015d0:	00002097          	auipc	ra,0x2
    800015d4:	880080e7          	jalr	-1920(ra) # 80002e50 <printInt>
        printString("\n");
    800015d8:	00008517          	auipc	a0,0x8
    800015dc:	fe850513          	addi	a0,a0,-24 # 800095c0 <CONSOLE_STATUS+0x5b0>
    800015e0:	00004097          	auipc	ra,0x4
    800015e4:	e50080e7          	jalr	-432(ra) # 80005430 <_Z11printStringPKc>
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
    8000166c:	00004097          	auipc	ra,0x4
    80001670:	dc4080e7          	jalr	-572(ra) # 80005430 <_Z11printStringPKc>
        printInt(i);
    80001674:	00090513          	mv	a0,s2
    80001678:	00001097          	auipc	ra,0x1
    8000167c:	7d8080e7          	jalr	2008(ra) # 80002e50 <printInt>
        printString("\n");
    80001680:	00008517          	auipc	a0,0x8
    80001684:	f4050513          	addi	a0,a0,-192 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80001688:	00004097          	auipc	ra,0x4
    8000168c:	da8080e7          	jalr	-600(ra) # 80005430 <_Z11printStringPKc>
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
    800016d8:	00004097          	auipc	ra,0x4
    800016dc:	d58080e7          	jalr	-680(ra) # 80005430 <_Z11printStringPKc>
        printInt(i);
    800016e0:	00000613          	li	a2,0
    800016e4:	00a00593          	li	a1,10
    800016e8:	00048513          	mv	a0,s1
    800016ec:	00004097          	auipc	ra,0x4
    800016f0:	ef4080e7          	jalr	-268(ra) # 800055e0 <_Z8printIntiii>
        printString("\n");
    800016f4:	00008517          	auipc	a0,0x8
    800016f8:	ecc50513          	addi	a0,a0,-308 # 800095c0 <CONSOLE_STATUS+0x5b0>
    800016fc:	00004097          	auipc	ra,0x4
    80001700:	d34080e7          	jalr	-716(ra) # 80005430 <_Z11printStringPKc>
    for (; i < 3; i++)
    80001704:	0014849b          	addiw	s1,s1,1
    80001708:	0ff4f493          	andi	s1,s1,255
    8000170c:	00200793          	li	a5,2
    80001710:	fc97f0e3          	bgeu	a5,s1,800016d0 <_Z11workerBodyCPv+0x20>
    }

    printString("C: yield\n");
    80001714:	00008517          	auipc	a0,0x8
    80001718:	92450513          	addi	a0,a0,-1756 # 80009038 <CONSOLE_STATUS+0x28>
    8000171c:	00004097          	auipc	ra,0x4
    80001720:	d14080e7          	jalr	-748(ra) # 80005430 <_Z11printStringPKc>
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
    8000173c:	00004097          	auipc	ra,0x4
    80001740:	cf4080e7          	jalr	-780(ra) # 80005430 <_Z11printStringPKc>
    printInt(t1);
    80001744:	00090513          	mv	a0,s2
    80001748:	00001097          	auipc	ra,0x1
    8000174c:	708080e7          	jalr	1800(ra) # 80002e50 <printInt>
    printString("\n");
    80001750:	00008517          	auipc	a0,0x8
    80001754:	e7050513          	addi	a0,a0,-400 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80001758:	00004097          	auipc	ra,0x4
    8000175c:	cd8080e7          	jalr	-808(ra) # 80005430 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80001760:	00c00513          	li	a0,12
    80001764:	00000097          	auipc	ra,0x0
    80001768:	d88080e7          	jalr	-632(ra) # 800014ec <_ZL9fibonaccim>
    8000176c:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    80001770:	00008517          	auipc	a0,0x8
    80001774:	8e050513          	addi	a0,a0,-1824 # 80009050 <CONSOLE_STATUS+0x40>
    80001778:	00004097          	auipc	ra,0x4
    8000177c:	cb8080e7          	jalr	-840(ra) # 80005430 <_Z11printStringPKc>
    printInt(result);
    80001780:	00090513          	mv	a0,s2
    80001784:	00001097          	auipc	ra,0x1
    80001788:	6cc080e7          	jalr	1740(ra) # 80002e50 <printInt>
    printString("\n");
    8000178c:	00008517          	auipc	a0,0x8
    80001790:	e3450513          	addi	a0,a0,-460 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80001794:	00004097          	auipc	ra,0x4
    80001798:	c9c080e7          	jalr	-868(ra) # 80005430 <_Z11printStringPKc>
    8000179c:	0400006f          	j	800017dc <_Z11workerBodyCPv+0x12c>

    for (; i < 6; i++)
    {
        printString("C: i=");
    800017a0:	00008517          	auipc	a0,0x8
    800017a4:	89050513          	addi	a0,a0,-1904 # 80009030 <CONSOLE_STATUS+0x20>
    800017a8:	00004097          	auipc	ra,0x4
    800017ac:	c88080e7          	jalr	-888(ra) # 80005430 <_Z11printStringPKc>
        printInt(i);
    800017b0:	00000613          	li	a2,0
    800017b4:	00a00593          	li	a1,10
    800017b8:	00048513          	mv	a0,s1
    800017bc:	00004097          	auipc	ra,0x4
    800017c0:	e24080e7          	jalr	-476(ra) # 800055e0 <_Z8printIntiii>
        printString("\n");
    800017c4:	00008517          	auipc	a0,0x8
    800017c8:	dfc50513          	addi	a0,a0,-516 # 800095c0 <CONSOLE_STATUS+0x5b0>
    800017cc:	00004097          	auipc	ra,0x4
    800017d0:	c64080e7          	jalr	-924(ra) # 80005430 <_Z11printStringPKc>
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
    8000182c:	00004097          	auipc	ra,0x4
    80001830:	c04080e7          	jalr	-1020(ra) # 80005430 <_Z11printStringPKc>
        printInt(i);
    80001834:	00000613          	li	a2,0
    80001838:	00a00593          	li	a1,10
    8000183c:	00048513          	mv	a0,s1
    80001840:	00004097          	auipc	ra,0x4
    80001844:	da0080e7          	jalr	-608(ra) # 800055e0 <_Z8printIntiii>
        printString("\n");
    80001848:	00008517          	auipc	a0,0x8
    8000184c:	d7850513          	addi	a0,a0,-648 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80001850:	00004097          	auipc	ra,0x4
    80001854:	be0080e7          	jalr	-1056(ra) # 80005430 <_Z11printStringPKc>
    for (; i < 13; i++)
    80001858:	0014849b          	addiw	s1,s1,1
    8000185c:	0ff4f493          	andi	s1,s1,255
    80001860:	00c00793          	li	a5,12
    80001864:	fc97f0e3          	bgeu	a5,s1,80001824 <_Z11workerBodyDPv+0x20>
    }

    printString("D: yield\n");
    80001868:	00008517          	auipc	a0,0x8
    8000186c:	80050513          	addi	a0,a0,-2048 # 80009068 <CONSOLE_STATUS+0x58>
    80001870:	00004097          	auipc	ra,0x4
    80001874:	bc0080e7          	jalr	-1088(ra) # 80005430 <_Z11printStringPKc>
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
    8000189c:	00004097          	auipc	ra,0x4
    800018a0:	b94080e7          	jalr	-1132(ra) # 80005430 <_Z11printStringPKc>
    printInt(result);
    800018a4:	00090513          	mv	a0,s2
    800018a8:	00001097          	auipc	ra,0x1
    800018ac:	5a8080e7          	jalr	1448(ra) # 80002e50 <printInt>
    printString("\n");
    800018b0:	00008517          	auipc	a0,0x8
    800018b4:	d1050513          	addi	a0,a0,-752 # 800095c0 <CONSOLE_STATUS+0x5b0>
    800018b8:	00004097          	auipc	ra,0x4
    800018bc:	b78080e7          	jalr	-1160(ra) # 80005430 <_Z11printStringPKc>
    800018c0:	0400006f          	j	80001900 <_Z11workerBodyDPv+0xfc>

    for (; i < 16; i++)
    {
        printString("D: i=");
    800018c4:	00007517          	auipc	a0,0x7
    800018c8:	79c50513          	addi	a0,a0,1948 # 80009060 <CONSOLE_STATUS+0x50>
    800018cc:	00004097          	auipc	ra,0x4
    800018d0:	b64080e7          	jalr	-1180(ra) # 80005430 <_Z11printStringPKc>
        printInt(i);
    800018d4:	00000613          	li	a2,0
    800018d8:	00a00593          	li	a1,10
    800018dc:	00048513          	mv	a0,s1
    800018e0:	00004097          	auipc	ra,0x4
    800018e4:	d00080e7          	jalr	-768(ra) # 800055e0 <_Z8printIntiii>
        printString("\n");
    800018e8:	00008517          	auipc	a0,0x8
    800018ec:	cd850513          	addi	a0,a0,-808 # 800095c0 <CONSOLE_STATUS+0x5b0>
    800018f0:	00004097          	auipc	ra,0x4
    800018f4:	b40080e7          	jalr	-1216(ra) # 80005430 <_Z11printStringPKc>
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
    80001944:	1b8080e7          	jalr	440(ra) # 80005af8 <_Z8userMainv>
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
    80001984:	f087b783          	ld	a5,-248(a5) # 8000b888 <_GLOBAL_OFFSET_TABLE_+0x10>
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
    800019a4:	f0053503          	ld	a0,-256(a0) # 8000b8a0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800019a8:	00000097          	auipc	ra,0x0
    800019ac:	1cc080e7          	jalr	460(ra) # 80001b74 <_ZN3TCB12createThreadEPFvPvES0_S0_>
    800019b0:	0000a797          	auipc	a5,0xa
    800019b4:	f007b783          	ld	a5,-256(a5) # 8000b8b0 <_GLOBAL_OFFSET_TABLE_+0x38>
    800019b8:	00a7b023          	sd	a0,0(a5)
    //(uint64 *) mem_alloc(sizeof(uint64) * DEFAULT_STACK_SIZE));
    TCB::maintcb = TCB::createThread(nullptr, nullptr, nullptr);
    800019bc:	00000613          	li	a2,0
    800019c0:	00000593          	li	a1,0
    800019c4:	00000513          	li	a0,0
    800019c8:	00000097          	auipc	ra,0x0
    800019cc:	1ac080e7          	jalr	428(ra) # 80001b74 <_ZN3TCB12createThreadEPFvPvES0_S0_>
    800019d0:	0000a797          	auipc	a5,0xa
    800019d4:	ec87b783          	ld	a5,-312(a5) # 8000b898 <_GLOBAL_OFFSET_TABLE_+0x20>
    800019d8:	00a7b023          	sd	a0,0(a5)
    TCB::running = TCB::maintcb;
    800019dc:	0000a797          	auipc	a5,0xa
    800019e0:	edc7b783          	ld	a5,-292(a5) # 8000b8b8 <_GLOBAL_OFFSET_TABLE_+0x40>
    800019e4:	00a7b023          	sd	a0,0(a5)
    changeSysRegime();
    800019e8:	00000097          	auipc	ra,0x0
    800019ec:	a28080e7          	jalr	-1496(ra) # 80001410 <changeSysRegime>

    printString("\nstart ok\n");
    800019f0:	00007517          	auipc	a0,0x7
    800019f4:	69850513          	addi	a0,a0,1688 # 80009088 <CONSOLE_STATUS+0x78>
    800019f8:	00004097          	auipc	ra,0x4
    800019fc:	a38080e7          	jalr	-1480(ra) # 80005430 <_Z11printStringPKc>

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
    80001a54:	00004097          	auipc	ra,0x4
    80001a58:	9dc080e7          	jalr	-1572(ra) # 80005430 <_Z11printStringPKc>
    sem->wait();
    80001a5c:	00090513          	mv	a0,s2
    80001a60:	00000097          	auipc	ra,0x0
    80001a64:	5d4080e7          	jalr	1492(ra) # 80002034 <_ZN9Semaphore4waitEv>

    //Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    printString("ciscenje za kraj\n");
    80001a68:	00007517          	auipc	a0,0x7
    80001a6c:	64850513          	addi	a0,a0,1608 # 800090b0 <CONSOLE_STATUS+0xa0>
    80001a70:	00004097          	auipc	ra,0x4
    80001a74:	9c0080e7          	jalr	-1600(ra) # 80005430 <_Z11printStringPKc>

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
    80001a98:	e047b783          	ld	a5,-508(a5) # 8000b898 <_GLOBAL_OFFSET_TABLE_+0x20>
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
    80001ad4:	00004097          	auipc	ra,0x4
    80001ad8:	95c080e7          	jalr	-1700(ra) # 80005430 <_Z11printStringPKc>

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
    80001b10:	f6c080e7          	jalr	-148(ra) # 8000ca78 <_Unwind_Resume>
    80001b14:	00050913          	mv	s2,a0
    Thread *userT = new Thread(userFunc, sem);
    80001b18:	00048513          	mv	a0,s1
    80001b1c:	00000097          	auipc	ra,0x0
    80001b20:	318080e7          	jalr	792(ra) # 80001e34 <_ZdlPv>
    80001b24:	00090513          	mv	a0,s2
    80001b28:	0000b097          	auipc	ra,0xb
    80001b2c:	f50080e7          	jalr	-176(ra) # 8000ca78 <_Unwind_Resume>

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
    80001b4c:	dc87b783          	ld	a5,-568(a5) # 8000b910 <_ZN3TCB7runningE>
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
    80001bf4:	d2070713          	addi	a4,a4,-736 # 8000b910 <_ZN3TCB7runningE>
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
    80001c1c:	c887b783          	ld	a5,-888(a5) # 8000b8a0 <_GLOBAL_OFFSET_TABLE_+0x28>
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
    80001c68:	e14080e7          	jalr	-492(ra) # 8000ca78 <_Unwind_Resume>
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
    80001ca8:	c6c4b483          	ld	s1,-916(s1) # 8000b910 <_ZN3TCB7runningE>
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
    80001ccc:	be87b783          	ld	a5,-1048(a5) # 8000b8b0 <_GLOBAL_OFFSET_TABLE_+0x38>
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
    80001cf8:	c1c78793          	addi	a5,a5,-996 # 8000b910 <_ZN3TCB7runningE>
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
    80001dbc:	0000a797          	auipc	a5,0xa
    80001dc0:	90478793          	addi	a5,a5,-1788 # 8000b6c0 <_ZTV9Semaphore+0x10>
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
    80001efc:	7a078793          	addi	a5,a5,1952 # 8000b698 <_ZTV6Thread+0x10>
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
    80001f2c:	77078793          	addi	a5,a5,1904 # 8000b698 <_ZTV6Thread+0x10>
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
    80001f5c:	74078793          	addi	a5,a5,1856 # 8000b698 <_ZTV6Thread+0x10>
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
    8000200c:	6b878793          	addi	a5,a5,1720 # 8000b6c0 <_ZTV9Semaphore+0x10>
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
    80002184:	7387b783          	ld	a5,1848(a5) # 8000b8b8 <_GLOBAL_OFFSET_TABLE_+0x40>
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
    80002280:	758080e7          	jalr	1880(ra) # 800089d4 <console_handler>

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
    800022a8:	564080e7          	jalr	1380(ra) # 80008808 <__mem_alloc>
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
    800022dc:	464080e7          	jalr	1124(ra) # 8000873c <__mem_free>
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
    80002354:	5687b783          	ld	a5,1384(a5) # 8000b8b8 <_GLOBAL_OFFSET_TABLE_+0x40>
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
    8000237c:	5187b783          	ld	a5,1304(a5) # 8000b890 <_GLOBAL_OFFSET_TABLE_+0x18>
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
    80002440:	560080e7          	jalr	1376(ra) # 8000899c <__getc>
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
    80002460:	504080e7          	jalr	1284(ra) # 80008960 <__putc>
                    break;
    80002464:	e55ff06f          	j	800022b8 <_ZN5Riscv20handleSupervisorTrapEv+0xfc>
                    TCB::running->sysRegime=true;
    80002468:	00009797          	auipc	a5,0x9
    8000246c:	4507b783          	ld	a5,1104(a5) # 8000b8b8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002470:	0007b783          	ld	a5,0(a5)
    80002474:	00100713          	li	a4,1
    80002478:	00e78823          	sb	a4,16(a5)
                    break;
    8000247c:	e3dff06f          	j	800022b8 <_ZN5Riscv20handleSupervisorTrapEv+0xfc>
                    printString("Prosledjen code za syscall koji nije na listi za obradu.\n");
    80002480:	00007517          	auipc	a0,0x7
    80002484:	c6050513          	addi	a0,a0,-928 # 800090e0 <CONSOLE_STATUS+0xd0>
    80002488:	00003097          	auipc	ra,0x3
    8000248c:	fa8080e7          	jalr	-88(ra) # 80005430 <_Z11printStringPKc>
                    break;
    80002490:	e29ff06f          	j	800022b8 <_ZN5Riscv20handleSupervisorTrapEv+0xfc>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80002494:	00200793          	li	a5,2
    80002498:	1447b073          	csrc	sip,a5
            TCB::timeSliceCounter++;
    8000249c:	00009717          	auipc	a4,0x9
    800024a0:	3f473703          	ld	a4,1012(a4) # 8000b890 <_GLOBAL_OFFSET_TABLE_+0x18>
    800024a4:	00073783          	ld	a5,0(a4)
    800024a8:	00178793          	addi	a5,a5,1
    800024ac:	00f73023          	sd	a5,0(a4)
            if (TCB::timeSliceCounter >= TCB::running->getTimeSlice()) {
    800024b0:	00009717          	auipc	a4,0x9
    800024b4:	40873703          	ld	a4,1032(a4) # 8000b8b8 <_GLOBAL_OFFSET_TABLE_+0x40>
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
    800024d8:	3bc7b783          	ld	a5,956(a5) # 8000b890 <_GLOBAL_OFFSET_TABLE_+0x18>
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
    80002504:	00003097          	auipc	ra,0x3
    80002508:	f2c080e7          	jalr	-212(ra) # 80005430 <_Z11printStringPKc>
            printString("scause: ");
    8000250c:	00007517          	auipc	a0,0x7
    80002510:	c2c50513          	addi	a0,a0,-980 # 80009138 <CONSOLE_STATUS+0x128>
    80002514:	00003097          	auipc	ra,0x3
    80002518:	f1c080e7          	jalr	-228(ra) # 80005430 <_Z11printStringPKc>
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
    8000253c:	00003097          	auipc	ra,0x3
    80002540:	ef4080e7          	jalr	-268(ra) # 80005430 <_Z11printStringPKc>
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
    80002564:	00003097          	auipc	ra,0x3
    80002568:	ecc080e7          	jalr	-308(ra) # 80005430 <_Z11printStringPKc>
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
    80002680:	23c7b783          	ld	a5,572(a5) # 8000b8b8 <_GLOBAL_OFFSET_TABLE_+0x40>
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
    8000282c:	00003097          	auipc	ra,0x3
    80002830:	c04080e7          	jalr	-1020(ra) # 80005430 <_Z11printStringPKc>
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
    80002848:	0ec53503          	ld	a0,236(a0) # 8000b930 <_ZN9Scheduler5firstE>
    8000284c:	02050663          	beqz	a0,80002878 <_ZN9Scheduler3getEv+0x40>
        return idle;
    }

    TCB *ret = first;

    if (first == last) {
    80002850:	00009797          	auipc	a5,0x9
    80002854:	0f07b783          	ld	a5,240(a5) # 8000b940 <_ZN9Scheduler4lastE>
    80002858:	02f50663          	beq	a0,a5,80002884 <_ZN9Scheduler3getEv+0x4c>
        first = last = nullptr;
    } else {
        first = first->next;
    8000285c:	01853783          	ld	a5,24(a0)
    80002860:	00009717          	auipc	a4,0x9
    80002864:	0cf73823          	sd	a5,208(a4) # 8000b930 <_ZN9Scheduler5firstE>
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
    8000287c:	0c053503          	ld	a0,192(a0) # 8000b938 <_ZN9Scheduler4idleE>
    80002880:	fedff06f          	j	8000286c <_ZN9Scheduler3getEv+0x34>
        first = last = nullptr;
    80002884:	00009797          	auipc	a5,0x9
    80002888:	0ac78793          	addi	a5,a5,172 # 8000b930 <_ZN9Scheduler5firstE>
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
    800028a8:	0947b783          	ld	a5,148(a5) # 8000b938 <_ZN9Scheduler4idleE>
    800028ac:	02a78663          	beq	a5,a0,800028d8 <_ZN9Scheduler3putEP3TCB+0x40>
    800028b0:	02050463          	beqz	a0,800028d8 <_ZN9Scheduler3putEP3TCB+0x40>

    tcb->next = nullptr;
    800028b4:	00053c23          	sd	zero,24(a0)
    if (first == nullptr) {
    800028b8:	00009797          	auipc	a5,0x9
    800028bc:	0787b783          	ld	a5,120(a5) # 8000b930 <_ZN9Scheduler5firstE>
    800028c0:	02078263          	beqz	a5,800028e4 <_ZN9Scheduler3putEP3TCB+0x4c>
        first = last = tcb;
    } else {
        last = last->next = tcb;
    800028c4:	00009797          	auipc	a5,0x9
    800028c8:	06c78793          	addi	a5,a5,108 # 8000b930 <_ZN9Scheduler5firstE>
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
    800028e8:	04c78793          	addi	a5,a5,76 # 8000b930 <_ZN9Scheduler5firstE>
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
    80002908:	02c7b783          	ld	a5,44(a5) # 8000b930 <_ZN9Scheduler5firstE>
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
    80002944:	ff07b783          	ld	a5,-16(a5) # 8000b930 <_ZN9Scheduler5firstE>
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
    80002968:	fcc7b783          	ld	a5,-52(a5) # 8000b930 <_ZN9Scheduler5firstE>
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
    80002988:	fac7b783          	ld	a5,-84(a5) # 8000b930 <_ZN9Scheduler5firstE>

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
    800029b8:	f7c7b783          	ld	a5,-132(a5) # 8000b930 <_ZN9Scheduler5firstE>
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
    80002a20:	f1c4b483          	ld	s1,-228(s1) # 8000b938 <_ZN9Scheduler4idleE>
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
    80002a7c:	ed05b583          	ld	a1,-304(a1) # 8000b948 <_ZN15MemoryAllocator15freeSpaceInBlksE>
    80002a80:	0ea5ee63          	bltu	a1,a0,80002b7c <_ZN15MemoryAllocator9mem_allocEm+0x118>
        //unlock
        return nullptr;
    }

    if (base == nullptr) {
    80002a84:	00009517          	auipc	a0,0x9
    80002a88:	ecc53503          	ld	a0,-308(a0) # 8000b950 <_ZN15MemoryAllocator4baseE>
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
    80002af8:	e4b7ba23          	sd	a1,-428(a5) # 8000b948 <_ZN15MemoryAllocator15freeSpaceInBlksE>

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
    80002b5c:	deb7b823          	sd	a1,-528(a5) # 8000b948 <_ZN15MemoryAllocator15freeSpaceInBlksE>
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
    80002c08:	c7c7b783          	ld	a5,-900(a5) # 8000b880 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002c0c:	0007b783          	ld	a5,0(a5)
    80002c10:	08f56463          	bltu	a0,a5,80002c98 <_ZN15MemoryAllocator8mem_freeEPv+0x9c>
    if ((char *) ptr > (char *) HEAP_END_ADDR)return -2;
    80002c14:	00009797          	auipc	a5,0x9
    80002c18:	cac7b783          	ld	a5,-852(a5) # 8000b8c0 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002c1c:	0007b783          	ld	a5,0(a5)
    80002c20:	08a7e063          	bltu	a5,a0,80002ca0 <_ZN15MemoryAllocator8mem_freeEPv+0xa4>
    MemoryBlock *curr = base;
    80002c24:	00009517          	auipc	a0,0x9
    80002c28:	d2c53503          	ld	a0,-724(a0) # 8000b950 <_ZN15MemoryAllocator4baseE>
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
    80002c64:	ce870713          	addi	a4,a4,-792 # 8000b948 <_ZN15MemoryAllocator15freeSpaceInBlksE>
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
    80002d58:	86c50513          	addi	a0,a0,-1940 # 800095c0 <CONSOLE_STATUS+0x5b0>
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
    80002d90:	bbc48493          	addi	s1,s1,-1092 # 8000b948 <_ZN15MemoryAllocator15freeSpaceInBlksE>
    80002d94:	0004b503          	ld	a0,0(s1)
    80002d98:	00000097          	auipc	ra,0x0
    80002d9c:	0b8080e7          	jalr	184(ra) # 80002e50 <printInt>
    printStr("\n");
    80002da0:	00007517          	auipc	a0,0x7
    80002da4:	82050513          	addi	a0,a0,-2016 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80002da8:	00000097          	auipc	ra,0x0
    80002dac:	080080e7          	jalr	128(ra) # 80002e28 <printStr>
    printInt((uint64) baseAddress);
    80002db0:	0104b503          	ld	a0,16(s1)
    80002db4:	00000097          	auipc	ra,0x0
    80002db8:	09c080e7          	jalr	156(ra) # 80002e50 <printInt>
    printStr("\n");
    80002dbc:	00007517          	auipc	a0,0x7
    80002dc0:	80450513          	addi	a0,a0,-2044 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80002dc4:	00000097          	auipc	ra,0x0
    80002dc8:	064080e7          	jalr	100(ra) # 80002e28 <printStr>
    printInt((uint64) base);
    80002dcc:	0084b503          	ld	a0,8(s1)
    80002dd0:	00000097          	auipc	ra,0x0
    80002dd4:	080080e7          	jalr	128(ra) # 80002e50 <printInt>
    printStr("\n");
    80002dd8:	00006517          	auipc	a0,0x6
    80002ddc:	7e850513          	addi	a0,a0,2024 # 800095c0 <CONSOLE_STATUS+0x5b0>
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
    80002e00:	7c450513          	addi	a0,a0,1988 # 800095c0 <CONSOLE_STATUS+0x5b0>
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
    80002e3c:	5f8080e7          	jalr	1528(ra) # 80005430 <_Z11printStringPKc>
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
    80002e70:	774080e7          	jalr	1908(ra) # 800055e0 <_Z8printIntiii>
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
    80003000:	400080e7          	jalr	1024(ra) # 800063fc <_ZN6Buffer3putEi>
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
    8000302c:	00009717          	auipc	a4,0x9
    80003030:	92f72a23          	sw	a5,-1740(a4) # 8000b960 <_ZL9threadEnd>
    data->buffer->put('!');
    80003034:	02100593          	li	a1,33
    80003038:	0084b503          	ld	a0,8(s1)
    8000303c:	00003097          	auipc	ra,0x3
    80003040:	3c0080e7          	jalr	960(ra) # 800063fc <_ZN6Buffer3putEi>

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
    80003094:	00009797          	auipc	a5,0x9
    80003098:	8cc7a783          	lw	a5,-1844(a5) # 8000b960 <_ZL9threadEnd>
    8000309c:	02079e63          	bnez	a5,800030d8 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    800030a0:	0004a583          	lw	a1,0(s1)
    800030a4:	0305859b          	addiw	a1,a1,48
    800030a8:	0084b503          	ld	a0,8(s1)
    800030ac:	00003097          	auipc	ra,0x3
    800030b0:	350080e7          	jalr	848(ra) # 800063fc <_ZN6Buffer3putEi>
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
    80003114:	03010413          	addi	s0,sp,48
    80003118:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000311c:	00000993          	li	s3,0
    80003120:	01c0006f          	j	8000313c <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80003124:	ffffe097          	auipc	ra,0xffffe
    80003128:	150080e7          	jalr	336(ra) # 80001274 <thread_dispatch>
    8000312c:	0500006f          	j	8000317c <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80003130:	00a00513          	li	a0,10
    80003134:	ffffe097          	auipc	ra,0xffffe
    80003138:	300080e7          	jalr	768(ra) # 80001434 <putc>
    while (!threadEnd) {
    8000313c:	00009797          	auipc	a5,0x9
    80003140:	8247a783          	lw	a5,-2012(a5) # 8000b960 <_ZL9threadEnd>
    80003144:	06079063          	bnez	a5,800031a4 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80003148:	00893503          	ld	a0,8(s2)
    8000314c:	00003097          	auipc	ra,0x3
    80003150:	340080e7          	jalr	832(ra) # 8000648c <_ZN6Buffer3getEv>
        i++;
    80003154:	0019849b          	addiw	s1,s3,1
    80003158:	0004899b          	sext.w	s3,s1
        putc(key);
    8000315c:	0ff57513          	andi	a0,a0,255
    80003160:	ffffe097          	auipc	ra,0xffffe
    80003164:	2d4080e7          	jalr	724(ra) # 80001434 <putc>
        if (i % (5 * data->id) == 0) {
    80003168:	00092703          	lw	a4,0(s2)
    8000316c:	0027179b          	slliw	a5,a4,0x2
    80003170:	00e787bb          	addw	a5,a5,a4
    80003174:	02f4e7bb          	remw	a5,s1,a5
    80003178:	fa0786e3          	beqz	a5,80003124 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    8000317c:	05000793          	li	a5,80
    80003180:	02f4e4bb          	remw	s1,s1,a5
    80003184:	fa049ce3          	bnez	s1,8000313c <_ZL8consumerPv+0x40>
    80003188:	fa9ff06f          	j	80003130 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    8000318c:	00893503          	ld	a0,8(s2)
    80003190:	00003097          	auipc	ra,0x3
    80003194:	2fc080e7          	jalr	764(ra) # 8000648c <_ZN6Buffer3getEv>
        putc(key);
    80003198:	0ff57513          	andi	a0,a0,255
    8000319c:	ffffe097          	auipc	ra,0xffffe
    800031a0:	298080e7          	jalr	664(ra) # 80001434 <putc>
    while (data->buffer->getCnt() > 0) {
    800031a4:	00893503          	ld	a0,8(s2)
    800031a8:	00003097          	auipc	ra,0x3
    800031ac:	370080e7          	jalr	880(ra) # 80006518 <_ZN6Buffer6getCntEv>
    800031b0:	fca04ee3          	bgtz	a0,8000318c <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    800031b4:	01093503          	ld	a0,16(s2)
    800031b8:	ffffe097          	auipc	ra,0xffffe
    800031bc:	20c080e7          	jalr	524(ra) # 800013c4 <sem_signal>
}
    800031c0:	02813083          	ld	ra,40(sp)
    800031c4:	02013403          	ld	s0,32(sp)
    800031c8:	01813483          	ld	s1,24(sp)
    800031cc:	01013903          	ld	s2,16(sp)
    800031d0:	00813983          	ld	s3,8(sp)
    800031d4:	03010113          	addi	sp,sp,48
    800031d8:	00008067          	ret

00000000800031dc <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    800031dc:	f9010113          	addi	sp,sp,-112
    800031e0:	06113423          	sd	ra,104(sp)
    800031e4:	06813023          	sd	s0,96(sp)
    800031e8:	04913c23          	sd	s1,88(sp)
    800031ec:	05213823          	sd	s2,80(sp)
    800031f0:	05313423          	sd	s3,72(sp)
    800031f4:	05413023          	sd	s4,64(sp)
    800031f8:	03513c23          	sd	s5,56(sp)
    800031fc:	03613823          	sd	s6,48(sp)
    80003200:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80003204:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003208:	00006517          	auipc	a0,0x6
    8000320c:	0c850513          	addi	a0,a0,200 # 800092d0 <CONSOLE_STATUS+0x2c0>
    80003210:	00002097          	auipc	ra,0x2
    80003214:	220080e7          	jalr	544(ra) # 80005430 <_Z11printStringPKc>
    getString(input, 30);
    80003218:	01e00593          	li	a1,30
    8000321c:	fa040493          	addi	s1,s0,-96
    80003220:	00048513          	mv	a0,s1
    80003224:	00002097          	auipc	ra,0x2
    80003228:	294080e7          	jalr	660(ra) # 800054b8 <_Z9getStringPci>
    threadNum = stringToInt(input);
    8000322c:	00048513          	mv	a0,s1
    80003230:	00002097          	auipc	ra,0x2
    80003234:	360080e7          	jalr	864(ra) # 80005590 <_Z11stringToIntPKc>
    80003238:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    8000323c:	00006517          	auipc	a0,0x6
    80003240:	0b450513          	addi	a0,a0,180 # 800092f0 <CONSOLE_STATUS+0x2e0>
    80003244:	00002097          	auipc	ra,0x2
    80003248:	1ec080e7          	jalr	492(ra) # 80005430 <_Z11printStringPKc>
    getString(input, 30);
    8000324c:	01e00593          	li	a1,30
    80003250:	00048513          	mv	a0,s1
    80003254:	00002097          	auipc	ra,0x2
    80003258:	264080e7          	jalr	612(ra) # 800054b8 <_Z9getStringPci>
    n = stringToInt(input);
    8000325c:	00048513          	mv	a0,s1
    80003260:	00002097          	auipc	ra,0x2
    80003264:	330080e7          	jalr	816(ra) # 80005590 <_Z11stringToIntPKc>
    80003268:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    8000326c:	00006517          	auipc	a0,0x6
    80003270:	0a450513          	addi	a0,a0,164 # 80009310 <CONSOLE_STATUS+0x300>
    80003274:	00002097          	auipc	ra,0x2
    80003278:	1bc080e7          	jalr	444(ra) # 80005430 <_Z11printStringPKc>
    8000327c:	00000613          	li	a2,0
    80003280:	00a00593          	li	a1,10
    80003284:	00090513          	mv	a0,s2
    80003288:	00002097          	auipc	ra,0x2
    8000328c:	358080e7          	jalr	856(ra) # 800055e0 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003290:	00006517          	auipc	a0,0x6
    80003294:	09850513          	addi	a0,a0,152 # 80009328 <CONSOLE_STATUS+0x318>
    80003298:	00002097          	auipc	ra,0x2
    8000329c:	198080e7          	jalr	408(ra) # 80005430 <_Z11printStringPKc>
    800032a0:	00000613          	li	a2,0
    800032a4:	00a00593          	li	a1,10
    800032a8:	00048513          	mv	a0,s1
    800032ac:	00002097          	auipc	ra,0x2
    800032b0:	334080e7          	jalr	820(ra) # 800055e0 <_Z8printIntiii>
    printString(".\n");
    800032b4:	00006517          	auipc	a0,0x6
    800032b8:	08c50513          	addi	a0,a0,140 # 80009340 <CONSOLE_STATUS+0x330>
    800032bc:	00002097          	auipc	ra,0x2
    800032c0:	174080e7          	jalr	372(ra) # 80005430 <_Z11printStringPKc>
    if(threadNum > n) {
    800032c4:	0324c463          	blt	s1,s2,800032ec <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    800032c8:	03205c63          	blez	s2,80003300 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    800032cc:	03800513          	li	a0,56
    800032d0:	fffff097          	auipc	ra,0xfffff
    800032d4:	b14080e7          	jalr	-1260(ra) # 80001de4 <_Znwm>
    800032d8:	00050a13          	mv	s4,a0
    800032dc:	00048593          	mv	a1,s1
    800032e0:	00003097          	auipc	ra,0x3
    800032e4:	080080e7          	jalr	128(ra) # 80006360 <_ZN6BufferC1Ei>
    800032e8:	0300006f          	j	80003318 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800032ec:	00006517          	auipc	a0,0x6
    800032f0:	05c50513          	addi	a0,a0,92 # 80009348 <CONSOLE_STATUS+0x338>
    800032f4:	00002097          	auipc	ra,0x2
    800032f8:	13c080e7          	jalr	316(ra) # 80005430 <_Z11printStringPKc>
        return;
    800032fc:	0140006f          	j	80003310 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003300:	00006517          	auipc	a0,0x6
    80003304:	08850513          	addi	a0,a0,136 # 80009388 <CONSOLE_STATUS+0x378>
    80003308:	00002097          	auipc	ra,0x2
    8000330c:	128080e7          	jalr	296(ra) # 80005430 <_Z11printStringPKc>
        return;
    80003310:	000b0113          	mv	sp,s6
    80003314:	1500006f          	j	80003464 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003318:	00000593          	li	a1,0
    8000331c:	00008517          	auipc	a0,0x8
    80003320:	64c50513          	addi	a0,a0,1612 # 8000b968 <_ZL10waitForAll>
    80003324:	ffffe097          	auipc	ra,0xffffe
    80003328:	fb0080e7          	jalr	-80(ra) # 800012d4 <sem_open>
    thread_t threads[threadNum];
    8000332c:	00391793          	slli	a5,s2,0x3
    80003330:	00f78793          	addi	a5,a5,15
    80003334:	ff07f793          	andi	a5,a5,-16
    80003338:	40f10133          	sub	sp,sp,a5
    8000333c:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003340:	0019071b          	addiw	a4,s2,1
    80003344:	00171793          	slli	a5,a4,0x1
    80003348:	00e787b3          	add	a5,a5,a4
    8000334c:	00379793          	slli	a5,a5,0x3
    80003350:	00f78793          	addi	a5,a5,15
    80003354:	ff07f793          	andi	a5,a5,-16
    80003358:	40f10133          	sub	sp,sp,a5
    8000335c:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003360:	00191613          	slli	a2,s2,0x1
    80003364:	012607b3          	add	a5,a2,s2
    80003368:	00379793          	slli	a5,a5,0x3
    8000336c:	00f987b3          	add	a5,s3,a5
    80003370:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003374:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003378:	00008717          	auipc	a4,0x8
    8000337c:	5f073703          	ld	a4,1520(a4) # 8000b968 <_ZL10waitForAll>
    80003380:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003384:	00078613          	mv	a2,a5
    80003388:	00000597          	auipc	a1,0x0
    8000338c:	d7458593          	addi	a1,a1,-652 # 800030fc <_ZL8consumerPv>
    80003390:	f9840513          	addi	a0,s0,-104
    80003394:	ffffe097          	auipc	ra,0xffffe
    80003398:	e40080e7          	jalr	-448(ra) # 800011d4 <thread_create>
    for (int i = 0; i < threadNum; i++) {
    8000339c:	00000493          	li	s1,0
    800033a0:	0280006f          	j	800033c8 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    800033a4:	00000597          	auipc	a1,0x0
    800033a8:	c1458593          	addi	a1,a1,-1004 # 80002fb8 <_ZL16producerKeyboardPv>
                      data + i);
    800033ac:	00179613          	slli	a2,a5,0x1
    800033b0:	00f60633          	add	a2,a2,a5
    800033b4:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    800033b8:	00c98633          	add	a2,s3,a2
    800033bc:	ffffe097          	auipc	ra,0xffffe
    800033c0:	e18080e7          	jalr	-488(ra) # 800011d4 <thread_create>
    for (int i = 0; i < threadNum; i++) {
    800033c4:	0014849b          	addiw	s1,s1,1
    800033c8:	0524d263          	bge	s1,s2,8000340c <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    800033cc:	00149793          	slli	a5,s1,0x1
    800033d0:	009787b3          	add	a5,a5,s1
    800033d4:	00379793          	slli	a5,a5,0x3
    800033d8:	00f987b3          	add	a5,s3,a5
    800033dc:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800033e0:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    800033e4:	00008717          	auipc	a4,0x8
    800033e8:	58473703          	ld	a4,1412(a4) # 8000b968 <_ZL10waitForAll>
    800033ec:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    800033f0:	00048793          	mv	a5,s1
    800033f4:	00349513          	slli	a0,s1,0x3
    800033f8:	00aa8533          	add	a0,s5,a0
    800033fc:	fa9054e3          	blez	s1,800033a4 <_Z22producerConsumer_C_APIv+0x1c8>
    80003400:	00000597          	auipc	a1,0x0
    80003404:	c6858593          	addi	a1,a1,-920 # 80003068 <_ZL8producerPv>
    80003408:	fa5ff06f          	j	800033ac <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    8000340c:	ffffe097          	auipc	ra,0xffffe
    80003410:	e68080e7          	jalr	-408(ra) # 80001274 <thread_dispatch>
    for (int i = 0; i <= threadNum; i++) {
    80003414:	00000493          	li	s1,0
    80003418:	00994e63          	blt	s2,s1,80003434 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    8000341c:	00008517          	auipc	a0,0x8
    80003420:	54c53503          	ld	a0,1356(a0) # 8000b968 <_ZL10waitForAll>
    80003424:	ffffe097          	auipc	ra,0xffffe
    80003428:	f54080e7          	jalr	-172(ra) # 80001378 <sem_wait>
    for (int i = 0; i <= threadNum; i++) {
    8000342c:	0014849b          	addiw	s1,s1,1
    80003430:	fe9ff06f          	j	80003418 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003434:	00008517          	auipc	a0,0x8
    80003438:	53453503          	ld	a0,1332(a0) # 8000b968 <_ZL10waitForAll>
    8000343c:	ffffe097          	auipc	ra,0xffffe
    80003440:	ef0080e7          	jalr	-272(ra) # 8000132c <sem_close>
    delete buffer;
    80003444:	000a0e63          	beqz	s4,80003460 <_Z22producerConsumer_C_APIv+0x284>
    80003448:	000a0513          	mv	a0,s4
    8000344c:	00003097          	auipc	ra,0x3
    80003450:	154080e7          	jalr	340(ra) # 800065a0 <_ZN6BufferD1Ev>
    80003454:	000a0513          	mv	a0,s4
    80003458:	fffff097          	auipc	ra,0xfffff
    8000345c:	9dc080e7          	jalr	-1572(ra) # 80001e34 <_ZdlPv>
    80003460:	000b0113          	mv	sp,s6

}
    80003464:	f9040113          	addi	sp,s0,-112
    80003468:	06813083          	ld	ra,104(sp)
    8000346c:	06013403          	ld	s0,96(sp)
    80003470:	05813483          	ld	s1,88(sp)
    80003474:	05013903          	ld	s2,80(sp)
    80003478:	04813983          	ld	s3,72(sp)
    8000347c:	04013a03          	ld	s4,64(sp)
    80003480:	03813a83          	ld	s5,56(sp)
    80003484:	03013b03          	ld	s6,48(sp)
    80003488:	07010113          	addi	sp,sp,112
    8000348c:	00008067          	ret
    80003490:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003494:	000a0513          	mv	a0,s4
    80003498:	fffff097          	auipc	ra,0xfffff
    8000349c:	99c080e7          	jalr	-1636(ra) # 80001e34 <_ZdlPv>
    800034a0:	00048513          	mv	a0,s1
    800034a4:	00009097          	auipc	ra,0x9
    800034a8:	5d4080e7          	jalr	1492(ra) # 8000ca78 <_Unwind_Resume>

00000000800034ac <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800034ac:	fe010113          	addi	sp,sp,-32
    800034b0:	00113c23          	sd	ra,24(sp)
    800034b4:	00813823          	sd	s0,16(sp)
    800034b8:	00913423          	sd	s1,8(sp)
    800034bc:	01213023          	sd	s2,0(sp)
    800034c0:	02010413          	addi	s0,sp,32
    800034c4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800034c8:	00100793          	li	a5,1
    800034cc:	02a7f863          	bgeu	a5,a0,800034fc <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800034d0:	00a00793          	li	a5,10
    800034d4:	02f577b3          	remu	a5,a0,a5
    800034d8:	02078e63          	beqz	a5,80003514 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800034dc:	fff48513          	addi	a0,s1,-1
    800034e0:	00000097          	auipc	ra,0x0
    800034e4:	fcc080e7          	jalr	-52(ra) # 800034ac <_ZL9fibonaccim>
    800034e8:	00050913          	mv	s2,a0
    800034ec:	ffe48513          	addi	a0,s1,-2
    800034f0:	00000097          	auipc	ra,0x0
    800034f4:	fbc080e7          	jalr	-68(ra) # 800034ac <_ZL9fibonaccim>
    800034f8:	00a90533          	add	a0,s2,a0
}
    800034fc:	01813083          	ld	ra,24(sp)
    80003500:	01013403          	ld	s0,16(sp)
    80003504:	00813483          	ld	s1,8(sp)
    80003508:	00013903          	ld	s2,0(sp)
    8000350c:	02010113          	addi	sp,sp,32
    80003510:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003514:	ffffe097          	auipc	ra,0xffffe
    80003518:	d60080e7          	jalr	-672(ra) # 80001274 <thread_dispatch>
    8000351c:	fc1ff06f          	j	800034dc <_ZL9fibonaccim+0x30>

0000000080003520 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003520:	fe010113          	addi	sp,sp,-32
    80003524:	00113c23          	sd	ra,24(sp)
    80003528:	00813823          	sd	s0,16(sp)
    8000352c:	00913423          	sd	s1,8(sp)
    80003530:	01213023          	sd	s2,0(sp)
    80003534:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003538:	00000913          	li	s2,0
    8000353c:	0380006f          	j	80003574 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003540:	ffffe097          	auipc	ra,0xffffe
    80003544:	d34080e7          	jalr	-716(ra) # 80001274 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80003548:	00148493          	addi	s1,s1,1
    8000354c:	000027b7          	lui	a5,0x2
    80003550:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003554:	0097ee63          	bltu	a5,s1,80003570 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003558:	00000713          	li	a4,0
    8000355c:	000077b7          	lui	a5,0x7
    80003560:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003564:	fce7eee3          	bltu	a5,a4,80003540 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003568:	00170713          	addi	a4,a4,1
    8000356c:	ff1ff06f          	j	8000355c <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003570:	00190913          	addi	s2,s2,1
    80003574:	00900793          	li	a5,9
    80003578:	0527e063          	bltu	a5,s2,800035b8 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8000357c:	00006517          	auipc	a0,0x6
    80003580:	aa450513          	addi	a0,a0,-1372 # 80009020 <CONSOLE_STATUS+0x10>
    80003584:	00002097          	auipc	ra,0x2
    80003588:	eac080e7          	jalr	-340(ra) # 80005430 <_Z11printStringPKc>
    8000358c:	00000613          	li	a2,0
    80003590:	00a00593          	li	a1,10
    80003594:	0009051b          	sext.w	a0,s2
    80003598:	00002097          	auipc	ra,0x2
    8000359c:	048080e7          	jalr	72(ra) # 800055e0 <_Z8printIntiii>
    800035a0:	00006517          	auipc	a0,0x6
    800035a4:	02050513          	addi	a0,a0,32 # 800095c0 <CONSOLE_STATUS+0x5b0>
    800035a8:	00002097          	auipc	ra,0x2
    800035ac:	e88080e7          	jalr	-376(ra) # 80005430 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800035b0:	00000493          	li	s1,0
    800035b4:	f99ff06f          	j	8000354c <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    800035b8:	00006517          	auipc	a0,0x6
    800035bc:	e0050513          	addi	a0,a0,-512 # 800093b8 <CONSOLE_STATUS+0x3a8>
    800035c0:	00002097          	auipc	ra,0x2
    800035c4:	e70080e7          	jalr	-400(ra) # 80005430 <_Z11printStringPKc>
    finishedA = true;
    800035c8:	00100793          	li	a5,1
    800035cc:	00008717          	auipc	a4,0x8
    800035d0:	3af70223          	sb	a5,932(a4) # 8000b970 <_ZL9finishedA>
}
    800035d4:	01813083          	ld	ra,24(sp)
    800035d8:	01013403          	ld	s0,16(sp)
    800035dc:	00813483          	ld	s1,8(sp)
    800035e0:	00013903          	ld	s2,0(sp)
    800035e4:	02010113          	addi	sp,sp,32
    800035e8:	00008067          	ret

00000000800035ec <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    800035ec:	fe010113          	addi	sp,sp,-32
    800035f0:	00113c23          	sd	ra,24(sp)
    800035f4:	00813823          	sd	s0,16(sp)
    800035f8:	00913423          	sd	s1,8(sp)
    800035fc:	01213023          	sd	s2,0(sp)
    80003600:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003604:	00000913          	li	s2,0
    80003608:	0380006f          	j	80003640 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    8000360c:	ffffe097          	auipc	ra,0xffffe
    80003610:	c68080e7          	jalr	-920(ra) # 80001274 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80003614:	00148493          	addi	s1,s1,1
    80003618:	000027b7          	lui	a5,0x2
    8000361c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003620:	0097ee63          	bltu	a5,s1,8000363c <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003624:	00000713          	li	a4,0
    80003628:	000077b7          	lui	a5,0x7
    8000362c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003630:	fce7eee3          	bltu	a5,a4,8000360c <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003634:	00170713          	addi	a4,a4,1
    80003638:	ff1ff06f          	j	80003628 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    8000363c:	00190913          	addi	s2,s2,1
    80003640:	00f00793          	li	a5,15
    80003644:	0527e063          	bltu	a5,s2,80003684 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003648:	00006517          	auipc	a0,0x6
    8000364c:	9e050513          	addi	a0,a0,-1568 # 80009028 <CONSOLE_STATUS+0x18>
    80003650:	00002097          	auipc	ra,0x2
    80003654:	de0080e7          	jalr	-544(ra) # 80005430 <_Z11printStringPKc>
    80003658:	00000613          	li	a2,0
    8000365c:	00a00593          	li	a1,10
    80003660:	0009051b          	sext.w	a0,s2
    80003664:	00002097          	auipc	ra,0x2
    80003668:	f7c080e7          	jalr	-132(ra) # 800055e0 <_Z8printIntiii>
    8000366c:	00006517          	auipc	a0,0x6
    80003670:	f5450513          	addi	a0,a0,-172 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80003674:	00002097          	auipc	ra,0x2
    80003678:	dbc080e7          	jalr	-580(ra) # 80005430 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000367c:	00000493          	li	s1,0
    80003680:	f99ff06f          	j	80003618 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003684:	00006517          	auipc	a0,0x6
    80003688:	d4450513          	addi	a0,a0,-700 # 800093c8 <CONSOLE_STATUS+0x3b8>
    8000368c:	00002097          	auipc	ra,0x2
    80003690:	da4080e7          	jalr	-604(ra) # 80005430 <_Z11printStringPKc>
    finishedB = true;
    80003694:	00100793          	li	a5,1
    80003698:	00008717          	auipc	a4,0x8
    8000369c:	2cf70ca3          	sb	a5,729(a4) # 8000b971 <_ZL9finishedB>
    thread_dispatch();
    800036a0:	ffffe097          	auipc	ra,0xffffe
    800036a4:	bd4080e7          	jalr	-1068(ra) # 80001274 <thread_dispatch>
}
    800036a8:	01813083          	ld	ra,24(sp)
    800036ac:	01013403          	ld	s0,16(sp)
    800036b0:	00813483          	ld	s1,8(sp)
    800036b4:	00013903          	ld	s2,0(sp)
    800036b8:	02010113          	addi	sp,sp,32
    800036bc:	00008067          	ret

00000000800036c0 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    800036c0:	fe010113          	addi	sp,sp,-32
    800036c4:	00113c23          	sd	ra,24(sp)
    800036c8:	00813823          	sd	s0,16(sp)
    800036cc:	00913423          	sd	s1,8(sp)
    800036d0:	01213023          	sd	s2,0(sp)
    800036d4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800036d8:	00000493          	li	s1,0
    800036dc:	0400006f          	j	8000371c <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800036e0:	00006517          	auipc	a0,0x6
    800036e4:	95050513          	addi	a0,a0,-1712 # 80009030 <CONSOLE_STATUS+0x20>
    800036e8:	00002097          	auipc	ra,0x2
    800036ec:	d48080e7          	jalr	-696(ra) # 80005430 <_Z11printStringPKc>
    800036f0:	00000613          	li	a2,0
    800036f4:	00a00593          	li	a1,10
    800036f8:	00048513          	mv	a0,s1
    800036fc:	00002097          	auipc	ra,0x2
    80003700:	ee4080e7          	jalr	-284(ra) # 800055e0 <_Z8printIntiii>
    80003704:	00006517          	auipc	a0,0x6
    80003708:	ebc50513          	addi	a0,a0,-324 # 800095c0 <CONSOLE_STATUS+0x5b0>
    8000370c:	00002097          	auipc	ra,0x2
    80003710:	d24080e7          	jalr	-732(ra) # 80005430 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003714:	0014849b          	addiw	s1,s1,1
    80003718:	0ff4f493          	andi	s1,s1,255
    8000371c:	00200793          	li	a5,2
    80003720:	fc97f0e3          	bgeu	a5,s1,800036e0 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003724:	00006517          	auipc	a0,0x6
    80003728:	cb450513          	addi	a0,a0,-844 # 800093d8 <CONSOLE_STATUS+0x3c8>
    8000372c:	00002097          	auipc	ra,0x2
    80003730:	d04080e7          	jalr	-764(ra) # 80005430 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003734:	00700313          	li	t1,7
    thread_dispatch();
    80003738:	ffffe097          	auipc	ra,0xffffe
    8000373c:	b3c080e7          	jalr	-1220(ra) # 80001274 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003740:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003744:	00006517          	auipc	a0,0x6
    80003748:	90450513          	addi	a0,a0,-1788 # 80009048 <CONSOLE_STATUS+0x38>
    8000374c:	00002097          	auipc	ra,0x2
    80003750:	ce4080e7          	jalr	-796(ra) # 80005430 <_Z11printStringPKc>
    80003754:	00000613          	li	a2,0
    80003758:	00a00593          	li	a1,10
    8000375c:	0009051b          	sext.w	a0,s2
    80003760:	00002097          	auipc	ra,0x2
    80003764:	e80080e7          	jalr	-384(ra) # 800055e0 <_Z8printIntiii>
    80003768:	00006517          	auipc	a0,0x6
    8000376c:	e5850513          	addi	a0,a0,-424 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80003770:	00002097          	auipc	ra,0x2
    80003774:	cc0080e7          	jalr	-832(ra) # 80005430 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003778:	00c00513          	li	a0,12
    8000377c:	00000097          	auipc	ra,0x0
    80003780:	d30080e7          	jalr	-720(ra) # 800034ac <_ZL9fibonaccim>
    80003784:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003788:	00006517          	auipc	a0,0x6
    8000378c:	8c850513          	addi	a0,a0,-1848 # 80009050 <CONSOLE_STATUS+0x40>
    80003790:	00002097          	auipc	ra,0x2
    80003794:	ca0080e7          	jalr	-864(ra) # 80005430 <_Z11printStringPKc>
    80003798:	00000613          	li	a2,0
    8000379c:	00a00593          	li	a1,10
    800037a0:	0009051b          	sext.w	a0,s2
    800037a4:	00002097          	auipc	ra,0x2
    800037a8:	e3c080e7          	jalr	-452(ra) # 800055e0 <_Z8printIntiii>
    800037ac:	00006517          	auipc	a0,0x6
    800037b0:	e1450513          	addi	a0,a0,-492 # 800095c0 <CONSOLE_STATUS+0x5b0>
    800037b4:	00002097          	auipc	ra,0x2
    800037b8:	c7c080e7          	jalr	-900(ra) # 80005430 <_Z11printStringPKc>
    800037bc:	0400006f          	j	800037fc <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800037c0:	00006517          	auipc	a0,0x6
    800037c4:	87050513          	addi	a0,a0,-1936 # 80009030 <CONSOLE_STATUS+0x20>
    800037c8:	00002097          	auipc	ra,0x2
    800037cc:	c68080e7          	jalr	-920(ra) # 80005430 <_Z11printStringPKc>
    800037d0:	00000613          	li	a2,0
    800037d4:	00a00593          	li	a1,10
    800037d8:	00048513          	mv	a0,s1
    800037dc:	00002097          	auipc	ra,0x2
    800037e0:	e04080e7          	jalr	-508(ra) # 800055e0 <_Z8printIntiii>
    800037e4:	00006517          	auipc	a0,0x6
    800037e8:	ddc50513          	addi	a0,a0,-548 # 800095c0 <CONSOLE_STATUS+0x5b0>
    800037ec:	00002097          	auipc	ra,0x2
    800037f0:	c44080e7          	jalr	-956(ra) # 80005430 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800037f4:	0014849b          	addiw	s1,s1,1
    800037f8:	0ff4f493          	andi	s1,s1,255
    800037fc:	00500793          	li	a5,5
    80003800:	fc97f0e3          	bgeu	a5,s1,800037c0 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80003804:	00006517          	auipc	a0,0x6
    80003808:	bb450513          	addi	a0,a0,-1100 # 800093b8 <CONSOLE_STATUS+0x3a8>
    8000380c:	00002097          	auipc	ra,0x2
    80003810:	c24080e7          	jalr	-988(ra) # 80005430 <_Z11printStringPKc>
    finishedC = true;
    80003814:	00100793          	li	a5,1
    80003818:	00008717          	auipc	a4,0x8
    8000381c:	14f70d23          	sb	a5,346(a4) # 8000b972 <_ZL9finishedC>
    thread_dispatch();
    80003820:	ffffe097          	auipc	ra,0xffffe
    80003824:	a54080e7          	jalr	-1452(ra) # 80001274 <thread_dispatch>
}
    80003828:	01813083          	ld	ra,24(sp)
    8000382c:	01013403          	ld	s0,16(sp)
    80003830:	00813483          	ld	s1,8(sp)
    80003834:	00013903          	ld	s2,0(sp)
    80003838:	02010113          	addi	sp,sp,32
    8000383c:	00008067          	ret

0000000080003840 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003840:	fe010113          	addi	sp,sp,-32
    80003844:	00113c23          	sd	ra,24(sp)
    80003848:	00813823          	sd	s0,16(sp)
    8000384c:	00913423          	sd	s1,8(sp)
    80003850:	01213023          	sd	s2,0(sp)
    80003854:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003858:	00a00493          	li	s1,10
    8000385c:	0400006f          	j	8000389c <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003860:	00006517          	auipc	a0,0x6
    80003864:	80050513          	addi	a0,a0,-2048 # 80009060 <CONSOLE_STATUS+0x50>
    80003868:	00002097          	auipc	ra,0x2
    8000386c:	bc8080e7          	jalr	-1080(ra) # 80005430 <_Z11printStringPKc>
    80003870:	00000613          	li	a2,0
    80003874:	00a00593          	li	a1,10
    80003878:	00048513          	mv	a0,s1
    8000387c:	00002097          	auipc	ra,0x2
    80003880:	d64080e7          	jalr	-668(ra) # 800055e0 <_Z8printIntiii>
    80003884:	00006517          	auipc	a0,0x6
    80003888:	d3c50513          	addi	a0,a0,-708 # 800095c0 <CONSOLE_STATUS+0x5b0>
    8000388c:	00002097          	auipc	ra,0x2
    80003890:	ba4080e7          	jalr	-1116(ra) # 80005430 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003894:	0014849b          	addiw	s1,s1,1
    80003898:	0ff4f493          	andi	s1,s1,255
    8000389c:	00c00793          	li	a5,12
    800038a0:	fc97f0e3          	bgeu	a5,s1,80003860 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    800038a4:	00006517          	auipc	a0,0x6
    800038a8:	b4450513          	addi	a0,a0,-1212 # 800093e8 <CONSOLE_STATUS+0x3d8>
    800038ac:	00002097          	auipc	ra,0x2
    800038b0:	b84080e7          	jalr	-1148(ra) # 80005430 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800038b4:	00500313          	li	t1,5
    thread_dispatch();
    800038b8:	ffffe097          	auipc	ra,0xffffe
    800038bc:	9bc080e7          	jalr	-1604(ra) # 80001274 <thread_dispatch>

    uint64 result = fibonacci(16);
    800038c0:	01000513          	li	a0,16
    800038c4:	00000097          	auipc	ra,0x0
    800038c8:	be8080e7          	jalr	-1048(ra) # 800034ac <_ZL9fibonaccim>
    800038cc:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800038d0:	00005517          	auipc	a0,0x5
    800038d4:	7a850513          	addi	a0,a0,1960 # 80009078 <CONSOLE_STATUS+0x68>
    800038d8:	00002097          	auipc	ra,0x2
    800038dc:	b58080e7          	jalr	-1192(ra) # 80005430 <_Z11printStringPKc>
    800038e0:	00000613          	li	a2,0
    800038e4:	00a00593          	li	a1,10
    800038e8:	0009051b          	sext.w	a0,s2
    800038ec:	00002097          	auipc	ra,0x2
    800038f0:	cf4080e7          	jalr	-780(ra) # 800055e0 <_Z8printIntiii>
    800038f4:	00006517          	auipc	a0,0x6
    800038f8:	ccc50513          	addi	a0,a0,-820 # 800095c0 <CONSOLE_STATUS+0x5b0>
    800038fc:	00002097          	auipc	ra,0x2
    80003900:	b34080e7          	jalr	-1228(ra) # 80005430 <_Z11printStringPKc>
    80003904:	0400006f          	j	80003944 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003908:	00005517          	auipc	a0,0x5
    8000390c:	75850513          	addi	a0,a0,1880 # 80009060 <CONSOLE_STATUS+0x50>
    80003910:	00002097          	auipc	ra,0x2
    80003914:	b20080e7          	jalr	-1248(ra) # 80005430 <_Z11printStringPKc>
    80003918:	00000613          	li	a2,0
    8000391c:	00a00593          	li	a1,10
    80003920:	00048513          	mv	a0,s1
    80003924:	00002097          	auipc	ra,0x2
    80003928:	cbc080e7          	jalr	-836(ra) # 800055e0 <_Z8printIntiii>
    8000392c:	00006517          	auipc	a0,0x6
    80003930:	c9450513          	addi	a0,a0,-876 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80003934:	00002097          	auipc	ra,0x2
    80003938:	afc080e7          	jalr	-1284(ra) # 80005430 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000393c:	0014849b          	addiw	s1,s1,1
    80003940:	0ff4f493          	andi	s1,s1,255
    80003944:	00f00793          	li	a5,15
    80003948:	fc97f0e3          	bgeu	a5,s1,80003908 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    8000394c:	00006517          	auipc	a0,0x6
    80003950:	aac50513          	addi	a0,a0,-1364 # 800093f8 <CONSOLE_STATUS+0x3e8>
    80003954:	00002097          	auipc	ra,0x2
    80003958:	adc080e7          	jalr	-1316(ra) # 80005430 <_Z11printStringPKc>
    finishedD = true;
    8000395c:	00100793          	li	a5,1
    80003960:	00008717          	auipc	a4,0x8
    80003964:	00f709a3          	sb	a5,19(a4) # 8000b973 <_ZL9finishedD>
    thread_dispatch();
    80003968:	ffffe097          	auipc	ra,0xffffe
    8000396c:	90c080e7          	jalr	-1780(ra) # 80001274 <thread_dispatch>
}
    80003970:	01813083          	ld	ra,24(sp)
    80003974:	01013403          	ld	s0,16(sp)
    80003978:	00813483          	ld	s1,8(sp)
    8000397c:	00013903          	ld	s2,0(sp)
    80003980:	02010113          	addi	sp,sp,32
    80003984:	00008067          	ret

0000000080003988 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003988:	fc010113          	addi	sp,sp,-64
    8000398c:	02113c23          	sd	ra,56(sp)
    80003990:	02813823          	sd	s0,48(sp)
    80003994:	02913423          	sd	s1,40(sp)
    80003998:	03213023          	sd	s2,32(sp)
    8000399c:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    800039a0:	02000513          	li	a0,32
    800039a4:	ffffe097          	auipc	ra,0xffffe
    800039a8:	440080e7          	jalr	1088(ra) # 80001de4 <_Znwm>
    800039ac:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    800039b0:	ffffe097          	auipc	ra,0xffffe
    800039b4:	53c080e7          	jalr	1340(ra) # 80001eec <_ZN6ThreadC1Ev>
    800039b8:	00008797          	auipc	a5,0x8
    800039bc:	d2878793          	addi	a5,a5,-728 # 8000b6e0 <_ZTV7WorkerA+0x10>
    800039c0:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    800039c4:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    800039c8:	00006517          	auipc	a0,0x6
    800039cc:	a4050513          	addi	a0,a0,-1472 # 80009408 <CONSOLE_STATUS+0x3f8>
    800039d0:	00002097          	auipc	ra,0x2
    800039d4:	a60080e7          	jalr	-1440(ra) # 80005430 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    800039d8:	02000513          	li	a0,32
    800039dc:	ffffe097          	auipc	ra,0xffffe
    800039e0:	408080e7          	jalr	1032(ra) # 80001de4 <_Znwm>
    800039e4:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    800039e8:	ffffe097          	auipc	ra,0xffffe
    800039ec:	504080e7          	jalr	1284(ra) # 80001eec <_ZN6ThreadC1Ev>
    800039f0:	00008797          	auipc	a5,0x8
    800039f4:	d1878793          	addi	a5,a5,-744 # 8000b708 <_ZTV7WorkerB+0x10>
    800039f8:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    800039fc:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003a00:	00006517          	auipc	a0,0x6
    80003a04:	a2050513          	addi	a0,a0,-1504 # 80009420 <CONSOLE_STATUS+0x410>
    80003a08:	00002097          	auipc	ra,0x2
    80003a0c:	a28080e7          	jalr	-1496(ra) # 80005430 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003a10:	02000513          	li	a0,32
    80003a14:	ffffe097          	auipc	ra,0xffffe
    80003a18:	3d0080e7          	jalr	976(ra) # 80001de4 <_Znwm>
    80003a1c:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003a20:	ffffe097          	auipc	ra,0xffffe
    80003a24:	4cc080e7          	jalr	1228(ra) # 80001eec <_ZN6ThreadC1Ev>
    80003a28:	00008797          	auipc	a5,0x8
    80003a2c:	d0878793          	addi	a5,a5,-760 # 8000b730 <_ZTV7WorkerC+0x10>
    80003a30:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003a34:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003a38:	00006517          	auipc	a0,0x6
    80003a3c:	a0050513          	addi	a0,a0,-1536 # 80009438 <CONSOLE_STATUS+0x428>
    80003a40:	00002097          	auipc	ra,0x2
    80003a44:	9f0080e7          	jalr	-1552(ra) # 80005430 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003a48:	02000513          	li	a0,32
    80003a4c:	ffffe097          	auipc	ra,0xffffe
    80003a50:	398080e7          	jalr	920(ra) # 80001de4 <_Znwm>
    80003a54:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003a58:	ffffe097          	auipc	ra,0xffffe
    80003a5c:	494080e7          	jalr	1172(ra) # 80001eec <_ZN6ThreadC1Ev>
    80003a60:	00008797          	auipc	a5,0x8
    80003a64:	cf878793          	addi	a5,a5,-776 # 8000b758 <_ZTV7WorkerD+0x10>
    80003a68:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80003a6c:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003a70:	00006517          	auipc	a0,0x6
    80003a74:	9e050513          	addi	a0,a0,-1568 # 80009450 <CONSOLE_STATUS+0x440>
    80003a78:	00002097          	auipc	ra,0x2
    80003a7c:	9b8080e7          	jalr	-1608(ra) # 80005430 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003a80:	00000493          	li	s1,0
    80003a84:	00300793          	li	a5,3
    80003a88:	0297c663          	blt	a5,s1,80003ab4 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003a8c:	00349793          	slli	a5,s1,0x3
    80003a90:	fe040713          	addi	a4,s0,-32
    80003a94:	00f707b3          	add	a5,a4,a5
    80003a98:	fe07b503          	ld	a0,-32(a5)
    80003a9c:	ffffe097          	auipc	ra,0xffffe
    80003aa0:	4e0080e7          	jalr	1248(ra) # 80001f7c <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003aa4:	0014849b          	addiw	s1,s1,1
    80003aa8:	fddff06f          	j	80003a84 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80003aac:	ffffe097          	auipc	ra,0xffffe
    80003ab0:	524080e7          	jalr	1316(ra) # 80001fd0 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003ab4:	00008797          	auipc	a5,0x8
    80003ab8:	ebc7c783          	lbu	a5,-324(a5) # 8000b970 <_ZL9finishedA>
    80003abc:	fe0788e3          	beqz	a5,80003aac <_Z20Threads_CPP_API_testv+0x124>
    80003ac0:	00008797          	auipc	a5,0x8
    80003ac4:	eb17c783          	lbu	a5,-335(a5) # 8000b971 <_ZL9finishedB>
    80003ac8:	fe0782e3          	beqz	a5,80003aac <_Z20Threads_CPP_API_testv+0x124>
    80003acc:	00008797          	auipc	a5,0x8
    80003ad0:	ea67c783          	lbu	a5,-346(a5) # 8000b972 <_ZL9finishedC>
    80003ad4:	fc078ce3          	beqz	a5,80003aac <_Z20Threads_CPP_API_testv+0x124>
    80003ad8:	00008797          	auipc	a5,0x8
    80003adc:	e9b7c783          	lbu	a5,-357(a5) # 8000b973 <_ZL9finishedD>
    80003ae0:	fc0786e3          	beqz	a5,80003aac <_Z20Threads_CPP_API_testv+0x124>
    80003ae4:	fc040493          	addi	s1,s0,-64
    80003ae8:	0080006f          	j	80003af0 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80003aec:	00848493          	addi	s1,s1,8
    80003af0:	fe040793          	addi	a5,s0,-32
    80003af4:	08f48663          	beq	s1,a5,80003b80 <_Z20Threads_CPP_API_testv+0x1f8>
    80003af8:	0004b503          	ld	a0,0(s1)
    80003afc:	fe0508e3          	beqz	a0,80003aec <_Z20Threads_CPP_API_testv+0x164>
    80003b00:	00053783          	ld	a5,0(a0)
    80003b04:	0087b783          	ld	a5,8(a5)
    80003b08:	000780e7          	jalr	a5
    80003b0c:	fe1ff06f          	j	80003aec <_Z20Threads_CPP_API_testv+0x164>
    80003b10:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80003b14:	00048513          	mv	a0,s1
    80003b18:	ffffe097          	auipc	ra,0xffffe
    80003b1c:	31c080e7          	jalr	796(ra) # 80001e34 <_ZdlPv>
    80003b20:	00090513          	mv	a0,s2
    80003b24:	00009097          	auipc	ra,0x9
    80003b28:	f54080e7          	jalr	-172(ra) # 8000ca78 <_Unwind_Resume>
    80003b2c:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003b30:	00048513          	mv	a0,s1
    80003b34:	ffffe097          	auipc	ra,0xffffe
    80003b38:	300080e7          	jalr	768(ra) # 80001e34 <_ZdlPv>
    80003b3c:	00090513          	mv	a0,s2
    80003b40:	00009097          	auipc	ra,0x9
    80003b44:	f38080e7          	jalr	-200(ra) # 8000ca78 <_Unwind_Resume>
    80003b48:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80003b4c:	00048513          	mv	a0,s1
    80003b50:	ffffe097          	auipc	ra,0xffffe
    80003b54:	2e4080e7          	jalr	740(ra) # 80001e34 <_ZdlPv>
    80003b58:	00090513          	mv	a0,s2
    80003b5c:	00009097          	auipc	ra,0x9
    80003b60:	f1c080e7          	jalr	-228(ra) # 8000ca78 <_Unwind_Resume>
    80003b64:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003b68:	00048513          	mv	a0,s1
    80003b6c:	ffffe097          	auipc	ra,0xffffe
    80003b70:	2c8080e7          	jalr	712(ra) # 80001e34 <_ZdlPv>
    80003b74:	00090513          	mv	a0,s2
    80003b78:	00009097          	auipc	ra,0x9
    80003b7c:	f00080e7          	jalr	-256(ra) # 8000ca78 <_Unwind_Resume>
}
    80003b80:	03813083          	ld	ra,56(sp)
    80003b84:	03013403          	ld	s0,48(sp)
    80003b88:	02813483          	ld	s1,40(sp)
    80003b8c:	02013903          	ld	s2,32(sp)
    80003b90:	04010113          	addi	sp,sp,64
    80003b94:	00008067          	ret

0000000080003b98 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003b98:	ff010113          	addi	sp,sp,-16
    80003b9c:	00113423          	sd	ra,8(sp)
    80003ba0:	00813023          	sd	s0,0(sp)
    80003ba4:	01010413          	addi	s0,sp,16
    80003ba8:	00008797          	auipc	a5,0x8
    80003bac:	b3878793          	addi	a5,a5,-1224 # 8000b6e0 <_ZTV7WorkerA+0x10>
    80003bb0:	00f53023          	sd	a5,0(a0)
    80003bb4:	ffffe097          	auipc	ra,0xffffe
    80003bb8:	1b4080e7          	jalr	436(ra) # 80001d68 <_ZN6ThreadD1Ev>
    80003bbc:	00813083          	ld	ra,8(sp)
    80003bc0:	00013403          	ld	s0,0(sp)
    80003bc4:	01010113          	addi	sp,sp,16
    80003bc8:	00008067          	ret

0000000080003bcc <_ZN7WorkerAD0Ev>:
    80003bcc:	fe010113          	addi	sp,sp,-32
    80003bd0:	00113c23          	sd	ra,24(sp)
    80003bd4:	00813823          	sd	s0,16(sp)
    80003bd8:	00913423          	sd	s1,8(sp)
    80003bdc:	02010413          	addi	s0,sp,32
    80003be0:	00050493          	mv	s1,a0
    80003be4:	00008797          	auipc	a5,0x8
    80003be8:	afc78793          	addi	a5,a5,-1284 # 8000b6e0 <_ZTV7WorkerA+0x10>
    80003bec:	00f53023          	sd	a5,0(a0)
    80003bf0:	ffffe097          	auipc	ra,0xffffe
    80003bf4:	178080e7          	jalr	376(ra) # 80001d68 <_ZN6ThreadD1Ev>
    80003bf8:	00048513          	mv	a0,s1
    80003bfc:	ffffe097          	auipc	ra,0xffffe
    80003c00:	238080e7          	jalr	568(ra) # 80001e34 <_ZdlPv>
    80003c04:	01813083          	ld	ra,24(sp)
    80003c08:	01013403          	ld	s0,16(sp)
    80003c0c:	00813483          	ld	s1,8(sp)
    80003c10:	02010113          	addi	sp,sp,32
    80003c14:	00008067          	ret

0000000080003c18 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003c18:	ff010113          	addi	sp,sp,-16
    80003c1c:	00113423          	sd	ra,8(sp)
    80003c20:	00813023          	sd	s0,0(sp)
    80003c24:	01010413          	addi	s0,sp,16
    80003c28:	00008797          	auipc	a5,0x8
    80003c2c:	ae078793          	addi	a5,a5,-1312 # 8000b708 <_ZTV7WorkerB+0x10>
    80003c30:	00f53023          	sd	a5,0(a0)
    80003c34:	ffffe097          	auipc	ra,0xffffe
    80003c38:	134080e7          	jalr	308(ra) # 80001d68 <_ZN6ThreadD1Ev>
    80003c3c:	00813083          	ld	ra,8(sp)
    80003c40:	00013403          	ld	s0,0(sp)
    80003c44:	01010113          	addi	sp,sp,16
    80003c48:	00008067          	ret

0000000080003c4c <_ZN7WorkerBD0Ev>:
    80003c4c:	fe010113          	addi	sp,sp,-32
    80003c50:	00113c23          	sd	ra,24(sp)
    80003c54:	00813823          	sd	s0,16(sp)
    80003c58:	00913423          	sd	s1,8(sp)
    80003c5c:	02010413          	addi	s0,sp,32
    80003c60:	00050493          	mv	s1,a0
    80003c64:	00008797          	auipc	a5,0x8
    80003c68:	aa478793          	addi	a5,a5,-1372 # 8000b708 <_ZTV7WorkerB+0x10>
    80003c6c:	00f53023          	sd	a5,0(a0)
    80003c70:	ffffe097          	auipc	ra,0xffffe
    80003c74:	0f8080e7          	jalr	248(ra) # 80001d68 <_ZN6ThreadD1Ev>
    80003c78:	00048513          	mv	a0,s1
    80003c7c:	ffffe097          	auipc	ra,0xffffe
    80003c80:	1b8080e7          	jalr	440(ra) # 80001e34 <_ZdlPv>
    80003c84:	01813083          	ld	ra,24(sp)
    80003c88:	01013403          	ld	s0,16(sp)
    80003c8c:	00813483          	ld	s1,8(sp)
    80003c90:	02010113          	addi	sp,sp,32
    80003c94:	00008067          	ret

0000000080003c98 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003c98:	ff010113          	addi	sp,sp,-16
    80003c9c:	00113423          	sd	ra,8(sp)
    80003ca0:	00813023          	sd	s0,0(sp)
    80003ca4:	01010413          	addi	s0,sp,16
    80003ca8:	00008797          	auipc	a5,0x8
    80003cac:	a8878793          	addi	a5,a5,-1400 # 8000b730 <_ZTV7WorkerC+0x10>
    80003cb0:	00f53023          	sd	a5,0(a0)
    80003cb4:	ffffe097          	auipc	ra,0xffffe
    80003cb8:	0b4080e7          	jalr	180(ra) # 80001d68 <_ZN6ThreadD1Ev>
    80003cbc:	00813083          	ld	ra,8(sp)
    80003cc0:	00013403          	ld	s0,0(sp)
    80003cc4:	01010113          	addi	sp,sp,16
    80003cc8:	00008067          	ret

0000000080003ccc <_ZN7WorkerCD0Ev>:
    80003ccc:	fe010113          	addi	sp,sp,-32
    80003cd0:	00113c23          	sd	ra,24(sp)
    80003cd4:	00813823          	sd	s0,16(sp)
    80003cd8:	00913423          	sd	s1,8(sp)
    80003cdc:	02010413          	addi	s0,sp,32
    80003ce0:	00050493          	mv	s1,a0
    80003ce4:	00008797          	auipc	a5,0x8
    80003ce8:	a4c78793          	addi	a5,a5,-1460 # 8000b730 <_ZTV7WorkerC+0x10>
    80003cec:	00f53023          	sd	a5,0(a0)
    80003cf0:	ffffe097          	auipc	ra,0xffffe
    80003cf4:	078080e7          	jalr	120(ra) # 80001d68 <_ZN6ThreadD1Ev>
    80003cf8:	00048513          	mv	a0,s1
    80003cfc:	ffffe097          	auipc	ra,0xffffe
    80003d00:	138080e7          	jalr	312(ra) # 80001e34 <_ZdlPv>
    80003d04:	01813083          	ld	ra,24(sp)
    80003d08:	01013403          	ld	s0,16(sp)
    80003d0c:	00813483          	ld	s1,8(sp)
    80003d10:	02010113          	addi	sp,sp,32
    80003d14:	00008067          	ret

0000000080003d18 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80003d18:	ff010113          	addi	sp,sp,-16
    80003d1c:	00113423          	sd	ra,8(sp)
    80003d20:	00813023          	sd	s0,0(sp)
    80003d24:	01010413          	addi	s0,sp,16
    80003d28:	00008797          	auipc	a5,0x8
    80003d2c:	a3078793          	addi	a5,a5,-1488 # 8000b758 <_ZTV7WorkerD+0x10>
    80003d30:	00f53023          	sd	a5,0(a0)
    80003d34:	ffffe097          	auipc	ra,0xffffe
    80003d38:	034080e7          	jalr	52(ra) # 80001d68 <_ZN6ThreadD1Ev>
    80003d3c:	00813083          	ld	ra,8(sp)
    80003d40:	00013403          	ld	s0,0(sp)
    80003d44:	01010113          	addi	sp,sp,16
    80003d48:	00008067          	ret

0000000080003d4c <_ZN7WorkerDD0Ev>:
    80003d4c:	fe010113          	addi	sp,sp,-32
    80003d50:	00113c23          	sd	ra,24(sp)
    80003d54:	00813823          	sd	s0,16(sp)
    80003d58:	00913423          	sd	s1,8(sp)
    80003d5c:	02010413          	addi	s0,sp,32
    80003d60:	00050493          	mv	s1,a0
    80003d64:	00008797          	auipc	a5,0x8
    80003d68:	9f478793          	addi	a5,a5,-1548 # 8000b758 <_ZTV7WorkerD+0x10>
    80003d6c:	00f53023          	sd	a5,0(a0)
    80003d70:	ffffe097          	auipc	ra,0xffffe
    80003d74:	ff8080e7          	jalr	-8(ra) # 80001d68 <_ZN6ThreadD1Ev>
    80003d78:	00048513          	mv	a0,s1
    80003d7c:	ffffe097          	auipc	ra,0xffffe
    80003d80:	0b8080e7          	jalr	184(ra) # 80001e34 <_ZdlPv>
    80003d84:	01813083          	ld	ra,24(sp)
    80003d88:	01013403          	ld	s0,16(sp)
    80003d8c:	00813483          	ld	s1,8(sp)
    80003d90:	02010113          	addi	sp,sp,32
    80003d94:	00008067          	ret

0000000080003d98 <_ZN7WorkerA3runEv>:
    void run() override {
    80003d98:	ff010113          	addi	sp,sp,-16
    80003d9c:	00113423          	sd	ra,8(sp)
    80003da0:	00813023          	sd	s0,0(sp)
    80003da4:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80003da8:	00000593          	li	a1,0
    80003dac:	fffff097          	auipc	ra,0xfffff
    80003db0:	774080e7          	jalr	1908(ra) # 80003520 <_ZN7WorkerA11workerBodyAEPv>
    }
    80003db4:	00813083          	ld	ra,8(sp)
    80003db8:	00013403          	ld	s0,0(sp)
    80003dbc:	01010113          	addi	sp,sp,16
    80003dc0:	00008067          	ret

0000000080003dc4 <_ZN7WorkerB3runEv>:
    void run() override {
    80003dc4:	ff010113          	addi	sp,sp,-16
    80003dc8:	00113423          	sd	ra,8(sp)
    80003dcc:	00813023          	sd	s0,0(sp)
    80003dd0:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80003dd4:	00000593          	li	a1,0
    80003dd8:	00000097          	auipc	ra,0x0
    80003ddc:	814080e7          	jalr	-2028(ra) # 800035ec <_ZN7WorkerB11workerBodyBEPv>
    }
    80003de0:	00813083          	ld	ra,8(sp)
    80003de4:	00013403          	ld	s0,0(sp)
    80003de8:	01010113          	addi	sp,sp,16
    80003dec:	00008067          	ret

0000000080003df0 <_ZN7WorkerC3runEv>:
    void run() override {
    80003df0:	ff010113          	addi	sp,sp,-16
    80003df4:	00113423          	sd	ra,8(sp)
    80003df8:	00813023          	sd	s0,0(sp)
    80003dfc:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80003e00:	00000593          	li	a1,0
    80003e04:	00000097          	auipc	ra,0x0
    80003e08:	8bc080e7          	jalr	-1860(ra) # 800036c0 <_ZN7WorkerC11workerBodyCEPv>
    }
    80003e0c:	00813083          	ld	ra,8(sp)
    80003e10:	00013403          	ld	s0,0(sp)
    80003e14:	01010113          	addi	sp,sp,16
    80003e18:	00008067          	ret

0000000080003e1c <_ZN7WorkerD3runEv>:
    void run() override {
    80003e1c:	ff010113          	addi	sp,sp,-16
    80003e20:	00113423          	sd	ra,8(sp)
    80003e24:	00813023          	sd	s0,0(sp)
    80003e28:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80003e2c:	00000593          	li	a1,0
    80003e30:	00000097          	auipc	ra,0x0
    80003e34:	a10080e7          	jalr	-1520(ra) # 80003840 <_ZN7WorkerD11workerBodyDEPv>
    }
    80003e38:	00813083          	ld	ra,8(sp)
    80003e3c:	00013403          	ld	s0,0(sp)
    80003e40:	01010113          	addi	sp,sp,16
    80003e44:	00008067          	ret

0000000080003e48 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80003e48:	f8010113          	addi	sp,sp,-128
    80003e4c:	06113c23          	sd	ra,120(sp)
    80003e50:	06813823          	sd	s0,112(sp)
    80003e54:	06913423          	sd	s1,104(sp)
    80003e58:	07213023          	sd	s2,96(sp)
    80003e5c:	05313c23          	sd	s3,88(sp)
    80003e60:	05413823          	sd	s4,80(sp)
    80003e64:	05513423          	sd	s5,72(sp)
    80003e68:	05613023          	sd	s6,64(sp)
    80003e6c:	03713c23          	sd	s7,56(sp)
    80003e70:	03813823          	sd	s8,48(sp)
    80003e74:	03913423          	sd	s9,40(sp)
    80003e78:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80003e7c:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80003e80:	00005517          	auipc	a0,0x5
    80003e84:	45050513          	addi	a0,a0,1104 # 800092d0 <CONSOLE_STATUS+0x2c0>
    80003e88:	00001097          	auipc	ra,0x1
    80003e8c:	5a8080e7          	jalr	1448(ra) # 80005430 <_Z11printStringPKc>
    getString(input, 30);
    80003e90:	01e00593          	li	a1,30
    80003e94:	f8040493          	addi	s1,s0,-128
    80003e98:	00048513          	mv	a0,s1
    80003e9c:	00001097          	auipc	ra,0x1
    80003ea0:	61c080e7          	jalr	1564(ra) # 800054b8 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003ea4:	00048513          	mv	a0,s1
    80003ea8:	00001097          	auipc	ra,0x1
    80003eac:	6e8080e7          	jalr	1768(ra) # 80005590 <_Z11stringToIntPKc>
    80003eb0:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80003eb4:	00005517          	auipc	a0,0x5
    80003eb8:	43c50513          	addi	a0,a0,1084 # 800092f0 <CONSOLE_STATUS+0x2e0>
    80003ebc:	00001097          	auipc	ra,0x1
    80003ec0:	574080e7          	jalr	1396(ra) # 80005430 <_Z11printStringPKc>
    getString(input, 30);
    80003ec4:	01e00593          	li	a1,30
    80003ec8:	00048513          	mv	a0,s1
    80003ecc:	00001097          	auipc	ra,0x1
    80003ed0:	5ec080e7          	jalr	1516(ra) # 800054b8 <_Z9getStringPci>
    n = stringToInt(input);
    80003ed4:	00048513          	mv	a0,s1
    80003ed8:	00001097          	auipc	ra,0x1
    80003edc:	6b8080e7          	jalr	1720(ra) # 80005590 <_Z11stringToIntPKc>
    80003ee0:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80003ee4:	00005517          	auipc	a0,0x5
    80003ee8:	42c50513          	addi	a0,a0,1068 # 80009310 <CONSOLE_STATUS+0x300>
    80003eec:	00001097          	auipc	ra,0x1
    80003ef0:	544080e7          	jalr	1348(ra) # 80005430 <_Z11printStringPKc>
    printInt(threadNum);
    80003ef4:	00000613          	li	a2,0
    80003ef8:	00a00593          	li	a1,10
    80003efc:	00098513          	mv	a0,s3
    80003f00:	00001097          	auipc	ra,0x1
    80003f04:	6e0080e7          	jalr	1760(ra) # 800055e0 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80003f08:	00005517          	auipc	a0,0x5
    80003f0c:	42050513          	addi	a0,a0,1056 # 80009328 <CONSOLE_STATUS+0x318>
    80003f10:	00001097          	auipc	ra,0x1
    80003f14:	520080e7          	jalr	1312(ra) # 80005430 <_Z11printStringPKc>
    printInt(n);
    80003f18:	00000613          	li	a2,0
    80003f1c:	00a00593          	li	a1,10
    80003f20:	00048513          	mv	a0,s1
    80003f24:	00001097          	auipc	ra,0x1
    80003f28:	6bc080e7          	jalr	1724(ra) # 800055e0 <_Z8printIntiii>
    printString(".\n");
    80003f2c:	00005517          	auipc	a0,0x5
    80003f30:	41450513          	addi	a0,a0,1044 # 80009340 <CONSOLE_STATUS+0x330>
    80003f34:	00001097          	auipc	ra,0x1
    80003f38:	4fc080e7          	jalr	1276(ra) # 80005430 <_Z11printStringPKc>
    if (threadNum > n) {
    80003f3c:	0334c463          	blt	s1,s3,80003f64 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80003f40:	03305c63          	blez	s3,80003f78 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80003f44:	03800513          	li	a0,56
    80003f48:	ffffe097          	auipc	ra,0xffffe
    80003f4c:	e9c080e7          	jalr	-356(ra) # 80001de4 <_Znwm>
    80003f50:	00050a93          	mv	s5,a0
    80003f54:	00048593          	mv	a1,s1
    80003f58:	00001097          	auipc	ra,0x1
    80003f5c:	7a8080e7          	jalr	1960(ra) # 80005700 <_ZN9BufferCPPC1Ei>
    80003f60:	0300006f          	j	80003f90 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003f64:	00005517          	auipc	a0,0x5
    80003f68:	3e450513          	addi	a0,a0,996 # 80009348 <CONSOLE_STATUS+0x338>
    80003f6c:	00001097          	auipc	ra,0x1
    80003f70:	4c4080e7          	jalr	1220(ra) # 80005430 <_Z11printStringPKc>
        return;
    80003f74:	0140006f          	j	80003f88 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003f78:	00005517          	auipc	a0,0x5
    80003f7c:	41050513          	addi	a0,a0,1040 # 80009388 <CONSOLE_STATUS+0x378>
    80003f80:	00001097          	auipc	ra,0x1
    80003f84:	4b0080e7          	jalr	1200(ra) # 80005430 <_Z11printStringPKc>
        return;
    80003f88:	000c0113          	mv	sp,s8
    80003f8c:	2140006f          	j	800041a0 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80003f90:	01800513          	li	a0,24
    80003f94:	ffffe097          	auipc	ra,0xffffe
    80003f98:	e50080e7          	jalr	-432(ra) # 80001de4 <_Znwm>
    80003f9c:	00050913          	mv	s2,a0
    80003fa0:	00000593          	li	a1,0
    80003fa4:	ffffe097          	auipc	ra,0xffffe
    80003fa8:	054080e7          	jalr	84(ra) # 80001ff8 <_ZN9SemaphoreC1Ej>
    80003fac:	00008797          	auipc	a5,0x8
    80003fb0:	9d27ba23          	sd	s2,-1580(a5) # 8000b980 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80003fb4:	00399793          	slli	a5,s3,0x3
    80003fb8:	00f78793          	addi	a5,a5,15
    80003fbc:	ff07f793          	andi	a5,a5,-16
    80003fc0:	40f10133          	sub	sp,sp,a5
    80003fc4:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80003fc8:	0019871b          	addiw	a4,s3,1
    80003fcc:	00171793          	slli	a5,a4,0x1
    80003fd0:	00e787b3          	add	a5,a5,a4
    80003fd4:	00379793          	slli	a5,a5,0x3
    80003fd8:	00f78793          	addi	a5,a5,15
    80003fdc:	ff07f793          	andi	a5,a5,-16
    80003fe0:	40f10133          	sub	sp,sp,a5
    80003fe4:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80003fe8:	00199493          	slli	s1,s3,0x1
    80003fec:	013484b3          	add	s1,s1,s3
    80003ff0:	00349493          	slli	s1,s1,0x3
    80003ff4:	009b04b3          	add	s1,s6,s1
    80003ff8:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80003ffc:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80004000:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004004:	02800513          	li	a0,40
    80004008:	ffffe097          	auipc	ra,0xffffe
    8000400c:	ddc080e7          	jalr	-548(ra) # 80001de4 <_Znwm>
    80004010:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80004014:	ffffe097          	auipc	ra,0xffffe
    80004018:	ed8080e7          	jalr	-296(ra) # 80001eec <_ZN6ThreadC1Ev>
    8000401c:	00007797          	auipc	a5,0x7
    80004020:	7b478793          	addi	a5,a5,1972 # 8000b7d0 <_ZTV8Consumer+0x10>
    80004024:	00fbb023          	sd	a5,0(s7)
    80004028:	029bb023          	sd	s1,32(s7)
    consumer->start();
    8000402c:	000b8513          	mv	a0,s7
    80004030:	ffffe097          	auipc	ra,0xffffe
    80004034:	f4c080e7          	jalr	-180(ra) # 80001f7c <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80004038:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    8000403c:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80004040:	00008797          	auipc	a5,0x8
    80004044:	9407b783          	ld	a5,-1728(a5) # 8000b980 <_ZL10waitForAll>
    80004048:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    8000404c:	02800513          	li	a0,40
    80004050:	ffffe097          	auipc	ra,0xffffe
    80004054:	d94080e7          	jalr	-620(ra) # 80001de4 <_Znwm>
    80004058:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    8000405c:	ffffe097          	auipc	ra,0xffffe
    80004060:	e90080e7          	jalr	-368(ra) # 80001eec <_ZN6ThreadC1Ev>
    80004064:	00007797          	auipc	a5,0x7
    80004068:	71c78793          	addi	a5,a5,1820 # 8000b780 <_ZTV16ProducerKeyborad+0x10>
    8000406c:	00f4b023          	sd	a5,0(s1)
    80004070:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004074:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80004078:	00048513          	mv	a0,s1
    8000407c:	ffffe097          	auipc	ra,0xffffe
    80004080:	f00080e7          	jalr	-256(ra) # 80001f7c <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004084:	00100913          	li	s2,1
    80004088:	0300006f          	j	800040b8 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    8000408c:	00007797          	auipc	a5,0x7
    80004090:	71c78793          	addi	a5,a5,1820 # 8000b7a8 <_ZTV8Producer+0x10>
    80004094:	00fcb023          	sd	a5,0(s9)
    80004098:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    8000409c:	00391793          	slli	a5,s2,0x3
    800040a0:	00fa07b3          	add	a5,s4,a5
    800040a4:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    800040a8:	000c8513          	mv	a0,s9
    800040ac:	ffffe097          	auipc	ra,0xffffe
    800040b0:	ed0080e7          	jalr	-304(ra) # 80001f7c <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800040b4:	0019091b          	addiw	s2,s2,1
    800040b8:	05395263          	bge	s2,s3,800040fc <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    800040bc:	00191493          	slli	s1,s2,0x1
    800040c0:	012484b3          	add	s1,s1,s2
    800040c4:	00349493          	slli	s1,s1,0x3
    800040c8:	009b04b3          	add	s1,s6,s1
    800040cc:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    800040d0:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    800040d4:	00008797          	auipc	a5,0x8
    800040d8:	8ac7b783          	ld	a5,-1876(a5) # 8000b980 <_ZL10waitForAll>
    800040dc:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    800040e0:	02800513          	li	a0,40
    800040e4:	ffffe097          	auipc	ra,0xffffe
    800040e8:	d00080e7          	jalr	-768(ra) # 80001de4 <_Znwm>
    800040ec:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800040f0:	ffffe097          	auipc	ra,0xffffe
    800040f4:	dfc080e7          	jalr	-516(ra) # 80001eec <_ZN6ThreadC1Ev>
    800040f8:	f95ff06f          	j	8000408c <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    800040fc:	ffffe097          	auipc	ra,0xffffe
    80004100:	ed4080e7          	jalr	-300(ra) # 80001fd0 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004104:	00000493          	li	s1,0
    80004108:	0099ce63          	blt	s3,s1,80004124 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    8000410c:	00008517          	auipc	a0,0x8
    80004110:	87453503          	ld	a0,-1932(a0) # 8000b980 <_ZL10waitForAll>
    80004114:	ffffe097          	auipc	ra,0xffffe
    80004118:	f20080e7          	jalr	-224(ra) # 80002034 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    8000411c:	0014849b          	addiw	s1,s1,1
    80004120:	fe9ff06f          	j	80004108 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80004124:	00008517          	auipc	a0,0x8
    80004128:	85c53503          	ld	a0,-1956(a0) # 8000b980 <_ZL10waitForAll>
    8000412c:	00050863          	beqz	a0,8000413c <_Z20testConsumerProducerv+0x2f4>
    80004130:	00053783          	ld	a5,0(a0)
    80004134:	0087b783          	ld	a5,8(a5)
    80004138:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    8000413c:	00000493          	li	s1,0
    80004140:	0080006f          	j	80004148 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80004144:	0014849b          	addiw	s1,s1,1
    80004148:	0334d263          	bge	s1,s3,8000416c <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    8000414c:	00349793          	slli	a5,s1,0x3
    80004150:	00fa07b3          	add	a5,s4,a5
    80004154:	0007b503          	ld	a0,0(a5)
    80004158:	fe0506e3          	beqz	a0,80004144 <_Z20testConsumerProducerv+0x2fc>
    8000415c:	00053783          	ld	a5,0(a0)
    80004160:	0087b783          	ld	a5,8(a5)
    80004164:	000780e7          	jalr	a5
    80004168:	fddff06f          	j	80004144 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    8000416c:	000b8a63          	beqz	s7,80004180 <_Z20testConsumerProducerv+0x338>
    80004170:	000bb783          	ld	a5,0(s7)
    80004174:	0087b783          	ld	a5,8(a5)
    80004178:	000b8513          	mv	a0,s7
    8000417c:	000780e7          	jalr	a5
    delete buffer;
    80004180:	000a8e63          	beqz	s5,8000419c <_Z20testConsumerProducerv+0x354>
    80004184:	000a8513          	mv	a0,s5
    80004188:	00002097          	auipc	ra,0x2
    8000418c:	870080e7          	jalr	-1936(ra) # 800059f8 <_ZN9BufferCPPD1Ev>
    80004190:	000a8513          	mv	a0,s5
    80004194:	ffffe097          	auipc	ra,0xffffe
    80004198:	ca0080e7          	jalr	-864(ra) # 80001e34 <_ZdlPv>
    8000419c:	000c0113          	mv	sp,s8
}
    800041a0:	f8040113          	addi	sp,s0,-128
    800041a4:	07813083          	ld	ra,120(sp)
    800041a8:	07013403          	ld	s0,112(sp)
    800041ac:	06813483          	ld	s1,104(sp)
    800041b0:	06013903          	ld	s2,96(sp)
    800041b4:	05813983          	ld	s3,88(sp)
    800041b8:	05013a03          	ld	s4,80(sp)
    800041bc:	04813a83          	ld	s5,72(sp)
    800041c0:	04013b03          	ld	s6,64(sp)
    800041c4:	03813b83          	ld	s7,56(sp)
    800041c8:	03013c03          	ld	s8,48(sp)
    800041cc:	02813c83          	ld	s9,40(sp)
    800041d0:	08010113          	addi	sp,sp,128
    800041d4:	00008067          	ret
    800041d8:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800041dc:	000a8513          	mv	a0,s5
    800041e0:	ffffe097          	auipc	ra,0xffffe
    800041e4:	c54080e7          	jalr	-940(ra) # 80001e34 <_ZdlPv>
    800041e8:	00048513          	mv	a0,s1
    800041ec:	00009097          	auipc	ra,0x9
    800041f0:	88c080e7          	jalr	-1908(ra) # 8000ca78 <_Unwind_Resume>
    800041f4:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    800041f8:	00090513          	mv	a0,s2
    800041fc:	ffffe097          	auipc	ra,0xffffe
    80004200:	c38080e7          	jalr	-968(ra) # 80001e34 <_ZdlPv>
    80004204:	00048513          	mv	a0,s1
    80004208:	00009097          	auipc	ra,0x9
    8000420c:	870080e7          	jalr	-1936(ra) # 8000ca78 <_Unwind_Resume>
    80004210:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004214:	000b8513          	mv	a0,s7
    80004218:	ffffe097          	auipc	ra,0xffffe
    8000421c:	c1c080e7          	jalr	-996(ra) # 80001e34 <_ZdlPv>
    80004220:	00048513          	mv	a0,s1
    80004224:	00009097          	auipc	ra,0x9
    80004228:	854080e7          	jalr	-1964(ra) # 8000ca78 <_Unwind_Resume>
    8000422c:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004230:	00048513          	mv	a0,s1
    80004234:	ffffe097          	auipc	ra,0xffffe
    80004238:	c00080e7          	jalr	-1024(ra) # 80001e34 <_ZdlPv>
    8000423c:	00090513          	mv	a0,s2
    80004240:	00009097          	auipc	ra,0x9
    80004244:	838080e7          	jalr	-1992(ra) # 8000ca78 <_Unwind_Resume>
    80004248:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    8000424c:	000c8513          	mv	a0,s9
    80004250:	ffffe097          	auipc	ra,0xffffe
    80004254:	be4080e7          	jalr	-1052(ra) # 80001e34 <_ZdlPv>
    80004258:	00048513          	mv	a0,s1
    8000425c:	00009097          	auipc	ra,0x9
    80004260:	81c080e7          	jalr	-2020(ra) # 8000ca78 <_Unwind_Resume>

0000000080004264 <_ZN8Consumer3runEv>:
    void run() override {
    80004264:	fd010113          	addi	sp,sp,-48
    80004268:	02113423          	sd	ra,40(sp)
    8000426c:	02813023          	sd	s0,32(sp)
    80004270:	00913c23          	sd	s1,24(sp)
    80004274:	01213823          	sd	s2,16(sp)
    80004278:	01313423          	sd	s3,8(sp)
    8000427c:	03010413          	addi	s0,sp,48
    80004280:	00050913          	mv	s2,a0
        int i = 0;
    80004284:	00000993          	li	s3,0
    80004288:	0100006f          	j	80004298 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    8000428c:	00a00513          	li	a0,10
    80004290:	ffffe097          	auipc	ra,0xffffe
    80004294:	ea4080e7          	jalr	-348(ra) # 80002134 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80004298:	00007797          	auipc	a5,0x7
    8000429c:	6e07a783          	lw	a5,1760(a5) # 8000b978 <_ZL9threadEnd>
    800042a0:	04079a63          	bnez	a5,800042f4 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    800042a4:	02093783          	ld	a5,32(s2)
    800042a8:	0087b503          	ld	a0,8(a5)
    800042ac:	00001097          	auipc	ra,0x1
    800042b0:	638080e7          	jalr	1592(ra) # 800058e4 <_ZN9BufferCPP3getEv>
            i++;
    800042b4:	0019849b          	addiw	s1,s3,1
    800042b8:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    800042bc:	0ff57513          	andi	a0,a0,255
    800042c0:	ffffe097          	auipc	ra,0xffffe
    800042c4:	e74080e7          	jalr	-396(ra) # 80002134 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    800042c8:	05000793          	li	a5,80
    800042cc:	02f4e4bb          	remw	s1,s1,a5
    800042d0:	fc0494e3          	bnez	s1,80004298 <_ZN8Consumer3runEv+0x34>
    800042d4:	fb9ff06f          	j	8000428c <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    800042d8:	02093783          	ld	a5,32(s2)
    800042dc:	0087b503          	ld	a0,8(a5)
    800042e0:	00001097          	auipc	ra,0x1
    800042e4:	604080e7          	jalr	1540(ra) # 800058e4 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    800042e8:	0ff57513          	andi	a0,a0,255
    800042ec:	ffffe097          	auipc	ra,0xffffe
    800042f0:	e48080e7          	jalr	-440(ra) # 80002134 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    800042f4:	02093783          	ld	a5,32(s2)
    800042f8:	0087b503          	ld	a0,8(a5)
    800042fc:	00001097          	auipc	ra,0x1
    80004300:	674080e7          	jalr	1652(ra) # 80005970 <_ZN9BufferCPP6getCntEv>
    80004304:	fca04ae3          	bgtz	a0,800042d8 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004308:	02093783          	ld	a5,32(s2)
    8000430c:	0107b503          	ld	a0,16(a5)
    80004310:	ffffe097          	auipc	ra,0xffffe
    80004314:	d50080e7          	jalr	-688(ra) # 80002060 <_ZN9Semaphore6signalEv>
    }
    80004318:	02813083          	ld	ra,40(sp)
    8000431c:	02013403          	ld	s0,32(sp)
    80004320:	01813483          	ld	s1,24(sp)
    80004324:	01013903          	ld	s2,16(sp)
    80004328:	00813983          	ld	s3,8(sp)
    8000432c:	03010113          	addi	sp,sp,48
    80004330:	00008067          	ret

0000000080004334 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004334:	ff010113          	addi	sp,sp,-16
    80004338:	00113423          	sd	ra,8(sp)
    8000433c:	00813023          	sd	s0,0(sp)
    80004340:	01010413          	addi	s0,sp,16
    80004344:	00007797          	auipc	a5,0x7
    80004348:	48c78793          	addi	a5,a5,1164 # 8000b7d0 <_ZTV8Consumer+0x10>
    8000434c:	00f53023          	sd	a5,0(a0)
    80004350:	ffffe097          	auipc	ra,0xffffe
    80004354:	a18080e7          	jalr	-1512(ra) # 80001d68 <_ZN6ThreadD1Ev>
    80004358:	00813083          	ld	ra,8(sp)
    8000435c:	00013403          	ld	s0,0(sp)
    80004360:	01010113          	addi	sp,sp,16
    80004364:	00008067          	ret

0000000080004368 <_ZN8ConsumerD0Ev>:
    80004368:	fe010113          	addi	sp,sp,-32
    8000436c:	00113c23          	sd	ra,24(sp)
    80004370:	00813823          	sd	s0,16(sp)
    80004374:	00913423          	sd	s1,8(sp)
    80004378:	02010413          	addi	s0,sp,32
    8000437c:	00050493          	mv	s1,a0
    80004380:	00007797          	auipc	a5,0x7
    80004384:	45078793          	addi	a5,a5,1104 # 8000b7d0 <_ZTV8Consumer+0x10>
    80004388:	00f53023          	sd	a5,0(a0)
    8000438c:	ffffe097          	auipc	ra,0xffffe
    80004390:	9dc080e7          	jalr	-1572(ra) # 80001d68 <_ZN6ThreadD1Ev>
    80004394:	00048513          	mv	a0,s1
    80004398:	ffffe097          	auipc	ra,0xffffe
    8000439c:	a9c080e7          	jalr	-1380(ra) # 80001e34 <_ZdlPv>
    800043a0:	01813083          	ld	ra,24(sp)
    800043a4:	01013403          	ld	s0,16(sp)
    800043a8:	00813483          	ld	s1,8(sp)
    800043ac:	02010113          	addi	sp,sp,32
    800043b0:	00008067          	ret

00000000800043b4 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    800043b4:	ff010113          	addi	sp,sp,-16
    800043b8:	00113423          	sd	ra,8(sp)
    800043bc:	00813023          	sd	s0,0(sp)
    800043c0:	01010413          	addi	s0,sp,16
    800043c4:	00007797          	auipc	a5,0x7
    800043c8:	3bc78793          	addi	a5,a5,956 # 8000b780 <_ZTV16ProducerKeyborad+0x10>
    800043cc:	00f53023          	sd	a5,0(a0)
    800043d0:	ffffe097          	auipc	ra,0xffffe
    800043d4:	998080e7          	jalr	-1640(ra) # 80001d68 <_ZN6ThreadD1Ev>
    800043d8:	00813083          	ld	ra,8(sp)
    800043dc:	00013403          	ld	s0,0(sp)
    800043e0:	01010113          	addi	sp,sp,16
    800043e4:	00008067          	ret

00000000800043e8 <_ZN16ProducerKeyboradD0Ev>:
    800043e8:	fe010113          	addi	sp,sp,-32
    800043ec:	00113c23          	sd	ra,24(sp)
    800043f0:	00813823          	sd	s0,16(sp)
    800043f4:	00913423          	sd	s1,8(sp)
    800043f8:	02010413          	addi	s0,sp,32
    800043fc:	00050493          	mv	s1,a0
    80004400:	00007797          	auipc	a5,0x7
    80004404:	38078793          	addi	a5,a5,896 # 8000b780 <_ZTV16ProducerKeyborad+0x10>
    80004408:	00f53023          	sd	a5,0(a0)
    8000440c:	ffffe097          	auipc	ra,0xffffe
    80004410:	95c080e7          	jalr	-1700(ra) # 80001d68 <_ZN6ThreadD1Ev>
    80004414:	00048513          	mv	a0,s1
    80004418:	ffffe097          	auipc	ra,0xffffe
    8000441c:	a1c080e7          	jalr	-1508(ra) # 80001e34 <_ZdlPv>
    80004420:	01813083          	ld	ra,24(sp)
    80004424:	01013403          	ld	s0,16(sp)
    80004428:	00813483          	ld	s1,8(sp)
    8000442c:	02010113          	addi	sp,sp,32
    80004430:	00008067          	ret

0000000080004434 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004434:	ff010113          	addi	sp,sp,-16
    80004438:	00113423          	sd	ra,8(sp)
    8000443c:	00813023          	sd	s0,0(sp)
    80004440:	01010413          	addi	s0,sp,16
    80004444:	00007797          	auipc	a5,0x7
    80004448:	36478793          	addi	a5,a5,868 # 8000b7a8 <_ZTV8Producer+0x10>
    8000444c:	00f53023          	sd	a5,0(a0)
    80004450:	ffffe097          	auipc	ra,0xffffe
    80004454:	918080e7          	jalr	-1768(ra) # 80001d68 <_ZN6ThreadD1Ev>
    80004458:	00813083          	ld	ra,8(sp)
    8000445c:	00013403          	ld	s0,0(sp)
    80004460:	01010113          	addi	sp,sp,16
    80004464:	00008067          	ret

0000000080004468 <_ZN8ProducerD0Ev>:
    80004468:	fe010113          	addi	sp,sp,-32
    8000446c:	00113c23          	sd	ra,24(sp)
    80004470:	00813823          	sd	s0,16(sp)
    80004474:	00913423          	sd	s1,8(sp)
    80004478:	02010413          	addi	s0,sp,32
    8000447c:	00050493          	mv	s1,a0
    80004480:	00007797          	auipc	a5,0x7
    80004484:	32878793          	addi	a5,a5,808 # 8000b7a8 <_ZTV8Producer+0x10>
    80004488:	00f53023          	sd	a5,0(a0)
    8000448c:	ffffe097          	auipc	ra,0xffffe
    80004490:	8dc080e7          	jalr	-1828(ra) # 80001d68 <_ZN6ThreadD1Ev>
    80004494:	00048513          	mv	a0,s1
    80004498:	ffffe097          	auipc	ra,0xffffe
    8000449c:	99c080e7          	jalr	-1636(ra) # 80001e34 <_ZdlPv>
    800044a0:	01813083          	ld	ra,24(sp)
    800044a4:	01013403          	ld	s0,16(sp)
    800044a8:	00813483          	ld	s1,8(sp)
    800044ac:	02010113          	addi	sp,sp,32
    800044b0:	00008067          	ret

00000000800044b4 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    800044b4:	fe010113          	addi	sp,sp,-32
    800044b8:	00113c23          	sd	ra,24(sp)
    800044bc:	00813823          	sd	s0,16(sp)
    800044c0:	00913423          	sd	s1,8(sp)
    800044c4:	02010413          	addi	s0,sp,32
    800044c8:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x30) {
    800044cc:	ffffd097          	auipc	ra,0xffffd
    800044d0:	f90080e7          	jalr	-112(ra) # 8000145c <getc>
    800044d4:	0005059b          	sext.w	a1,a0
    800044d8:	03000793          	li	a5,48
    800044dc:	00f58c63          	beq	a1,a5,800044f4 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    800044e0:	0204b783          	ld	a5,32(s1)
    800044e4:	0087b503          	ld	a0,8(a5)
    800044e8:	00001097          	auipc	ra,0x1
    800044ec:	36c080e7          	jalr	876(ra) # 80005854 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x30) {
    800044f0:	fddff06f          	j	800044cc <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    800044f4:	00100793          	li	a5,1
    800044f8:	00007717          	auipc	a4,0x7
    800044fc:	48f72023          	sw	a5,1152(a4) # 8000b978 <_ZL9threadEnd>
        td->buffer->put('!');
    80004500:	0204b783          	ld	a5,32(s1)
    80004504:	02100593          	li	a1,33
    80004508:	0087b503          	ld	a0,8(a5)
    8000450c:	00001097          	auipc	ra,0x1
    80004510:	348080e7          	jalr	840(ra) # 80005854 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004514:	0204b783          	ld	a5,32(s1)
    80004518:	0107b503          	ld	a0,16(a5)
    8000451c:	ffffe097          	auipc	ra,0xffffe
    80004520:	b44080e7          	jalr	-1212(ra) # 80002060 <_ZN9Semaphore6signalEv>
    }
    80004524:	01813083          	ld	ra,24(sp)
    80004528:	01013403          	ld	s0,16(sp)
    8000452c:	00813483          	ld	s1,8(sp)
    80004530:	02010113          	addi	sp,sp,32
    80004534:	00008067          	ret

0000000080004538 <_ZN8Producer3runEv>:
    void run() override {
    80004538:	fe010113          	addi	sp,sp,-32
    8000453c:	00113c23          	sd	ra,24(sp)
    80004540:	00813823          	sd	s0,16(sp)
    80004544:	00913423          	sd	s1,8(sp)
    80004548:	01213023          	sd	s2,0(sp)
    8000454c:	02010413          	addi	s0,sp,32
    80004550:	00050493          	mv	s1,a0
        int i = 0;
    80004554:	00000913          	li	s2,0
        while (!threadEnd) {
    80004558:	00007797          	auipc	a5,0x7
    8000455c:	4207a783          	lw	a5,1056(a5) # 8000b978 <_ZL9threadEnd>
    80004560:	04079263          	bnez	a5,800045a4 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004564:	0204b783          	ld	a5,32(s1)
    80004568:	0007a583          	lw	a1,0(a5)
    8000456c:	0305859b          	addiw	a1,a1,48
    80004570:	0087b503          	ld	a0,8(a5)
    80004574:	00001097          	auipc	ra,0x1
    80004578:	2e0080e7          	jalr	736(ra) # 80005854 <_ZN9BufferCPP3putEi>
            i++;
    8000457c:	0019071b          	addiw	a4,s2,1
    80004580:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004584:	0204b783          	ld	a5,32(s1)
    80004588:	0007a783          	lw	a5,0(a5)
    8000458c:	00e787bb          	addw	a5,a5,a4
    80004590:	00500513          	li	a0,5
    80004594:	02a7e53b          	remw	a0,a5,a0
    80004598:	ffffe097          	auipc	ra,0xffffe
    8000459c:	af4080e7          	jalr	-1292(ra) # 8000208c <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    800045a0:	fb9ff06f          	j	80004558 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    800045a4:	0204b783          	ld	a5,32(s1)
    800045a8:	0107b503          	ld	a0,16(a5)
    800045ac:	ffffe097          	auipc	ra,0xffffe
    800045b0:	ab4080e7          	jalr	-1356(ra) # 80002060 <_ZN9Semaphore6signalEv>
    }
    800045b4:	01813083          	ld	ra,24(sp)
    800045b8:	01013403          	ld	s0,16(sp)
    800045bc:	00813483          	ld	s1,8(sp)
    800045c0:	00013903          	ld	s2,0(sp)
    800045c4:	02010113          	addi	sp,sp,32
    800045c8:	00008067          	ret

00000000800045cc <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800045cc:	fe010113          	addi	sp,sp,-32
    800045d0:	00113c23          	sd	ra,24(sp)
    800045d4:	00813823          	sd	s0,16(sp)
    800045d8:	00913423          	sd	s1,8(sp)
    800045dc:	01213023          	sd	s2,0(sp)
    800045e0:	02010413          	addi	s0,sp,32
    800045e4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800045e8:	00100793          	li	a5,1
    800045ec:	02a7f863          	bgeu	a5,a0,8000461c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800045f0:	00a00793          	li	a5,10
    800045f4:	02f577b3          	remu	a5,a0,a5
    800045f8:	02078e63          	beqz	a5,80004634 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800045fc:	fff48513          	addi	a0,s1,-1
    80004600:	00000097          	auipc	ra,0x0
    80004604:	fcc080e7          	jalr	-52(ra) # 800045cc <_ZL9fibonaccim>
    80004608:	00050913          	mv	s2,a0
    8000460c:	ffe48513          	addi	a0,s1,-2
    80004610:	00000097          	auipc	ra,0x0
    80004614:	fbc080e7          	jalr	-68(ra) # 800045cc <_ZL9fibonaccim>
    80004618:	00a90533          	add	a0,s2,a0
}
    8000461c:	01813083          	ld	ra,24(sp)
    80004620:	01013403          	ld	s0,16(sp)
    80004624:	00813483          	ld	s1,8(sp)
    80004628:	00013903          	ld	s2,0(sp)
    8000462c:	02010113          	addi	sp,sp,32
    80004630:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004634:	ffffd097          	auipc	ra,0xffffd
    80004638:	c40080e7          	jalr	-960(ra) # 80001274 <thread_dispatch>
    8000463c:	fc1ff06f          	j	800045fc <_ZL9fibonaccim+0x30>

0000000080004640 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004640:	fe010113          	addi	sp,sp,-32
    80004644:	00113c23          	sd	ra,24(sp)
    80004648:	00813823          	sd	s0,16(sp)
    8000464c:	00913423          	sd	s1,8(sp)
    80004650:	01213023          	sd	s2,0(sp)
    80004654:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004658:	00a00493          	li	s1,10
    8000465c:	0400006f          	j	8000469c <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004660:	00005517          	auipc	a0,0x5
    80004664:	a0050513          	addi	a0,a0,-1536 # 80009060 <CONSOLE_STATUS+0x50>
    80004668:	00001097          	auipc	ra,0x1
    8000466c:	dc8080e7          	jalr	-568(ra) # 80005430 <_Z11printStringPKc>
    80004670:	00000613          	li	a2,0
    80004674:	00a00593          	li	a1,10
    80004678:	00048513          	mv	a0,s1
    8000467c:	00001097          	auipc	ra,0x1
    80004680:	f64080e7          	jalr	-156(ra) # 800055e0 <_Z8printIntiii>
    80004684:	00005517          	auipc	a0,0x5
    80004688:	f3c50513          	addi	a0,a0,-196 # 800095c0 <CONSOLE_STATUS+0x5b0>
    8000468c:	00001097          	auipc	ra,0x1
    80004690:	da4080e7          	jalr	-604(ra) # 80005430 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004694:	0014849b          	addiw	s1,s1,1
    80004698:	0ff4f493          	andi	s1,s1,255
    8000469c:	00c00793          	li	a5,12
    800046a0:	fc97f0e3          	bgeu	a5,s1,80004660 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800046a4:	00005517          	auipc	a0,0x5
    800046a8:	d4450513          	addi	a0,a0,-700 # 800093e8 <CONSOLE_STATUS+0x3d8>
    800046ac:	00001097          	auipc	ra,0x1
    800046b0:	d84080e7          	jalr	-636(ra) # 80005430 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800046b4:	00500313          	li	t1,5
    thread_dispatch();
    800046b8:	ffffd097          	auipc	ra,0xffffd
    800046bc:	bbc080e7          	jalr	-1092(ra) # 80001274 <thread_dispatch>

    uint64 result = fibonacci(16);
    800046c0:	01000513          	li	a0,16
    800046c4:	00000097          	auipc	ra,0x0
    800046c8:	f08080e7          	jalr	-248(ra) # 800045cc <_ZL9fibonaccim>
    800046cc:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800046d0:	00005517          	auipc	a0,0x5
    800046d4:	9a850513          	addi	a0,a0,-1624 # 80009078 <CONSOLE_STATUS+0x68>
    800046d8:	00001097          	auipc	ra,0x1
    800046dc:	d58080e7          	jalr	-680(ra) # 80005430 <_Z11printStringPKc>
    800046e0:	00000613          	li	a2,0
    800046e4:	00a00593          	li	a1,10
    800046e8:	0009051b          	sext.w	a0,s2
    800046ec:	00001097          	auipc	ra,0x1
    800046f0:	ef4080e7          	jalr	-268(ra) # 800055e0 <_Z8printIntiii>
    800046f4:	00005517          	auipc	a0,0x5
    800046f8:	ecc50513          	addi	a0,a0,-308 # 800095c0 <CONSOLE_STATUS+0x5b0>
    800046fc:	00001097          	auipc	ra,0x1
    80004700:	d34080e7          	jalr	-716(ra) # 80005430 <_Z11printStringPKc>
    80004704:	0400006f          	j	80004744 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004708:	00005517          	auipc	a0,0x5
    8000470c:	95850513          	addi	a0,a0,-1704 # 80009060 <CONSOLE_STATUS+0x50>
    80004710:	00001097          	auipc	ra,0x1
    80004714:	d20080e7          	jalr	-736(ra) # 80005430 <_Z11printStringPKc>
    80004718:	00000613          	li	a2,0
    8000471c:	00a00593          	li	a1,10
    80004720:	00048513          	mv	a0,s1
    80004724:	00001097          	auipc	ra,0x1
    80004728:	ebc080e7          	jalr	-324(ra) # 800055e0 <_Z8printIntiii>
    8000472c:	00005517          	auipc	a0,0x5
    80004730:	e9450513          	addi	a0,a0,-364 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80004734:	00001097          	auipc	ra,0x1
    80004738:	cfc080e7          	jalr	-772(ra) # 80005430 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000473c:	0014849b          	addiw	s1,s1,1
    80004740:	0ff4f493          	andi	s1,s1,255
    80004744:	00f00793          	li	a5,15
    80004748:	fc97f0e3          	bgeu	a5,s1,80004708 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    8000474c:	00005517          	auipc	a0,0x5
    80004750:	cac50513          	addi	a0,a0,-852 # 800093f8 <CONSOLE_STATUS+0x3e8>
    80004754:	00001097          	auipc	ra,0x1
    80004758:	cdc080e7          	jalr	-804(ra) # 80005430 <_Z11printStringPKc>
    finishedD = true;
    8000475c:	00100793          	li	a5,1
    80004760:	00007717          	auipc	a4,0x7
    80004764:	22f70423          	sb	a5,552(a4) # 8000b988 <_ZL9finishedD>
    thread_dispatch();
    80004768:	ffffd097          	auipc	ra,0xffffd
    8000476c:	b0c080e7          	jalr	-1268(ra) # 80001274 <thread_dispatch>
}
    80004770:	01813083          	ld	ra,24(sp)
    80004774:	01013403          	ld	s0,16(sp)
    80004778:	00813483          	ld	s1,8(sp)
    8000477c:	00013903          	ld	s2,0(sp)
    80004780:	02010113          	addi	sp,sp,32
    80004784:	00008067          	ret

0000000080004788 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004788:	fe010113          	addi	sp,sp,-32
    8000478c:	00113c23          	sd	ra,24(sp)
    80004790:	00813823          	sd	s0,16(sp)
    80004794:	00913423          	sd	s1,8(sp)
    80004798:	01213023          	sd	s2,0(sp)
    8000479c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800047a0:	00000493          	li	s1,0
    800047a4:	0400006f          	j	800047e4 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800047a8:	00005517          	auipc	a0,0x5
    800047ac:	88850513          	addi	a0,a0,-1912 # 80009030 <CONSOLE_STATUS+0x20>
    800047b0:	00001097          	auipc	ra,0x1
    800047b4:	c80080e7          	jalr	-896(ra) # 80005430 <_Z11printStringPKc>
    800047b8:	00000613          	li	a2,0
    800047bc:	00a00593          	li	a1,10
    800047c0:	00048513          	mv	a0,s1
    800047c4:	00001097          	auipc	ra,0x1
    800047c8:	e1c080e7          	jalr	-484(ra) # 800055e0 <_Z8printIntiii>
    800047cc:	00005517          	auipc	a0,0x5
    800047d0:	df450513          	addi	a0,a0,-524 # 800095c0 <CONSOLE_STATUS+0x5b0>
    800047d4:	00001097          	auipc	ra,0x1
    800047d8:	c5c080e7          	jalr	-932(ra) # 80005430 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800047dc:	0014849b          	addiw	s1,s1,1
    800047e0:	0ff4f493          	andi	s1,s1,255
    800047e4:	00200793          	li	a5,2
    800047e8:	fc97f0e3          	bgeu	a5,s1,800047a8 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800047ec:	00005517          	auipc	a0,0x5
    800047f0:	bec50513          	addi	a0,a0,-1044 # 800093d8 <CONSOLE_STATUS+0x3c8>
    800047f4:	00001097          	auipc	ra,0x1
    800047f8:	c3c080e7          	jalr	-964(ra) # 80005430 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800047fc:	00700313          	li	t1,7
    thread_dispatch();
    80004800:	ffffd097          	auipc	ra,0xffffd
    80004804:	a74080e7          	jalr	-1420(ra) # 80001274 <thread_dispatch>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004808:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    8000480c:	00005517          	auipc	a0,0x5
    80004810:	83c50513          	addi	a0,a0,-1988 # 80009048 <CONSOLE_STATUS+0x38>
    80004814:	00001097          	auipc	ra,0x1
    80004818:	c1c080e7          	jalr	-996(ra) # 80005430 <_Z11printStringPKc>
    8000481c:	00000613          	li	a2,0
    80004820:	00a00593          	li	a1,10
    80004824:	0009051b          	sext.w	a0,s2
    80004828:	00001097          	auipc	ra,0x1
    8000482c:	db8080e7          	jalr	-584(ra) # 800055e0 <_Z8printIntiii>
    80004830:	00005517          	auipc	a0,0x5
    80004834:	d9050513          	addi	a0,a0,-624 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80004838:	00001097          	auipc	ra,0x1
    8000483c:	bf8080e7          	jalr	-1032(ra) # 80005430 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004840:	00c00513          	li	a0,12
    80004844:	00000097          	auipc	ra,0x0
    80004848:	d88080e7          	jalr	-632(ra) # 800045cc <_ZL9fibonaccim>
    8000484c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004850:	00005517          	auipc	a0,0x5
    80004854:	80050513          	addi	a0,a0,-2048 # 80009050 <CONSOLE_STATUS+0x40>
    80004858:	00001097          	auipc	ra,0x1
    8000485c:	bd8080e7          	jalr	-1064(ra) # 80005430 <_Z11printStringPKc>
    80004860:	00000613          	li	a2,0
    80004864:	00a00593          	li	a1,10
    80004868:	0009051b          	sext.w	a0,s2
    8000486c:	00001097          	auipc	ra,0x1
    80004870:	d74080e7          	jalr	-652(ra) # 800055e0 <_Z8printIntiii>
    80004874:	00005517          	auipc	a0,0x5
    80004878:	d4c50513          	addi	a0,a0,-692 # 800095c0 <CONSOLE_STATUS+0x5b0>
    8000487c:	00001097          	auipc	ra,0x1
    80004880:	bb4080e7          	jalr	-1100(ra) # 80005430 <_Z11printStringPKc>
    80004884:	0400006f          	j	800048c4 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004888:	00004517          	auipc	a0,0x4
    8000488c:	7a850513          	addi	a0,a0,1960 # 80009030 <CONSOLE_STATUS+0x20>
    80004890:	00001097          	auipc	ra,0x1
    80004894:	ba0080e7          	jalr	-1120(ra) # 80005430 <_Z11printStringPKc>
    80004898:	00000613          	li	a2,0
    8000489c:	00a00593          	li	a1,10
    800048a0:	00048513          	mv	a0,s1
    800048a4:	00001097          	auipc	ra,0x1
    800048a8:	d3c080e7          	jalr	-708(ra) # 800055e0 <_Z8printIntiii>
    800048ac:	00005517          	auipc	a0,0x5
    800048b0:	d1450513          	addi	a0,a0,-748 # 800095c0 <CONSOLE_STATUS+0x5b0>
    800048b4:	00001097          	auipc	ra,0x1
    800048b8:	b7c080e7          	jalr	-1156(ra) # 80005430 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800048bc:	0014849b          	addiw	s1,s1,1
    800048c0:	0ff4f493          	andi	s1,s1,255
    800048c4:	00500793          	li	a5,5
    800048c8:	fc97f0e3          	bgeu	a5,s1,80004888 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800048cc:	00005517          	auipc	a0,0x5
    800048d0:	aec50513          	addi	a0,a0,-1300 # 800093b8 <CONSOLE_STATUS+0x3a8>
    800048d4:	00001097          	auipc	ra,0x1
    800048d8:	b5c080e7          	jalr	-1188(ra) # 80005430 <_Z11printStringPKc>
    finishedC = true;
    800048dc:	00100793          	li	a5,1
    800048e0:	00007717          	auipc	a4,0x7
    800048e4:	0af704a3          	sb	a5,169(a4) # 8000b989 <_ZL9finishedC>
    thread_dispatch();
    800048e8:	ffffd097          	auipc	ra,0xffffd
    800048ec:	98c080e7          	jalr	-1652(ra) # 80001274 <thread_dispatch>
}
    800048f0:	01813083          	ld	ra,24(sp)
    800048f4:	01013403          	ld	s0,16(sp)
    800048f8:	00813483          	ld	s1,8(sp)
    800048fc:	00013903          	ld	s2,0(sp)
    80004900:	02010113          	addi	sp,sp,32
    80004904:	00008067          	ret

0000000080004908 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004908:	fe010113          	addi	sp,sp,-32
    8000490c:	00113c23          	sd	ra,24(sp)
    80004910:	00813823          	sd	s0,16(sp)
    80004914:	00913423          	sd	s1,8(sp)
    80004918:	01213023          	sd	s2,0(sp)
    8000491c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004920:	00000913          	li	s2,0
    80004924:	0380006f          	j	8000495c <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80004928:	ffffd097          	auipc	ra,0xffffd
    8000492c:	94c080e7          	jalr	-1716(ra) # 80001274 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80004930:	00148493          	addi	s1,s1,1
    80004934:	000027b7          	lui	a5,0x2
    80004938:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000493c:	0097ee63          	bltu	a5,s1,80004958 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004940:	00000713          	li	a4,0
    80004944:	000077b7          	lui	a5,0x7
    80004948:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000494c:	fce7eee3          	bltu	a5,a4,80004928 <_ZL11workerBodyBPv+0x20>
    80004950:	00170713          	addi	a4,a4,1
    80004954:	ff1ff06f          	j	80004944 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004958:	00190913          	addi	s2,s2,1
    8000495c:	00f00793          	li	a5,15
    80004960:	0527e063          	bltu	a5,s2,800049a0 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004964:	00004517          	auipc	a0,0x4
    80004968:	6c450513          	addi	a0,a0,1732 # 80009028 <CONSOLE_STATUS+0x18>
    8000496c:	00001097          	auipc	ra,0x1
    80004970:	ac4080e7          	jalr	-1340(ra) # 80005430 <_Z11printStringPKc>
    80004974:	00000613          	li	a2,0
    80004978:	00a00593          	li	a1,10
    8000497c:	0009051b          	sext.w	a0,s2
    80004980:	00001097          	auipc	ra,0x1
    80004984:	c60080e7          	jalr	-928(ra) # 800055e0 <_Z8printIntiii>
    80004988:	00005517          	auipc	a0,0x5
    8000498c:	c3850513          	addi	a0,a0,-968 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80004990:	00001097          	auipc	ra,0x1
    80004994:	aa0080e7          	jalr	-1376(ra) # 80005430 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004998:	00000493          	li	s1,0
    8000499c:	f99ff06f          	j	80004934 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    800049a0:	00005517          	auipc	a0,0x5
    800049a4:	a2850513          	addi	a0,a0,-1496 # 800093c8 <CONSOLE_STATUS+0x3b8>
    800049a8:	00001097          	auipc	ra,0x1
    800049ac:	a88080e7          	jalr	-1400(ra) # 80005430 <_Z11printStringPKc>
    finishedB = true;
    800049b0:	00100793          	li	a5,1
    800049b4:	00007717          	auipc	a4,0x7
    800049b8:	fcf70b23          	sb	a5,-42(a4) # 8000b98a <_ZL9finishedB>
    thread_dispatch();
    800049bc:	ffffd097          	auipc	ra,0xffffd
    800049c0:	8b8080e7          	jalr	-1864(ra) # 80001274 <thread_dispatch>
}
    800049c4:	01813083          	ld	ra,24(sp)
    800049c8:	01013403          	ld	s0,16(sp)
    800049cc:	00813483          	ld	s1,8(sp)
    800049d0:	00013903          	ld	s2,0(sp)
    800049d4:	02010113          	addi	sp,sp,32
    800049d8:	00008067          	ret

00000000800049dc <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800049dc:	fe010113          	addi	sp,sp,-32
    800049e0:	00113c23          	sd	ra,24(sp)
    800049e4:	00813823          	sd	s0,16(sp)
    800049e8:	00913423          	sd	s1,8(sp)
    800049ec:	01213023          	sd	s2,0(sp)
    800049f0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800049f4:	00000913          	li	s2,0
    800049f8:	0380006f          	j	80004a30 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800049fc:	ffffd097          	auipc	ra,0xffffd
    80004a00:	878080e7          	jalr	-1928(ra) # 80001274 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80004a04:	00148493          	addi	s1,s1,1
    80004a08:	000027b7          	lui	a5,0x2
    80004a0c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004a10:	0097ee63          	bltu	a5,s1,80004a2c <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004a14:	00000713          	li	a4,0
    80004a18:	000077b7          	lui	a5,0x7
    80004a1c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004a20:	fce7eee3          	bltu	a5,a4,800049fc <_ZL11workerBodyAPv+0x20>
    80004a24:	00170713          	addi	a4,a4,1
    80004a28:	ff1ff06f          	j	80004a18 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004a2c:	00190913          	addi	s2,s2,1
    80004a30:	00900793          	li	a5,9
    80004a34:	0527e063          	bltu	a5,s2,80004a74 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004a38:	00004517          	auipc	a0,0x4
    80004a3c:	5e850513          	addi	a0,a0,1512 # 80009020 <CONSOLE_STATUS+0x10>
    80004a40:	00001097          	auipc	ra,0x1
    80004a44:	9f0080e7          	jalr	-1552(ra) # 80005430 <_Z11printStringPKc>
    80004a48:	00000613          	li	a2,0
    80004a4c:	00a00593          	li	a1,10
    80004a50:	0009051b          	sext.w	a0,s2
    80004a54:	00001097          	auipc	ra,0x1
    80004a58:	b8c080e7          	jalr	-1140(ra) # 800055e0 <_Z8printIntiii>
    80004a5c:	00005517          	auipc	a0,0x5
    80004a60:	b6450513          	addi	a0,a0,-1180 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80004a64:	00001097          	auipc	ra,0x1
    80004a68:	9cc080e7          	jalr	-1588(ra) # 80005430 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004a6c:	00000493          	li	s1,0
    80004a70:	f99ff06f          	j	80004a08 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80004a74:	00005517          	auipc	a0,0x5
    80004a78:	94450513          	addi	a0,a0,-1724 # 800093b8 <CONSOLE_STATUS+0x3a8>
    80004a7c:	00001097          	auipc	ra,0x1
    80004a80:	9b4080e7          	jalr	-1612(ra) # 80005430 <_Z11printStringPKc>
    finishedA = true;
    80004a84:	00100793          	li	a5,1
    80004a88:	00007717          	auipc	a4,0x7
    80004a8c:	f0f701a3          	sb	a5,-253(a4) # 8000b98b <_ZL9finishedA>
}
    80004a90:	01813083          	ld	ra,24(sp)
    80004a94:	01013403          	ld	s0,16(sp)
    80004a98:	00813483          	ld	s1,8(sp)
    80004a9c:	00013903          	ld	s2,0(sp)
    80004aa0:	02010113          	addi	sp,sp,32
    80004aa4:	00008067          	ret

0000000080004aa8 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004aa8:	fd010113          	addi	sp,sp,-48
    80004aac:	02113423          	sd	ra,40(sp)
    80004ab0:	02813023          	sd	s0,32(sp)
    80004ab4:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004ab8:	00000613          	li	a2,0
    80004abc:	00000597          	auipc	a1,0x0
    80004ac0:	f2058593          	addi	a1,a1,-224 # 800049dc <_ZL11workerBodyAPv>
    80004ac4:	fd040513          	addi	a0,s0,-48
    80004ac8:	ffffc097          	auipc	ra,0xffffc
    80004acc:	70c080e7          	jalr	1804(ra) # 800011d4 <thread_create>
    printString("ThreadA created\n");
    80004ad0:	00005517          	auipc	a0,0x5
    80004ad4:	93850513          	addi	a0,a0,-1736 # 80009408 <CONSOLE_STATUS+0x3f8>
    80004ad8:	00001097          	auipc	ra,0x1
    80004adc:	958080e7          	jalr	-1704(ra) # 80005430 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004ae0:	00000613          	li	a2,0
    80004ae4:	00000597          	auipc	a1,0x0
    80004ae8:	e2458593          	addi	a1,a1,-476 # 80004908 <_ZL11workerBodyBPv>
    80004aec:	fd840513          	addi	a0,s0,-40
    80004af0:	ffffc097          	auipc	ra,0xffffc
    80004af4:	6e4080e7          	jalr	1764(ra) # 800011d4 <thread_create>
    printString("ThreadB created\n");
    80004af8:	00005517          	auipc	a0,0x5
    80004afc:	92850513          	addi	a0,a0,-1752 # 80009420 <CONSOLE_STATUS+0x410>
    80004b00:	00001097          	auipc	ra,0x1
    80004b04:	930080e7          	jalr	-1744(ra) # 80005430 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004b08:	00000613          	li	a2,0
    80004b0c:	00000597          	auipc	a1,0x0
    80004b10:	c7c58593          	addi	a1,a1,-900 # 80004788 <_ZL11workerBodyCPv>
    80004b14:	fe040513          	addi	a0,s0,-32
    80004b18:	ffffc097          	auipc	ra,0xffffc
    80004b1c:	6bc080e7          	jalr	1724(ra) # 800011d4 <thread_create>
    printString("ThreadC created\n");
    80004b20:	00005517          	auipc	a0,0x5
    80004b24:	91850513          	addi	a0,a0,-1768 # 80009438 <CONSOLE_STATUS+0x428>
    80004b28:	00001097          	auipc	ra,0x1
    80004b2c:	908080e7          	jalr	-1784(ra) # 80005430 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004b30:	00000613          	li	a2,0
    80004b34:	00000597          	auipc	a1,0x0
    80004b38:	b0c58593          	addi	a1,a1,-1268 # 80004640 <_ZL11workerBodyDPv>
    80004b3c:	fe840513          	addi	a0,s0,-24
    80004b40:	ffffc097          	auipc	ra,0xffffc
    80004b44:	694080e7          	jalr	1684(ra) # 800011d4 <thread_create>
    printString("ThreadD created\n");
    80004b48:	00005517          	auipc	a0,0x5
    80004b4c:	90850513          	addi	a0,a0,-1784 # 80009450 <CONSOLE_STATUS+0x440>
    80004b50:	00001097          	auipc	ra,0x1
    80004b54:	8e0080e7          	jalr	-1824(ra) # 80005430 <_Z11printStringPKc>
    80004b58:	00c0006f          	j	80004b64 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004b5c:	ffffc097          	auipc	ra,0xffffc
    80004b60:	718080e7          	jalr	1816(ra) # 80001274 <thread_dispatch>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004b64:	00007797          	auipc	a5,0x7
    80004b68:	e277c783          	lbu	a5,-473(a5) # 8000b98b <_ZL9finishedA>
    80004b6c:	fe0788e3          	beqz	a5,80004b5c <_Z18Threads_C_API_testv+0xb4>
    80004b70:	00007797          	auipc	a5,0x7
    80004b74:	e1a7c783          	lbu	a5,-486(a5) # 8000b98a <_ZL9finishedB>
    80004b78:	fe0782e3          	beqz	a5,80004b5c <_Z18Threads_C_API_testv+0xb4>
    80004b7c:	00007797          	auipc	a5,0x7
    80004b80:	e0d7c783          	lbu	a5,-499(a5) # 8000b989 <_ZL9finishedC>
    80004b84:	fc078ce3          	beqz	a5,80004b5c <_Z18Threads_C_API_testv+0xb4>
    80004b88:	00007797          	auipc	a5,0x7
    80004b8c:	e007c783          	lbu	a5,-512(a5) # 8000b988 <_ZL9finishedD>
    80004b90:	fc0786e3          	beqz	a5,80004b5c <_Z18Threads_C_API_testv+0xb4>
    }

}
    80004b94:	02813083          	ld	ra,40(sp)
    80004b98:	02013403          	ld	s0,32(sp)
    80004b9c:	03010113          	addi	sp,sp,48
    80004ba0:	00008067          	ret

0000000080004ba4 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80004ba4:	fd010113          	addi	sp,sp,-48
    80004ba8:	02113423          	sd	ra,40(sp)
    80004bac:	02813023          	sd	s0,32(sp)
    80004bb0:	00913c23          	sd	s1,24(sp)
    80004bb4:	01213823          	sd	s2,16(sp)
    80004bb8:	01313423          	sd	s3,8(sp)
    80004bbc:	03010413          	addi	s0,sp,48
    80004bc0:	00050993          	mv	s3,a0
    80004bc4:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004bc8:	00000913          	li	s2,0
    80004bcc:	00c0006f          	j	80004bd8 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x30) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004bd0:	ffffd097          	auipc	ra,0xffffd
    80004bd4:	400080e7          	jalr	1024(ra) # 80001fd0 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x30) {
    80004bd8:	ffffd097          	auipc	ra,0xffffd
    80004bdc:	884080e7          	jalr	-1916(ra) # 8000145c <getc>
    80004be0:	0005059b          	sext.w	a1,a0
    80004be4:	03000793          	li	a5,48
    80004be8:	02f58a63          	beq	a1,a5,80004c1c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004bec:	0084b503          	ld	a0,8(s1)
    80004bf0:	00001097          	auipc	ra,0x1
    80004bf4:	c64080e7          	jalr	-924(ra) # 80005854 <_ZN9BufferCPP3putEi>
        i++;
    80004bf8:	0019071b          	addiw	a4,s2,1
    80004bfc:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004c00:	0004a683          	lw	a3,0(s1)
    80004c04:	0026979b          	slliw	a5,a3,0x2
    80004c08:	00d787bb          	addw	a5,a5,a3
    80004c0c:	0017979b          	slliw	a5,a5,0x1
    80004c10:	02f767bb          	remw	a5,a4,a5
    80004c14:	fc0792e3          	bnez	a5,80004bd8 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004c18:	fb9ff06f          	j	80004bd0 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80004c1c:	00100793          	li	a5,1
    80004c20:	00007717          	auipc	a4,0x7
    80004c24:	d6f72823          	sw	a5,-656(a4) # 8000b990 <_ZL9threadEnd>
    td->buffer->put('!');
    80004c28:	0209b783          	ld	a5,32(s3)
    80004c2c:	02100593          	li	a1,33
    80004c30:	0087b503          	ld	a0,8(a5)
    80004c34:	00001097          	auipc	ra,0x1
    80004c38:	c20080e7          	jalr	-992(ra) # 80005854 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80004c3c:	0104b503          	ld	a0,16(s1)
    80004c40:	ffffd097          	auipc	ra,0xffffd
    80004c44:	420080e7          	jalr	1056(ra) # 80002060 <_ZN9Semaphore6signalEv>
}
    80004c48:	02813083          	ld	ra,40(sp)
    80004c4c:	02013403          	ld	s0,32(sp)
    80004c50:	01813483          	ld	s1,24(sp)
    80004c54:	01013903          	ld	s2,16(sp)
    80004c58:	00813983          	ld	s3,8(sp)
    80004c5c:	03010113          	addi	sp,sp,48
    80004c60:	00008067          	ret

0000000080004c64 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80004c64:	fe010113          	addi	sp,sp,-32
    80004c68:	00113c23          	sd	ra,24(sp)
    80004c6c:	00813823          	sd	s0,16(sp)
    80004c70:	00913423          	sd	s1,8(sp)
    80004c74:	01213023          	sd	s2,0(sp)
    80004c78:	02010413          	addi	s0,sp,32
    80004c7c:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004c80:	00000913          	li	s2,0
    80004c84:	00c0006f          	j	80004c90 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004c88:	ffffd097          	auipc	ra,0xffffd
    80004c8c:	348080e7          	jalr	840(ra) # 80001fd0 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80004c90:	00007797          	auipc	a5,0x7
    80004c94:	d007a783          	lw	a5,-768(a5) # 8000b990 <_ZL9threadEnd>
    80004c98:	02079e63          	bnez	a5,80004cd4 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80004c9c:	0004a583          	lw	a1,0(s1)
    80004ca0:	0305859b          	addiw	a1,a1,48
    80004ca4:	0084b503          	ld	a0,8(s1)
    80004ca8:	00001097          	auipc	ra,0x1
    80004cac:	bac080e7          	jalr	-1108(ra) # 80005854 <_ZN9BufferCPP3putEi>
        i++;
    80004cb0:	0019071b          	addiw	a4,s2,1
    80004cb4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004cb8:	0004a683          	lw	a3,0(s1)
    80004cbc:	0026979b          	slliw	a5,a3,0x2
    80004cc0:	00d787bb          	addw	a5,a5,a3
    80004cc4:	0017979b          	slliw	a5,a5,0x1
    80004cc8:	02f767bb          	remw	a5,a4,a5
    80004ccc:	fc0792e3          	bnez	a5,80004c90 <_ZN12ProducerSync8producerEPv+0x2c>
    80004cd0:	fb9ff06f          	j	80004c88 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80004cd4:	0104b503          	ld	a0,16(s1)
    80004cd8:	ffffd097          	auipc	ra,0xffffd
    80004cdc:	388080e7          	jalr	904(ra) # 80002060 <_ZN9Semaphore6signalEv>
}
    80004ce0:	01813083          	ld	ra,24(sp)
    80004ce4:	01013403          	ld	s0,16(sp)
    80004ce8:	00813483          	ld	s1,8(sp)
    80004cec:	00013903          	ld	s2,0(sp)
    80004cf0:	02010113          	addi	sp,sp,32
    80004cf4:	00008067          	ret

0000000080004cf8 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004cf8:	fd010113          	addi	sp,sp,-48
    80004cfc:	02113423          	sd	ra,40(sp)
    80004d00:	02813023          	sd	s0,32(sp)
    80004d04:	00913c23          	sd	s1,24(sp)
    80004d08:	01213823          	sd	s2,16(sp)
    80004d0c:	01313423          	sd	s3,8(sp)
    80004d10:	01413023          	sd	s4,0(sp)
    80004d14:	03010413          	addi	s0,sp,48
    80004d18:	00050993          	mv	s3,a0
    80004d1c:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004d20:	00000a13          	li	s4,0
    80004d24:	01c0006f          	j	80004d40 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80004d28:	ffffd097          	auipc	ra,0xffffd
    80004d2c:	2a8080e7          	jalr	680(ra) # 80001fd0 <_ZN6Thread8dispatchEv>
    80004d30:	0500006f          	j	80004d80 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80004d34:	00a00513          	li	a0,10
    80004d38:	ffffc097          	auipc	ra,0xffffc
    80004d3c:	6fc080e7          	jalr	1788(ra) # 80001434 <putc>
    while (!threadEnd) {
    80004d40:	00007797          	auipc	a5,0x7
    80004d44:	c507a783          	lw	a5,-944(a5) # 8000b990 <_ZL9threadEnd>
    80004d48:	06079263          	bnez	a5,80004dac <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80004d4c:	00893503          	ld	a0,8(s2)
    80004d50:	00001097          	auipc	ra,0x1
    80004d54:	b94080e7          	jalr	-1132(ra) # 800058e4 <_ZN9BufferCPP3getEv>
        i++;
    80004d58:	001a049b          	addiw	s1,s4,1
    80004d5c:	00048a1b          	sext.w	s4,s1
        putc(key);
    80004d60:	0ff57513          	andi	a0,a0,255
    80004d64:	ffffc097          	auipc	ra,0xffffc
    80004d68:	6d0080e7          	jalr	1744(ra) # 80001434 <putc>
        if (i % (5 * data->id) == 0) {
    80004d6c:	00092703          	lw	a4,0(s2)
    80004d70:	0027179b          	slliw	a5,a4,0x2
    80004d74:	00e787bb          	addw	a5,a5,a4
    80004d78:	02f4e7bb          	remw	a5,s1,a5
    80004d7c:	fa0786e3          	beqz	a5,80004d28 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80004d80:	05000793          	li	a5,80
    80004d84:	02f4e4bb          	remw	s1,s1,a5
    80004d88:	fa049ce3          	bnez	s1,80004d40 <_ZN12ConsumerSync8consumerEPv+0x48>
    80004d8c:	fa9ff06f          	j	80004d34 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80004d90:	0209b783          	ld	a5,32(s3)
    80004d94:	0087b503          	ld	a0,8(a5)
    80004d98:	00001097          	auipc	ra,0x1
    80004d9c:	b4c080e7          	jalr	-1204(ra) # 800058e4 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80004da0:	0ff57513          	andi	a0,a0,255
    80004da4:	ffffd097          	auipc	ra,0xffffd
    80004da8:	390080e7          	jalr	912(ra) # 80002134 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80004dac:	0209b783          	ld	a5,32(s3)
    80004db0:	0087b503          	ld	a0,8(a5)
    80004db4:	00001097          	auipc	ra,0x1
    80004db8:	bbc080e7          	jalr	-1092(ra) # 80005970 <_ZN9BufferCPP6getCntEv>
    80004dbc:	fca04ae3          	bgtz	a0,80004d90 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80004dc0:	01093503          	ld	a0,16(s2)
    80004dc4:	ffffd097          	auipc	ra,0xffffd
    80004dc8:	29c080e7          	jalr	668(ra) # 80002060 <_ZN9Semaphore6signalEv>
}
    80004dcc:	02813083          	ld	ra,40(sp)
    80004dd0:	02013403          	ld	s0,32(sp)
    80004dd4:	01813483          	ld	s1,24(sp)
    80004dd8:	01013903          	ld	s2,16(sp)
    80004ddc:	00813983          	ld	s3,8(sp)
    80004de0:	00013a03          	ld	s4,0(sp)
    80004de4:	03010113          	addi	sp,sp,48
    80004de8:	00008067          	ret

0000000080004dec <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80004dec:	f8010113          	addi	sp,sp,-128
    80004df0:	06113c23          	sd	ra,120(sp)
    80004df4:	06813823          	sd	s0,112(sp)
    80004df8:	06913423          	sd	s1,104(sp)
    80004dfc:	07213023          	sd	s2,96(sp)
    80004e00:	05313c23          	sd	s3,88(sp)
    80004e04:	05413823          	sd	s4,80(sp)
    80004e08:	05513423          	sd	s5,72(sp)
    80004e0c:	05613023          	sd	s6,64(sp)
    80004e10:	03713c23          	sd	s7,56(sp)
    80004e14:	03813823          	sd	s8,48(sp)
    80004e18:	03913423          	sd	s9,40(sp)
    80004e1c:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80004e20:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80004e24:	00004517          	auipc	a0,0x4
    80004e28:	4ac50513          	addi	a0,a0,1196 # 800092d0 <CONSOLE_STATUS+0x2c0>
    80004e2c:	00000097          	auipc	ra,0x0
    80004e30:	604080e7          	jalr	1540(ra) # 80005430 <_Z11printStringPKc>
    getString(input, 30);
    80004e34:	01e00593          	li	a1,30
    80004e38:	f8040493          	addi	s1,s0,-128
    80004e3c:	00048513          	mv	a0,s1
    80004e40:	00000097          	auipc	ra,0x0
    80004e44:	678080e7          	jalr	1656(ra) # 800054b8 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004e48:	00048513          	mv	a0,s1
    80004e4c:	00000097          	auipc	ra,0x0
    80004e50:	744080e7          	jalr	1860(ra) # 80005590 <_Z11stringToIntPKc>
    80004e54:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80004e58:	00004517          	auipc	a0,0x4
    80004e5c:	49850513          	addi	a0,a0,1176 # 800092f0 <CONSOLE_STATUS+0x2e0>
    80004e60:	00000097          	auipc	ra,0x0
    80004e64:	5d0080e7          	jalr	1488(ra) # 80005430 <_Z11printStringPKc>
    getString(input, 30);
    80004e68:	01e00593          	li	a1,30
    80004e6c:	00048513          	mv	a0,s1
    80004e70:	00000097          	auipc	ra,0x0
    80004e74:	648080e7          	jalr	1608(ra) # 800054b8 <_Z9getStringPci>
    n = stringToInt(input);
    80004e78:	00048513          	mv	a0,s1
    80004e7c:	00000097          	auipc	ra,0x0
    80004e80:	714080e7          	jalr	1812(ra) # 80005590 <_Z11stringToIntPKc>
    80004e84:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80004e88:	00004517          	auipc	a0,0x4
    80004e8c:	48850513          	addi	a0,a0,1160 # 80009310 <CONSOLE_STATUS+0x300>
    80004e90:	00000097          	auipc	ra,0x0
    80004e94:	5a0080e7          	jalr	1440(ra) # 80005430 <_Z11printStringPKc>
    80004e98:	00000613          	li	a2,0
    80004e9c:	00a00593          	li	a1,10
    80004ea0:	00090513          	mv	a0,s2
    80004ea4:	00000097          	auipc	ra,0x0
    80004ea8:	73c080e7          	jalr	1852(ra) # 800055e0 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004eac:	00004517          	auipc	a0,0x4
    80004eb0:	47c50513          	addi	a0,a0,1148 # 80009328 <CONSOLE_STATUS+0x318>
    80004eb4:	00000097          	auipc	ra,0x0
    80004eb8:	57c080e7          	jalr	1404(ra) # 80005430 <_Z11printStringPKc>
    80004ebc:	00000613          	li	a2,0
    80004ec0:	00a00593          	li	a1,10
    80004ec4:	00048513          	mv	a0,s1
    80004ec8:	00000097          	auipc	ra,0x0
    80004ecc:	718080e7          	jalr	1816(ra) # 800055e0 <_Z8printIntiii>
    printString(".\n");
    80004ed0:	00004517          	auipc	a0,0x4
    80004ed4:	47050513          	addi	a0,a0,1136 # 80009340 <CONSOLE_STATUS+0x330>
    80004ed8:	00000097          	auipc	ra,0x0
    80004edc:	558080e7          	jalr	1368(ra) # 80005430 <_Z11printStringPKc>
    if(threadNum > n) {
    80004ee0:	0324c463          	blt	s1,s2,80004f08 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80004ee4:	03205c63          	blez	s2,80004f1c <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004ee8:	03800513          	li	a0,56
    80004eec:	ffffd097          	auipc	ra,0xffffd
    80004ef0:	ef8080e7          	jalr	-264(ra) # 80001de4 <_Znwm>
    80004ef4:	00050a93          	mv	s5,a0
    80004ef8:	00048593          	mv	a1,s1
    80004efc:	00001097          	auipc	ra,0x1
    80004f00:	804080e7          	jalr	-2044(ra) # 80005700 <_ZN9BufferCPPC1Ei>
    80004f04:	0300006f          	j	80004f34 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004f08:	00004517          	auipc	a0,0x4
    80004f0c:	44050513          	addi	a0,a0,1088 # 80009348 <CONSOLE_STATUS+0x338>
    80004f10:	00000097          	auipc	ra,0x0
    80004f14:	520080e7          	jalr	1312(ra) # 80005430 <_Z11printStringPKc>
        return;
    80004f18:	0140006f          	j	80004f2c <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004f1c:	00004517          	auipc	a0,0x4
    80004f20:	46c50513          	addi	a0,a0,1132 # 80009388 <CONSOLE_STATUS+0x378>
    80004f24:	00000097          	auipc	ra,0x0
    80004f28:	50c080e7          	jalr	1292(ra) # 80005430 <_Z11printStringPKc>
        return;
    80004f2c:	000b8113          	mv	sp,s7
    80004f30:	2380006f          	j	80005168 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80004f34:	01800513          	li	a0,24
    80004f38:	ffffd097          	auipc	ra,0xffffd
    80004f3c:	eac080e7          	jalr	-340(ra) # 80001de4 <_Znwm>
    80004f40:	00050493          	mv	s1,a0
    80004f44:	00000593          	li	a1,0
    80004f48:	ffffd097          	auipc	ra,0xffffd
    80004f4c:	0b0080e7          	jalr	176(ra) # 80001ff8 <_ZN9SemaphoreC1Ej>
    80004f50:	00007797          	auipc	a5,0x7
    80004f54:	a497b423          	sd	s1,-1464(a5) # 8000b998 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80004f58:	00391793          	slli	a5,s2,0x3
    80004f5c:	00f78793          	addi	a5,a5,15
    80004f60:	ff07f793          	andi	a5,a5,-16
    80004f64:	40f10133          	sub	sp,sp,a5
    80004f68:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80004f6c:	0019071b          	addiw	a4,s2,1
    80004f70:	00171793          	slli	a5,a4,0x1
    80004f74:	00e787b3          	add	a5,a5,a4
    80004f78:	00379793          	slli	a5,a5,0x3
    80004f7c:	00f78793          	addi	a5,a5,15
    80004f80:	ff07f793          	andi	a5,a5,-16
    80004f84:	40f10133          	sub	sp,sp,a5
    80004f88:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80004f8c:	00191c13          	slli	s8,s2,0x1
    80004f90:	012c07b3          	add	a5,s8,s2
    80004f94:	00379793          	slli	a5,a5,0x3
    80004f98:	00fa07b3          	add	a5,s4,a5
    80004f9c:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004fa0:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80004fa4:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80004fa8:	02800513          	li	a0,40
    80004fac:	ffffd097          	auipc	ra,0xffffd
    80004fb0:	e38080e7          	jalr	-456(ra) # 80001de4 <_Znwm>
    80004fb4:	00050b13          	mv	s6,a0
    80004fb8:	012c0c33          	add	s8,s8,s2
    80004fbc:	003c1c13          	slli	s8,s8,0x3
    80004fc0:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80004fc4:	ffffd097          	auipc	ra,0xffffd
    80004fc8:	f28080e7          	jalr	-216(ra) # 80001eec <_ZN6ThreadC1Ev>
    80004fcc:	00007797          	auipc	a5,0x7
    80004fd0:	87c78793          	addi	a5,a5,-1924 # 8000b848 <_ZTV12ConsumerSync+0x10>
    80004fd4:	00fb3023          	sd	a5,0(s6)
    80004fd8:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80004fdc:	000b0513          	mv	a0,s6
    80004fe0:	ffffd097          	auipc	ra,0xffffd
    80004fe4:	f9c080e7          	jalr	-100(ra) # 80001f7c <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004fe8:	00000493          	li	s1,0
    80004fec:	0380006f          	j	80005024 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004ff0:	00007797          	auipc	a5,0x7
    80004ff4:	83078793          	addi	a5,a5,-2000 # 8000b820 <_ZTV12ProducerSync+0x10>
    80004ff8:	00fcb023          	sd	a5,0(s9)
    80004ffc:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80005000:	00349793          	slli	a5,s1,0x3
    80005004:	00f987b3          	add	a5,s3,a5
    80005008:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    8000500c:	00349793          	slli	a5,s1,0x3
    80005010:	00f987b3          	add	a5,s3,a5
    80005014:	0007b503          	ld	a0,0(a5)
    80005018:	ffffd097          	auipc	ra,0xffffd
    8000501c:	f64080e7          	jalr	-156(ra) # 80001f7c <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005020:	0014849b          	addiw	s1,s1,1
    80005024:	0b24d063          	bge	s1,s2,800050c4 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80005028:	00149793          	slli	a5,s1,0x1
    8000502c:	009787b3          	add	a5,a5,s1
    80005030:	00379793          	slli	a5,a5,0x3
    80005034:	00fa07b3          	add	a5,s4,a5
    80005038:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    8000503c:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80005040:	00007717          	auipc	a4,0x7
    80005044:	95873703          	ld	a4,-1704(a4) # 8000b998 <_ZL10waitForAll>
    80005048:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    8000504c:	02905863          	blez	s1,8000507c <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80005050:	02800513          	li	a0,40
    80005054:	ffffd097          	auipc	ra,0xffffd
    80005058:	d90080e7          	jalr	-624(ra) # 80001de4 <_Znwm>
    8000505c:	00050c93          	mv	s9,a0
    80005060:	00149c13          	slli	s8,s1,0x1
    80005064:	009c0c33          	add	s8,s8,s1
    80005068:	003c1c13          	slli	s8,s8,0x3
    8000506c:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005070:	ffffd097          	auipc	ra,0xffffd
    80005074:	e7c080e7          	jalr	-388(ra) # 80001eec <_ZN6ThreadC1Ev>
    80005078:	f79ff06f          	j	80004ff0 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    8000507c:	02800513          	li	a0,40
    80005080:	ffffd097          	auipc	ra,0xffffd
    80005084:	d64080e7          	jalr	-668(ra) # 80001de4 <_Znwm>
    80005088:	00050c93          	mv	s9,a0
    8000508c:	00149c13          	slli	s8,s1,0x1
    80005090:	009c0c33          	add	s8,s8,s1
    80005094:	003c1c13          	slli	s8,s8,0x3
    80005098:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    8000509c:	ffffd097          	auipc	ra,0xffffd
    800050a0:	e50080e7          	jalr	-432(ra) # 80001eec <_ZN6ThreadC1Ev>
    800050a4:	00006797          	auipc	a5,0x6
    800050a8:	75478793          	addi	a5,a5,1876 # 8000b7f8 <_ZTV16ProducerKeyboard+0x10>
    800050ac:	00fcb023          	sd	a5,0(s9)
    800050b0:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    800050b4:	00349793          	slli	a5,s1,0x3
    800050b8:	00f987b3          	add	a5,s3,a5
    800050bc:	0197b023          	sd	s9,0(a5)
    800050c0:	f4dff06f          	j	8000500c <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    800050c4:	ffffd097          	auipc	ra,0xffffd
    800050c8:	f0c080e7          	jalr	-244(ra) # 80001fd0 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    800050cc:	00000493          	li	s1,0
    800050d0:	00994e63          	blt	s2,s1,800050ec <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    800050d4:	00007517          	auipc	a0,0x7
    800050d8:	8c453503          	ld	a0,-1852(a0) # 8000b998 <_ZL10waitForAll>
    800050dc:	ffffd097          	auipc	ra,0xffffd
    800050e0:	f58080e7          	jalr	-168(ra) # 80002034 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800050e4:	0014849b          	addiw	s1,s1,1
    800050e8:	fe9ff06f          	j	800050d0 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    800050ec:	00000493          	li	s1,0
    800050f0:	0080006f          	j	800050f8 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    800050f4:	0014849b          	addiw	s1,s1,1
    800050f8:	0324d263          	bge	s1,s2,8000511c <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    800050fc:	00349793          	slli	a5,s1,0x3
    80005100:	00f987b3          	add	a5,s3,a5
    80005104:	0007b503          	ld	a0,0(a5)
    80005108:	fe0506e3          	beqz	a0,800050f4 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    8000510c:	00053783          	ld	a5,0(a0)
    80005110:	0087b783          	ld	a5,8(a5)
    80005114:	000780e7          	jalr	a5
    80005118:	fddff06f          	j	800050f4 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    8000511c:	000b0a63          	beqz	s6,80005130 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80005120:	000b3783          	ld	a5,0(s6)
    80005124:	0087b783          	ld	a5,8(a5)
    80005128:	000b0513          	mv	a0,s6
    8000512c:	000780e7          	jalr	a5
    delete waitForAll;
    80005130:	00007517          	auipc	a0,0x7
    80005134:	86853503          	ld	a0,-1944(a0) # 8000b998 <_ZL10waitForAll>
    80005138:	00050863          	beqz	a0,80005148 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    8000513c:	00053783          	ld	a5,0(a0)
    80005140:	0087b783          	ld	a5,8(a5)
    80005144:	000780e7          	jalr	a5
    delete buffer;
    80005148:	000a8e63          	beqz	s5,80005164 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    8000514c:	000a8513          	mv	a0,s5
    80005150:	00001097          	auipc	ra,0x1
    80005154:	8a8080e7          	jalr	-1880(ra) # 800059f8 <_ZN9BufferCPPD1Ev>
    80005158:	000a8513          	mv	a0,s5
    8000515c:	ffffd097          	auipc	ra,0xffffd
    80005160:	cd8080e7          	jalr	-808(ra) # 80001e34 <_ZdlPv>
    80005164:	000b8113          	mv	sp,s7

}
    80005168:	f8040113          	addi	sp,s0,-128
    8000516c:	07813083          	ld	ra,120(sp)
    80005170:	07013403          	ld	s0,112(sp)
    80005174:	06813483          	ld	s1,104(sp)
    80005178:	06013903          	ld	s2,96(sp)
    8000517c:	05813983          	ld	s3,88(sp)
    80005180:	05013a03          	ld	s4,80(sp)
    80005184:	04813a83          	ld	s5,72(sp)
    80005188:	04013b03          	ld	s6,64(sp)
    8000518c:	03813b83          	ld	s7,56(sp)
    80005190:	03013c03          	ld	s8,48(sp)
    80005194:	02813c83          	ld	s9,40(sp)
    80005198:	08010113          	addi	sp,sp,128
    8000519c:	00008067          	ret
    800051a0:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800051a4:	000a8513          	mv	a0,s5
    800051a8:	ffffd097          	auipc	ra,0xffffd
    800051ac:	c8c080e7          	jalr	-884(ra) # 80001e34 <_ZdlPv>
    800051b0:	00048513          	mv	a0,s1
    800051b4:	00008097          	auipc	ra,0x8
    800051b8:	8c4080e7          	jalr	-1852(ra) # 8000ca78 <_Unwind_Resume>
    800051bc:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    800051c0:	00048513          	mv	a0,s1
    800051c4:	ffffd097          	auipc	ra,0xffffd
    800051c8:	c70080e7          	jalr	-912(ra) # 80001e34 <_ZdlPv>
    800051cc:	00090513          	mv	a0,s2
    800051d0:	00008097          	auipc	ra,0x8
    800051d4:	8a8080e7          	jalr	-1880(ra) # 8000ca78 <_Unwind_Resume>
    800051d8:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    800051dc:	000b0513          	mv	a0,s6
    800051e0:	ffffd097          	auipc	ra,0xffffd
    800051e4:	c54080e7          	jalr	-940(ra) # 80001e34 <_ZdlPv>
    800051e8:	00048513          	mv	a0,s1
    800051ec:	00008097          	auipc	ra,0x8
    800051f0:	88c080e7          	jalr	-1908(ra) # 8000ca78 <_Unwind_Resume>
    800051f4:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    800051f8:	000c8513          	mv	a0,s9
    800051fc:	ffffd097          	auipc	ra,0xffffd
    80005200:	c38080e7          	jalr	-968(ra) # 80001e34 <_ZdlPv>
    80005204:	00048513          	mv	a0,s1
    80005208:	00008097          	auipc	ra,0x8
    8000520c:	870080e7          	jalr	-1936(ra) # 8000ca78 <_Unwind_Resume>
    80005210:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80005214:	000c8513          	mv	a0,s9
    80005218:	ffffd097          	auipc	ra,0xffffd
    8000521c:	c1c080e7          	jalr	-996(ra) # 80001e34 <_ZdlPv>
    80005220:	00048513          	mv	a0,s1
    80005224:	00008097          	auipc	ra,0x8
    80005228:	854080e7          	jalr	-1964(ra) # 8000ca78 <_Unwind_Resume>

000000008000522c <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    8000522c:	ff010113          	addi	sp,sp,-16
    80005230:	00113423          	sd	ra,8(sp)
    80005234:	00813023          	sd	s0,0(sp)
    80005238:	01010413          	addi	s0,sp,16
    8000523c:	00006797          	auipc	a5,0x6
    80005240:	60c78793          	addi	a5,a5,1548 # 8000b848 <_ZTV12ConsumerSync+0x10>
    80005244:	00f53023          	sd	a5,0(a0)
    80005248:	ffffd097          	auipc	ra,0xffffd
    8000524c:	b20080e7          	jalr	-1248(ra) # 80001d68 <_ZN6ThreadD1Ev>
    80005250:	00813083          	ld	ra,8(sp)
    80005254:	00013403          	ld	s0,0(sp)
    80005258:	01010113          	addi	sp,sp,16
    8000525c:	00008067          	ret

0000000080005260 <_ZN12ConsumerSyncD0Ev>:
    80005260:	fe010113          	addi	sp,sp,-32
    80005264:	00113c23          	sd	ra,24(sp)
    80005268:	00813823          	sd	s0,16(sp)
    8000526c:	00913423          	sd	s1,8(sp)
    80005270:	02010413          	addi	s0,sp,32
    80005274:	00050493          	mv	s1,a0
    80005278:	00006797          	auipc	a5,0x6
    8000527c:	5d078793          	addi	a5,a5,1488 # 8000b848 <_ZTV12ConsumerSync+0x10>
    80005280:	00f53023          	sd	a5,0(a0)
    80005284:	ffffd097          	auipc	ra,0xffffd
    80005288:	ae4080e7          	jalr	-1308(ra) # 80001d68 <_ZN6ThreadD1Ev>
    8000528c:	00048513          	mv	a0,s1
    80005290:	ffffd097          	auipc	ra,0xffffd
    80005294:	ba4080e7          	jalr	-1116(ra) # 80001e34 <_ZdlPv>
    80005298:	01813083          	ld	ra,24(sp)
    8000529c:	01013403          	ld	s0,16(sp)
    800052a0:	00813483          	ld	s1,8(sp)
    800052a4:	02010113          	addi	sp,sp,32
    800052a8:	00008067          	ret

00000000800052ac <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    800052ac:	ff010113          	addi	sp,sp,-16
    800052b0:	00113423          	sd	ra,8(sp)
    800052b4:	00813023          	sd	s0,0(sp)
    800052b8:	01010413          	addi	s0,sp,16
    800052bc:	00006797          	auipc	a5,0x6
    800052c0:	56478793          	addi	a5,a5,1380 # 8000b820 <_ZTV12ProducerSync+0x10>
    800052c4:	00f53023          	sd	a5,0(a0)
    800052c8:	ffffd097          	auipc	ra,0xffffd
    800052cc:	aa0080e7          	jalr	-1376(ra) # 80001d68 <_ZN6ThreadD1Ev>
    800052d0:	00813083          	ld	ra,8(sp)
    800052d4:	00013403          	ld	s0,0(sp)
    800052d8:	01010113          	addi	sp,sp,16
    800052dc:	00008067          	ret

00000000800052e0 <_ZN12ProducerSyncD0Ev>:
    800052e0:	fe010113          	addi	sp,sp,-32
    800052e4:	00113c23          	sd	ra,24(sp)
    800052e8:	00813823          	sd	s0,16(sp)
    800052ec:	00913423          	sd	s1,8(sp)
    800052f0:	02010413          	addi	s0,sp,32
    800052f4:	00050493          	mv	s1,a0
    800052f8:	00006797          	auipc	a5,0x6
    800052fc:	52878793          	addi	a5,a5,1320 # 8000b820 <_ZTV12ProducerSync+0x10>
    80005300:	00f53023          	sd	a5,0(a0)
    80005304:	ffffd097          	auipc	ra,0xffffd
    80005308:	a64080e7          	jalr	-1436(ra) # 80001d68 <_ZN6ThreadD1Ev>
    8000530c:	00048513          	mv	a0,s1
    80005310:	ffffd097          	auipc	ra,0xffffd
    80005314:	b24080e7          	jalr	-1244(ra) # 80001e34 <_ZdlPv>
    80005318:	01813083          	ld	ra,24(sp)
    8000531c:	01013403          	ld	s0,16(sp)
    80005320:	00813483          	ld	s1,8(sp)
    80005324:	02010113          	addi	sp,sp,32
    80005328:	00008067          	ret

000000008000532c <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    8000532c:	ff010113          	addi	sp,sp,-16
    80005330:	00113423          	sd	ra,8(sp)
    80005334:	00813023          	sd	s0,0(sp)
    80005338:	01010413          	addi	s0,sp,16
    8000533c:	00006797          	auipc	a5,0x6
    80005340:	4bc78793          	addi	a5,a5,1212 # 8000b7f8 <_ZTV16ProducerKeyboard+0x10>
    80005344:	00f53023          	sd	a5,0(a0)
    80005348:	ffffd097          	auipc	ra,0xffffd
    8000534c:	a20080e7          	jalr	-1504(ra) # 80001d68 <_ZN6ThreadD1Ev>
    80005350:	00813083          	ld	ra,8(sp)
    80005354:	00013403          	ld	s0,0(sp)
    80005358:	01010113          	addi	sp,sp,16
    8000535c:	00008067          	ret

0000000080005360 <_ZN16ProducerKeyboardD0Ev>:
    80005360:	fe010113          	addi	sp,sp,-32
    80005364:	00113c23          	sd	ra,24(sp)
    80005368:	00813823          	sd	s0,16(sp)
    8000536c:	00913423          	sd	s1,8(sp)
    80005370:	02010413          	addi	s0,sp,32
    80005374:	00050493          	mv	s1,a0
    80005378:	00006797          	auipc	a5,0x6
    8000537c:	48078793          	addi	a5,a5,1152 # 8000b7f8 <_ZTV16ProducerKeyboard+0x10>
    80005380:	00f53023          	sd	a5,0(a0)
    80005384:	ffffd097          	auipc	ra,0xffffd
    80005388:	9e4080e7          	jalr	-1564(ra) # 80001d68 <_ZN6ThreadD1Ev>
    8000538c:	00048513          	mv	a0,s1
    80005390:	ffffd097          	auipc	ra,0xffffd
    80005394:	aa4080e7          	jalr	-1372(ra) # 80001e34 <_ZdlPv>
    80005398:	01813083          	ld	ra,24(sp)
    8000539c:	01013403          	ld	s0,16(sp)
    800053a0:	00813483          	ld	s1,8(sp)
    800053a4:	02010113          	addi	sp,sp,32
    800053a8:	00008067          	ret

00000000800053ac <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    800053ac:	ff010113          	addi	sp,sp,-16
    800053b0:	00113423          	sd	ra,8(sp)
    800053b4:	00813023          	sd	s0,0(sp)
    800053b8:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    800053bc:	02053583          	ld	a1,32(a0)
    800053c0:	fffff097          	auipc	ra,0xfffff
    800053c4:	7e4080e7          	jalr	2020(ra) # 80004ba4 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    800053c8:	00813083          	ld	ra,8(sp)
    800053cc:	00013403          	ld	s0,0(sp)
    800053d0:	01010113          	addi	sp,sp,16
    800053d4:	00008067          	ret

00000000800053d8 <_ZN12ProducerSync3runEv>:
    void run() override {
    800053d8:	ff010113          	addi	sp,sp,-16
    800053dc:	00113423          	sd	ra,8(sp)
    800053e0:	00813023          	sd	s0,0(sp)
    800053e4:	01010413          	addi	s0,sp,16
        producer(td);
    800053e8:	02053583          	ld	a1,32(a0)
    800053ec:	00000097          	auipc	ra,0x0
    800053f0:	878080e7          	jalr	-1928(ra) # 80004c64 <_ZN12ProducerSync8producerEPv>
    }
    800053f4:	00813083          	ld	ra,8(sp)
    800053f8:	00013403          	ld	s0,0(sp)
    800053fc:	01010113          	addi	sp,sp,16
    80005400:	00008067          	ret

0000000080005404 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005404:	ff010113          	addi	sp,sp,-16
    80005408:	00113423          	sd	ra,8(sp)
    8000540c:	00813023          	sd	s0,0(sp)
    80005410:	01010413          	addi	s0,sp,16
        consumer(td);
    80005414:	02053583          	ld	a1,32(a0)
    80005418:	00000097          	auipc	ra,0x0
    8000541c:	8e0080e7          	jalr	-1824(ra) # 80004cf8 <_ZN12ConsumerSync8consumerEPv>
    }
    80005420:	00813083          	ld	ra,8(sp)
    80005424:	00013403          	ld	s0,0(sp)
    80005428:	01010113          	addi	sp,sp,16
    8000542c:	00008067          	ret

0000000080005430 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005430:	fe010113          	addi	sp,sp,-32
    80005434:	00113c23          	sd	ra,24(sp)
    80005438:	00813823          	sd	s0,16(sp)
    8000543c:	00913423          	sd	s1,8(sp)
    80005440:	02010413          	addi	s0,sp,32
    80005444:	00050493          	mv	s1,a0
    LOCK();
    80005448:	00100613          	li	a2,1
    8000544c:	00000593          	li	a1,0
    80005450:	00006517          	auipc	a0,0x6
    80005454:	55050513          	addi	a0,a0,1360 # 8000b9a0 <lockPrint>
    80005458:	ffffc097          	auipc	ra,0xffffc
    8000545c:	ccc080e7          	jalr	-820(ra) # 80001124 <copy_and_swap>
    80005460:	00050863          	beqz	a0,80005470 <_Z11printStringPKc+0x40>
    80005464:	ffffc097          	auipc	ra,0xffffc
    80005468:	e10080e7          	jalr	-496(ra) # 80001274 <thread_dispatch>
    8000546c:	fddff06f          	j	80005448 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005470:	0004c503          	lbu	a0,0(s1)
    80005474:	00050a63          	beqz	a0,80005488 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005478:	ffffc097          	auipc	ra,0xffffc
    8000547c:	fbc080e7          	jalr	-68(ra) # 80001434 <putc>
        string++;
    80005480:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005484:	fedff06f          	j	80005470 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005488:	00000613          	li	a2,0
    8000548c:	00100593          	li	a1,1
    80005490:	00006517          	auipc	a0,0x6
    80005494:	51050513          	addi	a0,a0,1296 # 8000b9a0 <lockPrint>
    80005498:	ffffc097          	auipc	ra,0xffffc
    8000549c:	c8c080e7          	jalr	-884(ra) # 80001124 <copy_and_swap>
    800054a0:	fe0514e3          	bnez	a0,80005488 <_Z11printStringPKc+0x58>
}
    800054a4:	01813083          	ld	ra,24(sp)
    800054a8:	01013403          	ld	s0,16(sp)
    800054ac:	00813483          	ld	s1,8(sp)
    800054b0:	02010113          	addi	sp,sp,32
    800054b4:	00008067          	ret

00000000800054b8 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800054b8:	fd010113          	addi	sp,sp,-48
    800054bc:	02113423          	sd	ra,40(sp)
    800054c0:	02813023          	sd	s0,32(sp)
    800054c4:	00913c23          	sd	s1,24(sp)
    800054c8:	01213823          	sd	s2,16(sp)
    800054cc:	01313423          	sd	s3,8(sp)
    800054d0:	01413023          	sd	s4,0(sp)
    800054d4:	03010413          	addi	s0,sp,48
    800054d8:	00050993          	mv	s3,a0
    800054dc:	00058a13          	mv	s4,a1
    LOCK();
    800054e0:	00100613          	li	a2,1
    800054e4:	00000593          	li	a1,0
    800054e8:	00006517          	auipc	a0,0x6
    800054ec:	4b850513          	addi	a0,a0,1208 # 8000b9a0 <lockPrint>
    800054f0:	ffffc097          	auipc	ra,0xffffc
    800054f4:	c34080e7          	jalr	-972(ra) # 80001124 <copy_and_swap>
    800054f8:	00050863          	beqz	a0,80005508 <_Z9getStringPci+0x50>
    800054fc:	ffffc097          	auipc	ra,0xffffc
    80005500:	d78080e7          	jalr	-648(ra) # 80001274 <thread_dispatch>
    80005504:	fddff06f          	j	800054e0 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005508:	00000913          	li	s2,0
    8000550c:	00090493          	mv	s1,s2
    80005510:	0019091b          	addiw	s2,s2,1
    80005514:	03495a63          	bge	s2,s4,80005548 <_Z9getStringPci+0x90>
        cc = getc();
    80005518:	ffffc097          	auipc	ra,0xffffc
    8000551c:	f44080e7          	jalr	-188(ra) # 8000145c <getc>
        if(cc < 1)
    80005520:	02050463          	beqz	a0,80005548 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80005524:	009984b3          	add	s1,s3,s1
    80005528:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    8000552c:	00a00793          	li	a5,10
    80005530:	00f50a63          	beq	a0,a5,80005544 <_Z9getStringPci+0x8c>
    80005534:	00d00793          	li	a5,13
    80005538:	fcf51ae3          	bne	a0,a5,8000550c <_Z9getStringPci+0x54>
        buf[i++] = c;
    8000553c:	00090493          	mv	s1,s2
    80005540:	0080006f          	j	80005548 <_Z9getStringPci+0x90>
    80005544:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005548:	009984b3          	add	s1,s3,s1
    8000554c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005550:	00000613          	li	a2,0
    80005554:	00100593          	li	a1,1
    80005558:	00006517          	auipc	a0,0x6
    8000555c:	44850513          	addi	a0,a0,1096 # 8000b9a0 <lockPrint>
    80005560:	ffffc097          	auipc	ra,0xffffc
    80005564:	bc4080e7          	jalr	-1084(ra) # 80001124 <copy_and_swap>
    80005568:	fe0514e3          	bnez	a0,80005550 <_Z9getStringPci+0x98>
    return buf;
}
    8000556c:	00098513          	mv	a0,s3
    80005570:	02813083          	ld	ra,40(sp)
    80005574:	02013403          	ld	s0,32(sp)
    80005578:	01813483          	ld	s1,24(sp)
    8000557c:	01013903          	ld	s2,16(sp)
    80005580:	00813983          	ld	s3,8(sp)
    80005584:	00013a03          	ld	s4,0(sp)
    80005588:	03010113          	addi	sp,sp,48
    8000558c:	00008067          	ret

0000000080005590 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005590:	ff010113          	addi	sp,sp,-16
    80005594:	00813423          	sd	s0,8(sp)
    80005598:	01010413          	addi	s0,sp,16
    8000559c:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800055a0:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800055a4:	0006c603          	lbu	a2,0(a3)
    800055a8:	fd06071b          	addiw	a4,a2,-48
    800055ac:	0ff77713          	andi	a4,a4,255
    800055b0:	00900793          	li	a5,9
    800055b4:	02e7e063          	bltu	a5,a4,800055d4 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800055b8:	0025179b          	slliw	a5,a0,0x2
    800055bc:	00a787bb          	addw	a5,a5,a0
    800055c0:	0017979b          	slliw	a5,a5,0x1
    800055c4:	00168693          	addi	a3,a3,1
    800055c8:	00c787bb          	addw	a5,a5,a2
    800055cc:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800055d0:	fd5ff06f          	j	800055a4 <_Z11stringToIntPKc+0x14>
    return n;
}
    800055d4:	00813403          	ld	s0,8(sp)
    800055d8:	01010113          	addi	sp,sp,16
    800055dc:	00008067          	ret

00000000800055e0 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800055e0:	fc010113          	addi	sp,sp,-64
    800055e4:	02113c23          	sd	ra,56(sp)
    800055e8:	02813823          	sd	s0,48(sp)
    800055ec:	02913423          	sd	s1,40(sp)
    800055f0:	03213023          	sd	s2,32(sp)
    800055f4:	01313c23          	sd	s3,24(sp)
    800055f8:	04010413          	addi	s0,sp,64
    800055fc:	00050493          	mv	s1,a0
    80005600:	00058913          	mv	s2,a1
    80005604:	00060993          	mv	s3,a2
    LOCK();
    80005608:	00100613          	li	a2,1
    8000560c:	00000593          	li	a1,0
    80005610:	00006517          	auipc	a0,0x6
    80005614:	39050513          	addi	a0,a0,912 # 8000b9a0 <lockPrint>
    80005618:	ffffc097          	auipc	ra,0xffffc
    8000561c:	b0c080e7          	jalr	-1268(ra) # 80001124 <copy_and_swap>
    80005620:	00050863          	beqz	a0,80005630 <_Z8printIntiii+0x50>
    80005624:	ffffc097          	auipc	ra,0xffffc
    80005628:	c50080e7          	jalr	-944(ra) # 80001274 <thread_dispatch>
    8000562c:	fddff06f          	j	80005608 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005630:	00098463          	beqz	s3,80005638 <_Z8printIntiii+0x58>
    80005634:	0804c463          	bltz	s1,800056bc <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005638:	0004851b          	sext.w	a0,s1
    neg = 0;
    8000563c:	00000593          	li	a1,0
    }

    i = 0;
    80005640:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005644:	0009079b          	sext.w	a5,s2
    80005648:	0325773b          	remuw	a4,a0,s2
    8000564c:	00048613          	mv	a2,s1
    80005650:	0014849b          	addiw	s1,s1,1
    80005654:	02071693          	slli	a3,a4,0x20
    80005658:	0206d693          	srli	a3,a3,0x20
    8000565c:	00006717          	auipc	a4,0x6
    80005660:	20470713          	addi	a4,a4,516 # 8000b860 <digits>
    80005664:	00d70733          	add	a4,a4,a3
    80005668:	00074683          	lbu	a3,0(a4)
    8000566c:	fd040713          	addi	a4,s0,-48
    80005670:	00c70733          	add	a4,a4,a2
    80005674:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005678:	0005071b          	sext.w	a4,a0
    8000567c:	0325553b          	divuw	a0,a0,s2
    80005680:	fcf772e3          	bgeu	a4,a5,80005644 <_Z8printIntiii+0x64>
    if(neg)
    80005684:	00058c63          	beqz	a1,8000569c <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80005688:	fd040793          	addi	a5,s0,-48
    8000568c:	009784b3          	add	s1,a5,s1
    80005690:	02d00793          	li	a5,45
    80005694:	fef48823          	sb	a5,-16(s1)
    80005698:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    8000569c:	fff4849b          	addiw	s1,s1,-1
    800056a0:	0204c463          	bltz	s1,800056c8 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    800056a4:	fd040793          	addi	a5,s0,-48
    800056a8:	009787b3          	add	a5,a5,s1
    800056ac:	ff07c503          	lbu	a0,-16(a5)
    800056b0:	ffffc097          	auipc	ra,0xffffc
    800056b4:	d84080e7          	jalr	-636(ra) # 80001434 <putc>
    800056b8:	fe5ff06f          	j	8000569c <_Z8printIntiii+0xbc>
        x = -xx;
    800056bc:	4090053b          	negw	a0,s1
        neg = 1;
    800056c0:	00100593          	li	a1,1
        x = -xx;
    800056c4:	f7dff06f          	j	80005640 <_Z8printIntiii+0x60>

    UNLOCK();
    800056c8:	00000613          	li	a2,0
    800056cc:	00100593          	li	a1,1
    800056d0:	00006517          	auipc	a0,0x6
    800056d4:	2d050513          	addi	a0,a0,720 # 8000b9a0 <lockPrint>
    800056d8:	ffffc097          	auipc	ra,0xffffc
    800056dc:	a4c080e7          	jalr	-1460(ra) # 80001124 <copy_and_swap>
    800056e0:	fe0514e3          	bnez	a0,800056c8 <_Z8printIntiii+0xe8>
    800056e4:	03813083          	ld	ra,56(sp)
    800056e8:	03013403          	ld	s0,48(sp)
    800056ec:	02813483          	ld	s1,40(sp)
    800056f0:	02013903          	ld	s2,32(sp)
    800056f4:	01813983          	ld	s3,24(sp)
    800056f8:	04010113          	addi	sp,sp,64
    800056fc:	00008067          	ret

0000000080005700 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005700:	fd010113          	addi	sp,sp,-48
    80005704:	02113423          	sd	ra,40(sp)
    80005708:	02813023          	sd	s0,32(sp)
    8000570c:	00913c23          	sd	s1,24(sp)
    80005710:	01213823          	sd	s2,16(sp)
    80005714:	01313423          	sd	s3,8(sp)
    80005718:	03010413          	addi	s0,sp,48
    8000571c:	00050493          	mv	s1,a0
    80005720:	00058913          	mv	s2,a1
    80005724:	0015879b          	addiw	a5,a1,1
    80005728:	0007851b          	sext.w	a0,a5
    8000572c:	00f4a023          	sw	a5,0(s1)
    80005730:	0004a823          	sw	zero,16(s1)
    80005734:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005738:	00251513          	slli	a0,a0,0x2
    8000573c:	ffffc097          	auipc	ra,0xffffc
    80005740:	a08080e7          	jalr	-1528(ra) # 80001144 <mem_alloc>
    80005744:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005748:	01800513          	li	a0,24
    8000574c:	ffffc097          	auipc	ra,0xffffc
    80005750:	698080e7          	jalr	1688(ra) # 80001de4 <_Znwm>
    80005754:	00050993          	mv	s3,a0
    80005758:	00000593          	li	a1,0
    8000575c:	ffffd097          	auipc	ra,0xffffd
    80005760:	89c080e7          	jalr	-1892(ra) # 80001ff8 <_ZN9SemaphoreC1Ej>
    80005764:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005768:	01800513          	li	a0,24
    8000576c:	ffffc097          	auipc	ra,0xffffc
    80005770:	678080e7          	jalr	1656(ra) # 80001de4 <_Znwm>
    80005774:	00050993          	mv	s3,a0
    80005778:	00090593          	mv	a1,s2
    8000577c:	ffffd097          	auipc	ra,0xffffd
    80005780:	87c080e7          	jalr	-1924(ra) # 80001ff8 <_ZN9SemaphoreC1Ej>
    80005784:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005788:	01800513          	li	a0,24
    8000578c:	ffffc097          	auipc	ra,0xffffc
    80005790:	658080e7          	jalr	1624(ra) # 80001de4 <_Znwm>
    80005794:	00050913          	mv	s2,a0
    80005798:	00100593          	li	a1,1
    8000579c:	ffffd097          	auipc	ra,0xffffd
    800057a0:	85c080e7          	jalr	-1956(ra) # 80001ff8 <_ZN9SemaphoreC1Ej>
    800057a4:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    800057a8:	01800513          	li	a0,24
    800057ac:	ffffc097          	auipc	ra,0xffffc
    800057b0:	638080e7          	jalr	1592(ra) # 80001de4 <_Znwm>
    800057b4:	00050913          	mv	s2,a0
    800057b8:	00100593          	li	a1,1
    800057bc:	ffffd097          	auipc	ra,0xffffd
    800057c0:	83c080e7          	jalr	-1988(ra) # 80001ff8 <_ZN9SemaphoreC1Ej>
    800057c4:	0324b823          	sd	s2,48(s1)
}
    800057c8:	02813083          	ld	ra,40(sp)
    800057cc:	02013403          	ld	s0,32(sp)
    800057d0:	01813483          	ld	s1,24(sp)
    800057d4:	01013903          	ld	s2,16(sp)
    800057d8:	00813983          	ld	s3,8(sp)
    800057dc:	03010113          	addi	sp,sp,48
    800057e0:	00008067          	ret
    800057e4:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    800057e8:	00098513          	mv	a0,s3
    800057ec:	ffffc097          	auipc	ra,0xffffc
    800057f0:	648080e7          	jalr	1608(ra) # 80001e34 <_ZdlPv>
    800057f4:	00048513          	mv	a0,s1
    800057f8:	00007097          	auipc	ra,0x7
    800057fc:	280080e7          	jalr	640(ra) # 8000ca78 <_Unwind_Resume>
    80005800:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005804:	00098513          	mv	a0,s3
    80005808:	ffffc097          	auipc	ra,0xffffc
    8000580c:	62c080e7          	jalr	1580(ra) # 80001e34 <_ZdlPv>
    80005810:	00048513          	mv	a0,s1
    80005814:	00007097          	auipc	ra,0x7
    80005818:	264080e7          	jalr	612(ra) # 8000ca78 <_Unwind_Resume>
    8000581c:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005820:	00090513          	mv	a0,s2
    80005824:	ffffc097          	auipc	ra,0xffffc
    80005828:	610080e7          	jalr	1552(ra) # 80001e34 <_ZdlPv>
    8000582c:	00048513          	mv	a0,s1
    80005830:	00007097          	auipc	ra,0x7
    80005834:	248080e7          	jalr	584(ra) # 8000ca78 <_Unwind_Resume>
    80005838:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    8000583c:	00090513          	mv	a0,s2
    80005840:	ffffc097          	auipc	ra,0xffffc
    80005844:	5f4080e7          	jalr	1524(ra) # 80001e34 <_ZdlPv>
    80005848:	00048513          	mv	a0,s1
    8000584c:	00007097          	auipc	ra,0x7
    80005850:	22c080e7          	jalr	556(ra) # 8000ca78 <_Unwind_Resume>

0000000080005854 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005854:	fe010113          	addi	sp,sp,-32
    80005858:	00113c23          	sd	ra,24(sp)
    8000585c:	00813823          	sd	s0,16(sp)
    80005860:	00913423          	sd	s1,8(sp)
    80005864:	01213023          	sd	s2,0(sp)
    80005868:	02010413          	addi	s0,sp,32
    8000586c:	00050493          	mv	s1,a0
    80005870:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005874:	01853503          	ld	a0,24(a0)
    80005878:	ffffc097          	auipc	ra,0xffffc
    8000587c:	7bc080e7          	jalr	1980(ra) # 80002034 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005880:	0304b503          	ld	a0,48(s1)
    80005884:	ffffc097          	auipc	ra,0xffffc
    80005888:	7b0080e7          	jalr	1968(ra) # 80002034 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    8000588c:	0084b783          	ld	a5,8(s1)
    80005890:	0144a703          	lw	a4,20(s1)
    80005894:	00271713          	slli	a4,a4,0x2
    80005898:	00e787b3          	add	a5,a5,a4
    8000589c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800058a0:	0144a783          	lw	a5,20(s1)
    800058a4:	0017879b          	addiw	a5,a5,1
    800058a8:	0004a703          	lw	a4,0(s1)
    800058ac:	02e7e7bb          	remw	a5,a5,a4
    800058b0:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800058b4:	0304b503          	ld	a0,48(s1)
    800058b8:	ffffc097          	auipc	ra,0xffffc
    800058bc:	7a8080e7          	jalr	1960(ra) # 80002060 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    800058c0:	0204b503          	ld	a0,32(s1)
    800058c4:	ffffc097          	auipc	ra,0xffffc
    800058c8:	79c080e7          	jalr	1948(ra) # 80002060 <_ZN9Semaphore6signalEv>

}
    800058cc:	01813083          	ld	ra,24(sp)
    800058d0:	01013403          	ld	s0,16(sp)
    800058d4:	00813483          	ld	s1,8(sp)
    800058d8:	00013903          	ld	s2,0(sp)
    800058dc:	02010113          	addi	sp,sp,32
    800058e0:	00008067          	ret

00000000800058e4 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    800058e4:	fe010113          	addi	sp,sp,-32
    800058e8:	00113c23          	sd	ra,24(sp)
    800058ec:	00813823          	sd	s0,16(sp)
    800058f0:	00913423          	sd	s1,8(sp)
    800058f4:	01213023          	sd	s2,0(sp)
    800058f8:	02010413          	addi	s0,sp,32
    800058fc:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005900:	02053503          	ld	a0,32(a0)
    80005904:	ffffc097          	auipc	ra,0xffffc
    80005908:	730080e7          	jalr	1840(ra) # 80002034 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    8000590c:	0284b503          	ld	a0,40(s1)
    80005910:	ffffc097          	auipc	ra,0xffffc
    80005914:	724080e7          	jalr	1828(ra) # 80002034 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005918:	0084b703          	ld	a4,8(s1)
    8000591c:	0104a783          	lw	a5,16(s1)
    80005920:	00279693          	slli	a3,a5,0x2
    80005924:	00d70733          	add	a4,a4,a3
    80005928:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000592c:	0017879b          	addiw	a5,a5,1
    80005930:	0004a703          	lw	a4,0(s1)
    80005934:	02e7e7bb          	remw	a5,a5,a4
    80005938:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    8000593c:	0284b503          	ld	a0,40(s1)
    80005940:	ffffc097          	auipc	ra,0xffffc
    80005944:	720080e7          	jalr	1824(ra) # 80002060 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005948:	0184b503          	ld	a0,24(s1)
    8000594c:	ffffc097          	auipc	ra,0xffffc
    80005950:	714080e7          	jalr	1812(ra) # 80002060 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005954:	00090513          	mv	a0,s2
    80005958:	01813083          	ld	ra,24(sp)
    8000595c:	01013403          	ld	s0,16(sp)
    80005960:	00813483          	ld	s1,8(sp)
    80005964:	00013903          	ld	s2,0(sp)
    80005968:	02010113          	addi	sp,sp,32
    8000596c:	00008067          	ret

0000000080005970 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005970:	fe010113          	addi	sp,sp,-32
    80005974:	00113c23          	sd	ra,24(sp)
    80005978:	00813823          	sd	s0,16(sp)
    8000597c:	00913423          	sd	s1,8(sp)
    80005980:	01213023          	sd	s2,0(sp)
    80005984:	02010413          	addi	s0,sp,32
    80005988:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    8000598c:	02853503          	ld	a0,40(a0)
    80005990:	ffffc097          	auipc	ra,0xffffc
    80005994:	6a4080e7          	jalr	1700(ra) # 80002034 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005998:	0304b503          	ld	a0,48(s1)
    8000599c:	ffffc097          	auipc	ra,0xffffc
    800059a0:	698080e7          	jalr	1688(ra) # 80002034 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    800059a4:	0144a783          	lw	a5,20(s1)
    800059a8:	0104a903          	lw	s2,16(s1)
    800059ac:	0327ce63          	blt	a5,s2,800059e8 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    800059b0:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    800059b4:	0304b503          	ld	a0,48(s1)
    800059b8:	ffffc097          	auipc	ra,0xffffc
    800059bc:	6a8080e7          	jalr	1704(ra) # 80002060 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    800059c0:	0284b503          	ld	a0,40(s1)
    800059c4:	ffffc097          	auipc	ra,0xffffc
    800059c8:	69c080e7          	jalr	1692(ra) # 80002060 <_ZN9Semaphore6signalEv>

    return ret;
}
    800059cc:	00090513          	mv	a0,s2
    800059d0:	01813083          	ld	ra,24(sp)
    800059d4:	01013403          	ld	s0,16(sp)
    800059d8:	00813483          	ld	s1,8(sp)
    800059dc:	00013903          	ld	s2,0(sp)
    800059e0:	02010113          	addi	sp,sp,32
    800059e4:	00008067          	ret
        ret = cap - head + tail;
    800059e8:	0004a703          	lw	a4,0(s1)
    800059ec:	4127093b          	subw	s2,a4,s2
    800059f0:	00f9093b          	addw	s2,s2,a5
    800059f4:	fc1ff06f          	j	800059b4 <_ZN9BufferCPP6getCntEv+0x44>

00000000800059f8 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    800059f8:	fe010113          	addi	sp,sp,-32
    800059fc:	00113c23          	sd	ra,24(sp)
    80005a00:	00813823          	sd	s0,16(sp)
    80005a04:	00913423          	sd	s1,8(sp)
    80005a08:	02010413          	addi	s0,sp,32
    80005a0c:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005a10:	00a00513          	li	a0,10
    80005a14:	ffffc097          	auipc	ra,0xffffc
    80005a18:	720080e7          	jalr	1824(ra) # 80002134 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005a1c:	00004517          	auipc	a0,0x4
    80005a20:	a4c50513          	addi	a0,a0,-1460 # 80009468 <CONSOLE_STATUS+0x458>
    80005a24:	00000097          	auipc	ra,0x0
    80005a28:	a0c080e7          	jalr	-1524(ra) # 80005430 <_Z11printStringPKc>
    while (getCnt()) {
    80005a2c:	00048513          	mv	a0,s1
    80005a30:	00000097          	auipc	ra,0x0
    80005a34:	f40080e7          	jalr	-192(ra) # 80005970 <_ZN9BufferCPP6getCntEv>
    80005a38:	02050c63          	beqz	a0,80005a70 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005a3c:	0084b783          	ld	a5,8(s1)
    80005a40:	0104a703          	lw	a4,16(s1)
    80005a44:	00271713          	slli	a4,a4,0x2
    80005a48:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80005a4c:	0007c503          	lbu	a0,0(a5)
    80005a50:	ffffc097          	auipc	ra,0xffffc
    80005a54:	6e4080e7          	jalr	1764(ra) # 80002134 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005a58:	0104a783          	lw	a5,16(s1)
    80005a5c:	0017879b          	addiw	a5,a5,1
    80005a60:	0004a703          	lw	a4,0(s1)
    80005a64:	02e7e7bb          	remw	a5,a5,a4
    80005a68:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005a6c:	fc1ff06f          	j	80005a2c <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005a70:	02100513          	li	a0,33
    80005a74:	ffffc097          	auipc	ra,0xffffc
    80005a78:	6c0080e7          	jalr	1728(ra) # 80002134 <_ZN7Console4putcEc>
    Console::putc('\n');
    80005a7c:	00a00513          	li	a0,10
    80005a80:	ffffc097          	auipc	ra,0xffffc
    80005a84:	6b4080e7          	jalr	1716(ra) # 80002134 <_ZN7Console4putcEc>
    mem_free(buffer);
    80005a88:	0084b503          	ld	a0,8(s1)
    80005a8c:	ffffb097          	auipc	ra,0xffffb
    80005a90:	6f8080e7          	jalr	1784(ra) # 80001184 <mem_free>
    delete itemAvailable;
    80005a94:	0204b503          	ld	a0,32(s1)
    80005a98:	00050863          	beqz	a0,80005aa8 <_ZN9BufferCPPD1Ev+0xb0>
    80005a9c:	00053783          	ld	a5,0(a0)
    80005aa0:	0087b783          	ld	a5,8(a5)
    80005aa4:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005aa8:	0184b503          	ld	a0,24(s1)
    80005aac:	00050863          	beqz	a0,80005abc <_ZN9BufferCPPD1Ev+0xc4>
    80005ab0:	00053783          	ld	a5,0(a0)
    80005ab4:	0087b783          	ld	a5,8(a5)
    80005ab8:	000780e7          	jalr	a5
    delete mutexTail;
    80005abc:	0304b503          	ld	a0,48(s1)
    80005ac0:	00050863          	beqz	a0,80005ad0 <_ZN9BufferCPPD1Ev+0xd8>
    80005ac4:	00053783          	ld	a5,0(a0)
    80005ac8:	0087b783          	ld	a5,8(a5)
    80005acc:	000780e7          	jalr	a5
    delete mutexHead;
    80005ad0:	0284b503          	ld	a0,40(s1)
    80005ad4:	00050863          	beqz	a0,80005ae4 <_ZN9BufferCPPD1Ev+0xec>
    80005ad8:	00053783          	ld	a5,0(a0)
    80005adc:	0087b783          	ld	a5,8(a5)
    80005ae0:	000780e7          	jalr	a5
}
    80005ae4:	01813083          	ld	ra,24(sp)
    80005ae8:	01013403          	ld	s0,16(sp)
    80005aec:	00813483          	ld	s1,8(sp)
    80005af0:	02010113          	addi	sp,sp,32
    80005af4:	00008067          	ret

0000000080005af8 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80005af8:	fe010113          	addi	sp,sp,-32
    80005afc:	00113c23          	sd	ra,24(sp)
    80005b00:	00813823          	sd	s0,16(sp)
    80005b04:	00913423          	sd	s1,8(sp)
    80005b08:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80005b0c:	00004517          	auipc	a0,0x4
    80005b10:	97450513          	addi	a0,a0,-1676 # 80009480 <CONSOLE_STATUS+0x470>
    80005b14:	00000097          	auipc	ra,0x0
    80005b18:	91c080e7          	jalr	-1764(ra) # 80005430 <_Z11printStringPKc>
    int test = getc() - '0';
    80005b1c:	ffffc097          	auipc	ra,0xffffc
    80005b20:	940080e7          	jalr	-1728(ra) # 8000145c <getc>
    80005b24:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80005b28:	ffffc097          	auipc	ra,0xffffc
    80005b2c:	934080e7          	jalr	-1740(ra) # 8000145c <getc>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80005b30:	00700793          	li	a5,7
    80005b34:	1097e263          	bltu	a5,s1,80005c38 <_Z8userMainv+0x140>
    80005b38:	00249493          	slli	s1,s1,0x2
    80005b3c:	00004717          	auipc	a4,0x4
    80005b40:	b9c70713          	addi	a4,a4,-1124 # 800096d8 <CONSOLE_STATUS+0x6c8>
    80005b44:	00e484b3          	add	s1,s1,a4
    80005b48:	0004a783          	lw	a5,0(s1)
    80005b4c:	00e787b3          	add	a5,a5,a4
    80005b50:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    80005b54:	fffff097          	auipc	ra,0xfffff
    80005b58:	f54080e7          	jalr	-172(ra) # 80004aa8 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80005b5c:	00004517          	auipc	a0,0x4
    80005b60:	94450513          	addi	a0,a0,-1724 # 800094a0 <CONSOLE_STATUS+0x490>
    80005b64:	00000097          	auipc	ra,0x0
    80005b68:	8cc080e7          	jalr	-1844(ra) # 80005430 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80005b6c:	01813083          	ld	ra,24(sp)
    80005b70:	01013403          	ld	s0,16(sp)
    80005b74:	00813483          	ld	s1,8(sp)
    80005b78:	02010113          	addi	sp,sp,32
    80005b7c:	00008067          	ret
            Threads_CPP_API_test();
    80005b80:	ffffe097          	auipc	ra,0xffffe
    80005b84:	e08080e7          	jalr	-504(ra) # 80003988 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80005b88:	00004517          	auipc	a0,0x4
    80005b8c:	95850513          	addi	a0,a0,-1704 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80005b90:	00000097          	auipc	ra,0x0
    80005b94:	8a0080e7          	jalr	-1888(ra) # 80005430 <_Z11printStringPKc>
            break;
    80005b98:	fd5ff06f          	j	80005b6c <_Z8userMainv+0x74>
            producerConsumer_C_API();
    80005b9c:	ffffd097          	auipc	ra,0xffffd
    80005ba0:	640080e7          	jalr	1600(ra) # 800031dc <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80005ba4:	00004517          	auipc	a0,0x4
    80005ba8:	97c50513          	addi	a0,a0,-1668 # 80009520 <CONSOLE_STATUS+0x510>
    80005bac:	00000097          	auipc	ra,0x0
    80005bb0:	884080e7          	jalr	-1916(ra) # 80005430 <_Z11printStringPKc>
            break;
    80005bb4:	fb9ff06f          	j	80005b6c <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    80005bb8:	fffff097          	auipc	ra,0xfffff
    80005bbc:	234080e7          	jalr	564(ra) # 80004dec <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80005bc0:	00004517          	auipc	a0,0x4
    80005bc4:	9b050513          	addi	a0,a0,-1616 # 80009570 <CONSOLE_STATUS+0x560>
    80005bc8:	00000097          	auipc	ra,0x0
    80005bcc:	868080e7          	jalr	-1944(ra) # 80005430 <_Z11printStringPKc>
            break;
    80005bd0:	f9dff06f          	j	80005b6c <_Z8userMainv+0x74>
            testSleeping();
    80005bd4:	00000097          	auipc	ra,0x0
    80005bd8:	11c080e7          	jalr	284(ra) # 80005cf0 <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    80005bdc:	00004517          	auipc	a0,0x4
    80005be0:	9ec50513          	addi	a0,a0,-1556 # 800095c8 <CONSOLE_STATUS+0x5b8>
    80005be4:	00000097          	auipc	ra,0x0
    80005be8:	84c080e7          	jalr	-1972(ra) # 80005430 <_Z11printStringPKc>
            break;
    80005bec:	f81ff06f          	j	80005b6c <_Z8userMainv+0x74>
            testConsumerProducer();
    80005bf0:	ffffe097          	auipc	ra,0xffffe
    80005bf4:	258080e7          	jalr	600(ra) # 80003e48 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    80005bf8:	00004517          	auipc	a0,0x4
    80005bfc:	a0050513          	addi	a0,a0,-1536 # 800095f8 <CONSOLE_STATUS+0x5e8>
    80005c00:	00000097          	auipc	ra,0x0
    80005c04:	830080e7          	jalr	-2000(ra) # 80005430 <_Z11printStringPKc>
            break;
    80005c08:	f65ff06f          	j	80005b6c <_Z8userMainv+0x74>
            System_Mode_test();
    80005c0c:	00000097          	auipc	ra,0x0
    80005c10:	658080e7          	jalr	1624(ra) # 80006264 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80005c14:	00004517          	auipc	a0,0x4
    80005c18:	a2450513          	addi	a0,a0,-1500 # 80009638 <CONSOLE_STATUS+0x628>
    80005c1c:	00000097          	auipc	ra,0x0
    80005c20:	814080e7          	jalr	-2028(ra) # 80005430 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80005c24:	00004517          	auipc	a0,0x4
    80005c28:	a3450513          	addi	a0,a0,-1484 # 80009658 <CONSOLE_STATUS+0x648>
    80005c2c:	00000097          	auipc	ra,0x0
    80005c30:	804080e7          	jalr	-2044(ra) # 80005430 <_Z11printStringPKc>
            break;
    80005c34:	f39ff06f          	j	80005b6c <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    80005c38:	00004517          	auipc	a0,0x4
    80005c3c:	a7850513          	addi	a0,a0,-1416 # 800096b0 <CONSOLE_STATUS+0x6a0>
    80005c40:	fffff097          	auipc	ra,0xfffff
    80005c44:	7f0080e7          	jalr	2032(ra) # 80005430 <_Z11printStringPKc>
    80005c48:	f25ff06f          	j	80005b6c <_Z8userMainv+0x74>

0000000080005c4c <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80005c4c:	fe010113          	addi	sp,sp,-32
    80005c50:	00113c23          	sd	ra,24(sp)
    80005c54:	00813823          	sd	s0,16(sp)
    80005c58:	00913423          	sd	s1,8(sp)
    80005c5c:	01213023          	sd	s2,0(sp)
    80005c60:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005c64:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005c68:	00600493          	li	s1,6
    while (--i > 0) {
    80005c6c:	fff4849b          	addiw	s1,s1,-1
    80005c70:	04905463          	blez	s1,80005cb8 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80005c74:	00004517          	auipc	a0,0x4
    80005c78:	a8450513          	addi	a0,a0,-1404 # 800096f8 <CONSOLE_STATUS+0x6e8>
    80005c7c:	fffff097          	auipc	ra,0xfffff
    80005c80:	7b4080e7          	jalr	1972(ra) # 80005430 <_Z11printStringPKc>
        printInt(sleep_time);
    80005c84:	00000613          	li	a2,0
    80005c88:	00a00593          	li	a1,10
    80005c8c:	0009051b          	sext.w	a0,s2
    80005c90:	00000097          	auipc	ra,0x0
    80005c94:	950080e7          	jalr	-1712(ra) # 800055e0 <_Z8printIntiii>
        printString(" !\n");
    80005c98:	00004517          	auipc	a0,0x4
    80005c9c:	a6850513          	addi	a0,a0,-1432 # 80009700 <CONSOLE_STATUS+0x6f0>
    80005ca0:	fffff097          	auipc	ra,0xfffff
    80005ca4:	790080e7          	jalr	1936(ra) # 80005430 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005ca8:	00090513          	mv	a0,s2
    80005cac:	ffffc097          	auipc	ra,0xffffc
    80005cb0:	808080e7          	jalr	-2040(ra) # 800014b4 <time_sleep>
    while (--i > 0) {
    80005cb4:	fb9ff06f          	j	80005c6c <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005cb8:	00a00793          	li	a5,10
    80005cbc:	02f95933          	divu	s2,s2,a5
    80005cc0:	fff90913          	addi	s2,s2,-1
    80005cc4:	00006797          	auipc	a5,0x6
    80005cc8:	ce478793          	addi	a5,a5,-796 # 8000b9a8 <_ZL8finished>
    80005ccc:	01278933          	add	s2,a5,s2
    80005cd0:	00100793          	li	a5,1
    80005cd4:	00f90023          	sb	a5,0(s2)
}
    80005cd8:	01813083          	ld	ra,24(sp)
    80005cdc:	01013403          	ld	s0,16(sp)
    80005ce0:	00813483          	ld	s1,8(sp)
    80005ce4:	00013903          	ld	s2,0(sp)
    80005ce8:	02010113          	addi	sp,sp,32
    80005cec:	00008067          	ret

0000000080005cf0 <_Z12testSleepingv>:

void testSleeping() {
    80005cf0:	fc010113          	addi	sp,sp,-64
    80005cf4:	02113c23          	sd	ra,56(sp)
    80005cf8:	02813823          	sd	s0,48(sp)
    80005cfc:	02913423          	sd	s1,40(sp)
    80005d00:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005d04:	00a00793          	li	a5,10
    80005d08:	fcf43823          	sd	a5,-48(s0)
    80005d0c:	01400793          	li	a5,20
    80005d10:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005d14:	00000493          	li	s1,0
    80005d18:	02c0006f          	j	80005d44 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005d1c:	00349793          	slli	a5,s1,0x3
    80005d20:	fd040613          	addi	a2,s0,-48
    80005d24:	00f60633          	add	a2,a2,a5
    80005d28:	00000597          	auipc	a1,0x0
    80005d2c:	f2458593          	addi	a1,a1,-220 # 80005c4c <_ZL9sleepyRunPv>
    80005d30:	fc040513          	addi	a0,s0,-64
    80005d34:	00f50533          	add	a0,a0,a5
    80005d38:	ffffb097          	auipc	ra,0xffffb
    80005d3c:	49c080e7          	jalr	1180(ra) # 800011d4 <thread_create>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005d40:	0014849b          	addiw	s1,s1,1
    80005d44:	00100793          	li	a5,1
    80005d48:	fc97dae3          	bge	a5,s1,80005d1c <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80005d4c:	00006797          	auipc	a5,0x6
    80005d50:	c5c7c783          	lbu	a5,-932(a5) # 8000b9a8 <_ZL8finished>
    80005d54:	fe078ce3          	beqz	a5,80005d4c <_Z12testSleepingv+0x5c>
    80005d58:	00006797          	auipc	a5,0x6
    80005d5c:	c517c783          	lbu	a5,-943(a5) # 8000b9a9 <_ZL8finished+0x1>
    80005d60:	fe0786e3          	beqz	a5,80005d4c <_Z12testSleepingv+0x5c>
}
    80005d64:	03813083          	ld	ra,56(sp)
    80005d68:	03013403          	ld	s0,48(sp)
    80005d6c:	02813483          	ld	s1,40(sp)
    80005d70:	04010113          	addi	sp,sp,64
    80005d74:	00008067          	ret

0000000080005d78 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005d78:	fe010113          	addi	sp,sp,-32
    80005d7c:	00113c23          	sd	ra,24(sp)
    80005d80:	00813823          	sd	s0,16(sp)
    80005d84:	00913423          	sd	s1,8(sp)
    80005d88:	01213023          	sd	s2,0(sp)
    80005d8c:	02010413          	addi	s0,sp,32
    80005d90:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005d94:	00100793          	li	a5,1
    80005d98:	02a7f863          	bgeu	a5,a0,80005dc8 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005d9c:	00a00793          	li	a5,10
    80005da0:	02f577b3          	remu	a5,a0,a5
    80005da4:	02078e63          	beqz	a5,80005de0 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005da8:	fff48513          	addi	a0,s1,-1
    80005dac:	00000097          	auipc	ra,0x0
    80005db0:	fcc080e7          	jalr	-52(ra) # 80005d78 <_ZL9fibonaccim>
    80005db4:	00050913          	mv	s2,a0
    80005db8:	ffe48513          	addi	a0,s1,-2
    80005dbc:	00000097          	auipc	ra,0x0
    80005dc0:	fbc080e7          	jalr	-68(ra) # 80005d78 <_ZL9fibonaccim>
    80005dc4:	00a90533          	add	a0,s2,a0
}
    80005dc8:	01813083          	ld	ra,24(sp)
    80005dcc:	01013403          	ld	s0,16(sp)
    80005dd0:	00813483          	ld	s1,8(sp)
    80005dd4:	00013903          	ld	s2,0(sp)
    80005dd8:	02010113          	addi	sp,sp,32
    80005ddc:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005de0:	ffffb097          	auipc	ra,0xffffb
    80005de4:	494080e7          	jalr	1172(ra) # 80001274 <thread_dispatch>
    80005de8:	fc1ff06f          	j	80005da8 <_ZL9fibonaccim+0x30>

0000000080005dec <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005dec:	fe010113          	addi	sp,sp,-32
    80005df0:	00113c23          	sd	ra,24(sp)
    80005df4:	00813823          	sd	s0,16(sp)
    80005df8:	00913423          	sd	s1,8(sp)
    80005dfc:	01213023          	sd	s2,0(sp)
    80005e00:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005e04:	00a00493          	li	s1,10
    80005e08:	0400006f          	j	80005e48 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005e0c:	00003517          	auipc	a0,0x3
    80005e10:	25450513          	addi	a0,a0,596 # 80009060 <CONSOLE_STATUS+0x50>
    80005e14:	fffff097          	auipc	ra,0xfffff
    80005e18:	61c080e7          	jalr	1564(ra) # 80005430 <_Z11printStringPKc>
    80005e1c:	00000613          	li	a2,0
    80005e20:	00a00593          	li	a1,10
    80005e24:	00048513          	mv	a0,s1
    80005e28:	fffff097          	auipc	ra,0xfffff
    80005e2c:	7b8080e7          	jalr	1976(ra) # 800055e0 <_Z8printIntiii>
    80005e30:	00003517          	auipc	a0,0x3
    80005e34:	79050513          	addi	a0,a0,1936 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80005e38:	fffff097          	auipc	ra,0xfffff
    80005e3c:	5f8080e7          	jalr	1528(ra) # 80005430 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005e40:	0014849b          	addiw	s1,s1,1
    80005e44:	0ff4f493          	andi	s1,s1,255
    80005e48:	00c00793          	li	a5,12
    80005e4c:	fc97f0e3          	bgeu	a5,s1,80005e0c <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005e50:	00003517          	auipc	a0,0x3
    80005e54:	59850513          	addi	a0,a0,1432 # 800093e8 <CONSOLE_STATUS+0x3d8>
    80005e58:	fffff097          	auipc	ra,0xfffff
    80005e5c:	5d8080e7          	jalr	1496(ra) # 80005430 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005e60:	00500313          	li	t1,5
    thread_dispatch();
    80005e64:	ffffb097          	auipc	ra,0xffffb
    80005e68:	410080e7          	jalr	1040(ra) # 80001274 <thread_dispatch>

    uint64 result = fibonacci(16);
    80005e6c:	01000513          	li	a0,16
    80005e70:	00000097          	auipc	ra,0x0
    80005e74:	f08080e7          	jalr	-248(ra) # 80005d78 <_ZL9fibonaccim>
    80005e78:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005e7c:	00003517          	auipc	a0,0x3
    80005e80:	1fc50513          	addi	a0,a0,508 # 80009078 <CONSOLE_STATUS+0x68>
    80005e84:	fffff097          	auipc	ra,0xfffff
    80005e88:	5ac080e7          	jalr	1452(ra) # 80005430 <_Z11printStringPKc>
    80005e8c:	00000613          	li	a2,0
    80005e90:	00a00593          	li	a1,10
    80005e94:	0009051b          	sext.w	a0,s2
    80005e98:	fffff097          	auipc	ra,0xfffff
    80005e9c:	748080e7          	jalr	1864(ra) # 800055e0 <_Z8printIntiii>
    80005ea0:	00003517          	auipc	a0,0x3
    80005ea4:	72050513          	addi	a0,a0,1824 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80005ea8:	fffff097          	auipc	ra,0xfffff
    80005eac:	588080e7          	jalr	1416(ra) # 80005430 <_Z11printStringPKc>
    80005eb0:	0400006f          	j	80005ef0 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005eb4:	00003517          	auipc	a0,0x3
    80005eb8:	1ac50513          	addi	a0,a0,428 # 80009060 <CONSOLE_STATUS+0x50>
    80005ebc:	fffff097          	auipc	ra,0xfffff
    80005ec0:	574080e7          	jalr	1396(ra) # 80005430 <_Z11printStringPKc>
    80005ec4:	00000613          	li	a2,0
    80005ec8:	00a00593          	li	a1,10
    80005ecc:	00048513          	mv	a0,s1
    80005ed0:	fffff097          	auipc	ra,0xfffff
    80005ed4:	710080e7          	jalr	1808(ra) # 800055e0 <_Z8printIntiii>
    80005ed8:	00003517          	auipc	a0,0x3
    80005edc:	6e850513          	addi	a0,a0,1768 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80005ee0:	fffff097          	auipc	ra,0xfffff
    80005ee4:	550080e7          	jalr	1360(ra) # 80005430 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005ee8:	0014849b          	addiw	s1,s1,1
    80005eec:	0ff4f493          	andi	s1,s1,255
    80005ef0:	00f00793          	li	a5,15
    80005ef4:	fc97f0e3          	bgeu	a5,s1,80005eb4 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005ef8:	00003517          	auipc	a0,0x3
    80005efc:	50050513          	addi	a0,a0,1280 # 800093f8 <CONSOLE_STATUS+0x3e8>
    80005f00:	fffff097          	auipc	ra,0xfffff
    80005f04:	530080e7          	jalr	1328(ra) # 80005430 <_Z11printStringPKc>
    finishedD = true;
    80005f08:	00100793          	li	a5,1
    80005f0c:	00006717          	auipc	a4,0x6
    80005f10:	a8f70f23          	sb	a5,-1378(a4) # 8000b9aa <_ZL9finishedD>
    thread_dispatch();
    80005f14:	ffffb097          	auipc	ra,0xffffb
    80005f18:	360080e7          	jalr	864(ra) # 80001274 <thread_dispatch>
}
    80005f1c:	01813083          	ld	ra,24(sp)
    80005f20:	01013403          	ld	s0,16(sp)
    80005f24:	00813483          	ld	s1,8(sp)
    80005f28:	00013903          	ld	s2,0(sp)
    80005f2c:	02010113          	addi	sp,sp,32
    80005f30:	00008067          	ret

0000000080005f34 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005f34:	fe010113          	addi	sp,sp,-32
    80005f38:	00113c23          	sd	ra,24(sp)
    80005f3c:	00813823          	sd	s0,16(sp)
    80005f40:	00913423          	sd	s1,8(sp)
    80005f44:	01213023          	sd	s2,0(sp)
    80005f48:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005f4c:	00000493          	li	s1,0
    80005f50:	0400006f          	j	80005f90 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005f54:	00003517          	auipc	a0,0x3
    80005f58:	0dc50513          	addi	a0,a0,220 # 80009030 <CONSOLE_STATUS+0x20>
    80005f5c:	fffff097          	auipc	ra,0xfffff
    80005f60:	4d4080e7          	jalr	1236(ra) # 80005430 <_Z11printStringPKc>
    80005f64:	00000613          	li	a2,0
    80005f68:	00a00593          	li	a1,10
    80005f6c:	00048513          	mv	a0,s1
    80005f70:	fffff097          	auipc	ra,0xfffff
    80005f74:	670080e7          	jalr	1648(ra) # 800055e0 <_Z8printIntiii>
    80005f78:	00003517          	auipc	a0,0x3
    80005f7c:	64850513          	addi	a0,a0,1608 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80005f80:	fffff097          	auipc	ra,0xfffff
    80005f84:	4b0080e7          	jalr	1200(ra) # 80005430 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005f88:	0014849b          	addiw	s1,s1,1
    80005f8c:	0ff4f493          	andi	s1,s1,255
    80005f90:	00200793          	li	a5,2
    80005f94:	fc97f0e3          	bgeu	a5,s1,80005f54 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005f98:	00003517          	auipc	a0,0x3
    80005f9c:	44050513          	addi	a0,a0,1088 # 800093d8 <CONSOLE_STATUS+0x3c8>
    80005fa0:	fffff097          	auipc	ra,0xfffff
    80005fa4:	490080e7          	jalr	1168(ra) # 80005430 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005fa8:	00700313          	li	t1,7
    thread_dispatch();
    80005fac:	ffffb097          	auipc	ra,0xffffb
    80005fb0:	2c8080e7          	jalr	712(ra) # 80001274 <thread_dispatch>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005fb4:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005fb8:	00003517          	auipc	a0,0x3
    80005fbc:	09050513          	addi	a0,a0,144 # 80009048 <CONSOLE_STATUS+0x38>
    80005fc0:	fffff097          	auipc	ra,0xfffff
    80005fc4:	470080e7          	jalr	1136(ra) # 80005430 <_Z11printStringPKc>
    80005fc8:	00000613          	li	a2,0
    80005fcc:	00a00593          	li	a1,10
    80005fd0:	0009051b          	sext.w	a0,s2
    80005fd4:	fffff097          	auipc	ra,0xfffff
    80005fd8:	60c080e7          	jalr	1548(ra) # 800055e0 <_Z8printIntiii>
    80005fdc:	00003517          	auipc	a0,0x3
    80005fe0:	5e450513          	addi	a0,a0,1508 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80005fe4:	fffff097          	auipc	ra,0xfffff
    80005fe8:	44c080e7          	jalr	1100(ra) # 80005430 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005fec:	00c00513          	li	a0,12
    80005ff0:	00000097          	auipc	ra,0x0
    80005ff4:	d88080e7          	jalr	-632(ra) # 80005d78 <_ZL9fibonaccim>
    80005ff8:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005ffc:	00003517          	auipc	a0,0x3
    80006000:	05450513          	addi	a0,a0,84 # 80009050 <CONSOLE_STATUS+0x40>
    80006004:	fffff097          	auipc	ra,0xfffff
    80006008:	42c080e7          	jalr	1068(ra) # 80005430 <_Z11printStringPKc>
    8000600c:	00000613          	li	a2,0
    80006010:	00a00593          	li	a1,10
    80006014:	0009051b          	sext.w	a0,s2
    80006018:	fffff097          	auipc	ra,0xfffff
    8000601c:	5c8080e7          	jalr	1480(ra) # 800055e0 <_Z8printIntiii>
    80006020:	00003517          	auipc	a0,0x3
    80006024:	5a050513          	addi	a0,a0,1440 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80006028:	fffff097          	auipc	ra,0xfffff
    8000602c:	408080e7          	jalr	1032(ra) # 80005430 <_Z11printStringPKc>
    80006030:	0400006f          	j	80006070 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80006034:	00003517          	auipc	a0,0x3
    80006038:	ffc50513          	addi	a0,a0,-4 # 80009030 <CONSOLE_STATUS+0x20>
    8000603c:	fffff097          	auipc	ra,0xfffff
    80006040:	3f4080e7          	jalr	1012(ra) # 80005430 <_Z11printStringPKc>
    80006044:	00000613          	li	a2,0
    80006048:	00a00593          	li	a1,10
    8000604c:	00048513          	mv	a0,s1
    80006050:	fffff097          	auipc	ra,0xfffff
    80006054:	590080e7          	jalr	1424(ra) # 800055e0 <_Z8printIntiii>
    80006058:	00003517          	auipc	a0,0x3
    8000605c:	56850513          	addi	a0,a0,1384 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80006060:	fffff097          	auipc	ra,0xfffff
    80006064:	3d0080e7          	jalr	976(ra) # 80005430 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80006068:	0014849b          	addiw	s1,s1,1
    8000606c:	0ff4f493          	andi	s1,s1,255
    80006070:	00500793          	li	a5,5
    80006074:	fc97f0e3          	bgeu	a5,s1,80006034 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80006078:	00003517          	auipc	a0,0x3
    8000607c:	34050513          	addi	a0,a0,832 # 800093b8 <CONSOLE_STATUS+0x3a8>
    80006080:	fffff097          	auipc	ra,0xfffff
    80006084:	3b0080e7          	jalr	944(ra) # 80005430 <_Z11printStringPKc>
    finishedC = true;
    80006088:	00100793          	li	a5,1
    8000608c:	00006717          	auipc	a4,0x6
    80006090:	90f70fa3          	sb	a5,-1761(a4) # 8000b9ab <_ZL9finishedC>
    thread_dispatch();
    80006094:	ffffb097          	auipc	ra,0xffffb
    80006098:	1e0080e7          	jalr	480(ra) # 80001274 <thread_dispatch>
}
    8000609c:	01813083          	ld	ra,24(sp)
    800060a0:	01013403          	ld	s0,16(sp)
    800060a4:	00813483          	ld	s1,8(sp)
    800060a8:	00013903          	ld	s2,0(sp)
    800060ac:	02010113          	addi	sp,sp,32
    800060b0:	00008067          	ret

00000000800060b4 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800060b4:	fe010113          	addi	sp,sp,-32
    800060b8:	00113c23          	sd	ra,24(sp)
    800060bc:	00813823          	sd	s0,16(sp)
    800060c0:	00913423          	sd	s1,8(sp)
    800060c4:	01213023          	sd	s2,0(sp)
    800060c8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800060cc:	00000913          	li	s2,0
    800060d0:	0400006f          	j	80006110 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    800060d4:	ffffb097          	auipc	ra,0xffffb
    800060d8:	1a0080e7          	jalr	416(ra) # 80001274 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    800060dc:	00148493          	addi	s1,s1,1
    800060e0:	000027b7          	lui	a5,0x2
    800060e4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800060e8:	0097ee63          	bltu	a5,s1,80006104 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800060ec:	00000713          	li	a4,0
    800060f0:	000077b7          	lui	a5,0x7
    800060f4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800060f8:	fce7eee3          	bltu	a5,a4,800060d4 <_ZL11workerBodyBPv+0x20>
    800060fc:	00170713          	addi	a4,a4,1
    80006100:	ff1ff06f          	j	800060f0 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80006104:	00a00793          	li	a5,10
    80006108:	04f90663          	beq	s2,a5,80006154 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    8000610c:	00190913          	addi	s2,s2,1
    80006110:	00f00793          	li	a5,15
    80006114:	0527e463          	bltu	a5,s2,8000615c <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80006118:	00003517          	auipc	a0,0x3
    8000611c:	f1050513          	addi	a0,a0,-240 # 80009028 <CONSOLE_STATUS+0x18>
    80006120:	fffff097          	auipc	ra,0xfffff
    80006124:	310080e7          	jalr	784(ra) # 80005430 <_Z11printStringPKc>
    80006128:	00000613          	li	a2,0
    8000612c:	00a00593          	li	a1,10
    80006130:	0009051b          	sext.w	a0,s2
    80006134:	fffff097          	auipc	ra,0xfffff
    80006138:	4ac080e7          	jalr	1196(ra) # 800055e0 <_Z8printIntiii>
    8000613c:	00003517          	auipc	a0,0x3
    80006140:	48450513          	addi	a0,a0,1156 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80006144:	fffff097          	auipc	ra,0xfffff
    80006148:	2ec080e7          	jalr	748(ra) # 80005430 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000614c:	00000493          	li	s1,0
    80006150:	f91ff06f          	j	800060e0 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80006154:	14102ff3          	csrr	t6,sepc
    80006158:	fb5ff06f          	j	8000610c <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    8000615c:	00003517          	auipc	a0,0x3
    80006160:	26c50513          	addi	a0,a0,620 # 800093c8 <CONSOLE_STATUS+0x3b8>
    80006164:	fffff097          	auipc	ra,0xfffff
    80006168:	2cc080e7          	jalr	716(ra) # 80005430 <_Z11printStringPKc>
    finishedB = true;
    8000616c:	00100793          	li	a5,1
    80006170:	00006717          	auipc	a4,0x6
    80006174:	82f70e23          	sb	a5,-1988(a4) # 8000b9ac <_ZL9finishedB>
    thread_dispatch();
    80006178:	ffffb097          	auipc	ra,0xffffb
    8000617c:	0fc080e7          	jalr	252(ra) # 80001274 <thread_dispatch>
}
    80006180:	01813083          	ld	ra,24(sp)
    80006184:	01013403          	ld	s0,16(sp)
    80006188:	00813483          	ld	s1,8(sp)
    8000618c:	00013903          	ld	s2,0(sp)
    80006190:	02010113          	addi	sp,sp,32
    80006194:	00008067          	ret

0000000080006198 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80006198:	fe010113          	addi	sp,sp,-32
    8000619c:	00113c23          	sd	ra,24(sp)
    800061a0:	00813823          	sd	s0,16(sp)
    800061a4:	00913423          	sd	s1,8(sp)
    800061a8:	01213023          	sd	s2,0(sp)
    800061ac:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800061b0:	00000913          	li	s2,0
    800061b4:	0380006f          	j	800061ec <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800061b8:	ffffb097          	auipc	ra,0xffffb
    800061bc:	0bc080e7          	jalr	188(ra) # 80001274 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    800061c0:	00148493          	addi	s1,s1,1
    800061c4:	000027b7          	lui	a5,0x2
    800061c8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800061cc:	0097ee63          	bltu	a5,s1,800061e8 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800061d0:	00000713          	li	a4,0
    800061d4:	000077b7          	lui	a5,0x7
    800061d8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800061dc:	fce7eee3          	bltu	a5,a4,800061b8 <_ZL11workerBodyAPv+0x20>
    800061e0:	00170713          	addi	a4,a4,1
    800061e4:	ff1ff06f          	j	800061d4 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800061e8:	00190913          	addi	s2,s2,1
    800061ec:	00900793          	li	a5,9
    800061f0:	0527e063          	bltu	a5,s2,80006230 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800061f4:	00003517          	auipc	a0,0x3
    800061f8:	e2c50513          	addi	a0,a0,-468 # 80009020 <CONSOLE_STATUS+0x10>
    800061fc:	fffff097          	auipc	ra,0xfffff
    80006200:	234080e7          	jalr	564(ra) # 80005430 <_Z11printStringPKc>
    80006204:	00000613          	li	a2,0
    80006208:	00a00593          	li	a1,10
    8000620c:	0009051b          	sext.w	a0,s2
    80006210:	fffff097          	auipc	ra,0xfffff
    80006214:	3d0080e7          	jalr	976(ra) # 800055e0 <_Z8printIntiii>
    80006218:	00003517          	auipc	a0,0x3
    8000621c:	3a850513          	addi	a0,a0,936 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80006220:	fffff097          	auipc	ra,0xfffff
    80006224:	210080e7          	jalr	528(ra) # 80005430 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006228:	00000493          	li	s1,0
    8000622c:	f99ff06f          	j	800061c4 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80006230:	00003517          	auipc	a0,0x3
    80006234:	18850513          	addi	a0,a0,392 # 800093b8 <CONSOLE_STATUS+0x3a8>
    80006238:	fffff097          	auipc	ra,0xfffff
    8000623c:	1f8080e7          	jalr	504(ra) # 80005430 <_Z11printStringPKc>
    finishedA = true;
    80006240:	00100793          	li	a5,1
    80006244:	00005717          	auipc	a4,0x5
    80006248:	76f704a3          	sb	a5,1897(a4) # 8000b9ad <_ZL9finishedA>
}
    8000624c:	01813083          	ld	ra,24(sp)
    80006250:	01013403          	ld	s0,16(sp)
    80006254:	00813483          	ld	s1,8(sp)
    80006258:	00013903          	ld	s2,0(sp)
    8000625c:	02010113          	addi	sp,sp,32
    80006260:	00008067          	ret

0000000080006264 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006264:	fd010113          	addi	sp,sp,-48
    80006268:	02113423          	sd	ra,40(sp)
    8000626c:	02813023          	sd	s0,32(sp)
    80006270:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006274:	00000613          	li	a2,0
    80006278:	00000597          	auipc	a1,0x0
    8000627c:	f2058593          	addi	a1,a1,-224 # 80006198 <_ZL11workerBodyAPv>
    80006280:	fd040513          	addi	a0,s0,-48
    80006284:	ffffb097          	auipc	ra,0xffffb
    80006288:	f50080e7          	jalr	-176(ra) # 800011d4 <thread_create>
    printString("ThreadA created\n");
    8000628c:	00003517          	auipc	a0,0x3
    80006290:	17c50513          	addi	a0,a0,380 # 80009408 <CONSOLE_STATUS+0x3f8>
    80006294:	fffff097          	auipc	ra,0xfffff
    80006298:	19c080e7          	jalr	412(ra) # 80005430 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    8000629c:	00000613          	li	a2,0
    800062a0:	00000597          	auipc	a1,0x0
    800062a4:	e1458593          	addi	a1,a1,-492 # 800060b4 <_ZL11workerBodyBPv>
    800062a8:	fd840513          	addi	a0,s0,-40
    800062ac:	ffffb097          	auipc	ra,0xffffb
    800062b0:	f28080e7          	jalr	-216(ra) # 800011d4 <thread_create>
    printString("ThreadB created\n");
    800062b4:	00003517          	auipc	a0,0x3
    800062b8:	16c50513          	addi	a0,a0,364 # 80009420 <CONSOLE_STATUS+0x410>
    800062bc:	fffff097          	auipc	ra,0xfffff
    800062c0:	174080e7          	jalr	372(ra) # 80005430 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800062c4:	00000613          	li	a2,0
    800062c8:	00000597          	auipc	a1,0x0
    800062cc:	c6c58593          	addi	a1,a1,-916 # 80005f34 <_ZL11workerBodyCPv>
    800062d0:	fe040513          	addi	a0,s0,-32
    800062d4:	ffffb097          	auipc	ra,0xffffb
    800062d8:	f00080e7          	jalr	-256(ra) # 800011d4 <thread_create>
    printString("ThreadC created\n");
    800062dc:	00003517          	auipc	a0,0x3
    800062e0:	15c50513          	addi	a0,a0,348 # 80009438 <CONSOLE_STATUS+0x428>
    800062e4:	fffff097          	auipc	ra,0xfffff
    800062e8:	14c080e7          	jalr	332(ra) # 80005430 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800062ec:	00000613          	li	a2,0
    800062f0:	00000597          	auipc	a1,0x0
    800062f4:	afc58593          	addi	a1,a1,-1284 # 80005dec <_ZL11workerBodyDPv>
    800062f8:	fe840513          	addi	a0,s0,-24
    800062fc:	ffffb097          	auipc	ra,0xffffb
    80006300:	ed8080e7          	jalr	-296(ra) # 800011d4 <thread_create>
    printString("ThreadD created\n");
    80006304:	00003517          	auipc	a0,0x3
    80006308:	14c50513          	addi	a0,a0,332 # 80009450 <CONSOLE_STATUS+0x440>
    8000630c:	fffff097          	auipc	ra,0xfffff
    80006310:	124080e7          	jalr	292(ra) # 80005430 <_Z11printStringPKc>
    80006314:	00c0006f          	j	80006320 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80006318:	ffffb097          	auipc	ra,0xffffb
    8000631c:	f5c080e7          	jalr	-164(ra) # 80001274 <thread_dispatch>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006320:	00005797          	auipc	a5,0x5
    80006324:	68d7c783          	lbu	a5,1677(a5) # 8000b9ad <_ZL9finishedA>
    80006328:	fe0788e3          	beqz	a5,80006318 <_Z16System_Mode_testv+0xb4>
    8000632c:	00005797          	auipc	a5,0x5
    80006330:	6807c783          	lbu	a5,1664(a5) # 8000b9ac <_ZL9finishedB>
    80006334:	fe0782e3          	beqz	a5,80006318 <_Z16System_Mode_testv+0xb4>
    80006338:	00005797          	auipc	a5,0x5
    8000633c:	6737c783          	lbu	a5,1651(a5) # 8000b9ab <_ZL9finishedC>
    80006340:	fc078ce3          	beqz	a5,80006318 <_Z16System_Mode_testv+0xb4>
    80006344:	00005797          	auipc	a5,0x5
    80006348:	6667c783          	lbu	a5,1638(a5) # 8000b9aa <_ZL9finishedD>
    8000634c:	fc0786e3          	beqz	a5,80006318 <_Z16System_Mode_testv+0xb4>
    }

}
    80006350:	02813083          	ld	ra,40(sp)
    80006354:	02013403          	ld	s0,32(sp)
    80006358:	03010113          	addi	sp,sp,48
    8000635c:	00008067          	ret

0000000080006360 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006360:	fe010113          	addi	sp,sp,-32
    80006364:	00113c23          	sd	ra,24(sp)
    80006368:	00813823          	sd	s0,16(sp)
    8000636c:	00913423          	sd	s1,8(sp)
    80006370:	01213023          	sd	s2,0(sp)
    80006374:	02010413          	addi	s0,sp,32
    80006378:	00050493          	mv	s1,a0
    8000637c:	00058913          	mv	s2,a1
    80006380:	0015879b          	addiw	a5,a1,1
    80006384:	0007851b          	sext.w	a0,a5
    80006388:	00f4a023          	sw	a5,0(s1)
    8000638c:	0004a823          	sw	zero,16(s1)
    80006390:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006394:	00251513          	slli	a0,a0,0x2
    80006398:	ffffb097          	auipc	ra,0xffffb
    8000639c:	dac080e7          	jalr	-596(ra) # 80001144 <mem_alloc>
    800063a0:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800063a4:	00000593          	li	a1,0
    800063a8:	02048513          	addi	a0,s1,32
    800063ac:	ffffb097          	auipc	ra,0xffffb
    800063b0:	f28080e7          	jalr	-216(ra) # 800012d4 <sem_open>
    sem_open(&spaceAvailable, _cap);
    800063b4:	00090593          	mv	a1,s2
    800063b8:	01848513          	addi	a0,s1,24
    800063bc:	ffffb097          	auipc	ra,0xffffb
    800063c0:	f18080e7          	jalr	-232(ra) # 800012d4 <sem_open>
    sem_open(&mutexHead, 1);
    800063c4:	00100593          	li	a1,1
    800063c8:	02848513          	addi	a0,s1,40
    800063cc:	ffffb097          	auipc	ra,0xffffb
    800063d0:	f08080e7          	jalr	-248(ra) # 800012d4 <sem_open>
    sem_open(&mutexTail, 1);
    800063d4:	00100593          	li	a1,1
    800063d8:	03048513          	addi	a0,s1,48
    800063dc:	ffffb097          	auipc	ra,0xffffb
    800063e0:	ef8080e7          	jalr	-264(ra) # 800012d4 <sem_open>
}
    800063e4:	01813083          	ld	ra,24(sp)
    800063e8:	01013403          	ld	s0,16(sp)
    800063ec:	00813483          	ld	s1,8(sp)
    800063f0:	00013903          	ld	s2,0(sp)
    800063f4:	02010113          	addi	sp,sp,32
    800063f8:	00008067          	ret

00000000800063fc <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    800063fc:	fe010113          	addi	sp,sp,-32
    80006400:	00113c23          	sd	ra,24(sp)
    80006404:	00813823          	sd	s0,16(sp)
    80006408:	00913423          	sd	s1,8(sp)
    8000640c:	01213023          	sd	s2,0(sp)
    80006410:	02010413          	addi	s0,sp,32
    80006414:	00050493          	mv	s1,a0
    80006418:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    8000641c:	01853503          	ld	a0,24(a0)
    80006420:	ffffb097          	auipc	ra,0xffffb
    80006424:	f58080e7          	jalr	-168(ra) # 80001378 <sem_wait>

    sem_wait(mutexTail);
    80006428:	0304b503          	ld	a0,48(s1)
    8000642c:	ffffb097          	auipc	ra,0xffffb
    80006430:	f4c080e7          	jalr	-180(ra) # 80001378 <sem_wait>
    buffer[tail] = val;
    80006434:	0084b783          	ld	a5,8(s1)
    80006438:	0144a703          	lw	a4,20(s1)
    8000643c:	00271713          	slli	a4,a4,0x2
    80006440:	00e787b3          	add	a5,a5,a4
    80006444:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006448:	0144a783          	lw	a5,20(s1)
    8000644c:	0017879b          	addiw	a5,a5,1
    80006450:	0004a703          	lw	a4,0(s1)
    80006454:	02e7e7bb          	remw	a5,a5,a4
    80006458:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    8000645c:	0304b503          	ld	a0,48(s1)
    80006460:	ffffb097          	auipc	ra,0xffffb
    80006464:	f64080e7          	jalr	-156(ra) # 800013c4 <sem_signal>

    sem_signal(itemAvailable);
    80006468:	0204b503          	ld	a0,32(s1)
    8000646c:	ffffb097          	auipc	ra,0xffffb
    80006470:	f58080e7          	jalr	-168(ra) # 800013c4 <sem_signal>

}
    80006474:	01813083          	ld	ra,24(sp)
    80006478:	01013403          	ld	s0,16(sp)
    8000647c:	00813483          	ld	s1,8(sp)
    80006480:	00013903          	ld	s2,0(sp)
    80006484:	02010113          	addi	sp,sp,32
    80006488:	00008067          	ret

000000008000648c <_ZN6Buffer3getEv>:

int Buffer::get() {
    8000648c:	fe010113          	addi	sp,sp,-32
    80006490:	00113c23          	sd	ra,24(sp)
    80006494:	00813823          	sd	s0,16(sp)
    80006498:	00913423          	sd	s1,8(sp)
    8000649c:	01213023          	sd	s2,0(sp)
    800064a0:	02010413          	addi	s0,sp,32
    800064a4:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    800064a8:	02053503          	ld	a0,32(a0)
    800064ac:	ffffb097          	auipc	ra,0xffffb
    800064b0:	ecc080e7          	jalr	-308(ra) # 80001378 <sem_wait>

    sem_wait(mutexHead);
    800064b4:	0284b503          	ld	a0,40(s1)
    800064b8:	ffffb097          	auipc	ra,0xffffb
    800064bc:	ec0080e7          	jalr	-320(ra) # 80001378 <sem_wait>

    int ret = buffer[head];
    800064c0:	0084b703          	ld	a4,8(s1)
    800064c4:	0104a783          	lw	a5,16(s1)
    800064c8:	00279693          	slli	a3,a5,0x2
    800064cc:	00d70733          	add	a4,a4,a3
    800064d0:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800064d4:	0017879b          	addiw	a5,a5,1
    800064d8:	0004a703          	lw	a4,0(s1)
    800064dc:	02e7e7bb          	remw	a5,a5,a4
    800064e0:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800064e4:	0284b503          	ld	a0,40(s1)
    800064e8:	ffffb097          	auipc	ra,0xffffb
    800064ec:	edc080e7          	jalr	-292(ra) # 800013c4 <sem_signal>

    sem_signal(spaceAvailable);
    800064f0:	0184b503          	ld	a0,24(s1)
    800064f4:	ffffb097          	auipc	ra,0xffffb
    800064f8:	ed0080e7          	jalr	-304(ra) # 800013c4 <sem_signal>

    return ret;
}
    800064fc:	00090513          	mv	a0,s2
    80006500:	01813083          	ld	ra,24(sp)
    80006504:	01013403          	ld	s0,16(sp)
    80006508:	00813483          	ld	s1,8(sp)
    8000650c:	00013903          	ld	s2,0(sp)
    80006510:	02010113          	addi	sp,sp,32
    80006514:	00008067          	ret

0000000080006518 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80006518:	fe010113          	addi	sp,sp,-32
    8000651c:	00113c23          	sd	ra,24(sp)
    80006520:	00813823          	sd	s0,16(sp)
    80006524:	00913423          	sd	s1,8(sp)
    80006528:	01213023          	sd	s2,0(sp)
    8000652c:	02010413          	addi	s0,sp,32
    80006530:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80006534:	02853503          	ld	a0,40(a0)
    80006538:	ffffb097          	auipc	ra,0xffffb
    8000653c:	e40080e7          	jalr	-448(ra) # 80001378 <sem_wait>
    sem_wait(mutexTail);
    80006540:	0304b503          	ld	a0,48(s1)
    80006544:	ffffb097          	auipc	ra,0xffffb
    80006548:	e34080e7          	jalr	-460(ra) # 80001378 <sem_wait>

    if (tail >= head) {
    8000654c:	0144a783          	lw	a5,20(s1)
    80006550:	0104a903          	lw	s2,16(s1)
    80006554:	0327ce63          	blt	a5,s2,80006590 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80006558:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    8000655c:	0304b503          	ld	a0,48(s1)
    80006560:	ffffb097          	auipc	ra,0xffffb
    80006564:	e64080e7          	jalr	-412(ra) # 800013c4 <sem_signal>
    sem_signal(mutexHead);
    80006568:	0284b503          	ld	a0,40(s1)
    8000656c:	ffffb097          	auipc	ra,0xffffb
    80006570:	e58080e7          	jalr	-424(ra) # 800013c4 <sem_signal>

    return ret;
}
    80006574:	00090513          	mv	a0,s2
    80006578:	01813083          	ld	ra,24(sp)
    8000657c:	01013403          	ld	s0,16(sp)
    80006580:	00813483          	ld	s1,8(sp)
    80006584:	00013903          	ld	s2,0(sp)
    80006588:	02010113          	addi	sp,sp,32
    8000658c:	00008067          	ret
        ret = cap - head + tail;
    80006590:	0004a703          	lw	a4,0(s1)
    80006594:	4127093b          	subw	s2,a4,s2
    80006598:	00f9093b          	addw	s2,s2,a5
    8000659c:	fc1ff06f          	j	8000655c <_ZN6Buffer6getCntEv+0x44>

00000000800065a0 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    800065a0:	fe010113          	addi	sp,sp,-32
    800065a4:	00113c23          	sd	ra,24(sp)
    800065a8:	00813823          	sd	s0,16(sp)
    800065ac:	00913423          	sd	s1,8(sp)
    800065b0:	02010413          	addi	s0,sp,32
    800065b4:	00050493          	mv	s1,a0
    putc('\n');
    800065b8:	00a00513          	li	a0,10
    800065bc:	ffffb097          	auipc	ra,0xffffb
    800065c0:	e78080e7          	jalr	-392(ra) # 80001434 <putc>
    printString("Buffer deleted!\n");
    800065c4:	00003517          	auipc	a0,0x3
    800065c8:	ea450513          	addi	a0,a0,-348 # 80009468 <CONSOLE_STATUS+0x458>
    800065cc:	fffff097          	auipc	ra,0xfffff
    800065d0:	e64080e7          	jalr	-412(ra) # 80005430 <_Z11printStringPKc>
    while (getCnt() > 0) {
    800065d4:	00048513          	mv	a0,s1
    800065d8:	00000097          	auipc	ra,0x0
    800065dc:	f40080e7          	jalr	-192(ra) # 80006518 <_ZN6Buffer6getCntEv>
    800065e0:	02a05c63          	blez	a0,80006618 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    800065e4:	0084b783          	ld	a5,8(s1)
    800065e8:	0104a703          	lw	a4,16(s1)
    800065ec:	00271713          	slli	a4,a4,0x2
    800065f0:	00e787b3          	add	a5,a5,a4
        putc(ch);
    800065f4:	0007c503          	lbu	a0,0(a5)
    800065f8:	ffffb097          	auipc	ra,0xffffb
    800065fc:	e3c080e7          	jalr	-452(ra) # 80001434 <putc>
        head = (head + 1) % cap;
    80006600:	0104a783          	lw	a5,16(s1)
    80006604:	0017879b          	addiw	a5,a5,1
    80006608:	0004a703          	lw	a4,0(s1)
    8000660c:	02e7e7bb          	remw	a5,a5,a4
    80006610:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80006614:	fc1ff06f          	j	800065d4 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80006618:	02100513          	li	a0,33
    8000661c:	ffffb097          	auipc	ra,0xffffb
    80006620:	e18080e7          	jalr	-488(ra) # 80001434 <putc>
    putc('\n');
    80006624:	00a00513          	li	a0,10
    80006628:	ffffb097          	auipc	ra,0xffffb
    8000662c:	e0c080e7          	jalr	-500(ra) # 80001434 <putc>
    mem_free(buffer);
    80006630:	0084b503          	ld	a0,8(s1)
    80006634:	ffffb097          	auipc	ra,0xffffb
    80006638:	b50080e7          	jalr	-1200(ra) # 80001184 <mem_free>
    sem_close(itemAvailable);
    8000663c:	0204b503          	ld	a0,32(s1)
    80006640:	ffffb097          	auipc	ra,0xffffb
    80006644:	cec080e7          	jalr	-788(ra) # 8000132c <sem_close>
    sem_close(spaceAvailable);
    80006648:	0184b503          	ld	a0,24(s1)
    8000664c:	ffffb097          	auipc	ra,0xffffb
    80006650:	ce0080e7          	jalr	-800(ra) # 8000132c <sem_close>
    sem_close(mutexTail);
    80006654:	0304b503          	ld	a0,48(s1)
    80006658:	ffffb097          	auipc	ra,0xffffb
    8000665c:	cd4080e7          	jalr	-812(ra) # 8000132c <sem_close>
    sem_close(mutexHead);
    80006660:	0284b503          	ld	a0,40(s1)
    80006664:	ffffb097          	auipc	ra,0xffffb
    80006668:	cc8080e7          	jalr	-824(ra) # 8000132c <sem_close>
}
    8000666c:	01813083          	ld	ra,24(sp)
    80006670:	01013403          	ld	s0,16(sp)
    80006674:	00813483          	ld	s1,8(sp)
    80006678:	02010113          	addi	sp,sp,32
    8000667c:	00008067          	ret

0000000080006680 <start>:
    80006680:	ff010113          	addi	sp,sp,-16
    80006684:	00813423          	sd	s0,8(sp)
    80006688:	01010413          	addi	s0,sp,16
    8000668c:	300027f3          	csrr	a5,mstatus
    80006690:	ffffe737          	lui	a4,0xffffe
    80006694:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1bdf>
    80006698:	00e7f7b3          	and	a5,a5,a4
    8000669c:	00001737          	lui	a4,0x1
    800066a0:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800066a4:	00e7e7b3          	or	a5,a5,a4
    800066a8:	30079073          	csrw	mstatus,a5
    800066ac:	00000797          	auipc	a5,0x0
    800066b0:	16078793          	addi	a5,a5,352 # 8000680c <system_main>
    800066b4:	34179073          	csrw	mepc,a5
    800066b8:	00000793          	li	a5,0
    800066bc:	18079073          	csrw	satp,a5
    800066c0:	000107b7          	lui	a5,0x10
    800066c4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800066c8:	30279073          	csrw	medeleg,a5
    800066cc:	30379073          	csrw	mideleg,a5
    800066d0:	104027f3          	csrr	a5,sie
    800066d4:	2227e793          	ori	a5,a5,546
    800066d8:	10479073          	csrw	sie,a5
    800066dc:	fff00793          	li	a5,-1
    800066e0:	00a7d793          	srli	a5,a5,0xa
    800066e4:	3b079073          	csrw	pmpaddr0,a5
    800066e8:	00f00793          	li	a5,15
    800066ec:	3a079073          	csrw	pmpcfg0,a5
    800066f0:	f14027f3          	csrr	a5,mhartid
    800066f4:	0200c737          	lui	a4,0x200c
    800066f8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800066fc:	0007869b          	sext.w	a3,a5
    80006700:	00269713          	slli	a4,a3,0x2
    80006704:	000f4637          	lui	a2,0xf4
    80006708:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000670c:	00d70733          	add	a4,a4,a3
    80006710:	0037979b          	slliw	a5,a5,0x3
    80006714:	020046b7          	lui	a3,0x2004
    80006718:	00d787b3          	add	a5,a5,a3
    8000671c:	00c585b3          	add	a1,a1,a2
    80006720:	00371693          	slli	a3,a4,0x3
    80006724:	00005717          	auipc	a4,0x5
    80006728:	28c70713          	addi	a4,a4,652 # 8000b9b0 <timer_scratch>
    8000672c:	00b7b023          	sd	a1,0(a5)
    80006730:	00d70733          	add	a4,a4,a3
    80006734:	00f73c23          	sd	a5,24(a4)
    80006738:	02c73023          	sd	a2,32(a4)
    8000673c:	34071073          	csrw	mscratch,a4
    80006740:	00000797          	auipc	a5,0x0
    80006744:	6e078793          	addi	a5,a5,1760 # 80006e20 <timervec>
    80006748:	30579073          	csrw	mtvec,a5
    8000674c:	300027f3          	csrr	a5,mstatus
    80006750:	0087e793          	ori	a5,a5,8
    80006754:	30079073          	csrw	mstatus,a5
    80006758:	304027f3          	csrr	a5,mie
    8000675c:	0807e793          	ori	a5,a5,128
    80006760:	30479073          	csrw	mie,a5
    80006764:	f14027f3          	csrr	a5,mhartid
    80006768:	0007879b          	sext.w	a5,a5
    8000676c:	00078213          	mv	tp,a5
    80006770:	30200073          	mret
    80006774:	00813403          	ld	s0,8(sp)
    80006778:	01010113          	addi	sp,sp,16
    8000677c:	00008067          	ret

0000000080006780 <timerinit>:
    80006780:	ff010113          	addi	sp,sp,-16
    80006784:	00813423          	sd	s0,8(sp)
    80006788:	01010413          	addi	s0,sp,16
    8000678c:	f14027f3          	csrr	a5,mhartid
    80006790:	0200c737          	lui	a4,0x200c
    80006794:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006798:	0007869b          	sext.w	a3,a5
    8000679c:	00269713          	slli	a4,a3,0x2
    800067a0:	000f4637          	lui	a2,0xf4
    800067a4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800067a8:	00d70733          	add	a4,a4,a3
    800067ac:	0037979b          	slliw	a5,a5,0x3
    800067b0:	020046b7          	lui	a3,0x2004
    800067b4:	00d787b3          	add	a5,a5,a3
    800067b8:	00c585b3          	add	a1,a1,a2
    800067bc:	00371693          	slli	a3,a4,0x3
    800067c0:	00005717          	auipc	a4,0x5
    800067c4:	1f070713          	addi	a4,a4,496 # 8000b9b0 <timer_scratch>
    800067c8:	00b7b023          	sd	a1,0(a5)
    800067cc:	00d70733          	add	a4,a4,a3
    800067d0:	00f73c23          	sd	a5,24(a4)
    800067d4:	02c73023          	sd	a2,32(a4)
    800067d8:	34071073          	csrw	mscratch,a4
    800067dc:	00000797          	auipc	a5,0x0
    800067e0:	64478793          	addi	a5,a5,1604 # 80006e20 <timervec>
    800067e4:	30579073          	csrw	mtvec,a5
    800067e8:	300027f3          	csrr	a5,mstatus
    800067ec:	0087e793          	ori	a5,a5,8
    800067f0:	30079073          	csrw	mstatus,a5
    800067f4:	304027f3          	csrr	a5,mie
    800067f8:	0807e793          	ori	a5,a5,128
    800067fc:	30479073          	csrw	mie,a5
    80006800:	00813403          	ld	s0,8(sp)
    80006804:	01010113          	addi	sp,sp,16
    80006808:	00008067          	ret

000000008000680c <system_main>:
    8000680c:	fe010113          	addi	sp,sp,-32
    80006810:	00813823          	sd	s0,16(sp)
    80006814:	00913423          	sd	s1,8(sp)
    80006818:	00113c23          	sd	ra,24(sp)
    8000681c:	02010413          	addi	s0,sp,32
    80006820:	00000097          	auipc	ra,0x0
    80006824:	0c4080e7          	jalr	196(ra) # 800068e4 <cpuid>
    80006828:	00005497          	auipc	s1,0x5
    8000682c:	0b848493          	addi	s1,s1,184 # 8000b8e0 <started>
    80006830:	02050263          	beqz	a0,80006854 <system_main+0x48>
    80006834:	0004a783          	lw	a5,0(s1)
    80006838:	0007879b          	sext.w	a5,a5
    8000683c:	fe078ce3          	beqz	a5,80006834 <system_main+0x28>
    80006840:	0ff0000f          	fence
    80006844:	00003517          	auipc	a0,0x3
    80006848:	ef450513          	addi	a0,a0,-268 # 80009738 <CONSOLE_STATUS+0x728>
    8000684c:	00001097          	auipc	ra,0x1
    80006850:	a70080e7          	jalr	-1424(ra) # 800072bc <panic>
    80006854:	00001097          	auipc	ra,0x1
    80006858:	9c4080e7          	jalr	-1596(ra) # 80007218 <consoleinit>
    8000685c:	00001097          	auipc	ra,0x1
    80006860:	150080e7          	jalr	336(ra) # 800079ac <printfinit>
    80006864:	00003517          	auipc	a0,0x3
    80006868:	d5c50513          	addi	a0,a0,-676 # 800095c0 <CONSOLE_STATUS+0x5b0>
    8000686c:	00001097          	auipc	ra,0x1
    80006870:	aac080e7          	jalr	-1364(ra) # 80007318 <__printf>
    80006874:	00003517          	auipc	a0,0x3
    80006878:	e9450513          	addi	a0,a0,-364 # 80009708 <CONSOLE_STATUS+0x6f8>
    8000687c:	00001097          	auipc	ra,0x1
    80006880:	a9c080e7          	jalr	-1380(ra) # 80007318 <__printf>
    80006884:	00003517          	auipc	a0,0x3
    80006888:	d3c50513          	addi	a0,a0,-708 # 800095c0 <CONSOLE_STATUS+0x5b0>
    8000688c:	00001097          	auipc	ra,0x1
    80006890:	a8c080e7          	jalr	-1396(ra) # 80007318 <__printf>
    80006894:	00001097          	auipc	ra,0x1
    80006898:	4a4080e7          	jalr	1188(ra) # 80007d38 <kinit>
    8000689c:	00000097          	auipc	ra,0x0
    800068a0:	148080e7          	jalr	328(ra) # 800069e4 <trapinit>
    800068a4:	00000097          	auipc	ra,0x0
    800068a8:	16c080e7          	jalr	364(ra) # 80006a10 <trapinithart>
    800068ac:	00000097          	auipc	ra,0x0
    800068b0:	5b4080e7          	jalr	1460(ra) # 80006e60 <plicinit>
    800068b4:	00000097          	auipc	ra,0x0
    800068b8:	5d4080e7          	jalr	1492(ra) # 80006e88 <plicinithart>
    800068bc:	00000097          	auipc	ra,0x0
    800068c0:	078080e7          	jalr	120(ra) # 80006934 <userinit>
    800068c4:	0ff0000f          	fence
    800068c8:	00100793          	li	a5,1
    800068cc:	00003517          	auipc	a0,0x3
    800068d0:	e5450513          	addi	a0,a0,-428 # 80009720 <CONSOLE_STATUS+0x710>
    800068d4:	00f4a023          	sw	a5,0(s1)
    800068d8:	00001097          	auipc	ra,0x1
    800068dc:	a40080e7          	jalr	-1472(ra) # 80007318 <__printf>
    800068e0:	0000006f          	j	800068e0 <system_main+0xd4>

00000000800068e4 <cpuid>:
    800068e4:	ff010113          	addi	sp,sp,-16
    800068e8:	00813423          	sd	s0,8(sp)
    800068ec:	01010413          	addi	s0,sp,16
    800068f0:	00020513          	mv	a0,tp
    800068f4:	00813403          	ld	s0,8(sp)
    800068f8:	0005051b          	sext.w	a0,a0
    800068fc:	01010113          	addi	sp,sp,16
    80006900:	00008067          	ret

0000000080006904 <mycpu>:
    80006904:	ff010113          	addi	sp,sp,-16
    80006908:	00813423          	sd	s0,8(sp)
    8000690c:	01010413          	addi	s0,sp,16
    80006910:	00020793          	mv	a5,tp
    80006914:	00813403          	ld	s0,8(sp)
    80006918:	0007879b          	sext.w	a5,a5
    8000691c:	00779793          	slli	a5,a5,0x7
    80006920:	00006517          	auipc	a0,0x6
    80006924:	0c050513          	addi	a0,a0,192 # 8000c9e0 <cpus>
    80006928:	00f50533          	add	a0,a0,a5
    8000692c:	01010113          	addi	sp,sp,16
    80006930:	00008067          	ret

0000000080006934 <userinit>:
    80006934:	ff010113          	addi	sp,sp,-16
    80006938:	00813423          	sd	s0,8(sp)
    8000693c:	01010413          	addi	s0,sp,16
    80006940:	00813403          	ld	s0,8(sp)
    80006944:	01010113          	addi	sp,sp,16
    80006948:	ffffb317          	auipc	t1,0xffffb
    8000694c:	02030067          	jr	32(t1) # 80001968 <main>

0000000080006950 <either_copyout>:
    80006950:	ff010113          	addi	sp,sp,-16
    80006954:	00813023          	sd	s0,0(sp)
    80006958:	00113423          	sd	ra,8(sp)
    8000695c:	01010413          	addi	s0,sp,16
    80006960:	02051663          	bnez	a0,8000698c <either_copyout+0x3c>
    80006964:	00058513          	mv	a0,a1
    80006968:	00060593          	mv	a1,a2
    8000696c:	0006861b          	sext.w	a2,a3
    80006970:	00002097          	auipc	ra,0x2
    80006974:	c54080e7          	jalr	-940(ra) # 800085c4 <__memmove>
    80006978:	00813083          	ld	ra,8(sp)
    8000697c:	00013403          	ld	s0,0(sp)
    80006980:	00000513          	li	a0,0
    80006984:	01010113          	addi	sp,sp,16
    80006988:	00008067          	ret
    8000698c:	00003517          	auipc	a0,0x3
    80006990:	dd450513          	addi	a0,a0,-556 # 80009760 <CONSOLE_STATUS+0x750>
    80006994:	00001097          	auipc	ra,0x1
    80006998:	928080e7          	jalr	-1752(ra) # 800072bc <panic>

000000008000699c <either_copyin>:
    8000699c:	ff010113          	addi	sp,sp,-16
    800069a0:	00813023          	sd	s0,0(sp)
    800069a4:	00113423          	sd	ra,8(sp)
    800069a8:	01010413          	addi	s0,sp,16
    800069ac:	02059463          	bnez	a1,800069d4 <either_copyin+0x38>
    800069b0:	00060593          	mv	a1,a2
    800069b4:	0006861b          	sext.w	a2,a3
    800069b8:	00002097          	auipc	ra,0x2
    800069bc:	c0c080e7          	jalr	-1012(ra) # 800085c4 <__memmove>
    800069c0:	00813083          	ld	ra,8(sp)
    800069c4:	00013403          	ld	s0,0(sp)
    800069c8:	00000513          	li	a0,0
    800069cc:	01010113          	addi	sp,sp,16
    800069d0:	00008067          	ret
    800069d4:	00003517          	auipc	a0,0x3
    800069d8:	db450513          	addi	a0,a0,-588 # 80009788 <CONSOLE_STATUS+0x778>
    800069dc:	00001097          	auipc	ra,0x1
    800069e0:	8e0080e7          	jalr	-1824(ra) # 800072bc <panic>

00000000800069e4 <trapinit>:
    800069e4:	ff010113          	addi	sp,sp,-16
    800069e8:	00813423          	sd	s0,8(sp)
    800069ec:	01010413          	addi	s0,sp,16
    800069f0:	00813403          	ld	s0,8(sp)
    800069f4:	00003597          	auipc	a1,0x3
    800069f8:	dbc58593          	addi	a1,a1,-580 # 800097b0 <CONSOLE_STATUS+0x7a0>
    800069fc:	00006517          	auipc	a0,0x6
    80006a00:	06450513          	addi	a0,a0,100 # 8000ca60 <tickslock>
    80006a04:	01010113          	addi	sp,sp,16
    80006a08:	00001317          	auipc	t1,0x1
    80006a0c:	5c030067          	jr	1472(t1) # 80007fc8 <initlock>

0000000080006a10 <trapinithart>:
    80006a10:	ff010113          	addi	sp,sp,-16
    80006a14:	00813423          	sd	s0,8(sp)
    80006a18:	01010413          	addi	s0,sp,16
    80006a1c:	00000797          	auipc	a5,0x0
    80006a20:	2f478793          	addi	a5,a5,756 # 80006d10 <kernelvec>
    80006a24:	10579073          	csrw	stvec,a5
    80006a28:	00813403          	ld	s0,8(sp)
    80006a2c:	01010113          	addi	sp,sp,16
    80006a30:	00008067          	ret

0000000080006a34 <usertrap>:
    80006a34:	ff010113          	addi	sp,sp,-16
    80006a38:	00813423          	sd	s0,8(sp)
    80006a3c:	01010413          	addi	s0,sp,16
    80006a40:	00813403          	ld	s0,8(sp)
    80006a44:	01010113          	addi	sp,sp,16
    80006a48:	00008067          	ret

0000000080006a4c <usertrapret>:
    80006a4c:	ff010113          	addi	sp,sp,-16
    80006a50:	00813423          	sd	s0,8(sp)
    80006a54:	01010413          	addi	s0,sp,16
    80006a58:	00813403          	ld	s0,8(sp)
    80006a5c:	01010113          	addi	sp,sp,16
    80006a60:	00008067          	ret

0000000080006a64 <kerneltrap>:
    80006a64:	fe010113          	addi	sp,sp,-32
    80006a68:	00813823          	sd	s0,16(sp)
    80006a6c:	00113c23          	sd	ra,24(sp)
    80006a70:	00913423          	sd	s1,8(sp)
    80006a74:	02010413          	addi	s0,sp,32
    80006a78:	142025f3          	csrr	a1,scause
    80006a7c:	100027f3          	csrr	a5,sstatus
    80006a80:	0027f793          	andi	a5,a5,2
    80006a84:	10079c63          	bnez	a5,80006b9c <kerneltrap+0x138>
    80006a88:	142027f3          	csrr	a5,scause
    80006a8c:	0207ce63          	bltz	a5,80006ac8 <kerneltrap+0x64>
    80006a90:	00003517          	auipc	a0,0x3
    80006a94:	d6850513          	addi	a0,a0,-664 # 800097f8 <CONSOLE_STATUS+0x7e8>
    80006a98:	00001097          	auipc	ra,0x1
    80006a9c:	880080e7          	jalr	-1920(ra) # 80007318 <__printf>
    80006aa0:	141025f3          	csrr	a1,sepc
    80006aa4:	14302673          	csrr	a2,stval
    80006aa8:	00003517          	auipc	a0,0x3
    80006aac:	d6050513          	addi	a0,a0,-672 # 80009808 <CONSOLE_STATUS+0x7f8>
    80006ab0:	00001097          	auipc	ra,0x1
    80006ab4:	868080e7          	jalr	-1944(ra) # 80007318 <__printf>
    80006ab8:	00003517          	auipc	a0,0x3
    80006abc:	d6850513          	addi	a0,a0,-664 # 80009820 <CONSOLE_STATUS+0x810>
    80006ac0:	00000097          	auipc	ra,0x0
    80006ac4:	7fc080e7          	jalr	2044(ra) # 800072bc <panic>
    80006ac8:	0ff7f713          	andi	a4,a5,255
    80006acc:	00900693          	li	a3,9
    80006ad0:	04d70063          	beq	a4,a3,80006b10 <kerneltrap+0xac>
    80006ad4:	fff00713          	li	a4,-1
    80006ad8:	03f71713          	slli	a4,a4,0x3f
    80006adc:	00170713          	addi	a4,a4,1
    80006ae0:	fae798e3          	bne	a5,a4,80006a90 <kerneltrap+0x2c>
    80006ae4:	00000097          	auipc	ra,0x0
    80006ae8:	e00080e7          	jalr	-512(ra) # 800068e4 <cpuid>
    80006aec:	06050663          	beqz	a0,80006b58 <kerneltrap+0xf4>
    80006af0:	144027f3          	csrr	a5,sip
    80006af4:	ffd7f793          	andi	a5,a5,-3
    80006af8:	14479073          	csrw	sip,a5
    80006afc:	01813083          	ld	ra,24(sp)
    80006b00:	01013403          	ld	s0,16(sp)
    80006b04:	00813483          	ld	s1,8(sp)
    80006b08:	02010113          	addi	sp,sp,32
    80006b0c:	00008067          	ret
    80006b10:	00000097          	auipc	ra,0x0
    80006b14:	3c4080e7          	jalr	964(ra) # 80006ed4 <plic_claim>
    80006b18:	00a00793          	li	a5,10
    80006b1c:	00050493          	mv	s1,a0
    80006b20:	06f50863          	beq	a0,a5,80006b90 <kerneltrap+0x12c>
    80006b24:	fc050ce3          	beqz	a0,80006afc <kerneltrap+0x98>
    80006b28:	00050593          	mv	a1,a0
    80006b2c:	00003517          	auipc	a0,0x3
    80006b30:	cac50513          	addi	a0,a0,-852 # 800097d8 <CONSOLE_STATUS+0x7c8>
    80006b34:	00000097          	auipc	ra,0x0
    80006b38:	7e4080e7          	jalr	2020(ra) # 80007318 <__printf>
    80006b3c:	01013403          	ld	s0,16(sp)
    80006b40:	01813083          	ld	ra,24(sp)
    80006b44:	00048513          	mv	a0,s1
    80006b48:	00813483          	ld	s1,8(sp)
    80006b4c:	02010113          	addi	sp,sp,32
    80006b50:	00000317          	auipc	t1,0x0
    80006b54:	3bc30067          	jr	956(t1) # 80006f0c <plic_complete>
    80006b58:	00006517          	auipc	a0,0x6
    80006b5c:	f0850513          	addi	a0,a0,-248 # 8000ca60 <tickslock>
    80006b60:	00001097          	auipc	ra,0x1
    80006b64:	48c080e7          	jalr	1164(ra) # 80007fec <acquire>
    80006b68:	00005717          	auipc	a4,0x5
    80006b6c:	d7c70713          	addi	a4,a4,-644 # 8000b8e4 <ticks>
    80006b70:	00072783          	lw	a5,0(a4)
    80006b74:	00006517          	auipc	a0,0x6
    80006b78:	eec50513          	addi	a0,a0,-276 # 8000ca60 <tickslock>
    80006b7c:	0017879b          	addiw	a5,a5,1
    80006b80:	00f72023          	sw	a5,0(a4)
    80006b84:	00001097          	auipc	ra,0x1
    80006b88:	534080e7          	jalr	1332(ra) # 800080b8 <release>
    80006b8c:	f65ff06f          	j	80006af0 <kerneltrap+0x8c>
    80006b90:	00001097          	auipc	ra,0x1
    80006b94:	090080e7          	jalr	144(ra) # 80007c20 <uartintr>
    80006b98:	fa5ff06f          	j	80006b3c <kerneltrap+0xd8>
    80006b9c:	00003517          	auipc	a0,0x3
    80006ba0:	c1c50513          	addi	a0,a0,-996 # 800097b8 <CONSOLE_STATUS+0x7a8>
    80006ba4:	00000097          	auipc	ra,0x0
    80006ba8:	718080e7          	jalr	1816(ra) # 800072bc <panic>

0000000080006bac <clockintr>:
    80006bac:	fe010113          	addi	sp,sp,-32
    80006bb0:	00813823          	sd	s0,16(sp)
    80006bb4:	00913423          	sd	s1,8(sp)
    80006bb8:	00113c23          	sd	ra,24(sp)
    80006bbc:	02010413          	addi	s0,sp,32
    80006bc0:	00006497          	auipc	s1,0x6
    80006bc4:	ea048493          	addi	s1,s1,-352 # 8000ca60 <tickslock>
    80006bc8:	00048513          	mv	a0,s1
    80006bcc:	00001097          	auipc	ra,0x1
    80006bd0:	420080e7          	jalr	1056(ra) # 80007fec <acquire>
    80006bd4:	00005717          	auipc	a4,0x5
    80006bd8:	d1070713          	addi	a4,a4,-752 # 8000b8e4 <ticks>
    80006bdc:	00072783          	lw	a5,0(a4)
    80006be0:	01013403          	ld	s0,16(sp)
    80006be4:	01813083          	ld	ra,24(sp)
    80006be8:	00048513          	mv	a0,s1
    80006bec:	0017879b          	addiw	a5,a5,1
    80006bf0:	00813483          	ld	s1,8(sp)
    80006bf4:	00f72023          	sw	a5,0(a4)
    80006bf8:	02010113          	addi	sp,sp,32
    80006bfc:	00001317          	auipc	t1,0x1
    80006c00:	4bc30067          	jr	1212(t1) # 800080b8 <release>

0000000080006c04 <devintr>:
    80006c04:	142027f3          	csrr	a5,scause
    80006c08:	00000513          	li	a0,0
    80006c0c:	0007c463          	bltz	a5,80006c14 <devintr+0x10>
    80006c10:	00008067          	ret
    80006c14:	fe010113          	addi	sp,sp,-32
    80006c18:	00813823          	sd	s0,16(sp)
    80006c1c:	00113c23          	sd	ra,24(sp)
    80006c20:	00913423          	sd	s1,8(sp)
    80006c24:	02010413          	addi	s0,sp,32
    80006c28:	0ff7f713          	andi	a4,a5,255
    80006c2c:	00900693          	li	a3,9
    80006c30:	04d70c63          	beq	a4,a3,80006c88 <devintr+0x84>
    80006c34:	fff00713          	li	a4,-1
    80006c38:	03f71713          	slli	a4,a4,0x3f
    80006c3c:	00170713          	addi	a4,a4,1
    80006c40:	00e78c63          	beq	a5,a4,80006c58 <devintr+0x54>
    80006c44:	01813083          	ld	ra,24(sp)
    80006c48:	01013403          	ld	s0,16(sp)
    80006c4c:	00813483          	ld	s1,8(sp)
    80006c50:	02010113          	addi	sp,sp,32
    80006c54:	00008067          	ret
    80006c58:	00000097          	auipc	ra,0x0
    80006c5c:	c8c080e7          	jalr	-884(ra) # 800068e4 <cpuid>
    80006c60:	06050663          	beqz	a0,80006ccc <devintr+0xc8>
    80006c64:	144027f3          	csrr	a5,sip
    80006c68:	ffd7f793          	andi	a5,a5,-3
    80006c6c:	14479073          	csrw	sip,a5
    80006c70:	01813083          	ld	ra,24(sp)
    80006c74:	01013403          	ld	s0,16(sp)
    80006c78:	00813483          	ld	s1,8(sp)
    80006c7c:	00200513          	li	a0,2
    80006c80:	02010113          	addi	sp,sp,32
    80006c84:	00008067          	ret
    80006c88:	00000097          	auipc	ra,0x0
    80006c8c:	24c080e7          	jalr	588(ra) # 80006ed4 <plic_claim>
    80006c90:	00a00793          	li	a5,10
    80006c94:	00050493          	mv	s1,a0
    80006c98:	06f50663          	beq	a0,a5,80006d04 <devintr+0x100>
    80006c9c:	00100513          	li	a0,1
    80006ca0:	fa0482e3          	beqz	s1,80006c44 <devintr+0x40>
    80006ca4:	00048593          	mv	a1,s1
    80006ca8:	00003517          	auipc	a0,0x3
    80006cac:	b3050513          	addi	a0,a0,-1232 # 800097d8 <CONSOLE_STATUS+0x7c8>
    80006cb0:	00000097          	auipc	ra,0x0
    80006cb4:	668080e7          	jalr	1640(ra) # 80007318 <__printf>
    80006cb8:	00048513          	mv	a0,s1
    80006cbc:	00000097          	auipc	ra,0x0
    80006cc0:	250080e7          	jalr	592(ra) # 80006f0c <plic_complete>
    80006cc4:	00100513          	li	a0,1
    80006cc8:	f7dff06f          	j	80006c44 <devintr+0x40>
    80006ccc:	00006517          	auipc	a0,0x6
    80006cd0:	d9450513          	addi	a0,a0,-620 # 8000ca60 <tickslock>
    80006cd4:	00001097          	auipc	ra,0x1
    80006cd8:	318080e7          	jalr	792(ra) # 80007fec <acquire>
    80006cdc:	00005717          	auipc	a4,0x5
    80006ce0:	c0870713          	addi	a4,a4,-1016 # 8000b8e4 <ticks>
    80006ce4:	00072783          	lw	a5,0(a4)
    80006ce8:	00006517          	auipc	a0,0x6
    80006cec:	d7850513          	addi	a0,a0,-648 # 8000ca60 <tickslock>
    80006cf0:	0017879b          	addiw	a5,a5,1
    80006cf4:	00f72023          	sw	a5,0(a4)
    80006cf8:	00001097          	auipc	ra,0x1
    80006cfc:	3c0080e7          	jalr	960(ra) # 800080b8 <release>
    80006d00:	f65ff06f          	j	80006c64 <devintr+0x60>
    80006d04:	00001097          	auipc	ra,0x1
    80006d08:	f1c080e7          	jalr	-228(ra) # 80007c20 <uartintr>
    80006d0c:	fadff06f          	j	80006cb8 <devintr+0xb4>

0000000080006d10 <kernelvec>:
    80006d10:	f0010113          	addi	sp,sp,-256
    80006d14:	00113023          	sd	ra,0(sp)
    80006d18:	00213423          	sd	sp,8(sp)
    80006d1c:	00313823          	sd	gp,16(sp)
    80006d20:	00413c23          	sd	tp,24(sp)
    80006d24:	02513023          	sd	t0,32(sp)
    80006d28:	02613423          	sd	t1,40(sp)
    80006d2c:	02713823          	sd	t2,48(sp)
    80006d30:	02813c23          	sd	s0,56(sp)
    80006d34:	04913023          	sd	s1,64(sp)
    80006d38:	04a13423          	sd	a0,72(sp)
    80006d3c:	04b13823          	sd	a1,80(sp)
    80006d40:	04c13c23          	sd	a2,88(sp)
    80006d44:	06d13023          	sd	a3,96(sp)
    80006d48:	06e13423          	sd	a4,104(sp)
    80006d4c:	06f13823          	sd	a5,112(sp)
    80006d50:	07013c23          	sd	a6,120(sp)
    80006d54:	09113023          	sd	a7,128(sp)
    80006d58:	09213423          	sd	s2,136(sp)
    80006d5c:	09313823          	sd	s3,144(sp)
    80006d60:	09413c23          	sd	s4,152(sp)
    80006d64:	0b513023          	sd	s5,160(sp)
    80006d68:	0b613423          	sd	s6,168(sp)
    80006d6c:	0b713823          	sd	s7,176(sp)
    80006d70:	0b813c23          	sd	s8,184(sp)
    80006d74:	0d913023          	sd	s9,192(sp)
    80006d78:	0da13423          	sd	s10,200(sp)
    80006d7c:	0db13823          	sd	s11,208(sp)
    80006d80:	0dc13c23          	sd	t3,216(sp)
    80006d84:	0fd13023          	sd	t4,224(sp)
    80006d88:	0fe13423          	sd	t5,232(sp)
    80006d8c:	0ff13823          	sd	t6,240(sp)
    80006d90:	cd5ff0ef          	jal	ra,80006a64 <kerneltrap>
    80006d94:	00013083          	ld	ra,0(sp)
    80006d98:	00813103          	ld	sp,8(sp)
    80006d9c:	01013183          	ld	gp,16(sp)
    80006da0:	02013283          	ld	t0,32(sp)
    80006da4:	02813303          	ld	t1,40(sp)
    80006da8:	03013383          	ld	t2,48(sp)
    80006dac:	03813403          	ld	s0,56(sp)
    80006db0:	04013483          	ld	s1,64(sp)
    80006db4:	04813503          	ld	a0,72(sp)
    80006db8:	05013583          	ld	a1,80(sp)
    80006dbc:	05813603          	ld	a2,88(sp)
    80006dc0:	06013683          	ld	a3,96(sp)
    80006dc4:	06813703          	ld	a4,104(sp)
    80006dc8:	07013783          	ld	a5,112(sp)
    80006dcc:	07813803          	ld	a6,120(sp)
    80006dd0:	08013883          	ld	a7,128(sp)
    80006dd4:	08813903          	ld	s2,136(sp)
    80006dd8:	09013983          	ld	s3,144(sp)
    80006ddc:	09813a03          	ld	s4,152(sp)
    80006de0:	0a013a83          	ld	s5,160(sp)
    80006de4:	0a813b03          	ld	s6,168(sp)
    80006de8:	0b013b83          	ld	s7,176(sp)
    80006dec:	0b813c03          	ld	s8,184(sp)
    80006df0:	0c013c83          	ld	s9,192(sp)
    80006df4:	0c813d03          	ld	s10,200(sp)
    80006df8:	0d013d83          	ld	s11,208(sp)
    80006dfc:	0d813e03          	ld	t3,216(sp)
    80006e00:	0e013e83          	ld	t4,224(sp)
    80006e04:	0e813f03          	ld	t5,232(sp)
    80006e08:	0f013f83          	ld	t6,240(sp)
    80006e0c:	10010113          	addi	sp,sp,256
    80006e10:	10200073          	sret
    80006e14:	00000013          	nop
    80006e18:	00000013          	nop
    80006e1c:	00000013          	nop

0000000080006e20 <timervec>:
    80006e20:	34051573          	csrrw	a0,mscratch,a0
    80006e24:	00b53023          	sd	a1,0(a0)
    80006e28:	00c53423          	sd	a2,8(a0)
    80006e2c:	00d53823          	sd	a3,16(a0)
    80006e30:	01853583          	ld	a1,24(a0)
    80006e34:	02053603          	ld	a2,32(a0)
    80006e38:	0005b683          	ld	a3,0(a1)
    80006e3c:	00c686b3          	add	a3,a3,a2
    80006e40:	00d5b023          	sd	a3,0(a1)
    80006e44:	00200593          	li	a1,2
    80006e48:	14459073          	csrw	sip,a1
    80006e4c:	01053683          	ld	a3,16(a0)
    80006e50:	00853603          	ld	a2,8(a0)
    80006e54:	00053583          	ld	a1,0(a0)
    80006e58:	34051573          	csrrw	a0,mscratch,a0
    80006e5c:	30200073          	mret

0000000080006e60 <plicinit>:
    80006e60:	ff010113          	addi	sp,sp,-16
    80006e64:	00813423          	sd	s0,8(sp)
    80006e68:	01010413          	addi	s0,sp,16
    80006e6c:	00813403          	ld	s0,8(sp)
    80006e70:	0c0007b7          	lui	a5,0xc000
    80006e74:	00100713          	li	a4,1
    80006e78:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006e7c:	00e7a223          	sw	a4,4(a5)
    80006e80:	01010113          	addi	sp,sp,16
    80006e84:	00008067          	ret

0000000080006e88 <plicinithart>:
    80006e88:	ff010113          	addi	sp,sp,-16
    80006e8c:	00813023          	sd	s0,0(sp)
    80006e90:	00113423          	sd	ra,8(sp)
    80006e94:	01010413          	addi	s0,sp,16
    80006e98:	00000097          	auipc	ra,0x0
    80006e9c:	a4c080e7          	jalr	-1460(ra) # 800068e4 <cpuid>
    80006ea0:	0085171b          	slliw	a4,a0,0x8
    80006ea4:	0c0027b7          	lui	a5,0xc002
    80006ea8:	00e787b3          	add	a5,a5,a4
    80006eac:	40200713          	li	a4,1026
    80006eb0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006eb4:	00813083          	ld	ra,8(sp)
    80006eb8:	00013403          	ld	s0,0(sp)
    80006ebc:	00d5151b          	slliw	a0,a0,0xd
    80006ec0:	0c2017b7          	lui	a5,0xc201
    80006ec4:	00a78533          	add	a0,a5,a0
    80006ec8:	00052023          	sw	zero,0(a0)
    80006ecc:	01010113          	addi	sp,sp,16
    80006ed0:	00008067          	ret

0000000080006ed4 <plic_claim>:
    80006ed4:	ff010113          	addi	sp,sp,-16
    80006ed8:	00813023          	sd	s0,0(sp)
    80006edc:	00113423          	sd	ra,8(sp)
    80006ee0:	01010413          	addi	s0,sp,16
    80006ee4:	00000097          	auipc	ra,0x0
    80006ee8:	a00080e7          	jalr	-1536(ra) # 800068e4 <cpuid>
    80006eec:	00813083          	ld	ra,8(sp)
    80006ef0:	00013403          	ld	s0,0(sp)
    80006ef4:	00d5151b          	slliw	a0,a0,0xd
    80006ef8:	0c2017b7          	lui	a5,0xc201
    80006efc:	00a78533          	add	a0,a5,a0
    80006f00:	00452503          	lw	a0,4(a0)
    80006f04:	01010113          	addi	sp,sp,16
    80006f08:	00008067          	ret

0000000080006f0c <plic_complete>:
    80006f0c:	fe010113          	addi	sp,sp,-32
    80006f10:	00813823          	sd	s0,16(sp)
    80006f14:	00913423          	sd	s1,8(sp)
    80006f18:	00113c23          	sd	ra,24(sp)
    80006f1c:	02010413          	addi	s0,sp,32
    80006f20:	00050493          	mv	s1,a0
    80006f24:	00000097          	auipc	ra,0x0
    80006f28:	9c0080e7          	jalr	-1600(ra) # 800068e4 <cpuid>
    80006f2c:	01813083          	ld	ra,24(sp)
    80006f30:	01013403          	ld	s0,16(sp)
    80006f34:	00d5179b          	slliw	a5,a0,0xd
    80006f38:	0c201737          	lui	a4,0xc201
    80006f3c:	00f707b3          	add	a5,a4,a5
    80006f40:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006f44:	00813483          	ld	s1,8(sp)
    80006f48:	02010113          	addi	sp,sp,32
    80006f4c:	00008067          	ret

0000000080006f50 <consolewrite>:
    80006f50:	fb010113          	addi	sp,sp,-80
    80006f54:	04813023          	sd	s0,64(sp)
    80006f58:	04113423          	sd	ra,72(sp)
    80006f5c:	02913c23          	sd	s1,56(sp)
    80006f60:	03213823          	sd	s2,48(sp)
    80006f64:	03313423          	sd	s3,40(sp)
    80006f68:	03413023          	sd	s4,32(sp)
    80006f6c:	01513c23          	sd	s5,24(sp)
    80006f70:	05010413          	addi	s0,sp,80
    80006f74:	06c05c63          	blez	a2,80006fec <consolewrite+0x9c>
    80006f78:	00060993          	mv	s3,a2
    80006f7c:	00050a13          	mv	s4,a0
    80006f80:	00058493          	mv	s1,a1
    80006f84:	00000913          	li	s2,0
    80006f88:	fff00a93          	li	s5,-1
    80006f8c:	01c0006f          	j	80006fa8 <consolewrite+0x58>
    80006f90:	fbf44503          	lbu	a0,-65(s0)
    80006f94:	0019091b          	addiw	s2,s2,1
    80006f98:	00148493          	addi	s1,s1,1
    80006f9c:	00001097          	auipc	ra,0x1
    80006fa0:	a9c080e7          	jalr	-1380(ra) # 80007a38 <uartputc>
    80006fa4:	03298063          	beq	s3,s2,80006fc4 <consolewrite+0x74>
    80006fa8:	00048613          	mv	a2,s1
    80006fac:	00100693          	li	a3,1
    80006fb0:	000a0593          	mv	a1,s4
    80006fb4:	fbf40513          	addi	a0,s0,-65
    80006fb8:	00000097          	auipc	ra,0x0
    80006fbc:	9e4080e7          	jalr	-1564(ra) # 8000699c <either_copyin>
    80006fc0:	fd5518e3          	bne	a0,s5,80006f90 <consolewrite+0x40>
    80006fc4:	04813083          	ld	ra,72(sp)
    80006fc8:	04013403          	ld	s0,64(sp)
    80006fcc:	03813483          	ld	s1,56(sp)
    80006fd0:	02813983          	ld	s3,40(sp)
    80006fd4:	02013a03          	ld	s4,32(sp)
    80006fd8:	01813a83          	ld	s5,24(sp)
    80006fdc:	00090513          	mv	a0,s2
    80006fe0:	03013903          	ld	s2,48(sp)
    80006fe4:	05010113          	addi	sp,sp,80
    80006fe8:	00008067          	ret
    80006fec:	00000913          	li	s2,0
    80006ff0:	fd5ff06f          	j	80006fc4 <consolewrite+0x74>

0000000080006ff4 <consoleread>:
    80006ff4:	f9010113          	addi	sp,sp,-112
    80006ff8:	06813023          	sd	s0,96(sp)
    80006ffc:	04913c23          	sd	s1,88(sp)
    80007000:	05213823          	sd	s2,80(sp)
    80007004:	05313423          	sd	s3,72(sp)
    80007008:	05413023          	sd	s4,64(sp)
    8000700c:	03513c23          	sd	s5,56(sp)
    80007010:	03613823          	sd	s6,48(sp)
    80007014:	03713423          	sd	s7,40(sp)
    80007018:	03813023          	sd	s8,32(sp)
    8000701c:	06113423          	sd	ra,104(sp)
    80007020:	01913c23          	sd	s9,24(sp)
    80007024:	07010413          	addi	s0,sp,112
    80007028:	00060b93          	mv	s7,a2
    8000702c:	00050913          	mv	s2,a0
    80007030:	00058c13          	mv	s8,a1
    80007034:	00060b1b          	sext.w	s6,a2
    80007038:	00006497          	auipc	s1,0x6
    8000703c:	a5048493          	addi	s1,s1,-1456 # 8000ca88 <cons>
    80007040:	00400993          	li	s3,4
    80007044:	fff00a13          	li	s4,-1
    80007048:	00a00a93          	li	s5,10
    8000704c:	05705e63          	blez	s7,800070a8 <consoleread+0xb4>
    80007050:	09c4a703          	lw	a4,156(s1)
    80007054:	0984a783          	lw	a5,152(s1)
    80007058:	0007071b          	sext.w	a4,a4
    8000705c:	08e78463          	beq	a5,a4,800070e4 <consoleread+0xf0>
    80007060:	07f7f713          	andi	a4,a5,127
    80007064:	00e48733          	add	a4,s1,a4
    80007068:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000706c:	0017869b          	addiw	a3,a5,1
    80007070:	08d4ac23          	sw	a3,152(s1)
    80007074:	00070c9b          	sext.w	s9,a4
    80007078:	0b370663          	beq	a4,s3,80007124 <consoleread+0x130>
    8000707c:	00100693          	li	a3,1
    80007080:	f9f40613          	addi	a2,s0,-97
    80007084:	000c0593          	mv	a1,s8
    80007088:	00090513          	mv	a0,s2
    8000708c:	f8e40fa3          	sb	a4,-97(s0)
    80007090:	00000097          	auipc	ra,0x0
    80007094:	8c0080e7          	jalr	-1856(ra) # 80006950 <either_copyout>
    80007098:	01450863          	beq	a0,s4,800070a8 <consoleread+0xb4>
    8000709c:	001c0c13          	addi	s8,s8,1
    800070a0:	fffb8b9b          	addiw	s7,s7,-1
    800070a4:	fb5c94e3          	bne	s9,s5,8000704c <consoleread+0x58>
    800070a8:	000b851b          	sext.w	a0,s7
    800070ac:	06813083          	ld	ra,104(sp)
    800070b0:	06013403          	ld	s0,96(sp)
    800070b4:	05813483          	ld	s1,88(sp)
    800070b8:	05013903          	ld	s2,80(sp)
    800070bc:	04813983          	ld	s3,72(sp)
    800070c0:	04013a03          	ld	s4,64(sp)
    800070c4:	03813a83          	ld	s5,56(sp)
    800070c8:	02813b83          	ld	s7,40(sp)
    800070cc:	02013c03          	ld	s8,32(sp)
    800070d0:	01813c83          	ld	s9,24(sp)
    800070d4:	40ab053b          	subw	a0,s6,a0
    800070d8:	03013b03          	ld	s6,48(sp)
    800070dc:	07010113          	addi	sp,sp,112
    800070e0:	00008067          	ret
    800070e4:	00001097          	auipc	ra,0x1
    800070e8:	1d8080e7          	jalr	472(ra) # 800082bc <push_on>
    800070ec:	0984a703          	lw	a4,152(s1)
    800070f0:	09c4a783          	lw	a5,156(s1)
    800070f4:	0007879b          	sext.w	a5,a5
    800070f8:	fef70ce3          	beq	a4,a5,800070f0 <consoleread+0xfc>
    800070fc:	00001097          	auipc	ra,0x1
    80007100:	234080e7          	jalr	564(ra) # 80008330 <pop_on>
    80007104:	0984a783          	lw	a5,152(s1)
    80007108:	07f7f713          	andi	a4,a5,127
    8000710c:	00e48733          	add	a4,s1,a4
    80007110:	01874703          	lbu	a4,24(a4)
    80007114:	0017869b          	addiw	a3,a5,1
    80007118:	08d4ac23          	sw	a3,152(s1)
    8000711c:	00070c9b          	sext.w	s9,a4
    80007120:	f5371ee3          	bne	a4,s3,8000707c <consoleread+0x88>
    80007124:	000b851b          	sext.w	a0,s7
    80007128:	f96bf2e3          	bgeu	s7,s6,800070ac <consoleread+0xb8>
    8000712c:	08f4ac23          	sw	a5,152(s1)
    80007130:	f7dff06f          	j	800070ac <consoleread+0xb8>

0000000080007134 <consputc>:
    80007134:	10000793          	li	a5,256
    80007138:	00f50663          	beq	a0,a5,80007144 <consputc+0x10>
    8000713c:	00001317          	auipc	t1,0x1
    80007140:	9f430067          	jr	-1548(t1) # 80007b30 <uartputc_sync>
    80007144:	ff010113          	addi	sp,sp,-16
    80007148:	00113423          	sd	ra,8(sp)
    8000714c:	00813023          	sd	s0,0(sp)
    80007150:	01010413          	addi	s0,sp,16
    80007154:	00800513          	li	a0,8
    80007158:	00001097          	auipc	ra,0x1
    8000715c:	9d8080e7          	jalr	-1576(ra) # 80007b30 <uartputc_sync>
    80007160:	02000513          	li	a0,32
    80007164:	00001097          	auipc	ra,0x1
    80007168:	9cc080e7          	jalr	-1588(ra) # 80007b30 <uartputc_sync>
    8000716c:	00013403          	ld	s0,0(sp)
    80007170:	00813083          	ld	ra,8(sp)
    80007174:	00800513          	li	a0,8
    80007178:	01010113          	addi	sp,sp,16
    8000717c:	00001317          	auipc	t1,0x1
    80007180:	9b430067          	jr	-1612(t1) # 80007b30 <uartputc_sync>

0000000080007184 <consoleintr>:
    80007184:	fe010113          	addi	sp,sp,-32
    80007188:	00813823          	sd	s0,16(sp)
    8000718c:	00913423          	sd	s1,8(sp)
    80007190:	01213023          	sd	s2,0(sp)
    80007194:	00113c23          	sd	ra,24(sp)
    80007198:	02010413          	addi	s0,sp,32
    8000719c:	00006917          	auipc	s2,0x6
    800071a0:	8ec90913          	addi	s2,s2,-1812 # 8000ca88 <cons>
    800071a4:	00050493          	mv	s1,a0
    800071a8:	00090513          	mv	a0,s2
    800071ac:	00001097          	auipc	ra,0x1
    800071b0:	e40080e7          	jalr	-448(ra) # 80007fec <acquire>
    800071b4:	02048c63          	beqz	s1,800071ec <consoleintr+0x68>
    800071b8:	0a092783          	lw	a5,160(s2)
    800071bc:	09892703          	lw	a4,152(s2)
    800071c0:	07f00693          	li	a3,127
    800071c4:	40e7873b          	subw	a4,a5,a4
    800071c8:	02e6e263          	bltu	a3,a4,800071ec <consoleintr+0x68>
    800071cc:	00d00713          	li	a4,13
    800071d0:	04e48063          	beq	s1,a4,80007210 <consoleintr+0x8c>
    800071d4:	07f7f713          	andi	a4,a5,127
    800071d8:	00e90733          	add	a4,s2,a4
    800071dc:	0017879b          	addiw	a5,a5,1
    800071e0:	0af92023          	sw	a5,160(s2)
    800071e4:	00970c23          	sb	s1,24(a4)
    800071e8:	08f92e23          	sw	a5,156(s2)
    800071ec:	01013403          	ld	s0,16(sp)
    800071f0:	01813083          	ld	ra,24(sp)
    800071f4:	00813483          	ld	s1,8(sp)
    800071f8:	00013903          	ld	s2,0(sp)
    800071fc:	00006517          	auipc	a0,0x6
    80007200:	88c50513          	addi	a0,a0,-1908 # 8000ca88 <cons>
    80007204:	02010113          	addi	sp,sp,32
    80007208:	00001317          	auipc	t1,0x1
    8000720c:	eb030067          	jr	-336(t1) # 800080b8 <release>
    80007210:	00a00493          	li	s1,10
    80007214:	fc1ff06f          	j	800071d4 <consoleintr+0x50>

0000000080007218 <consoleinit>:
    80007218:	fe010113          	addi	sp,sp,-32
    8000721c:	00113c23          	sd	ra,24(sp)
    80007220:	00813823          	sd	s0,16(sp)
    80007224:	00913423          	sd	s1,8(sp)
    80007228:	02010413          	addi	s0,sp,32
    8000722c:	00006497          	auipc	s1,0x6
    80007230:	85c48493          	addi	s1,s1,-1956 # 8000ca88 <cons>
    80007234:	00048513          	mv	a0,s1
    80007238:	00002597          	auipc	a1,0x2
    8000723c:	5f858593          	addi	a1,a1,1528 # 80009830 <CONSOLE_STATUS+0x820>
    80007240:	00001097          	auipc	ra,0x1
    80007244:	d88080e7          	jalr	-632(ra) # 80007fc8 <initlock>
    80007248:	00000097          	auipc	ra,0x0
    8000724c:	7ac080e7          	jalr	1964(ra) # 800079f4 <uartinit>
    80007250:	01813083          	ld	ra,24(sp)
    80007254:	01013403          	ld	s0,16(sp)
    80007258:	00000797          	auipc	a5,0x0
    8000725c:	d9c78793          	addi	a5,a5,-612 # 80006ff4 <consoleread>
    80007260:	0af4bc23          	sd	a5,184(s1)
    80007264:	00000797          	auipc	a5,0x0
    80007268:	cec78793          	addi	a5,a5,-788 # 80006f50 <consolewrite>
    8000726c:	0cf4b023          	sd	a5,192(s1)
    80007270:	00813483          	ld	s1,8(sp)
    80007274:	02010113          	addi	sp,sp,32
    80007278:	00008067          	ret

000000008000727c <console_read>:
    8000727c:	ff010113          	addi	sp,sp,-16
    80007280:	00813423          	sd	s0,8(sp)
    80007284:	01010413          	addi	s0,sp,16
    80007288:	00813403          	ld	s0,8(sp)
    8000728c:	00006317          	auipc	t1,0x6
    80007290:	8b433303          	ld	t1,-1868(t1) # 8000cb40 <devsw+0x10>
    80007294:	01010113          	addi	sp,sp,16
    80007298:	00030067          	jr	t1

000000008000729c <console_write>:
    8000729c:	ff010113          	addi	sp,sp,-16
    800072a0:	00813423          	sd	s0,8(sp)
    800072a4:	01010413          	addi	s0,sp,16
    800072a8:	00813403          	ld	s0,8(sp)
    800072ac:	00006317          	auipc	t1,0x6
    800072b0:	89c33303          	ld	t1,-1892(t1) # 8000cb48 <devsw+0x18>
    800072b4:	01010113          	addi	sp,sp,16
    800072b8:	00030067          	jr	t1

00000000800072bc <panic>:
    800072bc:	fe010113          	addi	sp,sp,-32
    800072c0:	00113c23          	sd	ra,24(sp)
    800072c4:	00813823          	sd	s0,16(sp)
    800072c8:	00913423          	sd	s1,8(sp)
    800072cc:	02010413          	addi	s0,sp,32
    800072d0:	00050493          	mv	s1,a0
    800072d4:	00002517          	auipc	a0,0x2
    800072d8:	56450513          	addi	a0,a0,1380 # 80009838 <CONSOLE_STATUS+0x828>
    800072dc:	00006797          	auipc	a5,0x6
    800072e0:	9007a623          	sw	zero,-1780(a5) # 8000cbe8 <pr+0x18>
    800072e4:	00000097          	auipc	ra,0x0
    800072e8:	034080e7          	jalr	52(ra) # 80007318 <__printf>
    800072ec:	00048513          	mv	a0,s1
    800072f0:	00000097          	auipc	ra,0x0
    800072f4:	028080e7          	jalr	40(ra) # 80007318 <__printf>
    800072f8:	00002517          	auipc	a0,0x2
    800072fc:	2c850513          	addi	a0,a0,712 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80007300:	00000097          	auipc	ra,0x0
    80007304:	018080e7          	jalr	24(ra) # 80007318 <__printf>
    80007308:	00100793          	li	a5,1
    8000730c:	00004717          	auipc	a4,0x4
    80007310:	5cf72e23          	sw	a5,1500(a4) # 8000b8e8 <panicked>
    80007314:	0000006f          	j	80007314 <panic+0x58>

0000000080007318 <__printf>:
    80007318:	f3010113          	addi	sp,sp,-208
    8000731c:	08813023          	sd	s0,128(sp)
    80007320:	07313423          	sd	s3,104(sp)
    80007324:	09010413          	addi	s0,sp,144
    80007328:	05813023          	sd	s8,64(sp)
    8000732c:	08113423          	sd	ra,136(sp)
    80007330:	06913c23          	sd	s1,120(sp)
    80007334:	07213823          	sd	s2,112(sp)
    80007338:	07413023          	sd	s4,96(sp)
    8000733c:	05513c23          	sd	s5,88(sp)
    80007340:	05613823          	sd	s6,80(sp)
    80007344:	05713423          	sd	s7,72(sp)
    80007348:	03913c23          	sd	s9,56(sp)
    8000734c:	03a13823          	sd	s10,48(sp)
    80007350:	03b13423          	sd	s11,40(sp)
    80007354:	00006317          	auipc	t1,0x6
    80007358:	87c30313          	addi	t1,t1,-1924 # 8000cbd0 <pr>
    8000735c:	01832c03          	lw	s8,24(t1)
    80007360:	00b43423          	sd	a1,8(s0)
    80007364:	00c43823          	sd	a2,16(s0)
    80007368:	00d43c23          	sd	a3,24(s0)
    8000736c:	02e43023          	sd	a4,32(s0)
    80007370:	02f43423          	sd	a5,40(s0)
    80007374:	03043823          	sd	a6,48(s0)
    80007378:	03143c23          	sd	a7,56(s0)
    8000737c:	00050993          	mv	s3,a0
    80007380:	4a0c1663          	bnez	s8,8000782c <__printf+0x514>
    80007384:	60098c63          	beqz	s3,8000799c <__printf+0x684>
    80007388:	0009c503          	lbu	a0,0(s3)
    8000738c:	00840793          	addi	a5,s0,8
    80007390:	f6f43c23          	sd	a5,-136(s0)
    80007394:	00000493          	li	s1,0
    80007398:	22050063          	beqz	a0,800075b8 <__printf+0x2a0>
    8000739c:	00002a37          	lui	s4,0x2
    800073a0:	00018ab7          	lui	s5,0x18
    800073a4:	000f4b37          	lui	s6,0xf4
    800073a8:	00989bb7          	lui	s7,0x989
    800073ac:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800073b0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800073b4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800073b8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800073bc:	00148c9b          	addiw	s9,s1,1
    800073c0:	02500793          	li	a5,37
    800073c4:	01998933          	add	s2,s3,s9
    800073c8:	38f51263          	bne	a0,a5,8000774c <__printf+0x434>
    800073cc:	00094783          	lbu	a5,0(s2)
    800073d0:	00078c9b          	sext.w	s9,a5
    800073d4:	1e078263          	beqz	a5,800075b8 <__printf+0x2a0>
    800073d8:	0024849b          	addiw	s1,s1,2
    800073dc:	07000713          	li	a4,112
    800073e0:	00998933          	add	s2,s3,s1
    800073e4:	38e78a63          	beq	a5,a4,80007778 <__printf+0x460>
    800073e8:	20f76863          	bltu	a4,a5,800075f8 <__printf+0x2e0>
    800073ec:	42a78863          	beq	a5,a0,8000781c <__printf+0x504>
    800073f0:	06400713          	li	a4,100
    800073f4:	40e79663          	bne	a5,a4,80007800 <__printf+0x4e8>
    800073f8:	f7843783          	ld	a5,-136(s0)
    800073fc:	0007a603          	lw	a2,0(a5)
    80007400:	00878793          	addi	a5,a5,8
    80007404:	f6f43c23          	sd	a5,-136(s0)
    80007408:	42064a63          	bltz	a2,8000783c <__printf+0x524>
    8000740c:	00a00713          	li	a4,10
    80007410:	02e677bb          	remuw	a5,a2,a4
    80007414:	00002d97          	auipc	s11,0x2
    80007418:	44cd8d93          	addi	s11,s11,1100 # 80009860 <digits>
    8000741c:	00900593          	li	a1,9
    80007420:	0006051b          	sext.w	a0,a2
    80007424:	00000c93          	li	s9,0
    80007428:	02079793          	slli	a5,a5,0x20
    8000742c:	0207d793          	srli	a5,a5,0x20
    80007430:	00fd87b3          	add	a5,s11,a5
    80007434:	0007c783          	lbu	a5,0(a5)
    80007438:	02e656bb          	divuw	a3,a2,a4
    8000743c:	f8f40023          	sb	a5,-128(s0)
    80007440:	14c5d863          	bge	a1,a2,80007590 <__printf+0x278>
    80007444:	06300593          	li	a1,99
    80007448:	00100c93          	li	s9,1
    8000744c:	02e6f7bb          	remuw	a5,a3,a4
    80007450:	02079793          	slli	a5,a5,0x20
    80007454:	0207d793          	srli	a5,a5,0x20
    80007458:	00fd87b3          	add	a5,s11,a5
    8000745c:	0007c783          	lbu	a5,0(a5)
    80007460:	02e6d73b          	divuw	a4,a3,a4
    80007464:	f8f400a3          	sb	a5,-127(s0)
    80007468:	12a5f463          	bgeu	a1,a0,80007590 <__printf+0x278>
    8000746c:	00a00693          	li	a3,10
    80007470:	00900593          	li	a1,9
    80007474:	02d777bb          	remuw	a5,a4,a3
    80007478:	02079793          	slli	a5,a5,0x20
    8000747c:	0207d793          	srli	a5,a5,0x20
    80007480:	00fd87b3          	add	a5,s11,a5
    80007484:	0007c503          	lbu	a0,0(a5)
    80007488:	02d757bb          	divuw	a5,a4,a3
    8000748c:	f8a40123          	sb	a0,-126(s0)
    80007490:	48e5f263          	bgeu	a1,a4,80007914 <__printf+0x5fc>
    80007494:	06300513          	li	a0,99
    80007498:	02d7f5bb          	remuw	a1,a5,a3
    8000749c:	02059593          	slli	a1,a1,0x20
    800074a0:	0205d593          	srli	a1,a1,0x20
    800074a4:	00bd85b3          	add	a1,s11,a1
    800074a8:	0005c583          	lbu	a1,0(a1)
    800074ac:	02d7d7bb          	divuw	a5,a5,a3
    800074b0:	f8b401a3          	sb	a1,-125(s0)
    800074b4:	48e57263          	bgeu	a0,a4,80007938 <__printf+0x620>
    800074b8:	3e700513          	li	a0,999
    800074bc:	02d7f5bb          	remuw	a1,a5,a3
    800074c0:	02059593          	slli	a1,a1,0x20
    800074c4:	0205d593          	srli	a1,a1,0x20
    800074c8:	00bd85b3          	add	a1,s11,a1
    800074cc:	0005c583          	lbu	a1,0(a1)
    800074d0:	02d7d7bb          	divuw	a5,a5,a3
    800074d4:	f8b40223          	sb	a1,-124(s0)
    800074d8:	46e57663          	bgeu	a0,a4,80007944 <__printf+0x62c>
    800074dc:	02d7f5bb          	remuw	a1,a5,a3
    800074e0:	02059593          	slli	a1,a1,0x20
    800074e4:	0205d593          	srli	a1,a1,0x20
    800074e8:	00bd85b3          	add	a1,s11,a1
    800074ec:	0005c583          	lbu	a1,0(a1)
    800074f0:	02d7d7bb          	divuw	a5,a5,a3
    800074f4:	f8b402a3          	sb	a1,-123(s0)
    800074f8:	46ea7863          	bgeu	s4,a4,80007968 <__printf+0x650>
    800074fc:	02d7f5bb          	remuw	a1,a5,a3
    80007500:	02059593          	slli	a1,a1,0x20
    80007504:	0205d593          	srli	a1,a1,0x20
    80007508:	00bd85b3          	add	a1,s11,a1
    8000750c:	0005c583          	lbu	a1,0(a1)
    80007510:	02d7d7bb          	divuw	a5,a5,a3
    80007514:	f8b40323          	sb	a1,-122(s0)
    80007518:	3eeaf863          	bgeu	s5,a4,80007908 <__printf+0x5f0>
    8000751c:	02d7f5bb          	remuw	a1,a5,a3
    80007520:	02059593          	slli	a1,a1,0x20
    80007524:	0205d593          	srli	a1,a1,0x20
    80007528:	00bd85b3          	add	a1,s11,a1
    8000752c:	0005c583          	lbu	a1,0(a1)
    80007530:	02d7d7bb          	divuw	a5,a5,a3
    80007534:	f8b403a3          	sb	a1,-121(s0)
    80007538:	42eb7e63          	bgeu	s6,a4,80007974 <__printf+0x65c>
    8000753c:	02d7f5bb          	remuw	a1,a5,a3
    80007540:	02059593          	slli	a1,a1,0x20
    80007544:	0205d593          	srli	a1,a1,0x20
    80007548:	00bd85b3          	add	a1,s11,a1
    8000754c:	0005c583          	lbu	a1,0(a1)
    80007550:	02d7d7bb          	divuw	a5,a5,a3
    80007554:	f8b40423          	sb	a1,-120(s0)
    80007558:	42ebfc63          	bgeu	s7,a4,80007990 <__printf+0x678>
    8000755c:	02079793          	slli	a5,a5,0x20
    80007560:	0207d793          	srli	a5,a5,0x20
    80007564:	00fd8db3          	add	s11,s11,a5
    80007568:	000dc703          	lbu	a4,0(s11)
    8000756c:	00a00793          	li	a5,10
    80007570:	00900c93          	li	s9,9
    80007574:	f8e404a3          	sb	a4,-119(s0)
    80007578:	00065c63          	bgez	a2,80007590 <__printf+0x278>
    8000757c:	f9040713          	addi	a4,s0,-112
    80007580:	00f70733          	add	a4,a4,a5
    80007584:	02d00693          	li	a3,45
    80007588:	fed70823          	sb	a3,-16(a4)
    8000758c:	00078c93          	mv	s9,a5
    80007590:	f8040793          	addi	a5,s0,-128
    80007594:	01978cb3          	add	s9,a5,s9
    80007598:	f7f40d13          	addi	s10,s0,-129
    8000759c:	000cc503          	lbu	a0,0(s9)
    800075a0:	fffc8c93          	addi	s9,s9,-1
    800075a4:	00000097          	auipc	ra,0x0
    800075a8:	b90080e7          	jalr	-1136(ra) # 80007134 <consputc>
    800075ac:	ffac98e3          	bne	s9,s10,8000759c <__printf+0x284>
    800075b0:	00094503          	lbu	a0,0(s2)
    800075b4:	e00514e3          	bnez	a0,800073bc <__printf+0xa4>
    800075b8:	1a0c1663          	bnez	s8,80007764 <__printf+0x44c>
    800075bc:	08813083          	ld	ra,136(sp)
    800075c0:	08013403          	ld	s0,128(sp)
    800075c4:	07813483          	ld	s1,120(sp)
    800075c8:	07013903          	ld	s2,112(sp)
    800075cc:	06813983          	ld	s3,104(sp)
    800075d0:	06013a03          	ld	s4,96(sp)
    800075d4:	05813a83          	ld	s5,88(sp)
    800075d8:	05013b03          	ld	s6,80(sp)
    800075dc:	04813b83          	ld	s7,72(sp)
    800075e0:	04013c03          	ld	s8,64(sp)
    800075e4:	03813c83          	ld	s9,56(sp)
    800075e8:	03013d03          	ld	s10,48(sp)
    800075ec:	02813d83          	ld	s11,40(sp)
    800075f0:	0d010113          	addi	sp,sp,208
    800075f4:	00008067          	ret
    800075f8:	07300713          	li	a4,115
    800075fc:	1ce78a63          	beq	a5,a4,800077d0 <__printf+0x4b8>
    80007600:	07800713          	li	a4,120
    80007604:	1ee79e63          	bne	a5,a4,80007800 <__printf+0x4e8>
    80007608:	f7843783          	ld	a5,-136(s0)
    8000760c:	0007a703          	lw	a4,0(a5)
    80007610:	00878793          	addi	a5,a5,8
    80007614:	f6f43c23          	sd	a5,-136(s0)
    80007618:	28074263          	bltz	a4,8000789c <__printf+0x584>
    8000761c:	00002d97          	auipc	s11,0x2
    80007620:	244d8d93          	addi	s11,s11,580 # 80009860 <digits>
    80007624:	00f77793          	andi	a5,a4,15
    80007628:	00fd87b3          	add	a5,s11,a5
    8000762c:	0007c683          	lbu	a3,0(a5)
    80007630:	00f00613          	li	a2,15
    80007634:	0007079b          	sext.w	a5,a4
    80007638:	f8d40023          	sb	a3,-128(s0)
    8000763c:	0047559b          	srliw	a1,a4,0x4
    80007640:	0047569b          	srliw	a3,a4,0x4
    80007644:	00000c93          	li	s9,0
    80007648:	0ee65063          	bge	a2,a4,80007728 <__printf+0x410>
    8000764c:	00f6f693          	andi	a3,a3,15
    80007650:	00dd86b3          	add	a3,s11,a3
    80007654:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007658:	0087d79b          	srliw	a5,a5,0x8
    8000765c:	00100c93          	li	s9,1
    80007660:	f8d400a3          	sb	a3,-127(s0)
    80007664:	0cb67263          	bgeu	a2,a1,80007728 <__printf+0x410>
    80007668:	00f7f693          	andi	a3,a5,15
    8000766c:	00dd86b3          	add	a3,s11,a3
    80007670:	0006c583          	lbu	a1,0(a3)
    80007674:	00f00613          	li	a2,15
    80007678:	0047d69b          	srliw	a3,a5,0x4
    8000767c:	f8b40123          	sb	a1,-126(s0)
    80007680:	0047d593          	srli	a1,a5,0x4
    80007684:	28f67e63          	bgeu	a2,a5,80007920 <__printf+0x608>
    80007688:	00f6f693          	andi	a3,a3,15
    8000768c:	00dd86b3          	add	a3,s11,a3
    80007690:	0006c503          	lbu	a0,0(a3)
    80007694:	0087d813          	srli	a6,a5,0x8
    80007698:	0087d69b          	srliw	a3,a5,0x8
    8000769c:	f8a401a3          	sb	a0,-125(s0)
    800076a0:	28b67663          	bgeu	a2,a1,8000792c <__printf+0x614>
    800076a4:	00f6f693          	andi	a3,a3,15
    800076a8:	00dd86b3          	add	a3,s11,a3
    800076ac:	0006c583          	lbu	a1,0(a3)
    800076b0:	00c7d513          	srli	a0,a5,0xc
    800076b4:	00c7d69b          	srliw	a3,a5,0xc
    800076b8:	f8b40223          	sb	a1,-124(s0)
    800076bc:	29067a63          	bgeu	a2,a6,80007950 <__printf+0x638>
    800076c0:	00f6f693          	andi	a3,a3,15
    800076c4:	00dd86b3          	add	a3,s11,a3
    800076c8:	0006c583          	lbu	a1,0(a3)
    800076cc:	0107d813          	srli	a6,a5,0x10
    800076d0:	0107d69b          	srliw	a3,a5,0x10
    800076d4:	f8b402a3          	sb	a1,-123(s0)
    800076d8:	28a67263          	bgeu	a2,a0,8000795c <__printf+0x644>
    800076dc:	00f6f693          	andi	a3,a3,15
    800076e0:	00dd86b3          	add	a3,s11,a3
    800076e4:	0006c683          	lbu	a3,0(a3)
    800076e8:	0147d79b          	srliw	a5,a5,0x14
    800076ec:	f8d40323          	sb	a3,-122(s0)
    800076f0:	21067663          	bgeu	a2,a6,800078fc <__printf+0x5e4>
    800076f4:	02079793          	slli	a5,a5,0x20
    800076f8:	0207d793          	srli	a5,a5,0x20
    800076fc:	00fd8db3          	add	s11,s11,a5
    80007700:	000dc683          	lbu	a3,0(s11)
    80007704:	00800793          	li	a5,8
    80007708:	00700c93          	li	s9,7
    8000770c:	f8d403a3          	sb	a3,-121(s0)
    80007710:	00075c63          	bgez	a4,80007728 <__printf+0x410>
    80007714:	f9040713          	addi	a4,s0,-112
    80007718:	00f70733          	add	a4,a4,a5
    8000771c:	02d00693          	li	a3,45
    80007720:	fed70823          	sb	a3,-16(a4)
    80007724:	00078c93          	mv	s9,a5
    80007728:	f8040793          	addi	a5,s0,-128
    8000772c:	01978cb3          	add	s9,a5,s9
    80007730:	f7f40d13          	addi	s10,s0,-129
    80007734:	000cc503          	lbu	a0,0(s9)
    80007738:	fffc8c93          	addi	s9,s9,-1
    8000773c:	00000097          	auipc	ra,0x0
    80007740:	9f8080e7          	jalr	-1544(ra) # 80007134 <consputc>
    80007744:	ff9d18e3          	bne	s10,s9,80007734 <__printf+0x41c>
    80007748:	0100006f          	j	80007758 <__printf+0x440>
    8000774c:	00000097          	auipc	ra,0x0
    80007750:	9e8080e7          	jalr	-1560(ra) # 80007134 <consputc>
    80007754:	000c8493          	mv	s1,s9
    80007758:	00094503          	lbu	a0,0(s2)
    8000775c:	c60510e3          	bnez	a0,800073bc <__printf+0xa4>
    80007760:	e40c0ee3          	beqz	s8,800075bc <__printf+0x2a4>
    80007764:	00005517          	auipc	a0,0x5
    80007768:	46c50513          	addi	a0,a0,1132 # 8000cbd0 <pr>
    8000776c:	00001097          	auipc	ra,0x1
    80007770:	94c080e7          	jalr	-1716(ra) # 800080b8 <release>
    80007774:	e49ff06f          	j	800075bc <__printf+0x2a4>
    80007778:	f7843783          	ld	a5,-136(s0)
    8000777c:	03000513          	li	a0,48
    80007780:	01000d13          	li	s10,16
    80007784:	00878713          	addi	a4,a5,8
    80007788:	0007bc83          	ld	s9,0(a5)
    8000778c:	f6e43c23          	sd	a4,-136(s0)
    80007790:	00000097          	auipc	ra,0x0
    80007794:	9a4080e7          	jalr	-1628(ra) # 80007134 <consputc>
    80007798:	07800513          	li	a0,120
    8000779c:	00000097          	auipc	ra,0x0
    800077a0:	998080e7          	jalr	-1640(ra) # 80007134 <consputc>
    800077a4:	00002d97          	auipc	s11,0x2
    800077a8:	0bcd8d93          	addi	s11,s11,188 # 80009860 <digits>
    800077ac:	03ccd793          	srli	a5,s9,0x3c
    800077b0:	00fd87b3          	add	a5,s11,a5
    800077b4:	0007c503          	lbu	a0,0(a5)
    800077b8:	fffd0d1b          	addiw	s10,s10,-1
    800077bc:	004c9c93          	slli	s9,s9,0x4
    800077c0:	00000097          	auipc	ra,0x0
    800077c4:	974080e7          	jalr	-1676(ra) # 80007134 <consputc>
    800077c8:	fe0d12e3          	bnez	s10,800077ac <__printf+0x494>
    800077cc:	f8dff06f          	j	80007758 <__printf+0x440>
    800077d0:	f7843783          	ld	a5,-136(s0)
    800077d4:	0007bc83          	ld	s9,0(a5)
    800077d8:	00878793          	addi	a5,a5,8
    800077dc:	f6f43c23          	sd	a5,-136(s0)
    800077e0:	000c9a63          	bnez	s9,800077f4 <__printf+0x4dc>
    800077e4:	1080006f          	j	800078ec <__printf+0x5d4>
    800077e8:	001c8c93          	addi	s9,s9,1
    800077ec:	00000097          	auipc	ra,0x0
    800077f0:	948080e7          	jalr	-1720(ra) # 80007134 <consputc>
    800077f4:	000cc503          	lbu	a0,0(s9)
    800077f8:	fe0518e3          	bnez	a0,800077e8 <__printf+0x4d0>
    800077fc:	f5dff06f          	j	80007758 <__printf+0x440>
    80007800:	02500513          	li	a0,37
    80007804:	00000097          	auipc	ra,0x0
    80007808:	930080e7          	jalr	-1744(ra) # 80007134 <consputc>
    8000780c:	000c8513          	mv	a0,s9
    80007810:	00000097          	auipc	ra,0x0
    80007814:	924080e7          	jalr	-1756(ra) # 80007134 <consputc>
    80007818:	f41ff06f          	j	80007758 <__printf+0x440>
    8000781c:	02500513          	li	a0,37
    80007820:	00000097          	auipc	ra,0x0
    80007824:	914080e7          	jalr	-1772(ra) # 80007134 <consputc>
    80007828:	f31ff06f          	j	80007758 <__printf+0x440>
    8000782c:	00030513          	mv	a0,t1
    80007830:	00000097          	auipc	ra,0x0
    80007834:	7bc080e7          	jalr	1980(ra) # 80007fec <acquire>
    80007838:	b4dff06f          	j	80007384 <__printf+0x6c>
    8000783c:	40c0053b          	negw	a0,a2
    80007840:	00a00713          	li	a4,10
    80007844:	02e576bb          	remuw	a3,a0,a4
    80007848:	00002d97          	auipc	s11,0x2
    8000784c:	018d8d93          	addi	s11,s11,24 # 80009860 <digits>
    80007850:	ff700593          	li	a1,-9
    80007854:	02069693          	slli	a3,a3,0x20
    80007858:	0206d693          	srli	a3,a3,0x20
    8000785c:	00dd86b3          	add	a3,s11,a3
    80007860:	0006c683          	lbu	a3,0(a3)
    80007864:	02e557bb          	divuw	a5,a0,a4
    80007868:	f8d40023          	sb	a3,-128(s0)
    8000786c:	10b65e63          	bge	a2,a1,80007988 <__printf+0x670>
    80007870:	06300593          	li	a1,99
    80007874:	02e7f6bb          	remuw	a3,a5,a4
    80007878:	02069693          	slli	a3,a3,0x20
    8000787c:	0206d693          	srli	a3,a3,0x20
    80007880:	00dd86b3          	add	a3,s11,a3
    80007884:	0006c683          	lbu	a3,0(a3)
    80007888:	02e7d73b          	divuw	a4,a5,a4
    8000788c:	00200793          	li	a5,2
    80007890:	f8d400a3          	sb	a3,-127(s0)
    80007894:	bca5ece3          	bltu	a1,a0,8000746c <__printf+0x154>
    80007898:	ce5ff06f          	j	8000757c <__printf+0x264>
    8000789c:	40e007bb          	negw	a5,a4
    800078a0:	00002d97          	auipc	s11,0x2
    800078a4:	fc0d8d93          	addi	s11,s11,-64 # 80009860 <digits>
    800078a8:	00f7f693          	andi	a3,a5,15
    800078ac:	00dd86b3          	add	a3,s11,a3
    800078b0:	0006c583          	lbu	a1,0(a3)
    800078b4:	ff100613          	li	a2,-15
    800078b8:	0047d69b          	srliw	a3,a5,0x4
    800078bc:	f8b40023          	sb	a1,-128(s0)
    800078c0:	0047d59b          	srliw	a1,a5,0x4
    800078c4:	0ac75e63          	bge	a4,a2,80007980 <__printf+0x668>
    800078c8:	00f6f693          	andi	a3,a3,15
    800078cc:	00dd86b3          	add	a3,s11,a3
    800078d0:	0006c603          	lbu	a2,0(a3)
    800078d4:	00f00693          	li	a3,15
    800078d8:	0087d79b          	srliw	a5,a5,0x8
    800078dc:	f8c400a3          	sb	a2,-127(s0)
    800078e0:	d8b6e4e3          	bltu	a3,a1,80007668 <__printf+0x350>
    800078e4:	00200793          	li	a5,2
    800078e8:	e2dff06f          	j	80007714 <__printf+0x3fc>
    800078ec:	00002c97          	auipc	s9,0x2
    800078f0:	f54c8c93          	addi	s9,s9,-172 # 80009840 <CONSOLE_STATUS+0x830>
    800078f4:	02800513          	li	a0,40
    800078f8:	ef1ff06f          	j	800077e8 <__printf+0x4d0>
    800078fc:	00700793          	li	a5,7
    80007900:	00600c93          	li	s9,6
    80007904:	e0dff06f          	j	80007710 <__printf+0x3f8>
    80007908:	00700793          	li	a5,7
    8000790c:	00600c93          	li	s9,6
    80007910:	c69ff06f          	j	80007578 <__printf+0x260>
    80007914:	00300793          	li	a5,3
    80007918:	00200c93          	li	s9,2
    8000791c:	c5dff06f          	j	80007578 <__printf+0x260>
    80007920:	00300793          	li	a5,3
    80007924:	00200c93          	li	s9,2
    80007928:	de9ff06f          	j	80007710 <__printf+0x3f8>
    8000792c:	00400793          	li	a5,4
    80007930:	00300c93          	li	s9,3
    80007934:	dddff06f          	j	80007710 <__printf+0x3f8>
    80007938:	00400793          	li	a5,4
    8000793c:	00300c93          	li	s9,3
    80007940:	c39ff06f          	j	80007578 <__printf+0x260>
    80007944:	00500793          	li	a5,5
    80007948:	00400c93          	li	s9,4
    8000794c:	c2dff06f          	j	80007578 <__printf+0x260>
    80007950:	00500793          	li	a5,5
    80007954:	00400c93          	li	s9,4
    80007958:	db9ff06f          	j	80007710 <__printf+0x3f8>
    8000795c:	00600793          	li	a5,6
    80007960:	00500c93          	li	s9,5
    80007964:	dadff06f          	j	80007710 <__printf+0x3f8>
    80007968:	00600793          	li	a5,6
    8000796c:	00500c93          	li	s9,5
    80007970:	c09ff06f          	j	80007578 <__printf+0x260>
    80007974:	00800793          	li	a5,8
    80007978:	00700c93          	li	s9,7
    8000797c:	bfdff06f          	j	80007578 <__printf+0x260>
    80007980:	00100793          	li	a5,1
    80007984:	d91ff06f          	j	80007714 <__printf+0x3fc>
    80007988:	00100793          	li	a5,1
    8000798c:	bf1ff06f          	j	8000757c <__printf+0x264>
    80007990:	00900793          	li	a5,9
    80007994:	00800c93          	li	s9,8
    80007998:	be1ff06f          	j	80007578 <__printf+0x260>
    8000799c:	00002517          	auipc	a0,0x2
    800079a0:	eac50513          	addi	a0,a0,-340 # 80009848 <CONSOLE_STATUS+0x838>
    800079a4:	00000097          	auipc	ra,0x0
    800079a8:	918080e7          	jalr	-1768(ra) # 800072bc <panic>

00000000800079ac <printfinit>:
    800079ac:	fe010113          	addi	sp,sp,-32
    800079b0:	00813823          	sd	s0,16(sp)
    800079b4:	00913423          	sd	s1,8(sp)
    800079b8:	00113c23          	sd	ra,24(sp)
    800079bc:	02010413          	addi	s0,sp,32
    800079c0:	00005497          	auipc	s1,0x5
    800079c4:	21048493          	addi	s1,s1,528 # 8000cbd0 <pr>
    800079c8:	00048513          	mv	a0,s1
    800079cc:	00002597          	auipc	a1,0x2
    800079d0:	e8c58593          	addi	a1,a1,-372 # 80009858 <CONSOLE_STATUS+0x848>
    800079d4:	00000097          	auipc	ra,0x0
    800079d8:	5f4080e7          	jalr	1524(ra) # 80007fc8 <initlock>
    800079dc:	01813083          	ld	ra,24(sp)
    800079e0:	01013403          	ld	s0,16(sp)
    800079e4:	0004ac23          	sw	zero,24(s1)
    800079e8:	00813483          	ld	s1,8(sp)
    800079ec:	02010113          	addi	sp,sp,32
    800079f0:	00008067          	ret

00000000800079f4 <uartinit>:
    800079f4:	ff010113          	addi	sp,sp,-16
    800079f8:	00813423          	sd	s0,8(sp)
    800079fc:	01010413          	addi	s0,sp,16
    80007a00:	100007b7          	lui	a5,0x10000
    80007a04:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007a08:	f8000713          	li	a4,-128
    80007a0c:	00e781a3          	sb	a4,3(a5)
    80007a10:	00300713          	li	a4,3
    80007a14:	00e78023          	sb	a4,0(a5)
    80007a18:	000780a3          	sb	zero,1(a5)
    80007a1c:	00e781a3          	sb	a4,3(a5)
    80007a20:	00700693          	li	a3,7
    80007a24:	00d78123          	sb	a3,2(a5)
    80007a28:	00e780a3          	sb	a4,1(a5)
    80007a2c:	00813403          	ld	s0,8(sp)
    80007a30:	01010113          	addi	sp,sp,16
    80007a34:	00008067          	ret

0000000080007a38 <uartputc>:
    80007a38:	00004797          	auipc	a5,0x4
    80007a3c:	eb07a783          	lw	a5,-336(a5) # 8000b8e8 <panicked>
    80007a40:	00078463          	beqz	a5,80007a48 <uartputc+0x10>
    80007a44:	0000006f          	j	80007a44 <uartputc+0xc>
    80007a48:	fd010113          	addi	sp,sp,-48
    80007a4c:	02813023          	sd	s0,32(sp)
    80007a50:	00913c23          	sd	s1,24(sp)
    80007a54:	01213823          	sd	s2,16(sp)
    80007a58:	01313423          	sd	s3,8(sp)
    80007a5c:	02113423          	sd	ra,40(sp)
    80007a60:	03010413          	addi	s0,sp,48
    80007a64:	00004917          	auipc	s2,0x4
    80007a68:	e8c90913          	addi	s2,s2,-372 # 8000b8f0 <uart_tx_r>
    80007a6c:	00093783          	ld	a5,0(s2)
    80007a70:	00004497          	auipc	s1,0x4
    80007a74:	e8848493          	addi	s1,s1,-376 # 8000b8f8 <uart_tx_w>
    80007a78:	0004b703          	ld	a4,0(s1)
    80007a7c:	02078693          	addi	a3,a5,32
    80007a80:	00050993          	mv	s3,a0
    80007a84:	02e69c63          	bne	a3,a4,80007abc <uartputc+0x84>
    80007a88:	00001097          	auipc	ra,0x1
    80007a8c:	834080e7          	jalr	-1996(ra) # 800082bc <push_on>
    80007a90:	00093783          	ld	a5,0(s2)
    80007a94:	0004b703          	ld	a4,0(s1)
    80007a98:	02078793          	addi	a5,a5,32
    80007a9c:	00e79463          	bne	a5,a4,80007aa4 <uartputc+0x6c>
    80007aa0:	0000006f          	j	80007aa0 <uartputc+0x68>
    80007aa4:	00001097          	auipc	ra,0x1
    80007aa8:	88c080e7          	jalr	-1908(ra) # 80008330 <pop_on>
    80007aac:	00093783          	ld	a5,0(s2)
    80007ab0:	0004b703          	ld	a4,0(s1)
    80007ab4:	02078693          	addi	a3,a5,32
    80007ab8:	fce688e3          	beq	a3,a4,80007a88 <uartputc+0x50>
    80007abc:	01f77693          	andi	a3,a4,31
    80007ac0:	00005597          	auipc	a1,0x5
    80007ac4:	13058593          	addi	a1,a1,304 # 8000cbf0 <uart_tx_buf>
    80007ac8:	00d586b3          	add	a3,a1,a3
    80007acc:	00170713          	addi	a4,a4,1
    80007ad0:	01368023          	sb	s3,0(a3)
    80007ad4:	00e4b023          	sd	a4,0(s1)
    80007ad8:	10000637          	lui	a2,0x10000
    80007adc:	02f71063          	bne	a4,a5,80007afc <uartputc+0xc4>
    80007ae0:	0340006f          	j	80007b14 <uartputc+0xdc>
    80007ae4:	00074703          	lbu	a4,0(a4)
    80007ae8:	00f93023          	sd	a5,0(s2)
    80007aec:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007af0:	00093783          	ld	a5,0(s2)
    80007af4:	0004b703          	ld	a4,0(s1)
    80007af8:	00f70e63          	beq	a4,a5,80007b14 <uartputc+0xdc>
    80007afc:	00564683          	lbu	a3,5(a2)
    80007b00:	01f7f713          	andi	a4,a5,31
    80007b04:	00e58733          	add	a4,a1,a4
    80007b08:	0206f693          	andi	a3,a3,32
    80007b0c:	00178793          	addi	a5,a5,1
    80007b10:	fc069ae3          	bnez	a3,80007ae4 <uartputc+0xac>
    80007b14:	02813083          	ld	ra,40(sp)
    80007b18:	02013403          	ld	s0,32(sp)
    80007b1c:	01813483          	ld	s1,24(sp)
    80007b20:	01013903          	ld	s2,16(sp)
    80007b24:	00813983          	ld	s3,8(sp)
    80007b28:	03010113          	addi	sp,sp,48
    80007b2c:	00008067          	ret

0000000080007b30 <uartputc_sync>:
    80007b30:	ff010113          	addi	sp,sp,-16
    80007b34:	00813423          	sd	s0,8(sp)
    80007b38:	01010413          	addi	s0,sp,16
    80007b3c:	00004717          	auipc	a4,0x4
    80007b40:	dac72703          	lw	a4,-596(a4) # 8000b8e8 <panicked>
    80007b44:	02071663          	bnez	a4,80007b70 <uartputc_sync+0x40>
    80007b48:	00050793          	mv	a5,a0
    80007b4c:	100006b7          	lui	a3,0x10000
    80007b50:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007b54:	02077713          	andi	a4,a4,32
    80007b58:	fe070ce3          	beqz	a4,80007b50 <uartputc_sync+0x20>
    80007b5c:	0ff7f793          	andi	a5,a5,255
    80007b60:	00f68023          	sb	a5,0(a3)
    80007b64:	00813403          	ld	s0,8(sp)
    80007b68:	01010113          	addi	sp,sp,16
    80007b6c:	00008067          	ret
    80007b70:	0000006f          	j	80007b70 <uartputc_sync+0x40>

0000000080007b74 <uartstart>:
    80007b74:	ff010113          	addi	sp,sp,-16
    80007b78:	00813423          	sd	s0,8(sp)
    80007b7c:	01010413          	addi	s0,sp,16
    80007b80:	00004617          	auipc	a2,0x4
    80007b84:	d7060613          	addi	a2,a2,-656 # 8000b8f0 <uart_tx_r>
    80007b88:	00004517          	auipc	a0,0x4
    80007b8c:	d7050513          	addi	a0,a0,-656 # 8000b8f8 <uart_tx_w>
    80007b90:	00063783          	ld	a5,0(a2)
    80007b94:	00053703          	ld	a4,0(a0)
    80007b98:	04f70263          	beq	a4,a5,80007bdc <uartstart+0x68>
    80007b9c:	100005b7          	lui	a1,0x10000
    80007ba0:	00005817          	auipc	a6,0x5
    80007ba4:	05080813          	addi	a6,a6,80 # 8000cbf0 <uart_tx_buf>
    80007ba8:	01c0006f          	j	80007bc4 <uartstart+0x50>
    80007bac:	0006c703          	lbu	a4,0(a3)
    80007bb0:	00f63023          	sd	a5,0(a2)
    80007bb4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007bb8:	00063783          	ld	a5,0(a2)
    80007bbc:	00053703          	ld	a4,0(a0)
    80007bc0:	00f70e63          	beq	a4,a5,80007bdc <uartstart+0x68>
    80007bc4:	01f7f713          	andi	a4,a5,31
    80007bc8:	00e806b3          	add	a3,a6,a4
    80007bcc:	0055c703          	lbu	a4,5(a1)
    80007bd0:	00178793          	addi	a5,a5,1
    80007bd4:	02077713          	andi	a4,a4,32
    80007bd8:	fc071ae3          	bnez	a4,80007bac <uartstart+0x38>
    80007bdc:	00813403          	ld	s0,8(sp)
    80007be0:	01010113          	addi	sp,sp,16
    80007be4:	00008067          	ret

0000000080007be8 <uartgetc>:
    80007be8:	ff010113          	addi	sp,sp,-16
    80007bec:	00813423          	sd	s0,8(sp)
    80007bf0:	01010413          	addi	s0,sp,16
    80007bf4:	10000737          	lui	a4,0x10000
    80007bf8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80007bfc:	0017f793          	andi	a5,a5,1
    80007c00:	00078c63          	beqz	a5,80007c18 <uartgetc+0x30>
    80007c04:	00074503          	lbu	a0,0(a4)
    80007c08:	0ff57513          	andi	a0,a0,255
    80007c0c:	00813403          	ld	s0,8(sp)
    80007c10:	01010113          	addi	sp,sp,16
    80007c14:	00008067          	ret
    80007c18:	fff00513          	li	a0,-1
    80007c1c:	ff1ff06f          	j	80007c0c <uartgetc+0x24>

0000000080007c20 <uartintr>:
    80007c20:	100007b7          	lui	a5,0x10000
    80007c24:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007c28:	0017f793          	andi	a5,a5,1
    80007c2c:	0a078463          	beqz	a5,80007cd4 <uartintr+0xb4>
    80007c30:	fe010113          	addi	sp,sp,-32
    80007c34:	00813823          	sd	s0,16(sp)
    80007c38:	00913423          	sd	s1,8(sp)
    80007c3c:	00113c23          	sd	ra,24(sp)
    80007c40:	02010413          	addi	s0,sp,32
    80007c44:	100004b7          	lui	s1,0x10000
    80007c48:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007c4c:	0ff57513          	andi	a0,a0,255
    80007c50:	fffff097          	auipc	ra,0xfffff
    80007c54:	534080e7          	jalr	1332(ra) # 80007184 <consoleintr>
    80007c58:	0054c783          	lbu	a5,5(s1)
    80007c5c:	0017f793          	andi	a5,a5,1
    80007c60:	fe0794e3          	bnez	a5,80007c48 <uartintr+0x28>
    80007c64:	00004617          	auipc	a2,0x4
    80007c68:	c8c60613          	addi	a2,a2,-884 # 8000b8f0 <uart_tx_r>
    80007c6c:	00004517          	auipc	a0,0x4
    80007c70:	c8c50513          	addi	a0,a0,-884 # 8000b8f8 <uart_tx_w>
    80007c74:	00063783          	ld	a5,0(a2)
    80007c78:	00053703          	ld	a4,0(a0)
    80007c7c:	04f70263          	beq	a4,a5,80007cc0 <uartintr+0xa0>
    80007c80:	100005b7          	lui	a1,0x10000
    80007c84:	00005817          	auipc	a6,0x5
    80007c88:	f6c80813          	addi	a6,a6,-148 # 8000cbf0 <uart_tx_buf>
    80007c8c:	01c0006f          	j	80007ca8 <uartintr+0x88>
    80007c90:	0006c703          	lbu	a4,0(a3)
    80007c94:	00f63023          	sd	a5,0(a2)
    80007c98:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007c9c:	00063783          	ld	a5,0(a2)
    80007ca0:	00053703          	ld	a4,0(a0)
    80007ca4:	00f70e63          	beq	a4,a5,80007cc0 <uartintr+0xa0>
    80007ca8:	01f7f713          	andi	a4,a5,31
    80007cac:	00e806b3          	add	a3,a6,a4
    80007cb0:	0055c703          	lbu	a4,5(a1)
    80007cb4:	00178793          	addi	a5,a5,1
    80007cb8:	02077713          	andi	a4,a4,32
    80007cbc:	fc071ae3          	bnez	a4,80007c90 <uartintr+0x70>
    80007cc0:	01813083          	ld	ra,24(sp)
    80007cc4:	01013403          	ld	s0,16(sp)
    80007cc8:	00813483          	ld	s1,8(sp)
    80007ccc:	02010113          	addi	sp,sp,32
    80007cd0:	00008067          	ret
    80007cd4:	00004617          	auipc	a2,0x4
    80007cd8:	c1c60613          	addi	a2,a2,-996 # 8000b8f0 <uart_tx_r>
    80007cdc:	00004517          	auipc	a0,0x4
    80007ce0:	c1c50513          	addi	a0,a0,-996 # 8000b8f8 <uart_tx_w>
    80007ce4:	00063783          	ld	a5,0(a2)
    80007ce8:	00053703          	ld	a4,0(a0)
    80007cec:	04f70263          	beq	a4,a5,80007d30 <uartintr+0x110>
    80007cf0:	100005b7          	lui	a1,0x10000
    80007cf4:	00005817          	auipc	a6,0x5
    80007cf8:	efc80813          	addi	a6,a6,-260 # 8000cbf0 <uart_tx_buf>
    80007cfc:	01c0006f          	j	80007d18 <uartintr+0xf8>
    80007d00:	0006c703          	lbu	a4,0(a3)
    80007d04:	00f63023          	sd	a5,0(a2)
    80007d08:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007d0c:	00063783          	ld	a5,0(a2)
    80007d10:	00053703          	ld	a4,0(a0)
    80007d14:	02f70063          	beq	a4,a5,80007d34 <uartintr+0x114>
    80007d18:	01f7f713          	andi	a4,a5,31
    80007d1c:	00e806b3          	add	a3,a6,a4
    80007d20:	0055c703          	lbu	a4,5(a1)
    80007d24:	00178793          	addi	a5,a5,1
    80007d28:	02077713          	andi	a4,a4,32
    80007d2c:	fc071ae3          	bnez	a4,80007d00 <uartintr+0xe0>
    80007d30:	00008067          	ret
    80007d34:	00008067          	ret

0000000080007d38 <kinit>:
    80007d38:	fc010113          	addi	sp,sp,-64
    80007d3c:	02913423          	sd	s1,40(sp)
    80007d40:	fffff7b7          	lui	a5,0xfffff
    80007d44:	00006497          	auipc	s1,0x6
    80007d48:	edb48493          	addi	s1,s1,-293 # 8000dc1f <end+0xfff>
    80007d4c:	02813823          	sd	s0,48(sp)
    80007d50:	01313c23          	sd	s3,24(sp)
    80007d54:	00f4f4b3          	and	s1,s1,a5
    80007d58:	02113c23          	sd	ra,56(sp)
    80007d5c:	03213023          	sd	s2,32(sp)
    80007d60:	01413823          	sd	s4,16(sp)
    80007d64:	01513423          	sd	s5,8(sp)
    80007d68:	04010413          	addi	s0,sp,64
    80007d6c:	000017b7          	lui	a5,0x1
    80007d70:	01100993          	li	s3,17
    80007d74:	00f487b3          	add	a5,s1,a5
    80007d78:	01b99993          	slli	s3,s3,0x1b
    80007d7c:	06f9e063          	bltu	s3,a5,80007ddc <kinit+0xa4>
    80007d80:	00005a97          	auipc	s5,0x5
    80007d84:	ea0a8a93          	addi	s5,s5,-352 # 8000cc20 <end>
    80007d88:	0754ec63          	bltu	s1,s5,80007e00 <kinit+0xc8>
    80007d8c:	0734fa63          	bgeu	s1,s3,80007e00 <kinit+0xc8>
    80007d90:	00088a37          	lui	s4,0x88
    80007d94:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007d98:	00004917          	auipc	s2,0x4
    80007d9c:	b6890913          	addi	s2,s2,-1176 # 8000b900 <kmem>
    80007da0:	00ca1a13          	slli	s4,s4,0xc
    80007da4:	0140006f          	j	80007db8 <kinit+0x80>
    80007da8:	000017b7          	lui	a5,0x1
    80007dac:	00f484b3          	add	s1,s1,a5
    80007db0:	0554e863          	bltu	s1,s5,80007e00 <kinit+0xc8>
    80007db4:	0534f663          	bgeu	s1,s3,80007e00 <kinit+0xc8>
    80007db8:	00001637          	lui	a2,0x1
    80007dbc:	00100593          	li	a1,1
    80007dc0:	00048513          	mv	a0,s1
    80007dc4:	00000097          	auipc	ra,0x0
    80007dc8:	5e4080e7          	jalr	1508(ra) # 800083a8 <__memset>
    80007dcc:	00093783          	ld	a5,0(s2)
    80007dd0:	00f4b023          	sd	a5,0(s1)
    80007dd4:	00993023          	sd	s1,0(s2)
    80007dd8:	fd4498e3          	bne	s1,s4,80007da8 <kinit+0x70>
    80007ddc:	03813083          	ld	ra,56(sp)
    80007de0:	03013403          	ld	s0,48(sp)
    80007de4:	02813483          	ld	s1,40(sp)
    80007de8:	02013903          	ld	s2,32(sp)
    80007dec:	01813983          	ld	s3,24(sp)
    80007df0:	01013a03          	ld	s4,16(sp)
    80007df4:	00813a83          	ld	s5,8(sp)
    80007df8:	04010113          	addi	sp,sp,64
    80007dfc:	00008067          	ret
    80007e00:	00002517          	auipc	a0,0x2
    80007e04:	a7850513          	addi	a0,a0,-1416 # 80009878 <digits+0x18>
    80007e08:	fffff097          	auipc	ra,0xfffff
    80007e0c:	4b4080e7          	jalr	1204(ra) # 800072bc <panic>

0000000080007e10 <freerange>:
    80007e10:	fc010113          	addi	sp,sp,-64
    80007e14:	000017b7          	lui	a5,0x1
    80007e18:	02913423          	sd	s1,40(sp)
    80007e1c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007e20:	009504b3          	add	s1,a0,s1
    80007e24:	fffff537          	lui	a0,0xfffff
    80007e28:	02813823          	sd	s0,48(sp)
    80007e2c:	02113c23          	sd	ra,56(sp)
    80007e30:	03213023          	sd	s2,32(sp)
    80007e34:	01313c23          	sd	s3,24(sp)
    80007e38:	01413823          	sd	s4,16(sp)
    80007e3c:	01513423          	sd	s5,8(sp)
    80007e40:	01613023          	sd	s6,0(sp)
    80007e44:	04010413          	addi	s0,sp,64
    80007e48:	00a4f4b3          	and	s1,s1,a0
    80007e4c:	00f487b3          	add	a5,s1,a5
    80007e50:	06f5e463          	bltu	a1,a5,80007eb8 <freerange+0xa8>
    80007e54:	00005a97          	auipc	s5,0x5
    80007e58:	dcca8a93          	addi	s5,s5,-564 # 8000cc20 <end>
    80007e5c:	0954e263          	bltu	s1,s5,80007ee0 <freerange+0xd0>
    80007e60:	01100993          	li	s3,17
    80007e64:	01b99993          	slli	s3,s3,0x1b
    80007e68:	0734fc63          	bgeu	s1,s3,80007ee0 <freerange+0xd0>
    80007e6c:	00058a13          	mv	s4,a1
    80007e70:	00004917          	auipc	s2,0x4
    80007e74:	a9090913          	addi	s2,s2,-1392 # 8000b900 <kmem>
    80007e78:	00002b37          	lui	s6,0x2
    80007e7c:	0140006f          	j	80007e90 <freerange+0x80>
    80007e80:	000017b7          	lui	a5,0x1
    80007e84:	00f484b3          	add	s1,s1,a5
    80007e88:	0554ec63          	bltu	s1,s5,80007ee0 <freerange+0xd0>
    80007e8c:	0534fa63          	bgeu	s1,s3,80007ee0 <freerange+0xd0>
    80007e90:	00001637          	lui	a2,0x1
    80007e94:	00100593          	li	a1,1
    80007e98:	00048513          	mv	a0,s1
    80007e9c:	00000097          	auipc	ra,0x0
    80007ea0:	50c080e7          	jalr	1292(ra) # 800083a8 <__memset>
    80007ea4:	00093703          	ld	a4,0(s2)
    80007ea8:	016487b3          	add	a5,s1,s6
    80007eac:	00e4b023          	sd	a4,0(s1)
    80007eb0:	00993023          	sd	s1,0(s2)
    80007eb4:	fcfa76e3          	bgeu	s4,a5,80007e80 <freerange+0x70>
    80007eb8:	03813083          	ld	ra,56(sp)
    80007ebc:	03013403          	ld	s0,48(sp)
    80007ec0:	02813483          	ld	s1,40(sp)
    80007ec4:	02013903          	ld	s2,32(sp)
    80007ec8:	01813983          	ld	s3,24(sp)
    80007ecc:	01013a03          	ld	s4,16(sp)
    80007ed0:	00813a83          	ld	s5,8(sp)
    80007ed4:	00013b03          	ld	s6,0(sp)
    80007ed8:	04010113          	addi	sp,sp,64
    80007edc:	00008067          	ret
    80007ee0:	00002517          	auipc	a0,0x2
    80007ee4:	99850513          	addi	a0,a0,-1640 # 80009878 <digits+0x18>
    80007ee8:	fffff097          	auipc	ra,0xfffff
    80007eec:	3d4080e7          	jalr	980(ra) # 800072bc <panic>

0000000080007ef0 <kfree>:
    80007ef0:	fe010113          	addi	sp,sp,-32
    80007ef4:	00813823          	sd	s0,16(sp)
    80007ef8:	00113c23          	sd	ra,24(sp)
    80007efc:	00913423          	sd	s1,8(sp)
    80007f00:	02010413          	addi	s0,sp,32
    80007f04:	03451793          	slli	a5,a0,0x34
    80007f08:	04079c63          	bnez	a5,80007f60 <kfree+0x70>
    80007f0c:	00005797          	auipc	a5,0x5
    80007f10:	d1478793          	addi	a5,a5,-748 # 8000cc20 <end>
    80007f14:	00050493          	mv	s1,a0
    80007f18:	04f56463          	bltu	a0,a5,80007f60 <kfree+0x70>
    80007f1c:	01100793          	li	a5,17
    80007f20:	01b79793          	slli	a5,a5,0x1b
    80007f24:	02f57e63          	bgeu	a0,a5,80007f60 <kfree+0x70>
    80007f28:	00001637          	lui	a2,0x1
    80007f2c:	00100593          	li	a1,1
    80007f30:	00000097          	auipc	ra,0x0
    80007f34:	478080e7          	jalr	1144(ra) # 800083a8 <__memset>
    80007f38:	00004797          	auipc	a5,0x4
    80007f3c:	9c878793          	addi	a5,a5,-1592 # 8000b900 <kmem>
    80007f40:	0007b703          	ld	a4,0(a5)
    80007f44:	01813083          	ld	ra,24(sp)
    80007f48:	01013403          	ld	s0,16(sp)
    80007f4c:	00e4b023          	sd	a4,0(s1)
    80007f50:	0097b023          	sd	s1,0(a5)
    80007f54:	00813483          	ld	s1,8(sp)
    80007f58:	02010113          	addi	sp,sp,32
    80007f5c:	00008067          	ret
    80007f60:	00002517          	auipc	a0,0x2
    80007f64:	91850513          	addi	a0,a0,-1768 # 80009878 <digits+0x18>
    80007f68:	fffff097          	auipc	ra,0xfffff
    80007f6c:	354080e7          	jalr	852(ra) # 800072bc <panic>

0000000080007f70 <kalloc>:
    80007f70:	fe010113          	addi	sp,sp,-32
    80007f74:	00813823          	sd	s0,16(sp)
    80007f78:	00913423          	sd	s1,8(sp)
    80007f7c:	00113c23          	sd	ra,24(sp)
    80007f80:	02010413          	addi	s0,sp,32
    80007f84:	00004797          	auipc	a5,0x4
    80007f88:	97c78793          	addi	a5,a5,-1668 # 8000b900 <kmem>
    80007f8c:	0007b483          	ld	s1,0(a5)
    80007f90:	02048063          	beqz	s1,80007fb0 <kalloc+0x40>
    80007f94:	0004b703          	ld	a4,0(s1)
    80007f98:	00001637          	lui	a2,0x1
    80007f9c:	00500593          	li	a1,5
    80007fa0:	00048513          	mv	a0,s1
    80007fa4:	00e7b023          	sd	a4,0(a5)
    80007fa8:	00000097          	auipc	ra,0x0
    80007fac:	400080e7          	jalr	1024(ra) # 800083a8 <__memset>
    80007fb0:	01813083          	ld	ra,24(sp)
    80007fb4:	01013403          	ld	s0,16(sp)
    80007fb8:	00048513          	mv	a0,s1
    80007fbc:	00813483          	ld	s1,8(sp)
    80007fc0:	02010113          	addi	sp,sp,32
    80007fc4:	00008067          	ret

0000000080007fc8 <initlock>:
    80007fc8:	ff010113          	addi	sp,sp,-16
    80007fcc:	00813423          	sd	s0,8(sp)
    80007fd0:	01010413          	addi	s0,sp,16
    80007fd4:	00813403          	ld	s0,8(sp)
    80007fd8:	00b53423          	sd	a1,8(a0)
    80007fdc:	00052023          	sw	zero,0(a0)
    80007fe0:	00053823          	sd	zero,16(a0)
    80007fe4:	01010113          	addi	sp,sp,16
    80007fe8:	00008067          	ret

0000000080007fec <acquire>:
    80007fec:	fe010113          	addi	sp,sp,-32
    80007ff0:	00813823          	sd	s0,16(sp)
    80007ff4:	00913423          	sd	s1,8(sp)
    80007ff8:	00113c23          	sd	ra,24(sp)
    80007ffc:	01213023          	sd	s2,0(sp)
    80008000:	02010413          	addi	s0,sp,32
    80008004:	00050493          	mv	s1,a0
    80008008:	10002973          	csrr	s2,sstatus
    8000800c:	100027f3          	csrr	a5,sstatus
    80008010:	ffd7f793          	andi	a5,a5,-3
    80008014:	10079073          	csrw	sstatus,a5
    80008018:	fffff097          	auipc	ra,0xfffff
    8000801c:	8ec080e7          	jalr	-1812(ra) # 80006904 <mycpu>
    80008020:	07852783          	lw	a5,120(a0)
    80008024:	06078e63          	beqz	a5,800080a0 <acquire+0xb4>
    80008028:	fffff097          	auipc	ra,0xfffff
    8000802c:	8dc080e7          	jalr	-1828(ra) # 80006904 <mycpu>
    80008030:	07852783          	lw	a5,120(a0)
    80008034:	0004a703          	lw	a4,0(s1)
    80008038:	0017879b          	addiw	a5,a5,1
    8000803c:	06f52c23          	sw	a5,120(a0)
    80008040:	04071063          	bnez	a4,80008080 <acquire+0x94>
    80008044:	00100713          	li	a4,1
    80008048:	00070793          	mv	a5,a4
    8000804c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008050:	0007879b          	sext.w	a5,a5
    80008054:	fe079ae3          	bnez	a5,80008048 <acquire+0x5c>
    80008058:	0ff0000f          	fence
    8000805c:	fffff097          	auipc	ra,0xfffff
    80008060:	8a8080e7          	jalr	-1880(ra) # 80006904 <mycpu>
    80008064:	01813083          	ld	ra,24(sp)
    80008068:	01013403          	ld	s0,16(sp)
    8000806c:	00a4b823          	sd	a0,16(s1)
    80008070:	00013903          	ld	s2,0(sp)
    80008074:	00813483          	ld	s1,8(sp)
    80008078:	02010113          	addi	sp,sp,32
    8000807c:	00008067          	ret
    80008080:	0104b903          	ld	s2,16(s1)
    80008084:	fffff097          	auipc	ra,0xfffff
    80008088:	880080e7          	jalr	-1920(ra) # 80006904 <mycpu>
    8000808c:	faa91ce3          	bne	s2,a0,80008044 <acquire+0x58>
    80008090:	00001517          	auipc	a0,0x1
    80008094:	7f050513          	addi	a0,a0,2032 # 80009880 <digits+0x20>
    80008098:	fffff097          	auipc	ra,0xfffff
    8000809c:	224080e7          	jalr	548(ra) # 800072bc <panic>
    800080a0:	00195913          	srli	s2,s2,0x1
    800080a4:	fffff097          	auipc	ra,0xfffff
    800080a8:	860080e7          	jalr	-1952(ra) # 80006904 <mycpu>
    800080ac:	00197913          	andi	s2,s2,1
    800080b0:	07252e23          	sw	s2,124(a0)
    800080b4:	f75ff06f          	j	80008028 <acquire+0x3c>

00000000800080b8 <release>:
    800080b8:	fe010113          	addi	sp,sp,-32
    800080bc:	00813823          	sd	s0,16(sp)
    800080c0:	00113c23          	sd	ra,24(sp)
    800080c4:	00913423          	sd	s1,8(sp)
    800080c8:	01213023          	sd	s2,0(sp)
    800080cc:	02010413          	addi	s0,sp,32
    800080d0:	00052783          	lw	a5,0(a0)
    800080d4:	00079a63          	bnez	a5,800080e8 <release+0x30>
    800080d8:	00001517          	auipc	a0,0x1
    800080dc:	7b050513          	addi	a0,a0,1968 # 80009888 <digits+0x28>
    800080e0:	fffff097          	auipc	ra,0xfffff
    800080e4:	1dc080e7          	jalr	476(ra) # 800072bc <panic>
    800080e8:	01053903          	ld	s2,16(a0)
    800080ec:	00050493          	mv	s1,a0
    800080f0:	fffff097          	auipc	ra,0xfffff
    800080f4:	814080e7          	jalr	-2028(ra) # 80006904 <mycpu>
    800080f8:	fea910e3          	bne	s2,a0,800080d8 <release+0x20>
    800080fc:	0004b823          	sd	zero,16(s1)
    80008100:	0ff0000f          	fence
    80008104:	0f50000f          	fence	iorw,ow
    80008108:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000810c:	ffffe097          	auipc	ra,0xffffe
    80008110:	7f8080e7          	jalr	2040(ra) # 80006904 <mycpu>
    80008114:	100027f3          	csrr	a5,sstatus
    80008118:	0027f793          	andi	a5,a5,2
    8000811c:	04079a63          	bnez	a5,80008170 <release+0xb8>
    80008120:	07852783          	lw	a5,120(a0)
    80008124:	02f05e63          	blez	a5,80008160 <release+0xa8>
    80008128:	fff7871b          	addiw	a4,a5,-1
    8000812c:	06e52c23          	sw	a4,120(a0)
    80008130:	00071c63          	bnez	a4,80008148 <release+0x90>
    80008134:	07c52783          	lw	a5,124(a0)
    80008138:	00078863          	beqz	a5,80008148 <release+0x90>
    8000813c:	100027f3          	csrr	a5,sstatus
    80008140:	0027e793          	ori	a5,a5,2
    80008144:	10079073          	csrw	sstatus,a5
    80008148:	01813083          	ld	ra,24(sp)
    8000814c:	01013403          	ld	s0,16(sp)
    80008150:	00813483          	ld	s1,8(sp)
    80008154:	00013903          	ld	s2,0(sp)
    80008158:	02010113          	addi	sp,sp,32
    8000815c:	00008067          	ret
    80008160:	00001517          	auipc	a0,0x1
    80008164:	74850513          	addi	a0,a0,1864 # 800098a8 <digits+0x48>
    80008168:	fffff097          	auipc	ra,0xfffff
    8000816c:	154080e7          	jalr	340(ra) # 800072bc <panic>
    80008170:	00001517          	auipc	a0,0x1
    80008174:	72050513          	addi	a0,a0,1824 # 80009890 <digits+0x30>
    80008178:	fffff097          	auipc	ra,0xfffff
    8000817c:	144080e7          	jalr	324(ra) # 800072bc <panic>

0000000080008180 <holding>:
    80008180:	00052783          	lw	a5,0(a0)
    80008184:	00079663          	bnez	a5,80008190 <holding+0x10>
    80008188:	00000513          	li	a0,0
    8000818c:	00008067          	ret
    80008190:	fe010113          	addi	sp,sp,-32
    80008194:	00813823          	sd	s0,16(sp)
    80008198:	00913423          	sd	s1,8(sp)
    8000819c:	00113c23          	sd	ra,24(sp)
    800081a0:	02010413          	addi	s0,sp,32
    800081a4:	01053483          	ld	s1,16(a0)
    800081a8:	ffffe097          	auipc	ra,0xffffe
    800081ac:	75c080e7          	jalr	1884(ra) # 80006904 <mycpu>
    800081b0:	01813083          	ld	ra,24(sp)
    800081b4:	01013403          	ld	s0,16(sp)
    800081b8:	40a48533          	sub	a0,s1,a0
    800081bc:	00153513          	seqz	a0,a0
    800081c0:	00813483          	ld	s1,8(sp)
    800081c4:	02010113          	addi	sp,sp,32
    800081c8:	00008067          	ret

00000000800081cc <push_off>:
    800081cc:	fe010113          	addi	sp,sp,-32
    800081d0:	00813823          	sd	s0,16(sp)
    800081d4:	00113c23          	sd	ra,24(sp)
    800081d8:	00913423          	sd	s1,8(sp)
    800081dc:	02010413          	addi	s0,sp,32
    800081e0:	100024f3          	csrr	s1,sstatus
    800081e4:	100027f3          	csrr	a5,sstatus
    800081e8:	ffd7f793          	andi	a5,a5,-3
    800081ec:	10079073          	csrw	sstatus,a5
    800081f0:	ffffe097          	auipc	ra,0xffffe
    800081f4:	714080e7          	jalr	1812(ra) # 80006904 <mycpu>
    800081f8:	07852783          	lw	a5,120(a0)
    800081fc:	02078663          	beqz	a5,80008228 <push_off+0x5c>
    80008200:	ffffe097          	auipc	ra,0xffffe
    80008204:	704080e7          	jalr	1796(ra) # 80006904 <mycpu>
    80008208:	07852783          	lw	a5,120(a0)
    8000820c:	01813083          	ld	ra,24(sp)
    80008210:	01013403          	ld	s0,16(sp)
    80008214:	0017879b          	addiw	a5,a5,1
    80008218:	06f52c23          	sw	a5,120(a0)
    8000821c:	00813483          	ld	s1,8(sp)
    80008220:	02010113          	addi	sp,sp,32
    80008224:	00008067          	ret
    80008228:	0014d493          	srli	s1,s1,0x1
    8000822c:	ffffe097          	auipc	ra,0xffffe
    80008230:	6d8080e7          	jalr	1752(ra) # 80006904 <mycpu>
    80008234:	0014f493          	andi	s1,s1,1
    80008238:	06952e23          	sw	s1,124(a0)
    8000823c:	fc5ff06f          	j	80008200 <push_off+0x34>

0000000080008240 <pop_off>:
    80008240:	ff010113          	addi	sp,sp,-16
    80008244:	00813023          	sd	s0,0(sp)
    80008248:	00113423          	sd	ra,8(sp)
    8000824c:	01010413          	addi	s0,sp,16
    80008250:	ffffe097          	auipc	ra,0xffffe
    80008254:	6b4080e7          	jalr	1716(ra) # 80006904 <mycpu>
    80008258:	100027f3          	csrr	a5,sstatus
    8000825c:	0027f793          	andi	a5,a5,2
    80008260:	04079663          	bnez	a5,800082ac <pop_off+0x6c>
    80008264:	07852783          	lw	a5,120(a0)
    80008268:	02f05a63          	blez	a5,8000829c <pop_off+0x5c>
    8000826c:	fff7871b          	addiw	a4,a5,-1
    80008270:	06e52c23          	sw	a4,120(a0)
    80008274:	00071c63          	bnez	a4,8000828c <pop_off+0x4c>
    80008278:	07c52783          	lw	a5,124(a0)
    8000827c:	00078863          	beqz	a5,8000828c <pop_off+0x4c>
    80008280:	100027f3          	csrr	a5,sstatus
    80008284:	0027e793          	ori	a5,a5,2
    80008288:	10079073          	csrw	sstatus,a5
    8000828c:	00813083          	ld	ra,8(sp)
    80008290:	00013403          	ld	s0,0(sp)
    80008294:	01010113          	addi	sp,sp,16
    80008298:	00008067          	ret
    8000829c:	00001517          	auipc	a0,0x1
    800082a0:	60c50513          	addi	a0,a0,1548 # 800098a8 <digits+0x48>
    800082a4:	fffff097          	auipc	ra,0xfffff
    800082a8:	018080e7          	jalr	24(ra) # 800072bc <panic>
    800082ac:	00001517          	auipc	a0,0x1
    800082b0:	5e450513          	addi	a0,a0,1508 # 80009890 <digits+0x30>
    800082b4:	fffff097          	auipc	ra,0xfffff
    800082b8:	008080e7          	jalr	8(ra) # 800072bc <panic>

00000000800082bc <push_on>:
    800082bc:	fe010113          	addi	sp,sp,-32
    800082c0:	00813823          	sd	s0,16(sp)
    800082c4:	00113c23          	sd	ra,24(sp)
    800082c8:	00913423          	sd	s1,8(sp)
    800082cc:	02010413          	addi	s0,sp,32
    800082d0:	100024f3          	csrr	s1,sstatus
    800082d4:	100027f3          	csrr	a5,sstatus
    800082d8:	0027e793          	ori	a5,a5,2
    800082dc:	10079073          	csrw	sstatus,a5
    800082e0:	ffffe097          	auipc	ra,0xffffe
    800082e4:	624080e7          	jalr	1572(ra) # 80006904 <mycpu>
    800082e8:	07852783          	lw	a5,120(a0)
    800082ec:	02078663          	beqz	a5,80008318 <push_on+0x5c>
    800082f0:	ffffe097          	auipc	ra,0xffffe
    800082f4:	614080e7          	jalr	1556(ra) # 80006904 <mycpu>
    800082f8:	07852783          	lw	a5,120(a0)
    800082fc:	01813083          	ld	ra,24(sp)
    80008300:	01013403          	ld	s0,16(sp)
    80008304:	0017879b          	addiw	a5,a5,1
    80008308:	06f52c23          	sw	a5,120(a0)
    8000830c:	00813483          	ld	s1,8(sp)
    80008310:	02010113          	addi	sp,sp,32
    80008314:	00008067          	ret
    80008318:	0014d493          	srli	s1,s1,0x1
    8000831c:	ffffe097          	auipc	ra,0xffffe
    80008320:	5e8080e7          	jalr	1512(ra) # 80006904 <mycpu>
    80008324:	0014f493          	andi	s1,s1,1
    80008328:	06952e23          	sw	s1,124(a0)
    8000832c:	fc5ff06f          	j	800082f0 <push_on+0x34>

0000000080008330 <pop_on>:
    80008330:	ff010113          	addi	sp,sp,-16
    80008334:	00813023          	sd	s0,0(sp)
    80008338:	00113423          	sd	ra,8(sp)
    8000833c:	01010413          	addi	s0,sp,16
    80008340:	ffffe097          	auipc	ra,0xffffe
    80008344:	5c4080e7          	jalr	1476(ra) # 80006904 <mycpu>
    80008348:	100027f3          	csrr	a5,sstatus
    8000834c:	0027f793          	andi	a5,a5,2
    80008350:	04078463          	beqz	a5,80008398 <pop_on+0x68>
    80008354:	07852783          	lw	a5,120(a0)
    80008358:	02f05863          	blez	a5,80008388 <pop_on+0x58>
    8000835c:	fff7879b          	addiw	a5,a5,-1
    80008360:	06f52c23          	sw	a5,120(a0)
    80008364:	07853783          	ld	a5,120(a0)
    80008368:	00079863          	bnez	a5,80008378 <pop_on+0x48>
    8000836c:	100027f3          	csrr	a5,sstatus
    80008370:	ffd7f793          	andi	a5,a5,-3
    80008374:	10079073          	csrw	sstatus,a5
    80008378:	00813083          	ld	ra,8(sp)
    8000837c:	00013403          	ld	s0,0(sp)
    80008380:	01010113          	addi	sp,sp,16
    80008384:	00008067          	ret
    80008388:	00001517          	auipc	a0,0x1
    8000838c:	54850513          	addi	a0,a0,1352 # 800098d0 <digits+0x70>
    80008390:	fffff097          	auipc	ra,0xfffff
    80008394:	f2c080e7          	jalr	-212(ra) # 800072bc <panic>
    80008398:	00001517          	auipc	a0,0x1
    8000839c:	51850513          	addi	a0,a0,1304 # 800098b0 <digits+0x50>
    800083a0:	fffff097          	auipc	ra,0xfffff
    800083a4:	f1c080e7          	jalr	-228(ra) # 800072bc <panic>

00000000800083a8 <__memset>:
    800083a8:	ff010113          	addi	sp,sp,-16
    800083ac:	00813423          	sd	s0,8(sp)
    800083b0:	01010413          	addi	s0,sp,16
    800083b4:	1a060e63          	beqz	a2,80008570 <__memset+0x1c8>
    800083b8:	40a007b3          	neg	a5,a0
    800083bc:	0077f793          	andi	a5,a5,7
    800083c0:	00778693          	addi	a3,a5,7
    800083c4:	00b00813          	li	a6,11
    800083c8:	0ff5f593          	andi	a1,a1,255
    800083cc:	fff6071b          	addiw	a4,a2,-1
    800083d0:	1b06e663          	bltu	a3,a6,8000857c <__memset+0x1d4>
    800083d4:	1cd76463          	bltu	a4,a3,8000859c <__memset+0x1f4>
    800083d8:	1a078e63          	beqz	a5,80008594 <__memset+0x1ec>
    800083dc:	00b50023          	sb	a1,0(a0)
    800083e0:	00100713          	li	a4,1
    800083e4:	1ae78463          	beq	a5,a4,8000858c <__memset+0x1e4>
    800083e8:	00b500a3          	sb	a1,1(a0)
    800083ec:	00200713          	li	a4,2
    800083f0:	1ae78a63          	beq	a5,a4,800085a4 <__memset+0x1fc>
    800083f4:	00b50123          	sb	a1,2(a0)
    800083f8:	00300713          	li	a4,3
    800083fc:	18e78463          	beq	a5,a4,80008584 <__memset+0x1dc>
    80008400:	00b501a3          	sb	a1,3(a0)
    80008404:	00400713          	li	a4,4
    80008408:	1ae78263          	beq	a5,a4,800085ac <__memset+0x204>
    8000840c:	00b50223          	sb	a1,4(a0)
    80008410:	00500713          	li	a4,5
    80008414:	1ae78063          	beq	a5,a4,800085b4 <__memset+0x20c>
    80008418:	00b502a3          	sb	a1,5(a0)
    8000841c:	00700713          	li	a4,7
    80008420:	18e79e63          	bne	a5,a4,800085bc <__memset+0x214>
    80008424:	00b50323          	sb	a1,6(a0)
    80008428:	00700e93          	li	t4,7
    8000842c:	00859713          	slli	a4,a1,0x8
    80008430:	00e5e733          	or	a4,a1,a4
    80008434:	01059e13          	slli	t3,a1,0x10
    80008438:	01c76e33          	or	t3,a4,t3
    8000843c:	01859313          	slli	t1,a1,0x18
    80008440:	006e6333          	or	t1,t3,t1
    80008444:	02059893          	slli	a7,a1,0x20
    80008448:	40f60e3b          	subw	t3,a2,a5
    8000844c:	011368b3          	or	a7,t1,a7
    80008450:	02859813          	slli	a6,a1,0x28
    80008454:	0108e833          	or	a6,a7,a6
    80008458:	03059693          	slli	a3,a1,0x30
    8000845c:	003e589b          	srliw	a7,t3,0x3
    80008460:	00d866b3          	or	a3,a6,a3
    80008464:	03859713          	slli	a4,a1,0x38
    80008468:	00389813          	slli	a6,a7,0x3
    8000846c:	00f507b3          	add	a5,a0,a5
    80008470:	00e6e733          	or	a4,a3,a4
    80008474:	000e089b          	sext.w	a7,t3
    80008478:	00f806b3          	add	a3,a6,a5
    8000847c:	00e7b023          	sd	a4,0(a5)
    80008480:	00878793          	addi	a5,a5,8
    80008484:	fed79ce3          	bne	a5,a3,8000847c <__memset+0xd4>
    80008488:	ff8e7793          	andi	a5,t3,-8
    8000848c:	0007871b          	sext.w	a4,a5
    80008490:	01d787bb          	addw	a5,a5,t4
    80008494:	0ce88e63          	beq	a7,a4,80008570 <__memset+0x1c8>
    80008498:	00f50733          	add	a4,a0,a5
    8000849c:	00b70023          	sb	a1,0(a4)
    800084a0:	0017871b          	addiw	a4,a5,1
    800084a4:	0cc77663          	bgeu	a4,a2,80008570 <__memset+0x1c8>
    800084a8:	00e50733          	add	a4,a0,a4
    800084ac:	00b70023          	sb	a1,0(a4)
    800084b0:	0027871b          	addiw	a4,a5,2
    800084b4:	0ac77e63          	bgeu	a4,a2,80008570 <__memset+0x1c8>
    800084b8:	00e50733          	add	a4,a0,a4
    800084bc:	00b70023          	sb	a1,0(a4)
    800084c0:	0037871b          	addiw	a4,a5,3
    800084c4:	0ac77663          	bgeu	a4,a2,80008570 <__memset+0x1c8>
    800084c8:	00e50733          	add	a4,a0,a4
    800084cc:	00b70023          	sb	a1,0(a4)
    800084d0:	0047871b          	addiw	a4,a5,4
    800084d4:	08c77e63          	bgeu	a4,a2,80008570 <__memset+0x1c8>
    800084d8:	00e50733          	add	a4,a0,a4
    800084dc:	00b70023          	sb	a1,0(a4)
    800084e0:	0057871b          	addiw	a4,a5,5
    800084e4:	08c77663          	bgeu	a4,a2,80008570 <__memset+0x1c8>
    800084e8:	00e50733          	add	a4,a0,a4
    800084ec:	00b70023          	sb	a1,0(a4)
    800084f0:	0067871b          	addiw	a4,a5,6
    800084f4:	06c77e63          	bgeu	a4,a2,80008570 <__memset+0x1c8>
    800084f8:	00e50733          	add	a4,a0,a4
    800084fc:	00b70023          	sb	a1,0(a4)
    80008500:	0077871b          	addiw	a4,a5,7
    80008504:	06c77663          	bgeu	a4,a2,80008570 <__memset+0x1c8>
    80008508:	00e50733          	add	a4,a0,a4
    8000850c:	00b70023          	sb	a1,0(a4)
    80008510:	0087871b          	addiw	a4,a5,8
    80008514:	04c77e63          	bgeu	a4,a2,80008570 <__memset+0x1c8>
    80008518:	00e50733          	add	a4,a0,a4
    8000851c:	00b70023          	sb	a1,0(a4)
    80008520:	0097871b          	addiw	a4,a5,9
    80008524:	04c77663          	bgeu	a4,a2,80008570 <__memset+0x1c8>
    80008528:	00e50733          	add	a4,a0,a4
    8000852c:	00b70023          	sb	a1,0(a4)
    80008530:	00a7871b          	addiw	a4,a5,10
    80008534:	02c77e63          	bgeu	a4,a2,80008570 <__memset+0x1c8>
    80008538:	00e50733          	add	a4,a0,a4
    8000853c:	00b70023          	sb	a1,0(a4)
    80008540:	00b7871b          	addiw	a4,a5,11
    80008544:	02c77663          	bgeu	a4,a2,80008570 <__memset+0x1c8>
    80008548:	00e50733          	add	a4,a0,a4
    8000854c:	00b70023          	sb	a1,0(a4)
    80008550:	00c7871b          	addiw	a4,a5,12
    80008554:	00c77e63          	bgeu	a4,a2,80008570 <__memset+0x1c8>
    80008558:	00e50733          	add	a4,a0,a4
    8000855c:	00b70023          	sb	a1,0(a4)
    80008560:	00d7879b          	addiw	a5,a5,13
    80008564:	00c7f663          	bgeu	a5,a2,80008570 <__memset+0x1c8>
    80008568:	00f507b3          	add	a5,a0,a5
    8000856c:	00b78023          	sb	a1,0(a5)
    80008570:	00813403          	ld	s0,8(sp)
    80008574:	01010113          	addi	sp,sp,16
    80008578:	00008067          	ret
    8000857c:	00b00693          	li	a3,11
    80008580:	e55ff06f          	j	800083d4 <__memset+0x2c>
    80008584:	00300e93          	li	t4,3
    80008588:	ea5ff06f          	j	8000842c <__memset+0x84>
    8000858c:	00100e93          	li	t4,1
    80008590:	e9dff06f          	j	8000842c <__memset+0x84>
    80008594:	00000e93          	li	t4,0
    80008598:	e95ff06f          	j	8000842c <__memset+0x84>
    8000859c:	00000793          	li	a5,0
    800085a0:	ef9ff06f          	j	80008498 <__memset+0xf0>
    800085a4:	00200e93          	li	t4,2
    800085a8:	e85ff06f          	j	8000842c <__memset+0x84>
    800085ac:	00400e93          	li	t4,4
    800085b0:	e7dff06f          	j	8000842c <__memset+0x84>
    800085b4:	00500e93          	li	t4,5
    800085b8:	e75ff06f          	j	8000842c <__memset+0x84>
    800085bc:	00600e93          	li	t4,6
    800085c0:	e6dff06f          	j	8000842c <__memset+0x84>

00000000800085c4 <__memmove>:
    800085c4:	ff010113          	addi	sp,sp,-16
    800085c8:	00813423          	sd	s0,8(sp)
    800085cc:	01010413          	addi	s0,sp,16
    800085d0:	0e060863          	beqz	a2,800086c0 <__memmove+0xfc>
    800085d4:	fff6069b          	addiw	a3,a2,-1
    800085d8:	0006881b          	sext.w	a6,a3
    800085dc:	0ea5e863          	bltu	a1,a0,800086cc <__memmove+0x108>
    800085e0:	00758713          	addi	a4,a1,7
    800085e4:	00a5e7b3          	or	a5,a1,a0
    800085e8:	40a70733          	sub	a4,a4,a0
    800085ec:	0077f793          	andi	a5,a5,7
    800085f0:	00f73713          	sltiu	a4,a4,15
    800085f4:	00174713          	xori	a4,a4,1
    800085f8:	0017b793          	seqz	a5,a5
    800085fc:	00e7f7b3          	and	a5,a5,a4
    80008600:	10078863          	beqz	a5,80008710 <__memmove+0x14c>
    80008604:	00900793          	li	a5,9
    80008608:	1107f463          	bgeu	a5,a6,80008710 <__memmove+0x14c>
    8000860c:	0036581b          	srliw	a6,a2,0x3
    80008610:	fff8081b          	addiw	a6,a6,-1
    80008614:	02081813          	slli	a6,a6,0x20
    80008618:	01d85893          	srli	a7,a6,0x1d
    8000861c:	00858813          	addi	a6,a1,8
    80008620:	00058793          	mv	a5,a1
    80008624:	00050713          	mv	a4,a0
    80008628:	01088833          	add	a6,a7,a6
    8000862c:	0007b883          	ld	a7,0(a5)
    80008630:	00878793          	addi	a5,a5,8
    80008634:	00870713          	addi	a4,a4,8
    80008638:	ff173c23          	sd	a7,-8(a4)
    8000863c:	ff0798e3          	bne	a5,a6,8000862c <__memmove+0x68>
    80008640:	ff867713          	andi	a4,a2,-8
    80008644:	02071793          	slli	a5,a4,0x20
    80008648:	0207d793          	srli	a5,a5,0x20
    8000864c:	00f585b3          	add	a1,a1,a5
    80008650:	40e686bb          	subw	a3,a3,a4
    80008654:	00f507b3          	add	a5,a0,a5
    80008658:	06e60463          	beq	a2,a4,800086c0 <__memmove+0xfc>
    8000865c:	0005c703          	lbu	a4,0(a1)
    80008660:	00e78023          	sb	a4,0(a5)
    80008664:	04068e63          	beqz	a3,800086c0 <__memmove+0xfc>
    80008668:	0015c603          	lbu	a2,1(a1)
    8000866c:	00100713          	li	a4,1
    80008670:	00c780a3          	sb	a2,1(a5)
    80008674:	04e68663          	beq	a3,a4,800086c0 <__memmove+0xfc>
    80008678:	0025c603          	lbu	a2,2(a1)
    8000867c:	00200713          	li	a4,2
    80008680:	00c78123          	sb	a2,2(a5)
    80008684:	02e68e63          	beq	a3,a4,800086c0 <__memmove+0xfc>
    80008688:	0035c603          	lbu	a2,3(a1)
    8000868c:	00300713          	li	a4,3
    80008690:	00c781a3          	sb	a2,3(a5)
    80008694:	02e68663          	beq	a3,a4,800086c0 <__memmove+0xfc>
    80008698:	0045c603          	lbu	a2,4(a1)
    8000869c:	00400713          	li	a4,4
    800086a0:	00c78223          	sb	a2,4(a5)
    800086a4:	00e68e63          	beq	a3,a4,800086c0 <__memmove+0xfc>
    800086a8:	0055c603          	lbu	a2,5(a1)
    800086ac:	00500713          	li	a4,5
    800086b0:	00c782a3          	sb	a2,5(a5)
    800086b4:	00e68663          	beq	a3,a4,800086c0 <__memmove+0xfc>
    800086b8:	0065c703          	lbu	a4,6(a1)
    800086bc:	00e78323          	sb	a4,6(a5)
    800086c0:	00813403          	ld	s0,8(sp)
    800086c4:	01010113          	addi	sp,sp,16
    800086c8:	00008067          	ret
    800086cc:	02061713          	slli	a4,a2,0x20
    800086d0:	02075713          	srli	a4,a4,0x20
    800086d4:	00e587b3          	add	a5,a1,a4
    800086d8:	f0f574e3          	bgeu	a0,a5,800085e0 <__memmove+0x1c>
    800086dc:	02069613          	slli	a2,a3,0x20
    800086e0:	02065613          	srli	a2,a2,0x20
    800086e4:	fff64613          	not	a2,a2
    800086e8:	00e50733          	add	a4,a0,a4
    800086ec:	00c78633          	add	a2,a5,a2
    800086f0:	fff7c683          	lbu	a3,-1(a5)
    800086f4:	fff78793          	addi	a5,a5,-1
    800086f8:	fff70713          	addi	a4,a4,-1
    800086fc:	00d70023          	sb	a3,0(a4)
    80008700:	fec798e3          	bne	a5,a2,800086f0 <__memmove+0x12c>
    80008704:	00813403          	ld	s0,8(sp)
    80008708:	01010113          	addi	sp,sp,16
    8000870c:	00008067          	ret
    80008710:	02069713          	slli	a4,a3,0x20
    80008714:	02075713          	srli	a4,a4,0x20
    80008718:	00170713          	addi	a4,a4,1
    8000871c:	00e50733          	add	a4,a0,a4
    80008720:	00050793          	mv	a5,a0
    80008724:	0005c683          	lbu	a3,0(a1)
    80008728:	00178793          	addi	a5,a5,1
    8000872c:	00158593          	addi	a1,a1,1
    80008730:	fed78fa3          	sb	a3,-1(a5)
    80008734:	fee798e3          	bne	a5,a4,80008724 <__memmove+0x160>
    80008738:	f89ff06f          	j	800086c0 <__memmove+0xfc>

000000008000873c <__mem_free>:
    8000873c:	ff010113          	addi	sp,sp,-16
    80008740:	00813423          	sd	s0,8(sp)
    80008744:	01010413          	addi	s0,sp,16
    80008748:	00003597          	auipc	a1,0x3
    8000874c:	1c058593          	addi	a1,a1,448 # 8000b908 <freep>
    80008750:	0005b783          	ld	a5,0(a1)
    80008754:	ff050693          	addi	a3,a0,-16
    80008758:	0007b703          	ld	a4,0(a5)
    8000875c:	00d7fc63          	bgeu	a5,a3,80008774 <__mem_free+0x38>
    80008760:	00e6ee63          	bltu	a3,a4,8000877c <__mem_free+0x40>
    80008764:	00e7fc63          	bgeu	a5,a4,8000877c <__mem_free+0x40>
    80008768:	00070793          	mv	a5,a4
    8000876c:	0007b703          	ld	a4,0(a5)
    80008770:	fed7e8e3          	bltu	a5,a3,80008760 <__mem_free+0x24>
    80008774:	fee7eae3          	bltu	a5,a4,80008768 <__mem_free+0x2c>
    80008778:	fee6f8e3          	bgeu	a3,a4,80008768 <__mem_free+0x2c>
    8000877c:	ff852803          	lw	a6,-8(a0)
    80008780:	02081613          	slli	a2,a6,0x20
    80008784:	01c65613          	srli	a2,a2,0x1c
    80008788:	00c68633          	add	a2,a3,a2
    8000878c:	02c70a63          	beq	a4,a2,800087c0 <__mem_free+0x84>
    80008790:	fee53823          	sd	a4,-16(a0)
    80008794:	0087a503          	lw	a0,8(a5)
    80008798:	02051613          	slli	a2,a0,0x20
    8000879c:	01c65613          	srli	a2,a2,0x1c
    800087a0:	00c78633          	add	a2,a5,a2
    800087a4:	04c68263          	beq	a3,a2,800087e8 <__mem_free+0xac>
    800087a8:	00813403          	ld	s0,8(sp)
    800087ac:	00d7b023          	sd	a3,0(a5)
    800087b0:	00f5b023          	sd	a5,0(a1)
    800087b4:	00000513          	li	a0,0
    800087b8:	01010113          	addi	sp,sp,16
    800087bc:	00008067          	ret
    800087c0:	00872603          	lw	a2,8(a4)
    800087c4:	00073703          	ld	a4,0(a4)
    800087c8:	0106083b          	addw	a6,a2,a6
    800087cc:	ff052c23          	sw	a6,-8(a0)
    800087d0:	fee53823          	sd	a4,-16(a0)
    800087d4:	0087a503          	lw	a0,8(a5)
    800087d8:	02051613          	slli	a2,a0,0x20
    800087dc:	01c65613          	srli	a2,a2,0x1c
    800087e0:	00c78633          	add	a2,a5,a2
    800087e4:	fcc692e3          	bne	a3,a2,800087a8 <__mem_free+0x6c>
    800087e8:	00813403          	ld	s0,8(sp)
    800087ec:	0105053b          	addw	a0,a0,a6
    800087f0:	00a7a423          	sw	a0,8(a5)
    800087f4:	00e7b023          	sd	a4,0(a5)
    800087f8:	00f5b023          	sd	a5,0(a1)
    800087fc:	00000513          	li	a0,0
    80008800:	01010113          	addi	sp,sp,16
    80008804:	00008067          	ret

0000000080008808 <__mem_alloc>:
    80008808:	fc010113          	addi	sp,sp,-64
    8000880c:	02813823          	sd	s0,48(sp)
    80008810:	02913423          	sd	s1,40(sp)
    80008814:	03213023          	sd	s2,32(sp)
    80008818:	01513423          	sd	s5,8(sp)
    8000881c:	02113c23          	sd	ra,56(sp)
    80008820:	01313c23          	sd	s3,24(sp)
    80008824:	01413823          	sd	s4,16(sp)
    80008828:	01613023          	sd	s6,0(sp)
    8000882c:	04010413          	addi	s0,sp,64
    80008830:	00003a97          	auipc	s5,0x3
    80008834:	0d8a8a93          	addi	s5,s5,216 # 8000b908 <freep>
    80008838:	00f50913          	addi	s2,a0,15
    8000883c:	000ab683          	ld	a3,0(s5)
    80008840:	00495913          	srli	s2,s2,0x4
    80008844:	0019049b          	addiw	s1,s2,1
    80008848:	00048913          	mv	s2,s1
    8000884c:	0c068c63          	beqz	a3,80008924 <__mem_alloc+0x11c>
    80008850:	0006b503          	ld	a0,0(a3)
    80008854:	00852703          	lw	a4,8(a0)
    80008858:	10977063          	bgeu	a4,s1,80008958 <__mem_alloc+0x150>
    8000885c:	000017b7          	lui	a5,0x1
    80008860:	0009099b          	sext.w	s3,s2
    80008864:	0af4e863          	bltu	s1,a5,80008914 <__mem_alloc+0x10c>
    80008868:	02099a13          	slli	s4,s3,0x20
    8000886c:	01ca5a13          	srli	s4,s4,0x1c
    80008870:	fff00b13          	li	s6,-1
    80008874:	0100006f          	j	80008884 <__mem_alloc+0x7c>
    80008878:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    8000887c:	00852703          	lw	a4,8(a0)
    80008880:	04977463          	bgeu	a4,s1,800088c8 <__mem_alloc+0xc0>
    80008884:	00050793          	mv	a5,a0
    80008888:	fea698e3          	bne	a3,a0,80008878 <__mem_alloc+0x70>
    8000888c:	000a0513          	mv	a0,s4
    80008890:	00000097          	auipc	ra,0x0
    80008894:	1f0080e7          	jalr	496(ra) # 80008a80 <kvmincrease>
    80008898:	00050793          	mv	a5,a0
    8000889c:	01050513          	addi	a0,a0,16
    800088a0:	07678e63          	beq	a5,s6,8000891c <__mem_alloc+0x114>
    800088a4:	0137a423          	sw	s3,8(a5)
    800088a8:	00000097          	auipc	ra,0x0
    800088ac:	e94080e7          	jalr	-364(ra) # 8000873c <__mem_free>
    800088b0:	000ab783          	ld	a5,0(s5)
    800088b4:	06078463          	beqz	a5,8000891c <__mem_alloc+0x114>
    800088b8:	0007b503          	ld	a0,0(a5)
    800088bc:	00078693          	mv	a3,a5
    800088c0:	00852703          	lw	a4,8(a0)
    800088c4:	fc9760e3          	bltu	a4,s1,80008884 <__mem_alloc+0x7c>
    800088c8:	08e48263          	beq	s1,a4,8000894c <__mem_alloc+0x144>
    800088cc:	4127073b          	subw	a4,a4,s2
    800088d0:	02071693          	slli	a3,a4,0x20
    800088d4:	01c6d693          	srli	a3,a3,0x1c
    800088d8:	00e52423          	sw	a4,8(a0)
    800088dc:	00d50533          	add	a0,a0,a3
    800088e0:	01252423          	sw	s2,8(a0)
    800088e4:	00fab023          	sd	a5,0(s5)
    800088e8:	01050513          	addi	a0,a0,16
    800088ec:	03813083          	ld	ra,56(sp)
    800088f0:	03013403          	ld	s0,48(sp)
    800088f4:	02813483          	ld	s1,40(sp)
    800088f8:	02013903          	ld	s2,32(sp)
    800088fc:	01813983          	ld	s3,24(sp)
    80008900:	01013a03          	ld	s4,16(sp)
    80008904:	00813a83          	ld	s5,8(sp)
    80008908:	00013b03          	ld	s6,0(sp)
    8000890c:	04010113          	addi	sp,sp,64
    80008910:	00008067          	ret
    80008914:	000019b7          	lui	s3,0x1
    80008918:	f51ff06f          	j	80008868 <__mem_alloc+0x60>
    8000891c:	00000513          	li	a0,0
    80008920:	fcdff06f          	j	800088ec <__mem_alloc+0xe4>
    80008924:	00004797          	auipc	a5,0x4
    80008928:	2ec78793          	addi	a5,a5,748 # 8000cc10 <base>
    8000892c:	00078513          	mv	a0,a5
    80008930:	00fab023          	sd	a5,0(s5)
    80008934:	00f7b023          	sd	a5,0(a5)
    80008938:	00000713          	li	a4,0
    8000893c:	00004797          	auipc	a5,0x4
    80008940:	2c07ae23          	sw	zero,732(a5) # 8000cc18 <base+0x8>
    80008944:	00050693          	mv	a3,a0
    80008948:	f11ff06f          	j	80008858 <__mem_alloc+0x50>
    8000894c:	00053703          	ld	a4,0(a0)
    80008950:	00e7b023          	sd	a4,0(a5)
    80008954:	f91ff06f          	j	800088e4 <__mem_alloc+0xdc>
    80008958:	00068793          	mv	a5,a3
    8000895c:	f6dff06f          	j	800088c8 <__mem_alloc+0xc0>

0000000080008960 <__putc>:
    80008960:	fe010113          	addi	sp,sp,-32
    80008964:	00813823          	sd	s0,16(sp)
    80008968:	00113c23          	sd	ra,24(sp)
    8000896c:	02010413          	addi	s0,sp,32
    80008970:	00050793          	mv	a5,a0
    80008974:	fef40593          	addi	a1,s0,-17
    80008978:	00100613          	li	a2,1
    8000897c:	00000513          	li	a0,0
    80008980:	fef407a3          	sb	a5,-17(s0)
    80008984:	fffff097          	auipc	ra,0xfffff
    80008988:	918080e7          	jalr	-1768(ra) # 8000729c <console_write>
    8000898c:	01813083          	ld	ra,24(sp)
    80008990:	01013403          	ld	s0,16(sp)
    80008994:	02010113          	addi	sp,sp,32
    80008998:	00008067          	ret

000000008000899c <__getc>:
    8000899c:	fe010113          	addi	sp,sp,-32
    800089a0:	00813823          	sd	s0,16(sp)
    800089a4:	00113c23          	sd	ra,24(sp)
    800089a8:	02010413          	addi	s0,sp,32
    800089ac:	fe840593          	addi	a1,s0,-24
    800089b0:	00100613          	li	a2,1
    800089b4:	00000513          	li	a0,0
    800089b8:	fffff097          	auipc	ra,0xfffff
    800089bc:	8c4080e7          	jalr	-1852(ra) # 8000727c <console_read>
    800089c0:	fe844503          	lbu	a0,-24(s0)
    800089c4:	01813083          	ld	ra,24(sp)
    800089c8:	01013403          	ld	s0,16(sp)
    800089cc:	02010113          	addi	sp,sp,32
    800089d0:	00008067          	ret

00000000800089d4 <console_handler>:
    800089d4:	fe010113          	addi	sp,sp,-32
    800089d8:	00813823          	sd	s0,16(sp)
    800089dc:	00113c23          	sd	ra,24(sp)
    800089e0:	00913423          	sd	s1,8(sp)
    800089e4:	02010413          	addi	s0,sp,32
    800089e8:	14202773          	csrr	a4,scause
    800089ec:	100027f3          	csrr	a5,sstatus
    800089f0:	0027f793          	andi	a5,a5,2
    800089f4:	06079e63          	bnez	a5,80008a70 <console_handler+0x9c>
    800089f8:	00074c63          	bltz	a4,80008a10 <console_handler+0x3c>
    800089fc:	01813083          	ld	ra,24(sp)
    80008a00:	01013403          	ld	s0,16(sp)
    80008a04:	00813483          	ld	s1,8(sp)
    80008a08:	02010113          	addi	sp,sp,32
    80008a0c:	00008067          	ret
    80008a10:	0ff77713          	andi	a4,a4,255
    80008a14:	00900793          	li	a5,9
    80008a18:	fef712e3          	bne	a4,a5,800089fc <console_handler+0x28>
    80008a1c:	ffffe097          	auipc	ra,0xffffe
    80008a20:	4b8080e7          	jalr	1208(ra) # 80006ed4 <plic_claim>
    80008a24:	00a00793          	li	a5,10
    80008a28:	00050493          	mv	s1,a0
    80008a2c:	02f50c63          	beq	a0,a5,80008a64 <console_handler+0x90>
    80008a30:	fc0506e3          	beqz	a0,800089fc <console_handler+0x28>
    80008a34:	00050593          	mv	a1,a0
    80008a38:	00001517          	auipc	a0,0x1
    80008a3c:	da050513          	addi	a0,a0,-608 # 800097d8 <CONSOLE_STATUS+0x7c8>
    80008a40:	fffff097          	auipc	ra,0xfffff
    80008a44:	8d8080e7          	jalr	-1832(ra) # 80007318 <__printf>
    80008a48:	01013403          	ld	s0,16(sp)
    80008a4c:	01813083          	ld	ra,24(sp)
    80008a50:	00048513          	mv	a0,s1
    80008a54:	00813483          	ld	s1,8(sp)
    80008a58:	02010113          	addi	sp,sp,32
    80008a5c:	ffffe317          	auipc	t1,0xffffe
    80008a60:	4b030067          	jr	1200(t1) # 80006f0c <plic_complete>
    80008a64:	fffff097          	auipc	ra,0xfffff
    80008a68:	1bc080e7          	jalr	444(ra) # 80007c20 <uartintr>
    80008a6c:	fddff06f          	j	80008a48 <console_handler+0x74>
    80008a70:	00001517          	auipc	a0,0x1
    80008a74:	e6850513          	addi	a0,a0,-408 # 800098d8 <digits+0x78>
    80008a78:	fffff097          	auipc	ra,0xfffff
    80008a7c:	844080e7          	jalr	-1980(ra) # 800072bc <panic>

0000000080008a80 <kvmincrease>:
    80008a80:	fe010113          	addi	sp,sp,-32
    80008a84:	01213023          	sd	s2,0(sp)
    80008a88:	00001937          	lui	s2,0x1
    80008a8c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80008a90:	00813823          	sd	s0,16(sp)
    80008a94:	00113c23          	sd	ra,24(sp)
    80008a98:	00913423          	sd	s1,8(sp)
    80008a9c:	02010413          	addi	s0,sp,32
    80008aa0:	01250933          	add	s2,a0,s2
    80008aa4:	00c95913          	srli	s2,s2,0xc
    80008aa8:	02090863          	beqz	s2,80008ad8 <kvmincrease+0x58>
    80008aac:	00000493          	li	s1,0
    80008ab0:	00148493          	addi	s1,s1,1
    80008ab4:	fffff097          	auipc	ra,0xfffff
    80008ab8:	4bc080e7          	jalr	1212(ra) # 80007f70 <kalloc>
    80008abc:	fe991ae3          	bne	s2,s1,80008ab0 <kvmincrease+0x30>
    80008ac0:	01813083          	ld	ra,24(sp)
    80008ac4:	01013403          	ld	s0,16(sp)
    80008ac8:	00813483          	ld	s1,8(sp)
    80008acc:	00013903          	ld	s2,0(sp)
    80008ad0:	02010113          	addi	sp,sp,32
    80008ad4:	00008067          	ret
    80008ad8:	01813083          	ld	ra,24(sp)
    80008adc:	01013403          	ld	s0,16(sp)
    80008ae0:	00813483          	ld	s1,8(sp)
    80008ae4:	00013903          	ld	s2,0(sp)
    80008ae8:	00000513          	li	a0,0
    80008aec:	02010113          	addi	sp,sp,32
    80008af0:	00008067          	ret
	...
