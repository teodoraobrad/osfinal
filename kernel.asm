
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000b117          	auipc	sp,0xb
    80000004:	4e013103          	ld	sp,1248(sp) # 8000b4e0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	599050ef          	jal	ra,80005db4 <start>

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

    uint64 * stack;
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
    800015c8:	6d8080e7          	jalr	1752(ra) # 80004c9c <_Z11printStringPKc>
        printInt(i);
    800015cc:	00090513          	mv	a0,s2
    800015d0:	00002097          	auipc	ra,0x2
    800015d4:	830080e7          	jalr	-2000(ra) # 80002e00 <printInt>
        printString("\n");
    800015d8:	00008517          	auipc	a0,0x8
    800015dc:	01850513          	addi	a0,a0,24 # 800095f0 <CONSOLE_STATUS+0x5e0>
    800015e0:	00003097          	auipc	ra,0x3
    800015e4:	6bc080e7          	jalr	1724(ra) # 80004c9c <_Z11printStringPKc>
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
    80001670:	630080e7          	jalr	1584(ra) # 80004c9c <_Z11printStringPKc>
        printInt(i);
    80001674:	00090513          	mv	a0,s2
    80001678:	00001097          	auipc	ra,0x1
    8000167c:	788080e7          	jalr	1928(ra) # 80002e00 <printInt>
        printString("\n");
    80001680:	00008517          	auipc	a0,0x8
    80001684:	f7050513          	addi	a0,a0,-144 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80001688:	00003097          	auipc	ra,0x3
    8000168c:	614080e7          	jalr	1556(ra) # 80004c9c <_Z11printStringPKc>
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
    800016dc:	5c4080e7          	jalr	1476(ra) # 80004c9c <_Z11printStringPKc>
        printInt(i);
    800016e0:	00000613          	li	a2,0
    800016e4:	00a00593          	li	a1,10
    800016e8:	00048513          	mv	a0,s1
    800016ec:	00003097          	auipc	ra,0x3
    800016f0:	760080e7          	jalr	1888(ra) # 80004e4c <_Z8printIntiii>
        printString("\n");
    800016f4:	00008517          	auipc	a0,0x8
    800016f8:	efc50513          	addi	a0,a0,-260 # 800095f0 <CONSOLE_STATUS+0x5e0>
    800016fc:	00003097          	auipc	ra,0x3
    80001700:	5a0080e7          	jalr	1440(ra) # 80004c9c <_Z11printStringPKc>
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
    80001720:	580080e7          	jalr	1408(ra) # 80004c9c <_Z11printStringPKc>
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
    80001740:	560080e7          	jalr	1376(ra) # 80004c9c <_Z11printStringPKc>
    printInt(t1);
    80001744:	00090513          	mv	a0,s2
    80001748:	00001097          	auipc	ra,0x1
    8000174c:	6b8080e7          	jalr	1720(ra) # 80002e00 <printInt>
    printString("\n");
    80001750:	00008517          	auipc	a0,0x8
    80001754:	ea050513          	addi	a0,a0,-352 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80001758:	00003097          	auipc	ra,0x3
    8000175c:	544080e7          	jalr	1348(ra) # 80004c9c <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80001760:	00c00513          	li	a0,12
    80001764:	00000097          	auipc	ra,0x0
    80001768:	d88080e7          	jalr	-632(ra) # 800014ec <_ZL9fibonaccim>
    8000176c:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    80001770:	00008517          	auipc	a0,0x8
    80001774:	8e050513          	addi	a0,a0,-1824 # 80009050 <CONSOLE_STATUS+0x40>
    80001778:	00003097          	auipc	ra,0x3
    8000177c:	524080e7          	jalr	1316(ra) # 80004c9c <_Z11printStringPKc>
    printInt(result);
    80001780:	00090513          	mv	a0,s2
    80001784:	00001097          	auipc	ra,0x1
    80001788:	67c080e7          	jalr	1660(ra) # 80002e00 <printInt>
    printString("\n");
    8000178c:	00008517          	auipc	a0,0x8
    80001790:	e6450513          	addi	a0,a0,-412 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80001794:	00003097          	auipc	ra,0x3
    80001798:	508080e7          	jalr	1288(ra) # 80004c9c <_Z11printStringPKc>
    8000179c:	0400006f          	j	800017dc <_Z11workerBodyCPv+0x12c>

    for (; i < 6; i++)
    {
        printString("C: i=");
    800017a0:	00008517          	auipc	a0,0x8
    800017a4:	89050513          	addi	a0,a0,-1904 # 80009030 <CONSOLE_STATUS+0x20>
    800017a8:	00003097          	auipc	ra,0x3
    800017ac:	4f4080e7          	jalr	1268(ra) # 80004c9c <_Z11printStringPKc>
        printInt(i);
    800017b0:	00000613          	li	a2,0
    800017b4:	00a00593          	li	a1,10
    800017b8:	00048513          	mv	a0,s1
    800017bc:	00003097          	auipc	ra,0x3
    800017c0:	690080e7          	jalr	1680(ra) # 80004e4c <_Z8printIntiii>
        printString("\n");
    800017c4:	00008517          	auipc	a0,0x8
    800017c8:	e2c50513          	addi	a0,a0,-468 # 800095f0 <CONSOLE_STATUS+0x5e0>
    800017cc:	00003097          	auipc	ra,0x3
    800017d0:	4d0080e7          	jalr	1232(ra) # 80004c9c <_Z11printStringPKc>
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
    80001830:	470080e7          	jalr	1136(ra) # 80004c9c <_Z11printStringPKc>
        printInt(i);
    80001834:	00000613          	li	a2,0
    80001838:	00a00593          	li	a1,10
    8000183c:	00048513          	mv	a0,s1
    80001840:	00003097          	auipc	ra,0x3
    80001844:	60c080e7          	jalr	1548(ra) # 80004e4c <_Z8printIntiii>
        printString("\n");
    80001848:	00008517          	auipc	a0,0x8
    8000184c:	da850513          	addi	a0,a0,-600 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80001850:	00003097          	auipc	ra,0x3
    80001854:	44c080e7          	jalr	1100(ra) # 80004c9c <_Z11printStringPKc>
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
    80001874:	42c080e7          	jalr	1068(ra) # 80004c9c <_Z11printStringPKc>
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
    800018a0:	400080e7          	jalr	1024(ra) # 80004c9c <_Z11printStringPKc>
    printInt(result);
    800018a4:	00090513          	mv	a0,s2
    800018a8:	00001097          	auipc	ra,0x1
    800018ac:	558080e7          	jalr	1368(ra) # 80002e00 <printInt>
    printString("\n");
    800018b0:	00008517          	auipc	a0,0x8
    800018b4:	d4050513          	addi	a0,a0,-704 # 800095f0 <CONSOLE_STATUS+0x5e0>
    800018b8:	00003097          	auipc	ra,0x3
    800018bc:	3e4080e7          	jalr	996(ra) # 80004c9c <_Z11printStringPKc>
    800018c0:	0400006f          	j	80001900 <_Z11workerBodyDPv+0xfc>

    for (; i < 16; i++)
    {
        printString("D: i=");
    800018c4:	00007517          	auipc	a0,0x7
    800018c8:	79c50513          	addi	a0,a0,1948 # 80009060 <CONSOLE_STATUS+0x50>
    800018cc:	00003097          	auipc	ra,0x3
    800018d0:	3d0080e7          	jalr	976(ra) # 80004c9c <_Z11printStringPKc>
        printInt(i);
    800018d4:	00000613          	li	a2,0
    800018d8:	00a00593          	li	a1,10
    800018dc:	00048513          	mv	a0,s1
    800018e0:	00003097          	auipc	ra,0x3
    800018e4:	56c080e7          	jalr	1388(ra) # 80004e4c <_Z8printIntiii>
        printString("\n");
    800018e8:	00008517          	auipc	a0,0x8
    800018ec:	d0850513          	addi	a0,a0,-760 # 800095f0 <CONSOLE_STATUS+0x5e0>
    800018f0:	00003097          	auipc	ra,0x3
    800018f4:	3ac080e7          	jalr	940(ra) # 80004c9c <_Z11printStringPKc>
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
#define OSFINAL_USERMAIN_H

#include "syscall_cpp.hpp"
extern void userMain();

void userFunc(void* a) {
    80001928:	fe010113          	addi	sp,sp,-32
    8000192c:	00113c23          	sd	ra,24(sp)
    80001930:	00813823          	sd	s0,16(sp)
    80001934:	00913423          	sd	s1,8(sp)
    80001938:	02010413          	addi	s0,sp,32
    8000193c:	00050493          	mv	s1,a0

    Semaphore* sem=(Semaphore *) a;
    userMain();
    80001940:	00004097          	auipc	ra,0x4
    80001944:	a24080e7          	jalr	-1500(ra) # 80005364 <_Z8userMainv>
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
    80001984:	b407b783          	ld	a5,-1216(a5) # 8000b4c0 <_GLOBAL_OFFSET_TABLE_+0x10>
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
    800019a4:	b3853503          	ld	a0,-1224(a0) # 8000b4d8 <_GLOBAL_OFFSET_TABLE_+0x28>
    800019a8:	00000097          	auipc	ra,0x0
    800019ac:	1cc080e7          	jalr	460(ra) # 80001b74 <_ZN3TCB12createThreadEPFvPvES0_S0_>
    800019b0:	0000a797          	auipc	a5,0xa
    800019b4:	b387b783          	ld	a5,-1224(a5) # 8000b4e8 <_GLOBAL_OFFSET_TABLE_+0x38>
    800019b8:	00a7b023          	sd	a0,0(a5)
    //(uint64 *) mem_alloc(sizeof(uint64) * DEFAULT_STACK_SIZE));
    TCB::maintcb = TCB::createThread(nullptr, nullptr, nullptr);
    800019bc:	00000613          	li	a2,0
    800019c0:	00000593          	li	a1,0
    800019c4:	00000513          	li	a0,0
    800019c8:	00000097          	auipc	ra,0x0
    800019cc:	1ac080e7          	jalr	428(ra) # 80001b74 <_ZN3TCB12createThreadEPFvPvES0_S0_>
    800019d0:	0000a797          	auipc	a5,0xa
    800019d4:	b007b783          	ld	a5,-1280(a5) # 8000b4d0 <_GLOBAL_OFFSET_TABLE_+0x20>
    800019d8:	00a7b023          	sd	a0,0(a5)
    TCB::running = TCB::maintcb;
    800019dc:	0000a797          	auipc	a5,0xa
    800019e0:	b147b783          	ld	a5,-1260(a5) # 8000b4f0 <_GLOBAL_OFFSET_TABLE_+0x40>
    800019e4:	00a7b023          	sd	a0,0(a5)
    changeSysRegime();
    800019e8:	00000097          	auipc	ra,0x0
    800019ec:	a28080e7          	jalr	-1496(ra) # 80001410 <changeSysRegime>

    printString("\nstart ok\n");
    800019f0:	00007517          	auipc	a0,0x7
    800019f4:	69850513          	addi	a0,a0,1688 # 80009088 <CONSOLE_STATUS+0x78>
    800019f8:	00003097          	auipc	ra,0x3
    800019fc:	2a4080e7          	jalr	676(ra) # 80004c9c <_Z11printStringPKc>
        thread_dispatch();
        printString("disp");
    }
*/

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
    80001a58:	248080e7          	jalr	584(ra) # 80004c9c <_Z11printStringPKc>
    sem->wait();
    80001a5c:	00090513          	mv	a0,s2
    80001a60:	00000097          	auipc	ra,0x0
    80001a64:	5d4080e7          	jalr	1492(ra) # 80002034 <_ZN9Semaphore4waitEv>


    printString("ciscenje za kraj\n");
    80001a68:	00007517          	auipc	a0,0x7
    80001a6c:	64850513          	addi	a0,a0,1608 # 800090b0 <CONSOLE_STATUS+0xa0>
    80001a70:	00003097          	auipc	ra,0x3
    80001a74:	22c080e7          	jalr	556(ra) # 80004c9c <_Z11printStringPKc>
    //Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    Scheduler::empty();
    80001a78:	00001097          	auipc	ra,0x1
    80001a7c:	ed4080e7          	jalr	-300(ra) # 8000294c <_ZN9Scheduler5emptyEv>
    delete userT;
    80001a80:	00048a63          	beqz	s1,80001a94 <main+0x12c>
    80001a84:	0004b783          	ld	a5,0(s1)
    80001a88:	0087b783          	ld	a5,8(a5)
    80001a8c:	00048513          	mv	a0,s1
    80001a90:	000780e7          	jalr	a5
    delete TCB::maintcb;
    80001a94:	0000a797          	auipc	a5,0xa
    80001a98:	a3c7b783          	ld	a5,-1476(a5) # 8000b4d0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001a9c:	0007b483          	ld	s1,0(a5)
    80001aa0:	02048663          	beqz	s1,80001acc <main+0x164>

// Thread Control Block
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
    80001ad8:	1c8080e7          	jalr	456(ra) # 80004c9c <_Z11printStringPKc>

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
    80001b10:	b8c080e7          	jalr	-1140(ra) # 8000c698 <_Unwind_Resume>
    80001b14:	00050913          	mv	s2,a0
    Thread *userT = new Thread(userFunc, sem);
    80001b18:	00048513          	mv	a0,s1
    80001b1c:	00000097          	auipc	ra,0x0
    80001b20:	318080e7          	jalr	792(ra) # 80001e34 <_ZdlPv>
    80001b24:	00090513          	mv	a0,s2
    80001b28:	0000b097          	auipc	ra,0xb
    80001b2c:	b70080e7          	jalr	-1168(ra) # 8000c698 <_Unwind_Resume>

0000000080001b30 <_ZN3TCB13threadWrapperEv>:
    running->currentThreadState=State::RUNNING;

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
    80001b4c:	9f87b783          	ld	a5,-1544(a5) # 8000b540 <_ZN3TCB7runningE>
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
        //this->finished = false;
        this->next= nullptr;
    80001be4:	0004bc23          	sd	zero,24(s1)
        this->nextBlocked= nullptr;
    80001be8:	0204b023          	sd	zero,32(s1)
        this->holder= nullptr;
    80001bec:	0204b423          	sd	zero,40(s1)
        id = globalId++;
    80001bf0:	0000a717          	auipc	a4,0xa
    80001bf4:	95070713          	addi	a4,a4,-1712 # 8000b540 <_ZN3TCB7runningE>
    80001bf8:	00872783          	lw	a5,8(a4)
    80001bfc:	0017869b          	addiw	a3,a5,1
    80001c00:	00d72423          	sw	a3,8(a4)
    80001c04:	00f4a023          	sw	a5,0(s1)
        sysRegime = false;
    80001c08:	00048823          	sb	zero,16(s1)
        currentThreadState = State::CREATED;
    80001c0c:	0004a223          	sw	zero,4(s1)
        if (body == nullptr) { currentThreadState = State::RUNNING; }
    80001c10:	02090a63          	beqz	s2,80001c44 <_ZN3TCB12createThreadEPFvPvES0_S0_+0xd0>
        if (body != nullptr && body != &Scheduler::idleFunc) { Scheduler::put(this); }
    80001c14:	04090c63          	beqz	s2,80001c6c <_ZN3TCB12createThreadEPFvPvES0_S0_+0xf8>
    80001c18:	0000a797          	auipc	a5,0xa
    80001c1c:	8c07b783          	ld	a5,-1856(a5) # 8000b4d8 <_GLOBAL_OFFSET_TABLE_+0x28>
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
    80001c68:	a34080e7          	jalr	-1484(ra) # 8000c698 <_Unwind_Resume>
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
    80001ca8:	89c4b483          	ld	s1,-1892(s1) # 8000b540 <_ZN3TCB7runningE>
    bool isFinished() { return currentThreadState==State::FINISHED; }
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
    80001ccc:	8207b783          	ld	a5,-2016(a5) # 8000b4e8 <_GLOBAL_OFFSET_TABLE_+0x38>
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
    80001cf8:	84c78793          	addi	a5,a5,-1972 # 8000b540 <_ZN3TCB7runningE>
    80001cfc:	00a7b023          	sd	a0,0(a5)
    running->currentThreadState=State::RUNNING;
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
    this->currentThreadState=State::READY;
    80001d40:	00600713          	li	a4,6
    80001d44:	00e52223          	sw	a4,4(a0)
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
    80001dc0:	5b478793          	addi	a5,a5,1460 # 8000b370 <_ZTV9Semaphore+0x10>
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
    80001efc:	45078793          	addi	a5,a5,1104 # 8000b348 <_ZTV6Thread+0x10>
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
    80001f2c:	42078793          	addi	a5,a5,1056 # 8000b348 <_ZTV6Thread+0x10>
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
    80001f5c:	3f078793          	addi	a5,a5,1008 # 8000b348 <_ZTV6Thread+0x10>
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
    8000200c:	36878793          	addi	a5,a5,872 # 8000b370 <_ZTV9Semaphore+0x10>
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
    80002184:	3707b783          	ld	a5,880(a5) # 8000b4f0 <_GLOBAL_OFFSET_TABLE_+0x40>
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
    80002280:	e98080e7          	jalr	-360(ra) # 80008114 <console_handler>

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
    800022a8:	ca4080e7          	jalr	-860(ra) # 80007f48 <__mem_alloc>
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
    800022dc:	ba4080e7          	jalr	-1116(ra) # 80007e7c <__mem_free>
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
    80002354:	1a07b783          	ld	a5,416(a5) # 8000b4f0 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002358:	0007b783          	ld	a5,0(a5)
    void setFinished() { currentThreadState=State::FINISHED;
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
    8000237c:	1507b783          	ld	a5,336(a5) # 8000b4c8 <_GLOBAL_OFFSET_TABLE_+0x18>
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
    80002440:	ca0080e7          	jalr	-864(ra) # 800080dc <__getc>
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
    80002460:	c44080e7          	jalr	-956(ra) # 800080a0 <__putc>
                    break;
    80002464:	e55ff06f          	j	800022b8 <_ZN5Riscv20handleSupervisorTrapEv+0xfc>
                    TCB::running->sysRegime=true;
    80002468:	00009797          	auipc	a5,0x9
    8000246c:	0887b783          	ld	a5,136(a5) # 8000b4f0 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002470:	0007b783          	ld	a5,0(a5)
    80002474:	00100713          	li	a4,1
    80002478:	00e78823          	sb	a4,16(a5)
                    break;
    8000247c:	e3dff06f          	j	800022b8 <_ZN5Riscv20handleSupervisorTrapEv+0xfc>
                    printString("Prosledjen code za syscall koji nije na listi za obradu.\n");
    80002480:	00007517          	auipc	a0,0x7
    80002484:	c6050513          	addi	a0,a0,-928 # 800090e0 <CONSOLE_STATUS+0xd0>
    80002488:	00003097          	auipc	ra,0x3
    8000248c:	814080e7          	jalr	-2028(ra) # 80004c9c <_Z11printStringPKc>
                    break;
    80002490:	e29ff06f          	j	800022b8 <_ZN5Riscv20handleSupervisorTrapEv+0xfc>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80002494:	00200793          	li	a5,2
    80002498:	1447b073          	csrc	sip,a5
            TCB::timeSliceCounter++;
    8000249c:	00009717          	auipc	a4,0x9
    800024a0:	02c73703          	ld	a4,44(a4) # 8000b4c8 <_GLOBAL_OFFSET_TABLE_+0x18>
    800024a4:	00073783          	ld	a5,0(a4)
    800024a8:	00178793          	addi	a5,a5,1
    800024ac:	00f73023          	sd	a5,0(a4)
            if (TCB::timeSliceCounter >= TCB::running->getTimeSlice()) {
    800024b0:	00009717          	auipc	a4,0x9
    800024b4:	04073703          	ld	a4,64(a4) # 8000b4f0 <_GLOBAL_OFFSET_TABLE_+0x40>
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
    800024d8:	ff47b783          	ld	a5,-12(a5) # 8000b4c8 <_GLOBAL_OFFSET_TABLE_+0x18>
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
    80002508:	798080e7          	jalr	1944(ra) # 80004c9c <_Z11printStringPKc>
            printString("scause: ");
    8000250c:	00007517          	auipc	a0,0x7
    80002510:	c2c50513          	addi	a0,a0,-980 # 80009138 <CONSOLE_STATUS+0x128>
    80002514:	00002097          	auipc	ra,0x2
    80002518:	788080e7          	jalr	1928(ra) # 80004c9c <_Z11printStringPKc>
            printRegister(scause);
    8000251c:	fd843503          	ld	a0,-40(s0)
    80002520:	00001097          	auipc	ra,0x1
    80002524:	a14080e7          	jalr	-1516(ra) # 80002f34 <printRegister>
    __asm__ volatile ("csrr %[stval], stval" : [stval] "=r"(stval));
    80002528:	143027f3          	csrr	a5,stval
    8000252c:	fcf43023          	sd	a5,-64(s0)
    return stval;
    80002530:	fc043483          	ld	s1,-64(s0)
            printString("stval: ");
    80002534:	00007517          	auipc	a0,0x7
    80002538:	c1450513          	addi	a0,a0,-1004 # 80009148 <CONSOLE_STATUS+0x138>
    8000253c:	00002097          	auipc	ra,0x2
    80002540:	760080e7          	jalr	1888(ra) # 80004c9c <_Z11printStringPKc>
            printRegister(stval);
    80002544:	00048513          	mv	a0,s1
    80002548:	00001097          	auipc	ra,0x1
    8000254c:	9ec080e7          	jalr	-1556(ra) # 80002f34 <printRegister>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002550:	141027f3          	csrr	a5,sepc
    80002554:	faf43c23          	sd	a5,-72(s0)
    return sepc;
    80002558:	fb843483          	ld	s1,-72(s0)
            printString("sepc: ");
    8000255c:	00007517          	auipc	a0,0x7
    80002560:	bf450513          	addi	a0,a0,-1036 # 80009150 <CONSOLE_STATUS+0x140>
    80002564:	00002097          	auipc	ra,0x2
    80002568:	738080e7          	jalr	1848(ra) # 80004c9c <_Z11printStringPKc>
            printRegister(sepc);
    8000256c:	00048513          	mv	a0,s1
    80002570:	00001097          	auipc	ra,0x1
    80002574:	9c4080e7          	jalr	-1596(ra) # 80002f34 <printRegister>
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

Sem::Sem(unsigned init) {
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

Sem *Sem::open(unsigned i) {
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
    80002680:	e747b783          	ld	a5,-396(a5) # 8000b4f0 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002684:	0007b783          	ld	a5,0(a5)
        n->holder= this;
    80002688:	02a7b423          	sd	a0,40(a5)
    void setState(State e) { currentThreadState=e;}
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
    80002830:	470080e7          	jalr	1136(ra) # 80004c9c <_Z11printStringPKc>
    while (1) {
    80002834:	ff1ff06f          	j	80002824 <_ZN9Scheduler8idleFuncEPv+0x10>

0000000080002838 <_ZN9Scheduler3getEv>:
    }
}

TCB *Scheduler::get() {
    80002838:	ff010113          	addi	sp,sp,-16
    8000283c:	00813423          	sd	s0,8(sp)
    80002840:	01010413          	addi	s0,sp,16
    while (n != nullptr) {
        printRegister((uint64) n);
        n = n->next;
    }
    printString("to je to\n");
 */   if (first == nullptr) {
    80002844:	00009517          	auipc	a0,0x9
    80002848:	d1c53503          	ld	a0,-740(a0) # 8000b560 <_ZN9Scheduler5firstE>
    8000284c:	02050663          	beqz	a0,80002878 <_ZN9Scheduler3getEv+0x40>
        return idle;
    }

    TCB *ret = first;

    if (first == last) {
    80002850:	00009797          	auipc	a5,0x9
    80002854:	d207b783          	ld	a5,-736(a5) # 8000b570 <_ZN9Scheduler4lastE>
    80002858:	02f50663          	beq	a0,a5,80002884 <_ZN9Scheduler3getEv+0x4c>
        first = last = nullptr;
    } else {
        first = first->next;
    8000285c:	01853783          	ld	a5,24(a0)
    80002860:	00009717          	auipc	a4,0x9
    80002864:	d0f73023          	sd	a5,-768(a4) # 8000b560 <_ZN9Scheduler5firstE>
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
    8000287c:	cf053503          	ld	a0,-784(a0) # 8000b568 <_ZN9Scheduler4idleE>
    80002880:	fedff06f          	j	8000286c <_ZN9Scheduler3getEv+0x34>
        first = last = nullptr;
    80002884:	00009797          	auipc	a5,0x9
    80002888:	cdc78793          	addi	a5,a5,-804 # 8000b560 <_ZN9Scheduler5firstE>
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
    800028a8:	cc47b783          	ld	a5,-828(a5) # 8000b568 <_ZN9Scheduler4idleE>
    800028ac:	02a78663          	beq	a5,a0,800028d8 <_ZN9Scheduler3putEP3TCB+0x40>
    800028b0:	02050463          	beqz	a0,800028d8 <_ZN9Scheduler3putEP3TCB+0x40>
    tcb->next = nullptr;
    800028b4:	00053c23          	sd	zero,24(a0)
    if (first == nullptr) {
    800028b8:	00009797          	auipc	a5,0x9
    800028bc:	ca87b783          	ld	a5,-856(a5) # 8000b560 <_ZN9Scheduler5firstE>
    800028c0:	02078263          	beqz	a5,800028e4 <_ZN9Scheduler3putEP3TCB+0x4c>
        first = last = tcb;
    } else {
        last = last->next = tcb;
    800028c4:	00009797          	auipc	a5,0x9
    800028c8:	c9c78793          	addi	a5,a5,-868 # 8000b560 <_ZN9Scheduler5firstE>
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
    800028e8:	c7c78793          	addi	a5,a5,-900 # 8000b560 <_ZN9Scheduler5firstE>
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
    80002908:	c5c7b783          	ld	a5,-932(a5) # 8000b560 <_ZN9Scheduler5firstE>
    TCB *prev = nullptr;
    8000290c:	00000693          	li	a3,0
    80002910:	00c0006f          	j	8000291c <_ZN9Scheduler6removeEP3TCB+0x24>
        if (f == t) {
            if (prev != nullptr)prev->next = f->next;
            f->next = nullptr;
            break;
        }
        prev = f;
    80002914:	00078693          	mv	a3,a5
        f = f->next;
    80002918:	0187b783          	ld	a5,24(a5)
    while (f != nullptr && f != last) {
    8000291c:	02078263          	beqz	a5,80002940 <_ZN9Scheduler6removeEP3TCB+0x48>
    80002920:	00009717          	auipc	a4,0x9
    80002924:	c5073703          	ld	a4,-944(a4) # 8000b570 <_ZN9Scheduler4lastE>
    80002928:	00f70c63          	beq	a4,a5,80002940 <_ZN9Scheduler6removeEP3TCB+0x48>
        if (f == t) {
    8000292c:	fea794e3          	bne	a5,a0,80002914 <_ZN9Scheduler6removeEP3TCB+0x1c>
            if (prev != nullptr)prev->next = f->next;
    80002930:	00068663          	beqz	a3,8000293c <_ZN9Scheduler6removeEP3TCB+0x44>
    80002934:	0187b703          	ld	a4,24(a5)
    80002938:	00e6bc23          	sd	a4,24(a3)
            f->next = nullptr;
    8000293c:	0007bc23          	sd	zero,24(a5)
    }
}
    80002940:	00813403          	ld	s0,8(sp)
    80002944:	01010113          	addi	sp,sp,16
    80002948:	00008067          	ret

000000008000294c <_ZN9Scheduler5emptyEv>:

Scheduler::~Scheduler() {
    empty();
}

void Scheduler::empty() {
    8000294c:	fe010113          	addi	sp,sp,-32
    80002950:	00113c23          	sd	ra,24(sp)
    80002954:	00813823          	sd	s0,16(sp)
    80002958:	00913423          	sd	s1,8(sp)
    8000295c:	02010413          	addi	s0,sp,32
        static Scheduler instance;
        return instance;
    }

    static bool isEmpty() {
        return first == nullptr;
    80002960:	00009797          	auipc	a5,0x9
    80002964:	c007b783          	ld	a5,-1024(a5) # 8000b560 <_ZN9Scheduler5firstE>
    while (!isEmpty()){
    80002968:	02078e63          	beqz	a5,800029a4 <_ZN9Scheduler5emptyEv+0x58>
        TCB* temp=Scheduler::get();
    8000296c:	00000097          	auipc	ra,0x0
    80002970:	ecc080e7          	jalr	-308(ra) # 80002838 <_ZN9Scheduler3getEv>
    80002974:	00050493          	mv	s1,a0
        delete temp;
    80002978:	fe0504e3          	beqz	a0,80002960 <_ZN9Scheduler5emptyEv+0x14>
        Scheduler::remove(this);
    8000297c:	00000097          	auipc	ra,0x0
    80002980:	f7c080e7          	jalr	-132(ra) # 800028f8 <_ZN9Scheduler6removeEP3TCB>
        delete[] stack;
    80002984:	0384b503          	ld	a0,56(s1)
    80002988:	00050663          	beqz	a0,80002994 <_ZN9Scheduler5emptyEv+0x48>
    8000298c:	fffff097          	auipc	ra,0xfffff
    80002990:	538080e7          	jalr	1336(ra) # 80001ec4 <_ZdaPv>
    80002994:	00048513          	mv	a0,s1
    80002998:	fffff097          	auipc	ra,0xfffff
    8000299c:	49c080e7          	jalr	1180(ra) # 80001e34 <_ZdlPv>
    800029a0:	fc1ff06f          	j	80002960 <_ZN9Scheduler5emptyEv+0x14>
    }
    delete idle;
    800029a4:	00009497          	auipc	s1,0x9
    800029a8:	bc44b483          	ld	s1,-1084(s1) # 8000b568 <_ZN9Scheduler4idleE>
    800029ac:	02048663          	beqz	s1,800029d8 <_ZN9Scheduler5emptyEv+0x8c>
        Scheduler::remove(this);
    800029b0:	00048513          	mv	a0,s1
    800029b4:	00000097          	auipc	ra,0x0
    800029b8:	f44080e7          	jalr	-188(ra) # 800028f8 <_ZN9Scheduler6removeEP3TCB>
        delete[] stack;
    800029bc:	0384b503          	ld	a0,56(s1)
    800029c0:	00050663          	beqz	a0,800029cc <_ZN9Scheduler5emptyEv+0x80>
    800029c4:	fffff097          	auipc	ra,0xfffff
    800029c8:	500080e7          	jalr	1280(ra) # 80001ec4 <_ZdaPv>
    800029cc:	00048513          	mv	a0,s1
    800029d0:	fffff097          	auipc	ra,0xfffff
    800029d4:	464080e7          	jalr	1124(ra) # 80001e34 <_ZdlPv>
    800029d8:	01813083          	ld	ra,24(sp)
    800029dc:	01013403          	ld	s0,16(sp)
    800029e0:	00813483          	ld	s1,8(sp)
    800029e4:	02010113          	addi	sp,sp,32
    800029e8:	00008067          	ret

00000000800029ec <_ZN9SchedulerD1Ev>:
Scheduler::~Scheduler() {
    800029ec:	ff010113          	addi	sp,sp,-16
    800029f0:	00113423          	sd	ra,8(sp)
    800029f4:	00813023          	sd	s0,0(sp)
    800029f8:	01010413          	addi	s0,sp,16
    empty();
    800029fc:	00000097          	auipc	ra,0x0
    80002a00:	f50080e7          	jalr	-176(ra) # 8000294c <_ZN9Scheduler5emptyEv>
}
    80002a04:	00813083          	ld	ra,8(sp)
    80002a08:	00013403          	ld	s0,0(sp)
    80002a0c:	01010113          	addi	sp,sp,16
    80002a10:	00008067          	ret

0000000080002a14 <_ZN15MemoryAllocator9mem_allocEm>:

MemoryBlock *MemoryAllocator::base = nullptr;
char *MemoryAllocator::baseAddress = nullptr;
size_t MemoryAllocator::freeSpaceInBlks = 0;

void *MemoryAllocator::mem_alloc(size_t size) { //numofBlocks +1
    80002a14:	ff010113          	addi	sp,sp,-16
    80002a18:	00813423          	sd	s0,8(sp)
    80002a1c:	01010413          	addi	s0,sp,16
//best-fit
//lock
    if (size <= 0) {
    80002a20:	10050263          	beqz	a0,80002b24 <_ZN15MemoryAllocator9mem_allocEm+0x110>
    80002a24:	00050693          	mv	a3,a0
        //unlock
        return nullptr;
    }
    if (size > freeSpaceInBlks) {
    80002a28:	00009597          	auipc	a1,0x9
    80002a2c:	b505b583          	ld	a1,-1200(a1) # 8000b578 <_ZN15MemoryAllocator15freeSpaceInBlksE>
    80002a30:	0ea5ee63          	bltu	a1,a0,80002b2c <_ZN15MemoryAllocator9mem_allocEm+0x118>
        //unlock
        return nullptr;
    }

    if (base == nullptr) {
    80002a34:	00009517          	auipc	a0,0x9
    80002a38:	b4c53503          	ld	a0,-1204(a0) # 8000b580 <_ZN15MemoryAllocator4baseE>
    80002a3c:	0a050a63          	beqz	a0,80002af0 <_ZN15MemoryAllocator9mem_allocEm+0xdc>
        return nullptr;
    }

    MemoryBlock *curr = base;
    MemoryBlock *toReturn = nullptr;
    size_t remainBest = freeSpaceInBlks;
    80002a40:	00058613          	mv	a2,a1
    MemoryBlock *toReturn = nullptr;
    80002a44:	00000713          	li	a4,0
    80002a48:	0100006f          	j	80002a58 <_ZN15MemoryAllocator9mem_allocEm+0x44>

                } else {

                    if (toReturn == nullptr) {
                        toReturn = curr;
                        remainBest = remain;
    80002a4c:	00078613          	mv	a2,a5
                        toReturn = curr;
    80002a50:	00050713          	mv	a4,a0
                        }
                    }
                }
            }
        }
        curr = curr->next;
    80002a54:	00053503          	ld	a0,0(a0)
    while (curr != nullptr) {
    80002a58:	02050c63          	beqz	a0,80002a90 <_ZN15MemoryAllocator9mem_allocEm+0x7c>
        if (!curr->allocated) {
    80002a5c:	01854783          	lbu	a5,24(a0)
    80002a60:	fe079ae3          	bnez	a5,80002a54 <_ZN15MemoryAllocator9mem_allocEm+0x40>
            size_t remain = curr->size - size - 1;
    80002a64:	01053783          	ld	a5,16(a0)
    80002a68:	40d787b3          	sub	a5,a5,a3
    80002a6c:	fff78793          	addi	a5,a5,-1
                if (remain == 0) {
    80002a70:	00078c63          	beqz	a5,80002a88 <_ZN15MemoryAllocator9mem_allocEm+0x74>
                    if (toReturn == nullptr) {
    80002a74:	fc070ce3          	beqz	a4,80002a4c <_ZN15MemoryAllocator9mem_allocEm+0x38>
                        if (remainBest > remain) {
    80002a78:	fcc7fee3          	bgeu	a5,a2,80002a54 <_ZN15MemoryAllocator9mem_allocEm+0x40>
                            remainBest = remain;
    80002a7c:	00078613          	mv	a2,a5
                            toReturn = curr;
    80002a80:	00050713          	mv	a4,a0
    80002a84:	fd1ff06f          	j	80002a54 <_ZN15MemoryAllocator9mem_allocEm+0x40>
                    remainBest = 0;
    80002a88:	00078613          	mv	a2,a5
                    toReturn = curr;
    80002a8c:	00050713          	mv	a4,a0
    }

    if (toReturn == nullptr) {
    80002a90:	0a070263          	beqz	a4,80002b34 <_ZN15MemoryAllocator9mem_allocEm+0x120>
        //unlock
        return nullptr;
    }

    toReturn->allocated = true;
    80002a94:	00100793          	li	a5,1
    80002a98:	00f70c23          	sb	a5,24(a4)
    freeSpaceInBlks = freeSpaceInBlks - size - 1;//numofBlocks+1
    80002a9c:	40d585b3          	sub	a1,a1,a3
    80002aa0:	fff58593          	addi	a1,a1,-1
    80002aa4:	00009797          	auipc	a5,0x9
    80002aa8:	acb7ba23          	sd	a1,-1324(a5) # 8000b578 <_ZN15MemoryAllocator15freeSpaceInBlksE>

    if (remainBest == 0) {
    80002aac:	04060863          	beqz	a2,80002afc <_ZN15MemoryAllocator9mem_allocEm+0xe8>
        //unlock
        return (void *) ((char *) ((char *) toReturn + sizeof(MemoryBlock)));//MEM_BLOCK_SIZE
    }

    if (remainBest == 1) {
    80002ab0:	00100793          	li	a5,1
    80002ab4:	04f60863          	beq	a2,a5,80002b04 <_ZN15MemoryAllocator9mem_allocEm+0xf0>
        toReturn->size++;
        //unlock
        return (void *) ((char *) ((char *) toReturn + sizeof(MemoryBlock)));//MEM_BLOCK_SIZE
    }

    size_t s = toReturn->size;
    80002ab8:	01073603          	ld	a2,16(a4)

    MemoryBlock *fragment = (MemoryBlock *) ((char *) toReturn + (size + 1) * MEM_BLOCK_SIZE);
    80002abc:	00168593          	addi	a1,a3,1
    80002ac0:	00659793          	slli	a5,a1,0x6
    80002ac4:	00f707b3          	add	a5,a4,a5
    fragment->next = toReturn->next;
    80002ac8:	00073503          	ld	a0,0(a4)
    80002acc:	00a7b023          	sd	a0,0(a5)
    fragment->prev = toReturn;
    80002ad0:	00e7b423          	sd	a4,8(a5)
    fragment->size = s - size - 1;
    80002ad4:	40d606b3          	sub	a3,a2,a3
    80002ad8:	fff68693          	addi	a3,a3,-1
    80002adc:	00d7b823          	sd	a3,16(a5)
    fragment->allocated = false;
    80002ae0:	00078c23          	sb	zero,24(a5)
    toReturn->next = fragment;
    80002ae4:	00f73023          	sd	a5,0(a4)
    toReturn->size = size + 1;
    80002ae8:	00b73823          	sd	a1,16(a4)
//unlocl

    return (void *) ((char *) toReturn + sizeof(MemoryBlock));//MEM_BLOCK_SIZE
    80002aec:	02070513          	addi	a0,a4,32
}
    80002af0:	00813403          	ld	s0,8(sp)
    80002af4:	01010113          	addi	sp,sp,16
    80002af8:	00008067          	ret
        return (void *) ((char *) ((char *) toReturn + sizeof(MemoryBlock)));//MEM_BLOCK_SIZE
    80002afc:	02070513          	addi	a0,a4,32
    80002b00:	ff1ff06f          	j	80002af0 <_ZN15MemoryAllocator9mem_allocEm+0xdc>
        freeSpaceInBlks = freeSpaceInBlks - 1;
    80002b04:	fff58593          	addi	a1,a1,-1
    80002b08:	00009797          	auipc	a5,0x9
    80002b0c:	a6b7b823          	sd	a1,-1424(a5) # 8000b578 <_ZN15MemoryAllocator15freeSpaceInBlksE>
        toReturn->size++;
    80002b10:	01073783          	ld	a5,16(a4)
    80002b14:	00178793          	addi	a5,a5,1
    80002b18:	00f73823          	sd	a5,16(a4)
        return (void *) ((char *) ((char *) toReturn + sizeof(MemoryBlock)));//MEM_BLOCK_SIZE
    80002b1c:	02070513          	addi	a0,a4,32
    80002b20:	fd1ff06f          	j	80002af0 <_ZN15MemoryAllocator9mem_allocEm+0xdc>
        return nullptr;
    80002b24:	00000513          	li	a0,0
    80002b28:	fc9ff06f          	j	80002af0 <_ZN15MemoryAllocator9mem_allocEm+0xdc>
        return nullptr;
    80002b2c:	00000513          	li	a0,0
    80002b30:	fc1ff06f          	j	80002af0 <_ZN15MemoryAllocator9mem_allocEm+0xdc>
        return nullptr;
    80002b34:	00070513          	mv	a0,a4
    80002b38:	fb9ff06f          	j	80002af0 <_ZN15MemoryAllocator9mem_allocEm+0xdc>

0000000080002b3c <_ZN15MemoryAllocator5mergeEPv>:
    return -1;
//unlock

}

void MemoryAllocator::merge(void *curr) {
    80002b3c:	ff010113          	addi	sp,sp,-16
    80002b40:	00813423          	sd	s0,8(sp)
    80002b44:	01010413          	addi	s0,sp,16
    if (curr == nullptr) return;
    80002b48:	04050c63          	beqz	a0,80002ba0 <_ZN15MemoryAllocator5mergeEPv+0x64>
    MemoryBlock *cur = (MemoryBlock *) curr;
    if (cur->next != nullptr && !((cur->next)->allocated)) {
    80002b4c:	00053783          	ld	a5,0(a0)
    80002b50:	02078263          	beqz	a5,80002b74 <_ZN15MemoryAllocator5mergeEPv+0x38>
    80002b54:	0187c703          	lbu	a4,24(a5)
    80002b58:	00071e63          	bnez	a4,80002b74 <_ZN15MemoryAllocator5mergeEPv+0x38>
        cur->size = cur->next->size + cur->size;
    80002b5c:	0107b703          	ld	a4,16(a5)
    80002b60:	01053683          	ld	a3,16(a0)
    80002b64:	00d70733          	add	a4,a4,a3
    80002b68:	00e53823          	sd	a4,16(a0)
        cur->next = cur->next->next;
    80002b6c:	0007b783          	ld	a5,0(a5)
    80002b70:	00f53023          	sd	a5,0(a0)
    }
    if (cur->prev != nullptr && !((cur->prev)->allocated)) {
    80002b74:	00853783          	ld	a5,8(a0)
    80002b78:	02078463          	beqz	a5,80002ba0 <_ZN15MemoryAllocator5mergeEPv+0x64>
    80002b7c:	0187c703          	lbu	a4,24(a5)
    80002b80:	02071063          	bnez	a4,80002ba0 <_ZN15MemoryAllocator5mergeEPv+0x64>
        cur->prev->size = cur->prev->size + cur->size;
    80002b84:	0107b703          	ld	a4,16(a5)
    80002b88:	01053683          	ld	a3,16(a0)
    80002b8c:	00d70733          	add	a4,a4,a3
    80002b90:	00e7b823          	sd	a4,16(a5)
        cur->prev->next = cur->next;
    80002b94:	00853783          	ld	a5,8(a0)
    80002b98:	00053703          	ld	a4,0(a0)
    80002b9c:	00e7b023          	sd	a4,0(a5)
    }

}
    80002ba0:	00813403          	ld	s0,8(sp)
    80002ba4:	01010113          	addi	sp,sp,16
    80002ba8:	00008067          	ret

0000000080002bac <_ZN15MemoryAllocator8mem_freeEPv>:
    if (!ptr) return 0;
    80002bac:	08050a63          	beqz	a0,80002c40 <_ZN15MemoryAllocator8mem_freeEPv+0x94>
    80002bb0:	00050713          	mv	a4,a0
    if ((char *) ptr < (char *) HEAP_START_ADDR)return -1;
    80002bb4:	00009797          	auipc	a5,0x9
    80002bb8:	9047b783          	ld	a5,-1788(a5) # 8000b4b8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002bbc:	0007b783          	ld	a5,0(a5)
    80002bc0:	08f56463          	bltu	a0,a5,80002c48 <_ZN15MemoryAllocator8mem_freeEPv+0x9c>
    if ((char *) ptr > (char *) HEAP_END_ADDR)return -2;
    80002bc4:	00009797          	auipc	a5,0x9
    80002bc8:	9347b783          	ld	a5,-1740(a5) # 8000b4f8 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002bcc:	0007b783          	ld	a5,0(a5)
    80002bd0:	08a7e063          	bltu	a5,a0,80002c50 <_ZN15MemoryAllocator8mem_freeEPv+0xa4>
    MemoryBlock *curr = base;
    80002bd4:	00009517          	auipc	a0,0x9
    80002bd8:	9ac53503          	ld	a0,-1620(a0) # 8000b580 <_ZN15MemoryAllocator4baseE>
    MemoryBlock *find = (MemoryBlock *) ((char *) ptr - sizeof(MemoryBlock));//-MEM_BLOCK_SIZE
    80002bdc:	fe070713          	addi	a4,a4,-32
    80002be0:	0080006f          	j	80002be8 <_ZN15MemoryAllocator8mem_freeEPv+0x3c>
    for (; (char *) find > (char *) curr && curr->next != nullptr; curr = curr->next);
    80002be4:	00078513          	mv	a0,a5
    80002be8:	00e57663          	bgeu	a0,a4,80002bf4 <_ZN15MemoryAllocator8mem_freeEPv+0x48>
    80002bec:	00053783          	ld	a5,0(a0)
    80002bf0:	fe079ae3          	bnez	a5,80002be4 <_ZN15MemoryAllocator8mem_freeEPv+0x38>
    if ((char *) find == (char *) curr) {
    80002bf4:	06e51263          	bne	a0,a4,80002c58 <_ZN15MemoryAllocator8mem_freeEPv+0xac>
int MemoryAllocator::mem_free(void *ptr) {
    80002bf8:	ff010113          	addi	sp,sp,-16
    80002bfc:	00113423          	sd	ra,8(sp)
    80002c00:	00813023          	sd	s0,0(sp)
    80002c04:	01010413          	addi	s0,sp,16
        curr->allocated = false;
    80002c08:	00050c23          	sb	zero,24(a0)
        freeSpaceInBlks += curr->size;
    80002c0c:	01053683          	ld	a3,16(a0)
    80002c10:	00009717          	auipc	a4,0x9
    80002c14:	96870713          	addi	a4,a4,-1688 # 8000b578 <_ZN15MemoryAllocator15freeSpaceInBlksE>
    80002c18:	00073783          	ld	a5,0(a4)
    80002c1c:	00d787b3          	add	a5,a5,a3
    80002c20:	00f73023          	sd	a5,0(a4)
        merge(curr);
    80002c24:	00000097          	auipc	ra,0x0
    80002c28:	f18080e7          	jalr	-232(ra) # 80002b3c <_ZN15MemoryAllocator5mergeEPv>
        return 0;
    80002c2c:	00000513          	li	a0,0
}
    80002c30:	00813083          	ld	ra,8(sp)
    80002c34:	00013403          	ld	s0,0(sp)
    80002c38:	01010113          	addi	sp,sp,16
    80002c3c:	00008067          	ret
    if (!ptr) return 0;
    80002c40:	00000513          	li	a0,0
    80002c44:	00008067          	ret
    if ((char *) ptr < (char *) HEAP_START_ADDR)return -1;
    80002c48:	fff00513          	li	a0,-1
    80002c4c:	00008067          	ret
    if ((char *) ptr > (char *) HEAP_END_ADDR)return -2;
    80002c50:	ffe00513          	li	a0,-2
    80002c54:	00008067          	ret
    return -1;
    80002c58:	fff00513          	li	a0,-1
}
    80002c5c:	00008067          	ret

0000000080002c60 <_ZN15MemoryAllocator9print_blkEP11MemoryBlock>:

void MemoryAllocator::print_blk(MemoryBlock *blk) {
    80002c60:	fe010113          	addi	sp,sp,-32
    80002c64:	00113c23          	sd	ra,24(sp)
    80002c68:	00813823          	sd	s0,16(sp)
    80002c6c:	00913423          	sd	s1,8(sp)
    80002c70:	02010413          	addi	s0,sp,32
    80002c74:	00050493          	mv	s1,a0

    printStr("blk:\t\0");
    80002c78:	00006517          	auipc	a0,0x6
    80002c7c:	5f850513          	addi	a0,a0,1528 # 80009270 <CONSOLE_STATUS+0x260>
    80002c80:	00000097          	auipc	ra,0x0
    80002c84:	158080e7          	jalr	344(ra) # 80002dd8 <printStr>
    printInt((unsigned long) blk);
    80002c88:	00048513          	mv	a0,s1
    80002c8c:	00000097          	auipc	ra,0x0
    80002c90:	174080e7          	jalr	372(ra) # 80002e00 <printInt>
    printStr("\nnext:\t\0");
    80002c94:	00006517          	auipc	a0,0x6
    80002c98:	5e450513          	addi	a0,a0,1508 # 80009278 <CONSOLE_STATUS+0x268>
    80002c9c:	00000097          	auipc	ra,0x0
    80002ca0:	13c080e7          	jalr	316(ra) # 80002dd8 <printStr>
    printInt((unsigned long) blk->next);
    80002ca4:	0004b503          	ld	a0,0(s1)
    80002ca8:	00000097          	auipc	ra,0x0
    80002cac:	158080e7          	jalr	344(ra) # 80002e00 <printInt>
    printStr("\nprev:\t\0");
    80002cb0:	00006517          	auipc	a0,0x6
    80002cb4:	5d850513          	addi	a0,a0,1496 # 80009288 <CONSOLE_STATUS+0x278>
    80002cb8:	00000097          	auipc	ra,0x0
    80002cbc:	120080e7          	jalr	288(ra) # 80002dd8 <printStr>
    printInt((unsigned long) blk->prev);
    80002cc0:	0084b503          	ld	a0,8(s1)
    80002cc4:	00000097          	auipc	ra,0x0
    80002cc8:	13c080e7          	jalr	316(ra) # 80002e00 <printInt>
    printStr("\nsize:\t\0");
    80002ccc:	00006517          	auipc	a0,0x6
    80002cd0:	5cc50513          	addi	a0,a0,1484 # 80009298 <CONSOLE_STATUS+0x288>
    80002cd4:	00000097          	auipc	ra,0x0
    80002cd8:	104080e7          	jalr	260(ra) # 80002dd8 <printStr>
    printInt(blk->size);
    80002cdc:	0104b503          	ld	a0,16(s1)
    80002ce0:	00000097          	auipc	ra,0x0
    80002ce4:	120080e7          	jalr	288(ra) # 80002e00 <printInt>
    printStr("\nstat:\t\0");
    80002ce8:	00006517          	auipc	a0,0x6
    80002cec:	5c050513          	addi	a0,a0,1472 # 800092a8 <CONSOLE_STATUS+0x298>
    80002cf0:	00000097          	auipc	ra,0x0
    80002cf4:	0e8080e7          	jalr	232(ra) # 80002dd8 <printStr>
    printInt(blk->allocated);
    80002cf8:	0184c503          	lbu	a0,24(s1)
    80002cfc:	00000097          	auipc	ra,0x0
    80002d00:	104080e7          	jalr	260(ra) # 80002e00 <printInt>
    printStr("\n");
    80002d04:	00007517          	auipc	a0,0x7
    80002d08:	8ec50513          	addi	a0,a0,-1812 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80002d0c:	00000097          	auipc	ra,0x0
    80002d10:	0cc080e7          	jalr	204(ra) # 80002dd8 <printStr>
}
    80002d14:	01813083          	ld	ra,24(sp)
    80002d18:	01013403          	ld	s0,16(sp)
    80002d1c:	00813483          	ld	s1,8(sp)
    80002d20:	02010113          	addi	sp,sp,32
    80002d24:	00008067          	ret

0000000080002d28 <_ZN15MemoryAllocator15print_allocatorEv>:

void MemoryAllocator::print_allocator() {
    80002d28:	fe010113          	addi	sp,sp,-32
    80002d2c:	00113c23          	sd	ra,24(sp)
    80002d30:	00813823          	sd	s0,16(sp)
    80002d34:	00913423          	sd	s1,8(sp)
    80002d38:	02010413          	addi	s0,sp,32
    printInt(freeSpaceInBlks);
    80002d3c:	00009497          	auipc	s1,0x9
    80002d40:	83c48493          	addi	s1,s1,-1988 # 8000b578 <_ZN15MemoryAllocator15freeSpaceInBlksE>
    80002d44:	0004b503          	ld	a0,0(s1)
    80002d48:	00000097          	auipc	ra,0x0
    80002d4c:	0b8080e7          	jalr	184(ra) # 80002e00 <printInt>
    printStr("\n");
    80002d50:	00007517          	auipc	a0,0x7
    80002d54:	8a050513          	addi	a0,a0,-1888 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80002d58:	00000097          	auipc	ra,0x0
    80002d5c:	080080e7          	jalr	128(ra) # 80002dd8 <printStr>
    printInt((uint64) baseAddress);
    80002d60:	0104b503          	ld	a0,16(s1)
    80002d64:	00000097          	auipc	ra,0x0
    80002d68:	09c080e7          	jalr	156(ra) # 80002e00 <printInt>
    printStr("\n");
    80002d6c:	00007517          	auipc	a0,0x7
    80002d70:	88450513          	addi	a0,a0,-1916 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80002d74:	00000097          	auipc	ra,0x0
    80002d78:	064080e7          	jalr	100(ra) # 80002dd8 <printStr>
    printInt((uint64) base);
    80002d7c:	0084b503          	ld	a0,8(s1)
    80002d80:	00000097          	auipc	ra,0x0
    80002d84:	080080e7          	jalr	128(ra) # 80002e00 <printInt>
    printStr("\n");
    80002d88:	00007517          	auipc	a0,0x7
    80002d8c:	86850513          	addi	a0,a0,-1944 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80002d90:	00000097          	auipc	ra,0x0
    80002d94:	048080e7          	jalr	72(ra) # 80002dd8 <printStr>
    for (MemoryBlock *curr = base; curr; curr = curr->next) {
    80002d98:	0084b483          	ld	s1,8(s1)
    80002d9c:	02048463          	beqz	s1,80002dc4 <_ZN15MemoryAllocator15print_allocatorEv+0x9c>
        print_blk(curr);
    80002da0:	00048513          	mv	a0,s1
    80002da4:	00000097          	auipc	ra,0x0
    80002da8:	ebc080e7          	jalr	-324(ra) # 80002c60 <_ZN15MemoryAllocator9print_blkEP11MemoryBlock>
        printStr("\n");
    80002dac:	00007517          	auipc	a0,0x7
    80002db0:	84450513          	addi	a0,a0,-1980 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80002db4:	00000097          	auipc	ra,0x0
    80002db8:	024080e7          	jalr	36(ra) # 80002dd8 <printStr>
    for (MemoryBlock *curr = base; curr; curr = curr->next) {
    80002dbc:	0004b483          	ld	s1,0(s1)
    80002dc0:	fddff06f          	j	80002d9c <_ZN15MemoryAllocator15print_allocatorEv+0x74>
    }
    80002dc4:	01813083          	ld	ra,24(sp)
    80002dc8:	01013403          	ld	s0,16(sp)
    80002dcc:	00813483          	ld	s1,8(sp)
    80002dd0:	02010113          	addi	sp,sp,32
    80002dd4:	00008067          	ret

0000000080002dd8 <printStr>:

#include "../lib/console.h" //kad uradis konzolu skloni
#include "../h/print.hpp"
#include "../test/printing.hpp"

void printStr(char const *string) {
    80002dd8:	ff010113          	addi	sp,sp,-16
    80002ddc:	00113423          	sd	ra,8(sp)
    80002de0:	00813023          	sd	s0,0(sp)
    80002de4:	01010413          	addi	s0,sp,16
         __putc(*string);
         string++;
     }

 */
    printString(string);
    80002de8:	00002097          	auipc	ra,0x2
    80002dec:	eb4080e7          	jalr	-332(ra) # 80004c9c <_Z11printStringPKc>
    //Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
}
    80002df0:	00813083          	ld	ra,8(sp)
    80002df4:	00013403          	ld	s0,0(sp)
    80002df8:	01010113          	addi	sp,sp,16
    80002dfc:	00008067          	ret

0000000080002e00 <printInt>:

void printInt(uint64 integer) {
    80002e00:	ff010113          	addi	sp,sp,-16
    80002e04:	00113423          	sd	ra,8(sp)
    80002e08:	00813023          	sd	s0,0(sp)
    80002e0c:	01010413          	addi	s0,sp,16
    // uint64 sstatus = Riscv::r_sstatus();
    // Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    printInt(integer, 10, 0);
    80002e10:	00000613          	li	a2,0
    80002e14:	00a00593          	li	a1,10
    80002e18:	0005051b          	sext.w	a0,a0
    80002e1c:	00002097          	auipc	ra,0x2
    80002e20:	030080e7          	jalr	48(ra) # 80004e4c <_Z8printIntiii>
    // Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
}
    80002e24:	00813083          	ld	ra,8(sp)
    80002e28:	00013403          	ld	s0,0(sp)
    80002e2c:	01010113          	addi	sp,sp,16
    80002e30:	00008067          	ret

0000000080002e34 <_Z13printHexDigith>:

void printHexDigit(uint8 digit) {
    80002e34:	ff010113          	addi	sp,sp,-16
    80002e38:	00113423          	sd	ra,8(sp)
    80002e3c:	00813023          	sd	s0,0(sp)
    80002e40:	01010413          	addi	s0,sp,16

    if (digit < 10) {
    80002e44:	00900793          	li	a5,9
    80002e48:	02a7e263          	bltu	a5,a0,80002e6c <_Z13printHexDigith+0x38>
        putc('0' + digit);
    80002e4c:	0305051b          	addiw	a0,a0,48
    80002e50:	0ff57513          	andi	a0,a0,255
    80002e54:	ffffe097          	auipc	ra,0xffffe
    80002e58:	5e0080e7          	jalr	1504(ra) # 80001434 <putc>
    } else {
        putc('a' + (digit - 10));
    }
}
    80002e5c:	00813083          	ld	ra,8(sp)
    80002e60:	00013403          	ld	s0,0(sp)
    80002e64:	01010113          	addi	sp,sp,16
    80002e68:	00008067          	ret
        putc('a' + (digit - 10));
    80002e6c:	0575051b          	addiw	a0,a0,87
    80002e70:	0ff57513          	andi	a0,a0,255
    80002e74:	ffffe097          	auipc	ra,0xffffe
    80002e78:	5c0080e7          	jalr	1472(ra) # 80001434 <putc>
}
    80002e7c:	fe1ff06f          	j	80002e5c <_Z13printHexDigith+0x28>

0000000080002e80 <_Z14printUint64Hexm>:

void printUint64Hex(uint64 num) {
    80002e80:	fd010113          	addi	sp,sp,-48
    80002e84:	02113423          	sd	ra,40(sp)
    80002e88:	02813023          	sd	s0,32(sp)
    80002e8c:	00913c23          	sd	s1,24(sp)
    80002e90:	03010413          	addi	s0,sp,48
    const int HEX_DIGITS = 16;
    char buffer[HEX_DIGITS];
    int index = HEX_DIGITS - 1;


    if (num == 0) {
    80002e94:	02050e63          	beqz	a0,80002ed0 <_Z14printUint64Hexm+0x50>
    int index = HEX_DIGITS - 1;
    80002e98:	00f00793          	li	a5,15
        putc('0');
        return;
    }

    while (num > 0 && index >= 0) {
    80002e9c:	04050a63          	beqz	a0,80002ef0 <_Z14printUint64Hexm+0x70>
    80002ea0:	0407c863          	bltz	a5,80002ef0 <_Z14printUint64Hexm+0x70>
        buffer[index--] = "0123456789abcdef"[num & 0xF];
    80002ea4:	00f57693          	andi	a3,a0,15
    80002ea8:	00006717          	auipc	a4,0x6
    80002eac:	41070713          	addi	a4,a4,1040 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80002eb0:	00d70733          	add	a4,a4,a3
    80002eb4:	00074683          	lbu	a3,0(a4)
    80002eb8:	fe040713          	addi	a4,s0,-32
    80002ebc:	00f70733          	add	a4,a4,a5
    80002ec0:	fed70823          	sb	a3,-16(a4)
        num >>= 4;
    80002ec4:	00455513          	srli	a0,a0,0x4
        buffer[index--] = "0123456789abcdef"[num & 0xF];
    80002ec8:	fff7879b          	addiw	a5,a5,-1
    while (num > 0 && index >= 0) {
    80002ecc:	fd1ff06f          	j	80002e9c <_Z14printUint64Hexm+0x1c>
        putc('0');
    80002ed0:	03000513          	li	a0,48
    80002ed4:	ffffe097          	auipc	ra,0xffffe
    80002ed8:	560080e7          	jalr	1376(ra) # 80001434 <putc>


    for (index = 0; index < HEX_DIGITS; ++index) {
        putc(buffer[index]);
    }
}
    80002edc:	02813083          	ld	ra,40(sp)
    80002ee0:	02013403          	ld	s0,32(sp)
    80002ee4:	01813483          	ld	s1,24(sp)
    80002ee8:	03010113          	addi	sp,sp,48
    80002eec:	00008067          	ret
    while (index >= 0) {
    80002ef0:	0007ce63          	bltz	a5,80002f0c <_Z14printUint64Hexm+0x8c>
        buffer[index--] = '0';
    80002ef4:	fe040713          	addi	a4,s0,-32
    80002ef8:	00f70733          	add	a4,a4,a5
    80002efc:	03000693          	li	a3,48
    80002f00:	fed70823          	sb	a3,-16(a4)
    80002f04:	fff7879b          	addiw	a5,a5,-1
    while (index >= 0) {
    80002f08:	fe9ff06f          	j	80002ef0 <_Z14printUint64Hexm+0x70>
    for (index = 0; index < HEX_DIGITS; ++index) {
    80002f0c:	00000493          	li	s1,0
    80002f10:	00f00793          	li	a5,15
    80002f14:	fc97c4e3          	blt	a5,s1,80002edc <_Z14printUint64Hexm+0x5c>
        putc(buffer[index]);
    80002f18:	fe040793          	addi	a5,s0,-32
    80002f1c:	009787b3          	add	a5,a5,s1
    80002f20:	ff07c503          	lbu	a0,-16(a5)
    80002f24:	ffffe097          	auipc	ra,0xffffe
    80002f28:	510080e7          	jalr	1296(ra) # 80001434 <putc>
    for (index = 0; index < HEX_DIGITS; ++index) {
    80002f2c:	0014849b          	addiw	s1,s1,1
    80002f30:	fe1ff06f          	j	80002f10 <_Z14printUint64Hexm+0x90>

0000000080002f34 <printRegister>:

void printRegister(uint64 reg) {
    80002f34:	ff010113          	addi	sp,sp,-16
    80002f38:	00113423          	sd	ra,8(sp)
    80002f3c:	00813023          	sd	s0,0(sp)
    80002f40:	01010413          	addi	s0,sp,16
    // uint64 sstatus = Riscv::r_sstatus();
    //  Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    printUint64Hex(reg);
    80002f44:	00000097          	auipc	ra,0x0
    80002f48:	f3c080e7          	jalr	-196(ra) # 80002e80 <_Z14printUint64Hexm>
    putc('\n');
    80002f4c:	00a00513          	li	a0,10
    80002f50:	ffffe097          	auipc	ra,0xffffe
    80002f54:	4e4080e7          	jalr	1252(ra) # 80001434 <putc>
    //  Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80002f58:	00813083          	ld	ra,8(sp)
    80002f5c:	00013403          	ld	s0,0(sp)
    80002f60:	01010113          	addi	sp,sp,16
    80002f64:	00008067          	ret

0000000080002f68 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80002f68:	fe010113          	addi	sp,sp,-32
    80002f6c:	00113c23          	sd	ra,24(sp)
    80002f70:	00813823          	sd	s0,16(sp)
    80002f74:	00913423          	sd	s1,8(sp)
    80002f78:	01213023          	sd	s2,0(sp)
    80002f7c:	02010413          	addi	s0,sp,32
    80002f80:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80002f84:	00000913          	li	s2,0
    80002f88:	00c0006f          	j	80002f94 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x30) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002f8c:	ffffe097          	auipc	ra,0xffffe
    80002f90:	2e8080e7          	jalr	744(ra) # 80001274 <thread_dispatch>
    while ((key = getc()) != 0x30) {
    80002f94:	ffffe097          	auipc	ra,0xffffe
    80002f98:	4c8080e7          	jalr	1224(ra) # 8000145c <getc>
    80002f9c:	0005059b          	sext.w	a1,a0
    80002fa0:	03000793          	li	a5,48
    80002fa4:	02f58a63          	beq	a1,a5,80002fd8 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80002fa8:	0084b503          	ld	a0,8(s1)
    80002fac:	00003097          	auipc	ra,0x3
    80002fb0:	b84080e7          	jalr	-1148(ra) # 80005b30 <_ZN6Buffer3putEi>
        i++;
    80002fb4:	0019071b          	addiw	a4,s2,1
    80002fb8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002fbc:	0004a683          	lw	a3,0(s1)
    80002fc0:	0026979b          	slliw	a5,a3,0x2
    80002fc4:	00d787bb          	addw	a5,a5,a3
    80002fc8:	0017979b          	slliw	a5,a5,0x1
    80002fcc:	02f767bb          	remw	a5,a4,a5
    80002fd0:	fc0792e3          	bnez	a5,80002f94 <_ZL16producerKeyboardPv+0x2c>
    80002fd4:	fb9ff06f          	j	80002f8c <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80002fd8:	00100793          	li	a5,1
    80002fdc:	00008717          	auipc	a4,0x8
    80002fe0:	5af72a23          	sw	a5,1460(a4) # 8000b590 <_ZL9threadEnd>
    data->buffer->put('!');
    80002fe4:	02100593          	li	a1,33
    80002fe8:	0084b503          	ld	a0,8(s1)
    80002fec:	00003097          	auipc	ra,0x3
    80002ff0:	b44080e7          	jalr	-1212(ra) # 80005b30 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80002ff4:	0104b503          	ld	a0,16(s1)
    80002ff8:	ffffe097          	auipc	ra,0xffffe
    80002ffc:	3cc080e7          	jalr	972(ra) # 800013c4 <sem_signal>
}
    80003000:	01813083          	ld	ra,24(sp)
    80003004:	01013403          	ld	s0,16(sp)
    80003008:	00813483          	ld	s1,8(sp)
    8000300c:	00013903          	ld	s2,0(sp)
    80003010:	02010113          	addi	sp,sp,32
    80003014:	00008067          	ret

0000000080003018 <_ZL8producerPv>:

static void producer(void *arg) {
    80003018:	fe010113          	addi	sp,sp,-32
    8000301c:	00113c23          	sd	ra,24(sp)
    80003020:	00813823          	sd	s0,16(sp)
    80003024:	00913423          	sd	s1,8(sp)
    80003028:	01213023          	sd	s2,0(sp)
    8000302c:	02010413          	addi	s0,sp,32
    80003030:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003034:	00000913          	li	s2,0
    80003038:	00c0006f          	j	80003044 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    8000303c:	ffffe097          	auipc	ra,0xffffe
    80003040:	238080e7          	jalr	568(ra) # 80001274 <thread_dispatch>
    while (!threadEnd) {
    80003044:	00008797          	auipc	a5,0x8
    80003048:	54c7a783          	lw	a5,1356(a5) # 8000b590 <_ZL9threadEnd>
    8000304c:	02079e63          	bnez	a5,80003088 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80003050:	0004a583          	lw	a1,0(s1)
    80003054:	0305859b          	addiw	a1,a1,48
    80003058:	0084b503          	ld	a0,8(s1)
    8000305c:	00003097          	auipc	ra,0x3
    80003060:	ad4080e7          	jalr	-1324(ra) # 80005b30 <_ZN6Buffer3putEi>
        i++;
    80003064:	0019071b          	addiw	a4,s2,1
    80003068:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000306c:	0004a683          	lw	a3,0(s1)
    80003070:	0026979b          	slliw	a5,a3,0x2
    80003074:	00d787bb          	addw	a5,a5,a3
    80003078:	0017979b          	slliw	a5,a5,0x1
    8000307c:	02f767bb          	remw	a5,a4,a5
    80003080:	fc0792e3          	bnez	a5,80003044 <_ZL8producerPv+0x2c>
    80003084:	fb9ff06f          	j	8000303c <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80003088:	0104b503          	ld	a0,16(s1)
    8000308c:	ffffe097          	auipc	ra,0xffffe
    80003090:	338080e7          	jalr	824(ra) # 800013c4 <sem_signal>
}
    80003094:	01813083          	ld	ra,24(sp)
    80003098:	01013403          	ld	s0,16(sp)
    8000309c:	00813483          	ld	s1,8(sp)
    800030a0:	00013903          	ld	s2,0(sp)
    800030a4:	02010113          	addi	sp,sp,32
    800030a8:	00008067          	ret

00000000800030ac <_ZL8consumerPv>:

static void consumer(void *arg) {
    800030ac:	fd010113          	addi	sp,sp,-48
    800030b0:	02113423          	sd	ra,40(sp)
    800030b4:	02813023          	sd	s0,32(sp)
    800030b8:	00913c23          	sd	s1,24(sp)
    800030bc:	01213823          	sd	s2,16(sp)
    800030c0:	01313423          	sd	s3,8(sp)
    800030c4:	01413023          	sd	s4,0(sp)
    800030c8:	03010413          	addi	s0,sp,48
    800030cc:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800030d0:	00000a13          	li	s4,0
    800030d4:	01c0006f          	j	800030f0 <_ZL8consumerPv+0x44>

        putc('c');
        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    800030d8:	ffffe097          	auipc	ra,0xffffe
    800030dc:	19c080e7          	jalr	412(ra) # 80001274 <thread_dispatch>
    800030e0:	0600006f          	j	80003140 <_ZL8consumerPv+0x94>
        }

        if (i % 80 == 0) {
            putc('\n');
    800030e4:	00a00513          	li	a0,10
    800030e8:	ffffe097          	auipc	ra,0xffffe
    800030ec:	34c080e7          	jalr	844(ra) # 80001434 <putc>
    while (!threadEnd) {
    800030f0:	00008797          	auipc	a5,0x8
    800030f4:	4a07a783          	lw	a5,1184(a5) # 8000b590 <_ZL9threadEnd>
    800030f8:	06079863          	bnez	a5,80003168 <_ZL8consumerPv+0xbc>
        int key = data->buffer->get();
    800030fc:	00893503          	ld	a0,8(s2)
    80003100:	00003097          	auipc	ra,0x3
    80003104:	ac0080e7          	jalr	-1344(ra) # 80005bc0 <_ZN6Buffer3getEv>
    80003108:	00050993          	mv	s3,a0
        i++;
    8000310c:	001a049b          	addiw	s1,s4,1
    80003110:	00048a1b          	sext.w	s4,s1
        putc('c');
    80003114:	06300513          	li	a0,99
    80003118:	ffffe097          	auipc	ra,0xffffe
    8000311c:	31c080e7          	jalr	796(ra) # 80001434 <putc>
        putc(key);
    80003120:	0ff9f513          	andi	a0,s3,255
    80003124:	ffffe097          	auipc	ra,0xffffe
    80003128:	310080e7          	jalr	784(ra) # 80001434 <putc>
        if (i % (5 * data->id) == 0) {
    8000312c:	00092703          	lw	a4,0(s2)
    80003130:	0027179b          	slliw	a5,a4,0x2
    80003134:	00e787bb          	addw	a5,a5,a4
    80003138:	02f4e7bb          	remw	a5,s1,a5
    8000313c:	f8078ee3          	beqz	a5,800030d8 <_ZL8consumerPv+0x2c>
        if (i % 80 == 0) {
    80003140:	05000793          	li	a5,80
    80003144:	02f4e4bb          	remw	s1,s1,a5
    80003148:	fa0494e3          	bnez	s1,800030f0 <_ZL8consumerPv+0x44>
    8000314c:	f99ff06f          	j	800030e4 <_ZL8consumerPv+0x38>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80003150:	00893503          	ld	a0,8(s2)
    80003154:	00003097          	auipc	ra,0x3
    80003158:	a6c080e7          	jalr	-1428(ra) # 80005bc0 <_ZN6Buffer3getEv>
        putc(key);
    8000315c:	0ff57513          	andi	a0,a0,255
    80003160:	ffffe097          	auipc	ra,0xffffe
    80003164:	2d4080e7          	jalr	724(ra) # 80001434 <putc>
    while (data->buffer->getCnt() > 0) {
    80003168:	00893503          	ld	a0,8(s2)
    8000316c:	00003097          	auipc	ra,0x3
    80003170:	ae0080e7          	jalr	-1312(ra) # 80005c4c <_ZN6Buffer6getCntEv>
    80003174:	fca04ee3          	bgtz	a0,80003150 <_ZL8consumerPv+0xa4>
    }

    sem_signal(data->wait);
    80003178:	01093503          	ld	a0,16(s2)
    8000317c:	ffffe097          	auipc	ra,0xffffe
    80003180:	248080e7          	jalr	584(ra) # 800013c4 <sem_signal>
}
    80003184:	02813083          	ld	ra,40(sp)
    80003188:	02013403          	ld	s0,32(sp)
    8000318c:	01813483          	ld	s1,24(sp)
    80003190:	01013903          	ld	s2,16(sp)
    80003194:	00813983          	ld	s3,8(sp)
    80003198:	00013a03          	ld	s4,0(sp)
    8000319c:	03010113          	addi	sp,sp,48
    800031a0:	00008067          	ret

00000000800031a4 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    800031a4:	f9010113          	addi	sp,sp,-112
    800031a8:	06113423          	sd	ra,104(sp)
    800031ac:	06813023          	sd	s0,96(sp)
    800031b0:	04913c23          	sd	s1,88(sp)
    800031b4:	05213823          	sd	s2,80(sp)
    800031b8:	05313423          	sd	s3,72(sp)
    800031bc:	05413023          	sd	s4,64(sp)
    800031c0:	03513c23          	sd	s5,56(sp)
    800031c4:	03613823          	sd	s6,48(sp)
    800031c8:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    800031cc:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    800031d0:	00006517          	auipc	a0,0x6
    800031d4:	10050513          	addi	a0,a0,256 # 800092d0 <CONSOLE_STATUS+0x2c0>
    800031d8:	00002097          	auipc	ra,0x2
    800031dc:	ac4080e7          	jalr	-1340(ra) # 80004c9c <_Z11printStringPKc>
    getString(input, 30);
    800031e0:	01e00593          	li	a1,30
    800031e4:	fa040493          	addi	s1,s0,-96
    800031e8:	00048513          	mv	a0,s1
    800031ec:	00002097          	auipc	ra,0x2
    800031f0:	b38080e7          	jalr	-1224(ra) # 80004d24 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800031f4:	00048513          	mv	a0,s1
    800031f8:	00002097          	auipc	ra,0x2
    800031fc:	c04080e7          	jalr	-1020(ra) # 80004dfc <_Z11stringToIntPKc>
    80003200:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003204:	00006517          	auipc	a0,0x6
    80003208:	0ec50513          	addi	a0,a0,236 # 800092f0 <CONSOLE_STATUS+0x2e0>
    8000320c:	00002097          	auipc	ra,0x2
    80003210:	a90080e7          	jalr	-1392(ra) # 80004c9c <_Z11printStringPKc>
    getString(input, 30);
    80003214:	01e00593          	li	a1,30
    80003218:	00048513          	mv	a0,s1
    8000321c:	00002097          	auipc	ra,0x2
    80003220:	b08080e7          	jalr	-1272(ra) # 80004d24 <_Z9getStringPci>
    n = stringToInt(input);
    80003224:	00048513          	mv	a0,s1
    80003228:	00002097          	auipc	ra,0x2
    8000322c:	bd4080e7          	jalr	-1068(ra) # 80004dfc <_Z11stringToIntPKc>
    80003230:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003234:	00006517          	auipc	a0,0x6
    80003238:	0dc50513          	addi	a0,a0,220 # 80009310 <CONSOLE_STATUS+0x300>
    8000323c:	00002097          	auipc	ra,0x2
    80003240:	a60080e7          	jalr	-1440(ra) # 80004c9c <_Z11printStringPKc>
    80003244:	00000613          	li	a2,0
    80003248:	00a00593          	li	a1,10
    8000324c:	00090513          	mv	a0,s2
    80003250:	00002097          	auipc	ra,0x2
    80003254:	bfc080e7          	jalr	-1028(ra) # 80004e4c <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003258:	00006517          	auipc	a0,0x6
    8000325c:	0d050513          	addi	a0,a0,208 # 80009328 <CONSOLE_STATUS+0x318>
    80003260:	00002097          	auipc	ra,0x2
    80003264:	a3c080e7          	jalr	-1476(ra) # 80004c9c <_Z11printStringPKc>
    80003268:	00000613          	li	a2,0
    8000326c:	00a00593          	li	a1,10
    80003270:	00048513          	mv	a0,s1
    80003274:	00002097          	auipc	ra,0x2
    80003278:	bd8080e7          	jalr	-1064(ra) # 80004e4c <_Z8printIntiii>
    printString(".\n");
    8000327c:	00006517          	auipc	a0,0x6
    80003280:	0c450513          	addi	a0,a0,196 # 80009340 <CONSOLE_STATUS+0x330>
    80003284:	00002097          	auipc	ra,0x2
    80003288:	a18080e7          	jalr	-1512(ra) # 80004c9c <_Z11printStringPKc>
    if(threadNum > n) {
    8000328c:	0324c463          	blt	s1,s2,800032b4 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80003290:	03205c63          	blez	s2,800032c8 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80003294:	03800513          	li	a0,56
    80003298:	fffff097          	auipc	ra,0xfffff
    8000329c:	b4c080e7          	jalr	-1204(ra) # 80001de4 <_Znwm>
    800032a0:	00050a13          	mv	s4,a0
    800032a4:	00048593          	mv	a1,s1
    800032a8:	00002097          	auipc	ra,0x2
    800032ac:	7ec080e7          	jalr	2028(ra) # 80005a94 <_ZN6BufferC1Ei>
    800032b0:	0300006f          	j	800032e0 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800032b4:	00006517          	auipc	a0,0x6
    800032b8:	09450513          	addi	a0,a0,148 # 80009348 <CONSOLE_STATUS+0x338>
    800032bc:	00002097          	auipc	ra,0x2
    800032c0:	9e0080e7          	jalr	-1568(ra) # 80004c9c <_Z11printStringPKc>
        return;
    800032c4:	0140006f          	j	800032d8 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800032c8:	00006517          	auipc	a0,0x6
    800032cc:	0c050513          	addi	a0,a0,192 # 80009388 <CONSOLE_STATUS+0x378>
    800032d0:	00002097          	auipc	ra,0x2
    800032d4:	9cc080e7          	jalr	-1588(ra) # 80004c9c <_Z11printStringPKc>
        return;
    800032d8:	000b0113          	mv	sp,s6
    800032dc:	1500006f          	j	8000342c <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    800032e0:	00000593          	li	a1,0
    800032e4:	00008517          	auipc	a0,0x8
    800032e8:	2b450513          	addi	a0,a0,692 # 8000b598 <_ZL10waitForAll>
    800032ec:	ffffe097          	auipc	ra,0xffffe
    800032f0:	fe8080e7          	jalr	-24(ra) # 800012d4 <sem_open>
    thread_t threads[threadNum];
    800032f4:	00391793          	slli	a5,s2,0x3
    800032f8:	00f78793          	addi	a5,a5,15
    800032fc:	ff07f793          	andi	a5,a5,-16
    80003300:	40f10133          	sub	sp,sp,a5
    80003304:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003308:	0019071b          	addiw	a4,s2,1
    8000330c:	00171793          	slli	a5,a4,0x1
    80003310:	00e787b3          	add	a5,a5,a4
    80003314:	00379793          	slli	a5,a5,0x3
    80003318:	00f78793          	addi	a5,a5,15
    8000331c:	ff07f793          	andi	a5,a5,-16
    80003320:	40f10133          	sub	sp,sp,a5
    80003324:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003328:	00191613          	slli	a2,s2,0x1
    8000332c:	012607b3          	add	a5,a2,s2
    80003330:	00379793          	slli	a5,a5,0x3
    80003334:	00f987b3          	add	a5,s3,a5
    80003338:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    8000333c:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003340:	00008717          	auipc	a4,0x8
    80003344:	25873703          	ld	a4,600(a4) # 8000b598 <_ZL10waitForAll>
    80003348:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    8000334c:	00078613          	mv	a2,a5
    80003350:	00000597          	auipc	a1,0x0
    80003354:	d5c58593          	addi	a1,a1,-676 # 800030ac <_ZL8consumerPv>
    80003358:	f9840513          	addi	a0,s0,-104
    8000335c:	ffffe097          	auipc	ra,0xffffe
    80003360:	e78080e7          	jalr	-392(ra) # 800011d4 <thread_create>
    for (int i = 0; i < threadNum; i++) {
    80003364:	00000493          	li	s1,0
    80003368:	0280006f          	j	80003390 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    8000336c:	00000597          	auipc	a1,0x0
    80003370:	bfc58593          	addi	a1,a1,-1028 # 80002f68 <_ZL16producerKeyboardPv>
                      data + i);
    80003374:	00179613          	slli	a2,a5,0x1
    80003378:	00f60633          	add	a2,a2,a5
    8000337c:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003380:	00c98633          	add	a2,s3,a2
    80003384:	ffffe097          	auipc	ra,0xffffe
    80003388:	e50080e7          	jalr	-432(ra) # 800011d4 <thread_create>
    for (int i = 0; i < threadNum; i++) {
    8000338c:	0014849b          	addiw	s1,s1,1
    80003390:	0524d263          	bge	s1,s2,800033d4 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003394:	00149793          	slli	a5,s1,0x1
    80003398:	009787b3          	add	a5,a5,s1
    8000339c:	00379793          	slli	a5,a5,0x3
    800033a0:	00f987b3          	add	a5,s3,a5
    800033a4:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800033a8:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    800033ac:	00008717          	auipc	a4,0x8
    800033b0:	1ec73703          	ld	a4,492(a4) # 8000b598 <_ZL10waitForAll>
    800033b4:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    800033b8:	00048793          	mv	a5,s1
    800033bc:	00349513          	slli	a0,s1,0x3
    800033c0:	00aa8533          	add	a0,s5,a0
    800033c4:	fa9054e3          	blez	s1,8000336c <_Z22producerConsumer_C_APIv+0x1c8>
    800033c8:	00000597          	auipc	a1,0x0
    800033cc:	c5058593          	addi	a1,a1,-944 # 80003018 <_ZL8producerPv>
    800033d0:	fa5ff06f          	j	80003374 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    800033d4:	ffffe097          	auipc	ra,0xffffe
    800033d8:	ea0080e7          	jalr	-352(ra) # 80001274 <thread_dispatch>
    for (int i = 0; i <= threadNum; i++) {
    800033dc:	00000493          	li	s1,0
    800033e0:	00994e63          	blt	s2,s1,800033fc <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    800033e4:	00008517          	auipc	a0,0x8
    800033e8:	1b453503          	ld	a0,436(a0) # 8000b598 <_ZL10waitForAll>
    800033ec:	ffffe097          	auipc	ra,0xffffe
    800033f0:	f8c080e7          	jalr	-116(ra) # 80001378 <sem_wait>
    for (int i = 0; i <= threadNum; i++) {
    800033f4:	0014849b          	addiw	s1,s1,1
    800033f8:	fe9ff06f          	j	800033e0 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    800033fc:	00008517          	auipc	a0,0x8
    80003400:	19c53503          	ld	a0,412(a0) # 8000b598 <_ZL10waitForAll>
    80003404:	ffffe097          	auipc	ra,0xffffe
    80003408:	f28080e7          	jalr	-216(ra) # 8000132c <sem_close>
    delete buffer;
    8000340c:	000a0e63          	beqz	s4,80003428 <_Z22producerConsumer_C_APIv+0x284>
    80003410:	000a0513          	mv	a0,s4
    80003414:	00003097          	auipc	ra,0x3
    80003418:	8c0080e7          	jalr	-1856(ra) # 80005cd4 <_ZN6BufferD1Ev>
    8000341c:	000a0513          	mv	a0,s4
    80003420:	fffff097          	auipc	ra,0xfffff
    80003424:	a14080e7          	jalr	-1516(ra) # 80001e34 <_ZdlPv>
    80003428:	000b0113          	mv	sp,s6

}
    8000342c:	f9040113          	addi	sp,s0,-112
    80003430:	06813083          	ld	ra,104(sp)
    80003434:	06013403          	ld	s0,96(sp)
    80003438:	05813483          	ld	s1,88(sp)
    8000343c:	05013903          	ld	s2,80(sp)
    80003440:	04813983          	ld	s3,72(sp)
    80003444:	04013a03          	ld	s4,64(sp)
    80003448:	03813a83          	ld	s5,56(sp)
    8000344c:	03013b03          	ld	s6,48(sp)
    80003450:	07010113          	addi	sp,sp,112
    80003454:	00008067          	ret
    80003458:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    8000345c:	000a0513          	mv	a0,s4
    80003460:	fffff097          	auipc	ra,0xfffff
    80003464:	9d4080e7          	jalr	-1580(ra) # 80001e34 <_ZdlPv>
    80003468:	00048513          	mv	a0,s1
    8000346c:	00009097          	auipc	ra,0x9
    80003470:	22c080e7          	jalr	556(ra) # 8000c698 <_Unwind_Resume>

0000000080003474 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003474:	fe010113          	addi	sp,sp,-32
    80003478:	00113c23          	sd	ra,24(sp)
    8000347c:	00813823          	sd	s0,16(sp)
    80003480:	00913423          	sd	s1,8(sp)
    80003484:	01213023          	sd	s2,0(sp)
    80003488:	02010413          	addi	s0,sp,32
    8000348c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003490:	00100793          	li	a5,1
    80003494:	02a7f863          	bgeu	a5,a0,800034c4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003498:	00a00793          	li	a5,10
    8000349c:	02f577b3          	remu	a5,a0,a5
    800034a0:	02078e63          	beqz	a5,800034dc <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800034a4:	fff48513          	addi	a0,s1,-1
    800034a8:	00000097          	auipc	ra,0x0
    800034ac:	fcc080e7          	jalr	-52(ra) # 80003474 <_ZL9fibonaccim>
    800034b0:	00050913          	mv	s2,a0
    800034b4:	ffe48513          	addi	a0,s1,-2
    800034b8:	00000097          	auipc	ra,0x0
    800034bc:	fbc080e7          	jalr	-68(ra) # 80003474 <_ZL9fibonaccim>
    800034c0:	00a90533          	add	a0,s2,a0
}
    800034c4:	01813083          	ld	ra,24(sp)
    800034c8:	01013403          	ld	s0,16(sp)
    800034cc:	00813483          	ld	s1,8(sp)
    800034d0:	00013903          	ld	s2,0(sp)
    800034d4:	02010113          	addi	sp,sp,32
    800034d8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800034dc:	ffffe097          	auipc	ra,0xffffe
    800034e0:	d98080e7          	jalr	-616(ra) # 80001274 <thread_dispatch>
    800034e4:	fc1ff06f          	j	800034a4 <_ZL9fibonaccim+0x30>

00000000800034e8 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    800034e8:	fe010113          	addi	sp,sp,-32
    800034ec:	00113c23          	sd	ra,24(sp)
    800034f0:	00813823          	sd	s0,16(sp)
    800034f4:	00913423          	sd	s1,8(sp)
    800034f8:	01213023          	sd	s2,0(sp)
    800034fc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003500:	00000913          	li	s2,0
    80003504:	0380006f          	j	8000353c <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003508:	ffffe097          	auipc	ra,0xffffe
    8000350c:	d6c080e7          	jalr	-660(ra) # 80001274 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80003510:	00148493          	addi	s1,s1,1
    80003514:	000027b7          	lui	a5,0x2
    80003518:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000351c:	0097ee63          	bltu	a5,s1,80003538 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003520:	00000713          	li	a4,0
    80003524:	000077b7          	lui	a5,0x7
    80003528:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000352c:	fce7eee3          	bltu	a5,a4,80003508 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003530:	00170713          	addi	a4,a4,1
    80003534:	ff1ff06f          	j	80003524 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003538:	00190913          	addi	s2,s2,1
    8000353c:	00900793          	li	a5,9
    80003540:	0527e063          	bltu	a5,s2,80003580 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003544:	00006517          	auipc	a0,0x6
    80003548:	adc50513          	addi	a0,a0,-1316 # 80009020 <CONSOLE_STATUS+0x10>
    8000354c:	00001097          	auipc	ra,0x1
    80003550:	750080e7          	jalr	1872(ra) # 80004c9c <_Z11printStringPKc>
    80003554:	00000613          	li	a2,0
    80003558:	00a00593          	li	a1,10
    8000355c:	0009051b          	sext.w	a0,s2
    80003560:	00002097          	auipc	ra,0x2
    80003564:	8ec080e7          	jalr	-1812(ra) # 80004e4c <_Z8printIntiii>
    80003568:	00006517          	auipc	a0,0x6
    8000356c:	08850513          	addi	a0,a0,136 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80003570:	00001097          	auipc	ra,0x1
    80003574:	72c080e7          	jalr	1836(ra) # 80004c9c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003578:	00000493          	li	s1,0
    8000357c:	f99ff06f          	j	80003514 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003580:	00006517          	auipc	a0,0x6
    80003584:	e3850513          	addi	a0,a0,-456 # 800093b8 <CONSOLE_STATUS+0x3a8>
    80003588:	00001097          	auipc	ra,0x1
    8000358c:	714080e7          	jalr	1812(ra) # 80004c9c <_Z11printStringPKc>
    finishedA = true;
    80003590:	00100793          	li	a5,1
    80003594:	00008717          	auipc	a4,0x8
    80003598:	00f70623          	sb	a5,12(a4) # 8000b5a0 <_ZL9finishedA>
}
    8000359c:	01813083          	ld	ra,24(sp)
    800035a0:	01013403          	ld	s0,16(sp)
    800035a4:	00813483          	ld	s1,8(sp)
    800035a8:	00013903          	ld	s2,0(sp)
    800035ac:	02010113          	addi	sp,sp,32
    800035b0:	00008067          	ret

00000000800035b4 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    800035b4:	fe010113          	addi	sp,sp,-32
    800035b8:	00113c23          	sd	ra,24(sp)
    800035bc:	00813823          	sd	s0,16(sp)
    800035c0:	00913423          	sd	s1,8(sp)
    800035c4:	01213023          	sd	s2,0(sp)
    800035c8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800035cc:	00000913          	li	s2,0
    800035d0:	0380006f          	j	80003608 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800035d4:	ffffe097          	auipc	ra,0xffffe
    800035d8:	ca0080e7          	jalr	-864(ra) # 80001274 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    800035dc:	00148493          	addi	s1,s1,1
    800035e0:	000027b7          	lui	a5,0x2
    800035e4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800035e8:	0097ee63          	bltu	a5,s1,80003604 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800035ec:	00000713          	li	a4,0
    800035f0:	000077b7          	lui	a5,0x7
    800035f4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800035f8:	fce7eee3          	bltu	a5,a4,800035d4 <_ZN7WorkerB11workerBodyBEPv+0x20>
    800035fc:	00170713          	addi	a4,a4,1
    80003600:	ff1ff06f          	j	800035f0 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003604:	00190913          	addi	s2,s2,1
    80003608:	00f00793          	li	a5,15
    8000360c:	0527e063          	bltu	a5,s2,8000364c <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003610:	00006517          	auipc	a0,0x6
    80003614:	a1850513          	addi	a0,a0,-1512 # 80009028 <CONSOLE_STATUS+0x18>
    80003618:	00001097          	auipc	ra,0x1
    8000361c:	684080e7          	jalr	1668(ra) # 80004c9c <_Z11printStringPKc>
    80003620:	00000613          	li	a2,0
    80003624:	00a00593          	li	a1,10
    80003628:	0009051b          	sext.w	a0,s2
    8000362c:	00002097          	auipc	ra,0x2
    80003630:	820080e7          	jalr	-2016(ra) # 80004e4c <_Z8printIntiii>
    80003634:	00006517          	auipc	a0,0x6
    80003638:	fbc50513          	addi	a0,a0,-68 # 800095f0 <CONSOLE_STATUS+0x5e0>
    8000363c:	00001097          	auipc	ra,0x1
    80003640:	660080e7          	jalr	1632(ra) # 80004c9c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003644:	00000493          	li	s1,0
    80003648:	f99ff06f          	j	800035e0 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    8000364c:	00006517          	auipc	a0,0x6
    80003650:	d7c50513          	addi	a0,a0,-644 # 800093c8 <CONSOLE_STATUS+0x3b8>
    80003654:	00001097          	auipc	ra,0x1
    80003658:	648080e7          	jalr	1608(ra) # 80004c9c <_Z11printStringPKc>
    finishedB = true;
    8000365c:	00100793          	li	a5,1
    80003660:	00008717          	auipc	a4,0x8
    80003664:	f4f700a3          	sb	a5,-191(a4) # 8000b5a1 <_ZL9finishedB>
    thread_dispatch();
    80003668:	ffffe097          	auipc	ra,0xffffe
    8000366c:	c0c080e7          	jalr	-1012(ra) # 80001274 <thread_dispatch>
}
    80003670:	01813083          	ld	ra,24(sp)
    80003674:	01013403          	ld	s0,16(sp)
    80003678:	00813483          	ld	s1,8(sp)
    8000367c:	00013903          	ld	s2,0(sp)
    80003680:	02010113          	addi	sp,sp,32
    80003684:	00008067          	ret

0000000080003688 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003688:	fe010113          	addi	sp,sp,-32
    8000368c:	00113c23          	sd	ra,24(sp)
    80003690:	00813823          	sd	s0,16(sp)
    80003694:	00913423          	sd	s1,8(sp)
    80003698:	01213023          	sd	s2,0(sp)
    8000369c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800036a0:	00000493          	li	s1,0
    800036a4:	0400006f          	j	800036e4 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800036a8:	00006517          	auipc	a0,0x6
    800036ac:	98850513          	addi	a0,a0,-1656 # 80009030 <CONSOLE_STATUS+0x20>
    800036b0:	00001097          	auipc	ra,0x1
    800036b4:	5ec080e7          	jalr	1516(ra) # 80004c9c <_Z11printStringPKc>
    800036b8:	00000613          	li	a2,0
    800036bc:	00a00593          	li	a1,10
    800036c0:	00048513          	mv	a0,s1
    800036c4:	00001097          	auipc	ra,0x1
    800036c8:	788080e7          	jalr	1928(ra) # 80004e4c <_Z8printIntiii>
    800036cc:	00006517          	auipc	a0,0x6
    800036d0:	f2450513          	addi	a0,a0,-220 # 800095f0 <CONSOLE_STATUS+0x5e0>
    800036d4:	00001097          	auipc	ra,0x1
    800036d8:	5c8080e7          	jalr	1480(ra) # 80004c9c <_Z11printStringPKc>
    for (; i < 3; i++) {
    800036dc:	0014849b          	addiw	s1,s1,1
    800036e0:	0ff4f493          	andi	s1,s1,255
    800036e4:	00200793          	li	a5,2
    800036e8:	fc97f0e3          	bgeu	a5,s1,800036a8 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    800036ec:	00006517          	auipc	a0,0x6
    800036f0:	cec50513          	addi	a0,a0,-788 # 800093d8 <CONSOLE_STATUS+0x3c8>
    800036f4:	00001097          	auipc	ra,0x1
    800036f8:	5a8080e7          	jalr	1448(ra) # 80004c9c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800036fc:	00700313          	li	t1,7
    thread_dispatch();
    80003700:	ffffe097          	auipc	ra,0xffffe
    80003704:	b74080e7          	jalr	-1164(ra) # 80001274 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003708:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    8000370c:	00006517          	auipc	a0,0x6
    80003710:	93c50513          	addi	a0,a0,-1732 # 80009048 <CONSOLE_STATUS+0x38>
    80003714:	00001097          	auipc	ra,0x1
    80003718:	588080e7          	jalr	1416(ra) # 80004c9c <_Z11printStringPKc>
    8000371c:	00000613          	li	a2,0
    80003720:	00a00593          	li	a1,10
    80003724:	0009051b          	sext.w	a0,s2
    80003728:	00001097          	auipc	ra,0x1
    8000372c:	724080e7          	jalr	1828(ra) # 80004e4c <_Z8printIntiii>
    80003730:	00006517          	auipc	a0,0x6
    80003734:	ec050513          	addi	a0,a0,-320 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80003738:	00001097          	auipc	ra,0x1
    8000373c:	564080e7          	jalr	1380(ra) # 80004c9c <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003740:	00c00513          	li	a0,12
    80003744:	00000097          	auipc	ra,0x0
    80003748:	d30080e7          	jalr	-720(ra) # 80003474 <_ZL9fibonaccim>
    8000374c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003750:	00006517          	auipc	a0,0x6
    80003754:	90050513          	addi	a0,a0,-1792 # 80009050 <CONSOLE_STATUS+0x40>
    80003758:	00001097          	auipc	ra,0x1
    8000375c:	544080e7          	jalr	1348(ra) # 80004c9c <_Z11printStringPKc>
    80003760:	00000613          	li	a2,0
    80003764:	00a00593          	li	a1,10
    80003768:	0009051b          	sext.w	a0,s2
    8000376c:	00001097          	auipc	ra,0x1
    80003770:	6e0080e7          	jalr	1760(ra) # 80004e4c <_Z8printIntiii>
    80003774:	00006517          	auipc	a0,0x6
    80003778:	e7c50513          	addi	a0,a0,-388 # 800095f0 <CONSOLE_STATUS+0x5e0>
    8000377c:	00001097          	auipc	ra,0x1
    80003780:	520080e7          	jalr	1312(ra) # 80004c9c <_Z11printStringPKc>
    80003784:	0400006f          	j	800037c4 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003788:	00006517          	auipc	a0,0x6
    8000378c:	8a850513          	addi	a0,a0,-1880 # 80009030 <CONSOLE_STATUS+0x20>
    80003790:	00001097          	auipc	ra,0x1
    80003794:	50c080e7          	jalr	1292(ra) # 80004c9c <_Z11printStringPKc>
    80003798:	00000613          	li	a2,0
    8000379c:	00a00593          	li	a1,10
    800037a0:	00048513          	mv	a0,s1
    800037a4:	00001097          	auipc	ra,0x1
    800037a8:	6a8080e7          	jalr	1704(ra) # 80004e4c <_Z8printIntiii>
    800037ac:	00006517          	auipc	a0,0x6
    800037b0:	e4450513          	addi	a0,a0,-444 # 800095f0 <CONSOLE_STATUS+0x5e0>
    800037b4:	00001097          	auipc	ra,0x1
    800037b8:	4e8080e7          	jalr	1256(ra) # 80004c9c <_Z11printStringPKc>
    for (; i < 6; i++) {
    800037bc:	0014849b          	addiw	s1,s1,1
    800037c0:	0ff4f493          	andi	s1,s1,255
    800037c4:	00500793          	li	a5,5
    800037c8:	fc97f0e3          	bgeu	a5,s1,80003788 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    800037cc:	00006517          	auipc	a0,0x6
    800037d0:	bec50513          	addi	a0,a0,-1044 # 800093b8 <CONSOLE_STATUS+0x3a8>
    800037d4:	00001097          	auipc	ra,0x1
    800037d8:	4c8080e7          	jalr	1224(ra) # 80004c9c <_Z11printStringPKc>
    finishedC = true;
    800037dc:	00100793          	li	a5,1
    800037e0:	00008717          	auipc	a4,0x8
    800037e4:	dcf70123          	sb	a5,-574(a4) # 8000b5a2 <_ZL9finishedC>
    thread_dispatch();
    800037e8:	ffffe097          	auipc	ra,0xffffe
    800037ec:	a8c080e7          	jalr	-1396(ra) # 80001274 <thread_dispatch>
}
    800037f0:	01813083          	ld	ra,24(sp)
    800037f4:	01013403          	ld	s0,16(sp)
    800037f8:	00813483          	ld	s1,8(sp)
    800037fc:	00013903          	ld	s2,0(sp)
    80003800:	02010113          	addi	sp,sp,32
    80003804:	00008067          	ret

0000000080003808 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003808:	fe010113          	addi	sp,sp,-32
    8000380c:	00113c23          	sd	ra,24(sp)
    80003810:	00813823          	sd	s0,16(sp)
    80003814:	00913423          	sd	s1,8(sp)
    80003818:	01213023          	sd	s2,0(sp)
    8000381c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003820:	00a00493          	li	s1,10
    80003824:	0400006f          	j	80003864 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003828:	00006517          	auipc	a0,0x6
    8000382c:	83850513          	addi	a0,a0,-1992 # 80009060 <CONSOLE_STATUS+0x50>
    80003830:	00001097          	auipc	ra,0x1
    80003834:	46c080e7          	jalr	1132(ra) # 80004c9c <_Z11printStringPKc>
    80003838:	00000613          	li	a2,0
    8000383c:	00a00593          	li	a1,10
    80003840:	00048513          	mv	a0,s1
    80003844:	00001097          	auipc	ra,0x1
    80003848:	608080e7          	jalr	1544(ra) # 80004e4c <_Z8printIntiii>
    8000384c:	00006517          	auipc	a0,0x6
    80003850:	da450513          	addi	a0,a0,-604 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80003854:	00001097          	auipc	ra,0x1
    80003858:	448080e7          	jalr	1096(ra) # 80004c9c <_Z11printStringPKc>
    for (; i < 13; i++) {
    8000385c:	0014849b          	addiw	s1,s1,1
    80003860:	0ff4f493          	andi	s1,s1,255
    80003864:	00c00793          	li	a5,12
    80003868:	fc97f0e3          	bgeu	a5,s1,80003828 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    8000386c:	00006517          	auipc	a0,0x6
    80003870:	b7c50513          	addi	a0,a0,-1156 # 800093e8 <CONSOLE_STATUS+0x3d8>
    80003874:	00001097          	auipc	ra,0x1
    80003878:	428080e7          	jalr	1064(ra) # 80004c9c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000387c:	00500313          	li	t1,5
    thread_dispatch();
    80003880:	ffffe097          	auipc	ra,0xffffe
    80003884:	9f4080e7          	jalr	-1548(ra) # 80001274 <thread_dispatch>

    uint64 result = fibonacci(16);
    80003888:	01000513          	li	a0,16
    8000388c:	00000097          	auipc	ra,0x0
    80003890:	be8080e7          	jalr	-1048(ra) # 80003474 <_ZL9fibonaccim>
    80003894:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003898:	00005517          	auipc	a0,0x5
    8000389c:	7e050513          	addi	a0,a0,2016 # 80009078 <CONSOLE_STATUS+0x68>
    800038a0:	00001097          	auipc	ra,0x1
    800038a4:	3fc080e7          	jalr	1020(ra) # 80004c9c <_Z11printStringPKc>
    800038a8:	00000613          	li	a2,0
    800038ac:	00a00593          	li	a1,10
    800038b0:	0009051b          	sext.w	a0,s2
    800038b4:	00001097          	auipc	ra,0x1
    800038b8:	598080e7          	jalr	1432(ra) # 80004e4c <_Z8printIntiii>
    800038bc:	00006517          	auipc	a0,0x6
    800038c0:	d3450513          	addi	a0,a0,-716 # 800095f0 <CONSOLE_STATUS+0x5e0>
    800038c4:	00001097          	auipc	ra,0x1
    800038c8:	3d8080e7          	jalr	984(ra) # 80004c9c <_Z11printStringPKc>
    800038cc:	0400006f          	j	8000390c <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800038d0:	00005517          	auipc	a0,0x5
    800038d4:	79050513          	addi	a0,a0,1936 # 80009060 <CONSOLE_STATUS+0x50>
    800038d8:	00001097          	auipc	ra,0x1
    800038dc:	3c4080e7          	jalr	964(ra) # 80004c9c <_Z11printStringPKc>
    800038e0:	00000613          	li	a2,0
    800038e4:	00a00593          	li	a1,10
    800038e8:	00048513          	mv	a0,s1
    800038ec:	00001097          	auipc	ra,0x1
    800038f0:	560080e7          	jalr	1376(ra) # 80004e4c <_Z8printIntiii>
    800038f4:	00006517          	auipc	a0,0x6
    800038f8:	cfc50513          	addi	a0,a0,-772 # 800095f0 <CONSOLE_STATUS+0x5e0>
    800038fc:	00001097          	auipc	ra,0x1
    80003900:	3a0080e7          	jalr	928(ra) # 80004c9c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003904:	0014849b          	addiw	s1,s1,1
    80003908:	0ff4f493          	andi	s1,s1,255
    8000390c:	00f00793          	li	a5,15
    80003910:	fc97f0e3          	bgeu	a5,s1,800038d0 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003914:	00006517          	auipc	a0,0x6
    80003918:	ae450513          	addi	a0,a0,-1308 # 800093f8 <CONSOLE_STATUS+0x3e8>
    8000391c:	00001097          	auipc	ra,0x1
    80003920:	380080e7          	jalr	896(ra) # 80004c9c <_Z11printStringPKc>
    finishedD = true;
    80003924:	00100793          	li	a5,1
    80003928:	00008717          	auipc	a4,0x8
    8000392c:	c6f70da3          	sb	a5,-901(a4) # 8000b5a3 <_ZL9finishedD>
    thread_dispatch();
    80003930:	ffffe097          	auipc	ra,0xffffe
    80003934:	944080e7          	jalr	-1724(ra) # 80001274 <thread_dispatch>
}
    80003938:	01813083          	ld	ra,24(sp)
    8000393c:	01013403          	ld	s0,16(sp)
    80003940:	00813483          	ld	s1,8(sp)
    80003944:	00013903          	ld	s2,0(sp)
    80003948:	02010113          	addi	sp,sp,32
    8000394c:	00008067          	ret

0000000080003950 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003950:	fc010113          	addi	sp,sp,-64
    80003954:	02113c23          	sd	ra,56(sp)
    80003958:	02813823          	sd	s0,48(sp)
    8000395c:	02913423          	sd	s1,40(sp)
    80003960:	03213023          	sd	s2,32(sp)
    80003964:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003968:	02000513          	li	a0,32
    8000396c:	ffffe097          	auipc	ra,0xffffe
    80003970:	478080e7          	jalr	1144(ra) # 80001de4 <_Znwm>
    80003974:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003978:	ffffe097          	auipc	ra,0xffffe
    8000397c:	574080e7          	jalr	1396(ra) # 80001eec <_ZN6ThreadC1Ev>
    80003980:	00008797          	auipc	a5,0x8
    80003984:	a1078793          	addi	a5,a5,-1520 # 8000b390 <_ZTV7WorkerA+0x10>
    80003988:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    8000398c:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003990:	00006517          	auipc	a0,0x6
    80003994:	a7850513          	addi	a0,a0,-1416 # 80009408 <CONSOLE_STATUS+0x3f8>
    80003998:	00001097          	auipc	ra,0x1
    8000399c:	304080e7          	jalr	772(ra) # 80004c9c <_Z11printStringPKc>

    threads[1] = new WorkerB();
    800039a0:	02000513          	li	a0,32
    800039a4:	ffffe097          	auipc	ra,0xffffe
    800039a8:	440080e7          	jalr	1088(ra) # 80001de4 <_Znwm>
    800039ac:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    800039b0:	ffffe097          	auipc	ra,0xffffe
    800039b4:	53c080e7          	jalr	1340(ra) # 80001eec <_ZN6ThreadC1Ev>
    800039b8:	00008797          	auipc	a5,0x8
    800039bc:	a0078793          	addi	a5,a5,-1536 # 8000b3b8 <_ZTV7WorkerB+0x10>
    800039c0:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    800039c4:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    800039c8:	00006517          	auipc	a0,0x6
    800039cc:	a5850513          	addi	a0,a0,-1448 # 80009420 <CONSOLE_STATUS+0x410>
    800039d0:	00001097          	auipc	ra,0x1
    800039d4:	2cc080e7          	jalr	716(ra) # 80004c9c <_Z11printStringPKc>

    threads[2] = new WorkerC();
    800039d8:	02000513          	li	a0,32
    800039dc:	ffffe097          	auipc	ra,0xffffe
    800039e0:	408080e7          	jalr	1032(ra) # 80001de4 <_Znwm>
    800039e4:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    800039e8:	ffffe097          	auipc	ra,0xffffe
    800039ec:	504080e7          	jalr	1284(ra) # 80001eec <_ZN6ThreadC1Ev>
    800039f0:	00008797          	auipc	a5,0x8
    800039f4:	9f078793          	addi	a5,a5,-1552 # 8000b3e0 <_ZTV7WorkerC+0x10>
    800039f8:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    800039fc:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003a00:	00006517          	auipc	a0,0x6
    80003a04:	a3850513          	addi	a0,a0,-1480 # 80009438 <CONSOLE_STATUS+0x428>
    80003a08:	00001097          	auipc	ra,0x1
    80003a0c:	294080e7          	jalr	660(ra) # 80004c9c <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003a10:	02000513          	li	a0,32
    80003a14:	ffffe097          	auipc	ra,0xffffe
    80003a18:	3d0080e7          	jalr	976(ra) # 80001de4 <_Znwm>
    80003a1c:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003a20:	ffffe097          	auipc	ra,0xffffe
    80003a24:	4cc080e7          	jalr	1228(ra) # 80001eec <_ZN6ThreadC1Ev>
    80003a28:	00008797          	auipc	a5,0x8
    80003a2c:	9e078793          	addi	a5,a5,-1568 # 8000b408 <_ZTV7WorkerD+0x10>
    80003a30:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80003a34:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003a38:	00006517          	auipc	a0,0x6
    80003a3c:	a1850513          	addi	a0,a0,-1512 # 80009450 <CONSOLE_STATUS+0x440>
    80003a40:	00001097          	auipc	ra,0x1
    80003a44:	25c080e7          	jalr	604(ra) # 80004c9c <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003a48:	00000493          	li	s1,0
    80003a4c:	00300793          	li	a5,3
    80003a50:	0297c663          	blt	a5,s1,80003a7c <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003a54:	00349793          	slli	a5,s1,0x3
    80003a58:	fe040713          	addi	a4,s0,-32
    80003a5c:	00f707b3          	add	a5,a4,a5
    80003a60:	fe07b503          	ld	a0,-32(a5)
    80003a64:	ffffe097          	auipc	ra,0xffffe
    80003a68:	518080e7          	jalr	1304(ra) # 80001f7c <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003a6c:	0014849b          	addiw	s1,s1,1
    80003a70:	fddff06f          	j	80003a4c <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80003a74:	ffffe097          	auipc	ra,0xffffe
    80003a78:	55c080e7          	jalr	1372(ra) # 80001fd0 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003a7c:	00008797          	auipc	a5,0x8
    80003a80:	b247c783          	lbu	a5,-1244(a5) # 8000b5a0 <_ZL9finishedA>
    80003a84:	fe0788e3          	beqz	a5,80003a74 <_Z20Threads_CPP_API_testv+0x124>
    80003a88:	00008797          	auipc	a5,0x8
    80003a8c:	b197c783          	lbu	a5,-1255(a5) # 8000b5a1 <_ZL9finishedB>
    80003a90:	fe0782e3          	beqz	a5,80003a74 <_Z20Threads_CPP_API_testv+0x124>
    80003a94:	00008797          	auipc	a5,0x8
    80003a98:	b0e7c783          	lbu	a5,-1266(a5) # 8000b5a2 <_ZL9finishedC>
    80003a9c:	fc078ce3          	beqz	a5,80003a74 <_Z20Threads_CPP_API_testv+0x124>
    80003aa0:	00008797          	auipc	a5,0x8
    80003aa4:	b037c783          	lbu	a5,-1277(a5) # 8000b5a3 <_ZL9finishedD>
    80003aa8:	fc0786e3          	beqz	a5,80003a74 <_Z20Threads_CPP_API_testv+0x124>
    80003aac:	fc040493          	addi	s1,s0,-64
    80003ab0:	0080006f          	j	80003ab8 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80003ab4:	00848493          	addi	s1,s1,8
    80003ab8:	fe040793          	addi	a5,s0,-32
    80003abc:	08f48663          	beq	s1,a5,80003b48 <_Z20Threads_CPP_API_testv+0x1f8>
    80003ac0:	0004b503          	ld	a0,0(s1)
    80003ac4:	fe0508e3          	beqz	a0,80003ab4 <_Z20Threads_CPP_API_testv+0x164>
    80003ac8:	00053783          	ld	a5,0(a0)
    80003acc:	0087b783          	ld	a5,8(a5)
    80003ad0:	000780e7          	jalr	a5
    80003ad4:	fe1ff06f          	j	80003ab4 <_Z20Threads_CPP_API_testv+0x164>
    80003ad8:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80003adc:	00048513          	mv	a0,s1
    80003ae0:	ffffe097          	auipc	ra,0xffffe
    80003ae4:	354080e7          	jalr	852(ra) # 80001e34 <_ZdlPv>
    80003ae8:	00090513          	mv	a0,s2
    80003aec:	00009097          	auipc	ra,0x9
    80003af0:	bac080e7          	jalr	-1108(ra) # 8000c698 <_Unwind_Resume>
    80003af4:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003af8:	00048513          	mv	a0,s1
    80003afc:	ffffe097          	auipc	ra,0xffffe
    80003b00:	338080e7          	jalr	824(ra) # 80001e34 <_ZdlPv>
    80003b04:	00090513          	mv	a0,s2
    80003b08:	00009097          	auipc	ra,0x9
    80003b0c:	b90080e7          	jalr	-1136(ra) # 8000c698 <_Unwind_Resume>
    80003b10:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80003b14:	00048513          	mv	a0,s1
    80003b18:	ffffe097          	auipc	ra,0xffffe
    80003b1c:	31c080e7          	jalr	796(ra) # 80001e34 <_ZdlPv>
    80003b20:	00090513          	mv	a0,s2
    80003b24:	00009097          	auipc	ra,0x9
    80003b28:	b74080e7          	jalr	-1164(ra) # 8000c698 <_Unwind_Resume>
    80003b2c:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003b30:	00048513          	mv	a0,s1
    80003b34:	ffffe097          	auipc	ra,0xffffe
    80003b38:	300080e7          	jalr	768(ra) # 80001e34 <_ZdlPv>
    80003b3c:	00090513          	mv	a0,s2
    80003b40:	00009097          	auipc	ra,0x9
    80003b44:	b58080e7          	jalr	-1192(ra) # 8000c698 <_Unwind_Resume>
}
    80003b48:	03813083          	ld	ra,56(sp)
    80003b4c:	03013403          	ld	s0,48(sp)
    80003b50:	02813483          	ld	s1,40(sp)
    80003b54:	02013903          	ld	s2,32(sp)
    80003b58:	04010113          	addi	sp,sp,64
    80003b5c:	00008067          	ret

0000000080003b60 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003b60:	ff010113          	addi	sp,sp,-16
    80003b64:	00113423          	sd	ra,8(sp)
    80003b68:	00813023          	sd	s0,0(sp)
    80003b6c:	01010413          	addi	s0,sp,16
    80003b70:	00008797          	auipc	a5,0x8
    80003b74:	82078793          	addi	a5,a5,-2016 # 8000b390 <_ZTV7WorkerA+0x10>
    80003b78:	00f53023          	sd	a5,0(a0)
    80003b7c:	ffffe097          	auipc	ra,0xffffe
    80003b80:	1ec080e7          	jalr	492(ra) # 80001d68 <_ZN6ThreadD1Ev>
    80003b84:	00813083          	ld	ra,8(sp)
    80003b88:	00013403          	ld	s0,0(sp)
    80003b8c:	01010113          	addi	sp,sp,16
    80003b90:	00008067          	ret

0000000080003b94 <_ZN7WorkerAD0Ev>:
    80003b94:	fe010113          	addi	sp,sp,-32
    80003b98:	00113c23          	sd	ra,24(sp)
    80003b9c:	00813823          	sd	s0,16(sp)
    80003ba0:	00913423          	sd	s1,8(sp)
    80003ba4:	02010413          	addi	s0,sp,32
    80003ba8:	00050493          	mv	s1,a0
    80003bac:	00007797          	auipc	a5,0x7
    80003bb0:	7e478793          	addi	a5,a5,2020 # 8000b390 <_ZTV7WorkerA+0x10>
    80003bb4:	00f53023          	sd	a5,0(a0)
    80003bb8:	ffffe097          	auipc	ra,0xffffe
    80003bbc:	1b0080e7          	jalr	432(ra) # 80001d68 <_ZN6ThreadD1Ev>
    80003bc0:	00048513          	mv	a0,s1
    80003bc4:	ffffe097          	auipc	ra,0xffffe
    80003bc8:	270080e7          	jalr	624(ra) # 80001e34 <_ZdlPv>
    80003bcc:	01813083          	ld	ra,24(sp)
    80003bd0:	01013403          	ld	s0,16(sp)
    80003bd4:	00813483          	ld	s1,8(sp)
    80003bd8:	02010113          	addi	sp,sp,32
    80003bdc:	00008067          	ret

0000000080003be0 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003be0:	ff010113          	addi	sp,sp,-16
    80003be4:	00113423          	sd	ra,8(sp)
    80003be8:	00813023          	sd	s0,0(sp)
    80003bec:	01010413          	addi	s0,sp,16
    80003bf0:	00007797          	auipc	a5,0x7
    80003bf4:	7c878793          	addi	a5,a5,1992 # 8000b3b8 <_ZTV7WorkerB+0x10>
    80003bf8:	00f53023          	sd	a5,0(a0)
    80003bfc:	ffffe097          	auipc	ra,0xffffe
    80003c00:	16c080e7          	jalr	364(ra) # 80001d68 <_ZN6ThreadD1Ev>
    80003c04:	00813083          	ld	ra,8(sp)
    80003c08:	00013403          	ld	s0,0(sp)
    80003c0c:	01010113          	addi	sp,sp,16
    80003c10:	00008067          	ret

0000000080003c14 <_ZN7WorkerBD0Ev>:
    80003c14:	fe010113          	addi	sp,sp,-32
    80003c18:	00113c23          	sd	ra,24(sp)
    80003c1c:	00813823          	sd	s0,16(sp)
    80003c20:	00913423          	sd	s1,8(sp)
    80003c24:	02010413          	addi	s0,sp,32
    80003c28:	00050493          	mv	s1,a0
    80003c2c:	00007797          	auipc	a5,0x7
    80003c30:	78c78793          	addi	a5,a5,1932 # 8000b3b8 <_ZTV7WorkerB+0x10>
    80003c34:	00f53023          	sd	a5,0(a0)
    80003c38:	ffffe097          	auipc	ra,0xffffe
    80003c3c:	130080e7          	jalr	304(ra) # 80001d68 <_ZN6ThreadD1Ev>
    80003c40:	00048513          	mv	a0,s1
    80003c44:	ffffe097          	auipc	ra,0xffffe
    80003c48:	1f0080e7          	jalr	496(ra) # 80001e34 <_ZdlPv>
    80003c4c:	01813083          	ld	ra,24(sp)
    80003c50:	01013403          	ld	s0,16(sp)
    80003c54:	00813483          	ld	s1,8(sp)
    80003c58:	02010113          	addi	sp,sp,32
    80003c5c:	00008067          	ret

0000000080003c60 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003c60:	ff010113          	addi	sp,sp,-16
    80003c64:	00113423          	sd	ra,8(sp)
    80003c68:	00813023          	sd	s0,0(sp)
    80003c6c:	01010413          	addi	s0,sp,16
    80003c70:	00007797          	auipc	a5,0x7
    80003c74:	77078793          	addi	a5,a5,1904 # 8000b3e0 <_ZTV7WorkerC+0x10>
    80003c78:	00f53023          	sd	a5,0(a0)
    80003c7c:	ffffe097          	auipc	ra,0xffffe
    80003c80:	0ec080e7          	jalr	236(ra) # 80001d68 <_ZN6ThreadD1Ev>
    80003c84:	00813083          	ld	ra,8(sp)
    80003c88:	00013403          	ld	s0,0(sp)
    80003c8c:	01010113          	addi	sp,sp,16
    80003c90:	00008067          	ret

0000000080003c94 <_ZN7WorkerCD0Ev>:
    80003c94:	fe010113          	addi	sp,sp,-32
    80003c98:	00113c23          	sd	ra,24(sp)
    80003c9c:	00813823          	sd	s0,16(sp)
    80003ca0:	00913423          	sd	s1,8(sp)
    80003ca4:	02010413          	addi	s0,sp,32
    80003ca8:	00050493          	mv	s1,a0
    80003cac:	00007797          	auipc	a5,0x7
    80003cb0:	73478793          	addi	a5,a5,1844 # 8000b3e0 <_ZTV7WorkerC+0x10>
    80003cb4:	00f53023          	sd	a5,0(a0)
    80003cb8:	ffffe097          	auipc	ra,0xffffe
    80003cbc:	0b0080e7          	jalr	176(ra) # 80001d68 <_ZN6ThreadD1Ev>
    80003cc0:	00048513          	mv	a0,s1
    80003cc4:	ffffe097          	auipc	ra,0xffffe
    80003cc8:	170080e7          	jalr	368(ra) # 80001e34 <_ZdlPv>
    80003ccc:	01813083          	ld	ra,24(sp)
    80003cd0:	01013403          	ld	s0,16(sp)
    80003cd4:	00813483          	ld	s1,8(sp)
    80003cd8:	02010113          	addi	sp,sp,32
    80003cdc:	00008067          	ret

0000000080003ce0 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80003ce0:	ff010113          	addi	sp,sp,-16
    80003ce4:	00113423          	sd	ra,8(sp)
    80003ce8:	00813023          	sd	s0,0(sp)
    80003cec:	01010413          	addi	s0,sp,16
    80003cf0:	00007797          	auipc	a5,0x7
    80003cf4:	71878793          	addi	a5,a5,1816 # 8000b408 <_ZTV7WorkerD+0x10>
    80003cf8:	00f53023          	sd	a5,0(a0)
    80003cfc:	ffffe097          	auipc	ra,0xffffe
    80003d00:	06c080e7          	jalr	108(ra) # 80001d68 <_ZN6ThreadD1Ev>
    80003d04:	00813083          	ld	ra,8(sp)
    80003d08:	00013403          	ld	s0,0(sp)
    80003d0c:	01010113          	addi	sp,sp,16
    80003d10:	00008067          	ret

0000000080003d14 <_ZN7WorkerDD0Ev>:
    80003d14:	fe010113          	addi	sp,sp,-32
    80003d18:	00113c23          	sd	ra,24(sp)
    80003d1c:	00813823          	sd	s0,16(sp)
    80003d20:	00913423          	sd	s1,8(sp)
    80003d24:	02010413          	addi	s0,sp,32
    80003d28:	00050493          	mv	s1,a0
    80003d2c:	00007797          	auipc	a5,0x7
    80003d30:	6dc78793          	addi	a5,a5,1756 # 8000b408 <_ZTV7WorkerD+0x10>
    80003d34:	00f53023          	sd	a5,0(a0)
    80003d38:	ffffe097          	auipc	ra,0xffffe
    80003d3c:	030080e7          	jalr	48(ra) # 80001d68 <_ZN6ThreadD1Ev>
    80003d40:	00048513          	mv	a0,s1
    80003d44:	ffffe097          	auipc	ra,0xffffe
    80003d48:	0f0080e7          	jalr	240(ra) # 80001e34 <_ZdlPv>
    80003d4c:	01813083          	ld	ra,24(sp)
    80003d50:	01013403          	ld	s0,16(sp)
    80003d54:	00813483          	ld	s1,8(sp)
    80003d58:	02010113          	addi	sp,sp,32
    80003d5c:	00008067          	ret

0000000080003d60 <_ZN7WorkerA3runEv>:
    void run() override {
    80003d60:	ff010113          	addi	sp,sp,-16
    80003d64:	00113423          	sd	ra,8(sp)
    80003d68:	00813023          	sd	s0,0(sp)
    80003d6c:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80003d70:	00000593          	li	a1,0
    80003d74:	fffff097          	auipc	ra,0xfffff
    80003d78:	774080e7          	jalr	1908(ra) # 800034e8 <_ZN7WorkerA11workerBodyAEPv>
    }
    80003d7c:	00813083          	ld	ra,8(sp)
    80003d80:	00013403          	ld	s0,0(sp)
    80003d84:	01010113          	addi	sp,sp,16
    80003d88:	00008067          	ret

0000000080003d8c <_ZN7WorkerB3runEv>:
    void run() override {
    80003d8c:	ff010113          	addi	sp,sp,-16
    80003d90:	00113423          	sd	ra,8(sp)
    80003d94:	00813023          	sd	s0,0(sp)
    80003d98:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80003d9c:	00000593          	li	a1,0
    80003da0:	00000097          	auipc	ra,0x0
    80003da4:	814080e7          	jalr	-2028(ra) # 800035b4 <_ZN7WorkerB11workerBodyBEPv>
    }
    80003da8:	00813083          	ld	ra,8(sp)
    80003dac:	00013403          	ld	s0,0(sp)
    80003db0:	01010113          	addi	sp,sp,16
    80003db4:	00008067          	ret

0000000080003db8 <_ZN7WorkerC3runEv>:
    void run() override {
    80003db8:	ff010113          	addi	sp,sp,-16
    80003dbc:	00113423          	sd	ra,8(sp)
    80003dc0:	00813023          	sd	s0,0(sp)
    80003dc4:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80003dc8:	00000593          	li	a1,0
    80003dcc:	00000097          	auipc	ra,0x0
    80003dd0:	8bc080e7          	jalr	-1860(ra) # 80003688 <_ZN7WorkerC11workerBodyCEPv>
    }
    80003dd4:	00813083          	ld	ra,8(sp)
    80003dd8:	00013403          	ld	s0,0(sp)
    80003ddc:	01010113          	addi	sp,sp,16
    80003de0:	00008067          	ret

0000000080003de4 <_ZN7WorkerD3runEv>:
    void run() override {
    80003de4:	ff010113          	addi	sp,sp,-16
    80003de8:	00113423          	sd	ra,8(sp)
    80003dec:	00813023          	sd	s0,0(sp)
    80003df0:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80003df4:	00000593          	li	a1,0
    80003df8:	00000097          	auipc	ra,0x0
    80003dfc:	a10080e7          	jalr	-1520(ra) # 80003808 <_ZN7WorkerD11workerBodyDEPv>
    }
    80003e00:	00813083          	ld	ra,8(sp)
    80003e04:	00013403          	ld	s0,0(sp)
    80003e08:	01010113          	addi	sp,sp,16
    80003e0c:	00008067          	ret

0000000080003e10 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003e10:	fe010113          	addi	sp,sp,-32
    80003e14:	00113c23          	sd	ra,24(sp)
    80003e18:	00813823          	sd	s0,16(sp)
    80003e1c:	00913423          	sd	s1,8(sp)
    80003e20:	01213023          	sd	s2,0(sp)
    80003e24:	02010413          	addi	s0,sp,32
    80003e28:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003e2c:	00100793          	li	a5,1
    80003e30:	02a7f863          	bgeu	a5,a0,80003e60 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003e34:	00a00793          	li	a5,10
    80003e38:	02f577b3          	remu	a5,a0,a5
    80003e3c:	02078e63          	beqz	a5,80003e78 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003e40:	fff48513          	addi	a0,s1,-1
    80003e44:	00000097          	auipc	ra,0x0
    80003e48:	fcc080e7          	jalr	-52(ra) # 80003e10 <_ZL9fibonaccim>
    80003e4c:	00050913          	mv	s2,a0
    80003e50:	ffe48513          	addi	a0,s1,-2
    80003e54:	00000097          	auipc	ra,0x0
    80003e58:	fbc080e7          	jalr	-68(ra) # 80003e10 <_ZL9fibonaccim>
    80003e5c:	00a90533          	add	a0,s2,a0
}
    80003e60:	01813083          	ld	ra,24(sp)
    80003e64:	01013403          	ld	s0,16(sp)
    80003e68:	00813483          	ld	s1,8(sp)
    80003e6c:	00013903          	ld	s2,0(sp)
    80003e70:	02010113          	addi	sp,sp,32
    80003e74:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003e78:	ffffd097          	auipc	ra,0xffffd
    80003e7c:	3fc080e7          	jalr	1020(ra) # 80001274 <thread_dispatch>
    80003e80:	fc1ff06f          	j	80003e40 <_ZL9fibonaccim+0x30>

0000000080003e84 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80003e84:	fe010113          	addi	sp,sp,-32
    80003e88:	00113c23          	sd	ra,24(sp)
    80003e8c:	00813823          	sd	s0,16(sp)
    80003e90:	00913423          	sd	s1,8(sp)
    80003e94:	01213023          	sd	s2,0(sp)
    80003e98:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003e9c:	00a00493          	li	s1,10
    80003ea0:	0400006f          	j	80003ee0 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003ea4:	00005517          	auipc	a0,0x5
    80003ea8:	1bc50513          	addi	a0,a0,444 # 80009060 <CONSOLE_STATUS+0x50>
    80003eac:	00001097          	auipc	ra,0x1
    80003eb0:	df0080e7          	jalr	-528(ra) # 80004c9c <_Z11printStringPKc>
    80003eb4:	00000613          	li	a2,0
    80003eb8:	00a00593          	li	a1,10
    80003ebc:	00048513          	mv	a0,s1
    80003ec0:	00001097          	auipc	ra,0x1
    80003ec4:	f8c080e7          	jalr	-116(ra) # 80004e4c <_Z8printIntiii>
    80003ec8:	00005517          	auipc	a0,0x5
    80003ecc:	72850513          	addi	a0,a0,1832 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80003ed0:	00001097          	auipc	ra,0x1
    80003ed4:	dcc080e7          	jalr	-564(ra) # 80004c9c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003ed8:	0014849b          	addiw	s1,s1,1
    80003edc:	0ff4f493          	andi	s1,s1,255
    80003ee0:	00c00793          	li	a5,12
    80003ee4:	fc97f0e3          	bgeu	a5,s1,80003ea4 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80003ee8:	00005517          	auipc	a0,0x5
    80003eec:	50050513          	addi	a0,a0,1280 # 800093e8 <CONSOLE_STATUS+0x3d8>
    80003ef0:	00001097          	auipc	ra,0x1
    80003ef4:	dac080e7          	jalr	-596(ra) # 80004c9c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003ef8:	00500313          	li	t1,5
    thread_dispatch();
    80003efc:	ffffd097          	auipc	ra,0xffffd
    80003f00:	378080e7          	jalr	888(ra) # 80001274 <thread_dispatch>

    uint64 result = fibonacci(16);
    80003f04:	01000513          	li	a0,16
    80003f08:	00000097          	auipc	ra,0x0
    80003f0c:	f08080e7          	jalr	-248(ra) # 80003e10 <_ZL9fibonaccim>
    80003f10:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003f14:	00005517          	auipc	a0,0x5
    80003f18:	16450513          	addi	a0,a0,356 # 80009078 <CONSOLE_STATUS+0x68>
    80003f1c:	00001097          	auipc	ra,0x1
    80003f20:	d80080e7          	jalr	-640(ra) # 80004c9c <_Z11printStringPKc>
    80003f24:	00000613          	li	a2,0
    80003f28:	00a00593          	li	a1,10
    80003f2c:	0009051b          	sext.w	a0,s2
    80003f30:	00001097          	auipc	ra,0x1
    80003f34:	f1c080e7          	jalr	-228(ra) # 80004e4c <_Z8printIntiii>
    80003f38:	00005517          	auipc	a0,0x5
    80003f3c:	6b850513          	addi	a0,a0,1720 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80003f40:	00001097          	auipc	ra,0x1
    80003f44:	d5c080e7          	jalr	-676(ra) # 80004c9c <_Z11printStringPKc>
    80003f48:	0400006f          	j	80003f88 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003f4c:	00005517          	auipc	a0,0x5
    80003f50:	11450513          	addi	a0,a0,276 # 80009060 <CONSOLE_STATUS+0x50>
    80003f54:	00001097          	auipc	ra,0x1
    80003f58:	d48080e7          	jalr	-696(ra) # 80004c9c <_Z11printStringPKc>
    80003f5c:	00000613          	li	a2,0
    80003f60:	00a00593          	li	a1,10
    80003f64:	00048513          	mv	a0,s1
    80003f68:	00001097          	auipc	ra,0x1
    80003f6c:	ee4080e7          	jalr	-284(ra) # 80004e4c <_Z8printIntiii>
    80003f70:	00005517          	auipc	a0,0x5
    80003f74:	68050513          	addi	a0,a0,1664 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80003f78:	00001097          	auipc	ra,0x1
    80003f7c:	d24080e7          	jalr	-732(ra) # 80004c9c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003f80:	0014849b          	addiw	s1,s1,1
    80003f84:	0ff4f493          	andi	s1,s1,255
    80003f88:	00f00793          	li	a5,15
    80003f8c:	fc97f0e3          	bgeu	a5,s1,80003f4c <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80003f90:	00005517          	auipc	a0,0x5
    80003f94:	46850513          	addi	a0,a0,1128 # 800093f8 <CONSOLE_STATUS+0x3e8>
    80003f98:	00001097          	auipc	ra,0x1
    80003f9c:	d04080e7          	jalr	-764(ra) # 80004c9c <_Z11printStringPKc>
    finishedD = true;
    80003fa0:	00100793          	li	a5,1
    80003fa4:	00007717          	auipc	a4,0x7
    80003fa8:	60f70023          	sb	a5,1536(a4) # 8000b5a4 <_ZL9finishedD>
    thread_dispatch();
    80003fac:	ffffd097          	auipc	ra,0xffffd
    80003fb0:	2c8080e7          	jalr	712(ra) # 80001274 <thread_dispatch>
}
    80003fb4:	01813083          	ld	ra,24(sp)
    80003fb8:	01013403          	ld	s0,16(sp)
    80003fbc:	00813483          	ld	s1,8(sp)
    80003fc0:	00013903          	ld	s2,0(sp)
    80003fc4:	02010113          	addi	sp,sp,32
    80003fc8:	00008067          	ret

0000000080003fcc <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80003fcc:	fe010113          	addi	sp,sp,-32
    80003fd0:	00113c23          	sd	ra,24(sp)
    80003fd4:	00813823          	sd	s0,16(sp)
    80003fd8:	00913423          	sd	s1,8(sp)
    80003fdc:	01213023          	sd	s2,0(sp)
    80003fe0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003fe4:	00000493          	li	s1,0
    80003fe8:	0400006f          	j	80004028 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80003fec:	00005517          	auipc	a0,0x5
    80003ff0:	04450513          	addi	a0,a0,68 # 80009030 <CONSOLE_STATUS+0x20>
    80003ff4:	00001097          	auipc	ra,0x1
    80003ff8:	ca8080e7          	jalr	-856(ra) # 80004c9c <_Z11printStringPKc>
    80003ffc:	00000613          	li	a2,0
    80004000:	00a00593          	li	a1,10
    80004004:	00048513          	mv	a0,s1
    80004008:	00001097          	auipc	ra,0x1
    8000400c:	e44080e7          	jalr	-444(ra) # 80004e4c <_Z8printIntiii>
    80004010:	00005517          	auipc	a0,0x5
    80004014:	5e050513          	addi	a0,a0,1504 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80004018:	00001097          	auipc	ra,0x1
    8000401c:	c84080e7          	jalr	-892(ra) # 80004c9c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004020:	0014849b          	addiw	s1,s1,1
    80004024:	0ff4f493          	andi	s1,s1,255
    80004028:	00200793          	li	a5,2
    8000402c:	fc97f0e3          	bgeu	a5,s1,80003fec <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004030:	00005517          	auipc	a0,0x5
    80004034:	3a850513          	addi	a0,a0,936 # 800093d8 <CONSOLE_STATUS+0x3c8>
    80004038:	00001097          	auipc	ra,0x1
    8000403c:	c64080e7          	jalr	-924(ra) # 80004c9c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004040:	00700313          	li	t1,7
    thread_dispatch();
    80004044:	ffffd097          	auipc	ra,0xffffd
    80004048:	230080e7          	jalr	560(ra) # 80001274 <thread_dispatch>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000404c:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004050:	00005517          	auipc	a0,0x5
    80004054:	ff850513          	addi	a0,a0,-8 # 80009048 <CONSOLE_STATUS+0x38>
    80004058:	00001097          	auipc	ra,0x1
    8000405c:	c44080e7          	jalr	-956(ra) # 80004c9c <_Z11printStringPKc>
    80004060:	00000613          	li	a2,0
    80004064:	00a00593          	li	a1,10
    80004068:	0009051b          	sext.w	a0,s2
    8000406c:	00001097          	auipc	ra,0x1
    80004070:	de0080e7          	jalr	-544(ra) # 80004e4c <_Z8printIntiii>
    80004074:	00005517          	auipc	a0,0x5
    80004078:	57c50513          	addi	a0,a0,1404 # 800095f0 <CONSOLE_STATUS+0x5e0>
    8000407c:	00001097          	auipc	ra,0x1
    80004080:	c20080e7          	jalr	-992(ra) # 80004c9c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004084:	00c00513          	li	a0,12
    80004088:	00000097          	auipc	ra,0x0
    8000408c:	d88080e7          	jalr	-632(ra) # 80003e10 <_ZL9fibonaccim>
    80004090:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004094:	00005517          	auipc	a0,0x5
    80004098:	fbc50513          	addi	a0,a0,-68 # 80009050 <CONSOLE_STATUS+0x40>
    8000409c:	00001097          	auipc	ra,0x1
    800040a0:	c00080e7          	jalr	-1024(ra) # 80004c9c <_Z11printStringPKc>
    800040a4:	00000613          	li	a2,0
    800040a8:	00a00593          	li	a1,10
    800040ac:	0009051b          	sext.w	a0,s2
    800040b0:	00001097          	auipc	ra,0x1
    800040b4:	d9c080e7          	jalr	-612(ra) # 80004e4c <_Z8printIntiii>
    800040b8:	00005517          	auipc	a0,0x5
    800040bc:	53850513          	addi	a0,a0,1336 # 800095f0 <CONSOLE_STATUS+0x5e0>
    800040c0:	00001097          	auipc	ra,0x1
    800040c4:	bdc080e7          	jalr	-1060(ra) # 80004c9c <_Z11printStringPKc>
    800040c8:	0400006f          	j	80004108 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800040cc:	00005517          	auipc	a0,0x5
    800040d0:	f6450513          	addi	a0,a0,-156 # 80009030 <CONSOLE_STATUS+0x20>
    800040d4:	00001097          	auipc	ra,0x1
    800040d8:	bc8080e7          	jalr	-1080(ra) # 80004c9c <_Z11printStringPKc>
    800040dc:	00000613          	li	a2,0
    800040e0:	00a00593          	li	a1,10
    800040e4:	00048513          	mv	a0,s1
    800040e8:	00001097          	auipc	ra,0x1
    800040ec:	d64080e7          	jalr	-668(ra) # 80004e4c <_Z8printIntiii>
    800040f0:	00005517          	auipc	a0,0x5
    800040f4:	50050513          	addi	a0,a0,1280 # 800095f0 <CONSOLE_STATUS+0x5e0>
    800040f8:	00001097          	auipc	ra,0x1
    800040fc:	ba4080e7          	jalr	-1116(ra) # 80004c9c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004100:	0014849b          	addiw	s1,s1,1
    80004104:	0ff4f493          	andi	s1,s1,255
    80004108:	00500793          	li	a5,5
    8000410c:	fc97f0e3          	bgeu	a5,s1,800040cc <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80004110:	00005517          	auipc	a0,0x5
    80004114:	2a850513          	addi	a0,a0,680 # 800093b8 <CONSOLE_STATUS+0x3a8>
    80004118:	00001097          	auipc	ra,0x1
    8000411c:	b84080e7          	jalr	-1148(ra) # 80004c9c <_Z11printStringPKc>
    finishedC = true;
    80004120:	00100793          	li	a5,1
    80004124:	00007717          	auipc	a4,0x7
    80004128:	48f700a3          	sb	a5,1153(a4) # 8000b5a5 <_ZL9finishedC>
    thread_dispatch();
    8000412c:	ffffd097          	auipc	ra,0xffffd
    80004130:	148080e7          	jalr	328(ra) # 80001274 <thread_dispatch>
}
    80004134:	01813083          	ld	ra,24(sp)
    80004138:	01013403          	ld	s0,16(sp)
    8000413c:	00813483          	ld	s1,8(sp)
    80004140:	00013903          	ld	s2,0(sp)
    80004144:	02010113          	addi	sp,sp,32
    80004148:	00008067          	ret

000000008000414c <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    8000414c:	fe010113          	addi	sp,sp,-32
    80004150:	00113c23          	sd	ra,24(sp)
    80004154:	00813823          	sd	s0,16(sp)
    80004158:	00913423          	sd	s1,8(sp)
    8000415c:	01213023          	sd	s2,0(sp)
    80004160:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004164:	00000913          	li	s2,0
    80004168:	0380006f          	j	800041a0 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    8000416c:	ffffd097          	auipc	ra,0xffffd
    80004170:	108080e7          	jalr	264(ra) # 80001274 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80004174:	00148493          	addi	s1,s1,1
    80004178:	000027b7          	lui	a5,0x2
    8000417c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004180:	0097ee63          	bltu	a5,s1,8000419c <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004184:	00000713          	li	a4,0
    80004188:	000077b7          	lui	a5,0x7
    8000418c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004190:	fce7eee3          	bltu	a5,a4,8000416c <_ZL11workerBodyBPv+0x20>
    80004194:	00170713          	addi	a4,a4,1
    80004198:	ff1ff06f          	j	80004188 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    8000419c:	00190913          	addi	s2,s2,1
    800041a0:	00f00793          	li	a5,15
    800041a4:	0527e063          	bltu	a5,s2,800041e4 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800041a8:	00005517          	auipc	a0,0x5
    800041ac:	e8050513          	addi	a0,a0,-384 # 80009028 <CONSOLE_STATUS+0x18>
    800041b0:	00001097          	auipc	ra,0x1
    800041b4:	aec080e7          	jalr	-1300(ra) # 80004c9c <_Z11printStringPKc>
    800041b8:	00000613          	li	a2,0
    800041bc:	00a00593          	li	a1,10
    800041c0:	0009051b          	sext.w	a0,s2
    800041c4:	00001097          	auipc	ra,0x1
    800041c8:	c88080e7          	jalr	-888(ra) # 80004e4c <_Z8printIntiii>
    800041cc:	00005517          	auipc	a0,0x5
    800041d0:	42450513          	addi	a0,a0,1060 # 800095f0 <CONSOLE_STATUS+0x5e0>
    800041d4:	00001097          	auipc	ra,0x1
    800041d8:	ac8080e7          	jalr	-1336(ra) # 80004c9c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800041dc:	00000493          	li	s1,0
    800041e0:	f99ff06f          	j	80004178 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    800041e4:	00005517          	auipc	a0,0x5
    800041e8:	1e450513          	addi	a0,a0,484 # 800093c8 <CONSOLE_STATUS+0x3b8>
    800041ec:	00001097          	auipc	ra,0x1
    800041f0:	ab0080e7          	jalr	-1360(ra) # 80004c9c <_Z11printStringPKc>
    finishedB = true;
    800041f4:	00100793          	li	a5,1
    800041f8:	00007717          	auipc	a4,0x7
    800041fc:	3af70723          	sb	a5,942(a4) # 8000b5a6 <_ZL9finishedB>
    thread_dispatch();
    80004200:	ffffd097          	auipc	ra,0xffffd
    80004204:	074080e7          	jalr	116(ra) # 80001274 <thread_dispatch>
}
    80004208:	01813083          	ld	ra,24(sp)
    8000420c:	01013403          	ld	s0,16(sp)
    80004210:	00813483          	ld	s1,8(sp)
    80004214:	00013903          	ld	s2,0(sp)
    80004218:	02010113          	addi	sp,sp,32
    8000421c:	00008067          	ret

0000000080004220 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004220:	fe010113          	addi	sp,sp,-32
    80004224:	00113c23          	sd	ra,24(sp)
    80004228:	00813823          	sd	s0,16(sp)
    8000422c:	00913423          	sd	s1,8(sp)
    80004230:	01213023          	sd	s2,0(sp)
    80004234:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004238:	00000913          	li	s2,0
    8000423c:	0380006f          	j	80004274 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80004240:	ffffd097          	auipc	ra,0xffffd
    80004244:	034080e7          	jalr	52(ra) # 80001274 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80004248:	00148493          	addi	s1,s1,1
    8000424c:	000027b7          	lui	a5,0x2
    80004250:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004254:	0097ee63          	bltu	a5,s1,80004270 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004258:	00000713          	li	a4,0
    8000425c:	000077b7          	lui	a5,0x7
    80004260:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004264:	fce7eee3          	bltu	a5,a4,80004240 <_ZL11workerBodyAPv+0x20>
    80004268:	00170713          	addi	a4,a4,1
    8000426c:	ff1ff06f          	j	8000425c <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004270:	00190913          	addi	s2,s2,1
    80004274:	00900793          	li	a5,9
    80004278:	0527e063          	bltu	a5,s2,800042b8 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8000427c:	00005517          	auipc	a0,0x5
    80004280:	da450513          	addi	a0,a0,-604 # 80009020 <CONSOLE_STATUS+0x10>
    80004284:	00001097          	auipc	ra,0x1
    80004288:	a18080e7          	jalr	-1512(ra) # 80004c9c <_Z11printStringPKc>
    8000428c:	00000613          	li	a2,0
    80004290:	00a00593          	li	a1,10
    80004294:	0009051b          	sext.w	a0,s2
    80004298:	00001097          	auipc	ra,0x1
    8000429c:	bb4080e7          	jalr	-1100(ra) # 80004e4c <_Z8printIntiii>
    800042a0:	00005517          	auipc	a0,0x5
    800042a4:	35050513          	addi	a0,a0,848 # 800095f0 <CONSOLE_STATUS+0x5e0>
    800042a8:	00001097          	auipc	ra,0x1
    800042ac:	9f4080e7          	jalr	-1548(ra) # 80004c9c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800042b0:	00000493          	li	s1,0
    800042b4:	f99ff06f          	j	8000424c <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800042b8:	00005517          	auipc	a0,0x5
    800042bc:	10050513          	addi	a0,a0,256 # 800093b8 <CONSOLE_STATUS+0x3a8>
    800042c0:	00001097          	auipc	ra,0x1
    800042c4:	9dc080e7          	jalr	-1572(ra) # 80004c9c <_Z11printStringPKc>
    finishedA = true;
    800042c8:	00100793          	li	a5,1
    800042cc:	00007717          	auipc	a4,0x7
    800042d0:	2cf70da3          	sb	a5,731(a4) # 8000b5a7 <_ZL9finishedA>
}
    800042d4:	01813083          	ld	ra,24(sp)
    800042d8:	01013403          	ld	s0,16(sp)
    800042dc:	00813483          	ld	s1,8(sp)
    800042e0:	00013903          	ld	s2,0(sp)
    800042e4:	02010113          	addi	sp,sp,32
    800042e8:	00008067          	ret

00000000800042ec <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    800042ec:	fd010113          	addi	sp,sp,-48
    800042f0:	02113423          	sd	ra,40(sp)
    800042f4:	02813023          	sd	s0,32(sp)
    800042f8:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800042fc:	00000613          	li	a2,0
    80004300:	00000597          	auipc	a1,0x0
    80004304:	f2058593          	addi	a1,a1,-224 # 80004220 <_ZL11workerBodyAPv>
    80004308:	fd040513          	addi	a0,s0,-48
    8000430c:	ffffd097          	auipc	ra,0xffffd
    80004310:	ec8080e7          	jalr	-312(ra) # 800011d4 <thread_create>
    printString("ThreadA created\n");
    80004314:	00005517          	auipc	a0,0x5
    80004318:	0f450513          	addi	a0,a0,244 # 80009408 <CONSOLE_STATUS+0x3f8>
    8000431c:	00001097          	auipc	ra,0x1
    80004320:	980080e7          	jalr	-1664(ra) # 80004c9c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004324:	00000613          	li	a2,0
    80004328:	00000597          	auipc	a1,0x0
    8000432c:	e2458593          	addi	a1,a1,-476 # 8000414c <_ZL11workerBodyBPv>
    80004330:	fd840513          	addi	a0,s0,-40
    80004334:	ffffd097          	auipc	ra,0xffffd
    80004338:	ea0080e7          	jalr	-352(ra) # 800011d4 <thread_create>
    printString("ThreadB created\n");
    8000433c:	00005517          	auipc	a0,0x5
    80004340:	0e450513          	addi	a0,a0,228 # 80009420 <CONSOLE_STATUS+0x410>
    80004344:	00001097          	auipc	ra,0x1
    80004348:	958080e7          	jalr	-1704(ra) # 80004c9c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    8000434c:	00000613          	li	a2,0
    80004350:	00000597          	auipc	a1,0x0
    80004354:	c7c58593          	addi	a1,a1,-900 # 80003fcc <_ZL11workerBodyCPv>
    80004358:	fe040513          	addi	a0,s0,-32
    8000435c:	ffffd097          	auipc	ra,0xffffd
    80004360:	e78080e7          	jalr	-392(ra) # 800011d4 <thread_create>
    printString("ThreadC created\n");
    80004364:	00005517          	auipc	a0,0x5
    80004368:	0d450513          	addi	a0,a0,212 # 80009438 <CONSOLE_STATUS+0x428>
    8000436c:	00001097          	auipc	ra,0x1
    80004370:	930080e7          	jalr	-1744(ra) # 80004c9c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004374:	00000613          	li	a2,0
    80004378:	00000597          	auipc	a1,0x0
    8000437c:	b0c58593          	addi	a1,a1,-1268 # 80003e84 <_ZL11workerBodyDPv>
    80004380:	fe840513          	addi	a0,s0,-24
    80004384:	ffffd097          	auipc	ra,0xffffd
    80004388:	e50080e7          	jalr	-432(ra) # 800011d4 <thread_create>
    printString("ThreadD created\n");
    8000438c:	00005517          	auipc	a0,0x5
    80004390:	0c450513          	addi	a0,a0,196 # 80009450 <CONSOLE_STATUS+0x440>
    80004394:	00001097          	auipc	ra,0x1
    80004398:	908080e7          	jalr	-1784(ra) # 80004c9c <_Z11printStringPKc>
    8000439c:	00c0006f          	j	800043a8 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800043a0:	ffffd097          	auipc	ra,0xffffd
    800043a4:	ed4080e7          	jalr	-300(ra) # 80001274 <thread_dispatch>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800043a8:	00007797          	auipc	a5,0x7
    800043ac:	1ff7c783          	lbu	a5,511(a5) # 8000b5a7 <_ZL9finishedA>
    800043b0:	fe0788e3          	beqz	a5,800043a0 <_Z18Threads_C_API_testv+0xb4>
    800043b4:	00007797          	auipc	a5,0x7
    800043b8:	1f27c783          	lbu	a5,498(a5) # 8000b5a6 <_ZL9finishedB>
    800043bc:	fe0782e3          	beqz	a5,800043a0 <_Z18Threads_C_API_testv+0xb4>
    800043c0:	00007797          	auipc	a5,0x7
    800043c4:	1e57c783          	lbu	a5,485(a5) # 8000b5a5 <_ZL9finishedC>
    800043c8:	fc078ce3          	beqz	a5,800043a0 <_Z18Threads_C_API_testv+0xb4>
    800043cc:	00007797          	auipc	a5,0x7
    800043d0:	1d87c783          	lbu	a5,472(a5) # 8000b5a4 <_ZL9finishedD>
    800043d4:	fc0786e3          	beqz	a5,800043a0 <_Z18Threads_C_API_testv+0xb4>
    }

}
    800043d8:	02813083          	ld	ra,40(sp)
    800043dc:	02013403          	ld	s0,32(sp)
    800043e0:	03010113          	addi	sp,sp,48
    800043e4:	00008067          	ret

00000000800043e8 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    800043e8:	fd010113          	addi	sp,sp,-48
    800043ec:	02113423          	sd	ra,40(sp)
    800043f0:	02813023          	sd	s0,32(sp)
    800043f4:	00913c23          	sd	s1,24(sp)
    800043f8:	01213823          	sd	s2,16(sp)
    800043fc:	01313423          	sd	s3,8(sp)
    80004400:	03010413          	addi	s0,sp,48
    80004404:	00050993          	mv	s3,a0
    80004408:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    8000440c:	00000913          	li	s2,0
    80004410:	00c0006f          	j	8000441c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
        data->buffer->put(key);
        printString("\n");
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004414:	ffffe097          	auipc	ra,0xffffe
    80004418:	bbc080e7          	jalr	-1092(ra) # 80001fd0 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x30) {
    8000441c:	ffffd097          	auipc	ra,0xffffd
    80004420:	040080e7          	jalr	64(ra) # 8000145c <getc>
    80004424:	0005059b          	sext.w	a1,a0
    80004428:	03000793          	li	a5,48
    8000442c:	04f58263          	beq	a1,a5,80004470 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x88>
        data->buffer->put(key);
    80004430:	0084b503          	ld	a0,8(s1)
    80004434:	00001097          	auipc	ra,0x1
    80004438:	c8c080e7          	jalr	-884(ra) # 800050c0 <_ZN9BufferCPP3putEi>
        printString("\n");
    8000443c:	00005517          	auipc	a0,0x5
    80004440:	1b450513          	addi	a0,a0,436 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80004444:	00001097          	auipc	ra,0x1
    80004448:	858080e7          	jalr	-1960(ra) # 80004c9c <_Z11printStringPKc>
        i++;
    8000444c:	0019071b          	addiw	a4,s2,1
    80004450:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004454:	0004a683          	lw	a3,0(s1)
    80004458:	0026979b          	slliw	a5,a3,0x2
    8000445c:	00d787bb          	addw	a5,a5,a3
    80004460:	0017979b          	slliw	a5,a5,0x1
    80004464:	02f767bb          	remw	a5,a4,a5
    80004468:	fa079ae3          	bnez	a5,8000441c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    8000446c:	fa9ff06f          	j	80004414 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80004470:	00100793          	li	a5,1
    80004474:	00007717          	auipc	a4,0x7
    80004478:	12f72a23          	sw	a5,308(a4) # 8000b5a8 <_ZL9threadEnd>
    td->buffer->put('!');
    8000447c:	0209b783          	ld	a5,32(s3)
    80004480:	02100593          	li	a1,33
    80004484:	0087b503          	ld	a0,8(a5)
    80004488:	00001097          	auipc	ra,0x1
    8000448c:	c38080e7          	jalr	-968(ra) # 800050c0 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80004490:	0104b503          	ld	a0,16(s1)
    80004494:	ffffe097          	auipc	ra,0xffffe
    80004498:	bcc080e7          	jalr	-1076(ra) # 80002060 <_ZN9Semaphore6signalEv>
}
    8000449c:	02813083          	ld	ra,40(sp)
    800044a0:	02013403          	ld	s0,32(sp)
    800044a4:	01813483          	ld	s1,24(sp)
    800044a8:	01013903          	ld	s2,16(sp)
    800044ac:	00813983          	ld	s3,8(sp)
    800044b0:	03010113          	addi	sp,sp,48
    800044b4:	00008067          	ret

00000000800044b8 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    800044b8:	fd010113          	addi	sp,sp,-48
    800044bc:	02113423          	sd	ra,40(sp)
    800044c0:	02813023          	sd	s0,32(sp)
    800044c4:	00913c23          	sd	s1,24(sp)
    800044c8:	01213823          	sd	s2,16(sp)
    800044cc:	01313423          	sd	s3,8(sp)
    800044d0:	03010413          	addi	s0,sp,48
    800044d4:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800044d8:	00000993          	li	s3,0
    800044dc:	00c0006f          	j	800044e8 <_ZN12ProducerSync8producerEPv+0x30>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;
        printString("\n");
        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800044e0:	ffffe097          	auipc	ra,0xffffe
    800044e4:	af0080e7          	jalr	-1296(ra) # 80001fd0 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    800044e8:	00007797          	auipc	a5,0x7
    800044ec:	0c07a783          	lw	a5,192(a5) # 8000b5a8 <_ZL9threadEnd>
    800044f0:	04079663          	bnez	a5,8000453c <_ZN12ProducerSync8producerEPv+0x84>
        data->buffer->put(data->id + '0');
    800044f4:	00092583          	lw	a1,0(s2)
    800044f8:	0305859b          	addiw	a1,a1,48
    800044fc:	00893503          	ld	a0,8(s2)
    80004500:	00001097          	auipc	ra,0x1
    80004504:	bc0080e7          	jalr	-1088(ra) # 800050c0 <_ZN9BufferCPP3putEi>
        i++;
    80004508:	0019849b          	addiw	s1,s3,1
    8000450c:	0004899b          	sext.w	s3,s1
        printString("\n");
    80004510:	00005517          	auipc	a0,0x5
    80004514:	0e050513          	addi	a0,a0,224 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80004518:	00000097          	auipc	ra,0x0
    8000451c:	784080e7          	jalr	1924(ra) # 80004c9c <_Z11printStringPKc>
        if (i % (10 * data->id) == 0) {
    80004520:	00092703          	lw	a4,0(s2)
    80004524:	0027179b          	slliw	a5,a4,0x2
    80004528:	00e787bb          	addw	a5,a5,a4
    8000452c:	0017979b          	slliw	a5,a5,0x1
    80004530:	02f4e7bb          	remw	a5,s1,a5
    80004534:	fa079ae3          	bnez	a5,800044e8 <_ZN12ProducerSync8producerEPv+0x30>
    80004538:	fa9ff06f          	j	800044e0 <_ZN12ProducerSync8producerEPv+0x28>
        }
    }

    data->wait->signal();
    8000453c:	01093503          	ld	a0,16(s2)
    80004540:	ffffe097          	auipc	ra,0xffffe
    80004544:	b20080e7          	jalr	-1248(ra) # 80002060 <_ZN9Semaphore6signalEv>
}
    80004548:	02813083          	ld	ra,40(sp)
    8000454c:	02013403          	ld	s0,32(sp)
    80004550:	01813483          	ld	s1,24(sp)
    80004554:	01013903          	ld	s2,16(sp)
    80004558:	00813983          	ld	s3,8(sp)
    8000455c:	03010113          	addi	sp,sp,48
    80004560:	00008067          	ret

0000000080004564 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004564:	fd010113          	addi	sp,sp,-48
    80004568:	02113423          	sd	ra,40(sp)
    8000456c:	02813023          	sd	s0,32(sp)
    80004570:	00913c23          	sd	s1,24(sp)
    80004574:	01213823          	sd	s2,16(sp)
    80004578:	01313423          	sd	s3,8(sp)
    8000457c:	01413023          	sd	s4,0(sp)
    80004580:	03010413          	addi	s0,sp,48
    80004584:	00050993          	mv	s3,a0
    80004588:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000458c:	00000a13          	li	s4,0
    80004590:	01c0006f          	j	800045ac <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80004594:	ffffe097          	auipc	ra,0xffffe
    80004598:	a3c080e7          	jalr	-1476(ra) # 80001fd0 <_ZN6Thread8dispatchEv>
    8000459c:	0500006f          	j	800045ec <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    800045a0:	00a00513          	li	a0,10
    800045a4:	ffffd097          	auipc	ra,0xffffd
    800045a8:	e90080e7          	jalr	-368(ra) # 80001434 <putc>
    while (!threadEnd) {
    800045ac:	00007797          	auipc	a5,0x7
    800045b0:	ffc7a783          	lw	a5,-4(a5) # 8000b5a8 <_ZL9threadEnd>
    800045b4:	06079263          	bnez	a5,80004618 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    800045b8:	00893503          	ld	a0,8(s2)
    800045bc:	00001097          	auipc	ra,0x1
    800045c0:	b94080e7          	jalr	-1132(ra) # 80005150 <_ZN9BufferCPP3getEv>
        i++;
    800045c4:	001a049b          	addiw	s1,s4,1
    800045c8:	00048a1b          	sext.w	s4,s1
        putc(key);
    800045cc:	0ff57513          	andi	a0,a0,255
    800045d0:	ffffd097          	auipc	ra,0xffffd
    800045d4:	e64080e7          	jalr	-412(ra) # 80001434 <putc>
        if (i % (5 * data->id) == 0) {
    800045d8:	00092703          	lw	a4,0(s2)
    800045dc:	0027179b          	slliw	a5,a4,0x2
    800045e0:	00e787bb          	addw	a5,a5,a4
    800045e4:	02f4e7bb          	remw	a5,s1,a5
    800045e8:	fa0786e3          	beqz	a5,80004594 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    800045ec:	05000793          	li	a5,80
    800045f0:	02f4e4bb          	remw	s1,s1,a5
    800045f4:	fa049ce3          	bnez	s1,800045ac <_ZN12ConsumerSync8consumerEPv+0x48>
    800045f8:	fa9ff06f          	j	800045a0 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    800045fc:	0209b783          	ld	a5,32(s3)
    80004600:	0087b503          	ld	a0,8(a5)
    80004604:	00001097          	auipc	ra,0x1
    80004608:	b4c080e7          	jalr	-1204(ra) # 80005150 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    8000460c:	0ff57513          	andi	a0,a0,255
    80004610:	ffffe097          	auipc	ra,0xffffe
    80004614:	b24080e7          	jalr	-1244(ra) # 80002134 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80004618:	0209b783          	ld	a5,32(s3)
    8000461c:	0087b503          	ld	a0,8(a5)
    80004620:	00001097          	auipc	ra,0x1
    80004624:	bbc080e7          	jalr	-1092(ra) # 800051dc <_ZN9BufferCPP6getCntEv>
    80004628:	fca04ae3          	bgtz	a0,800045fc <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    8000462c:	01093503          	ld	a0,16(s2)
    80004630:	ffffe097          	auipc	ra,0xffffe
    80004634:	a30080e7          	jalr	-1488(ra) # 80002060 <_ZN9Semaphore6signalEv>
}
    80004638:	02813083          	ld	ra,40(sp)
    8000463c:	02013403          	ld	s0,32(sp)
    80004640:	01813483          	ld	s1,24(sp)
    80004644:	01013903          	ld	s2,16(sp)
    80004648:	00813983          	ld	s3,8(sp)
    8000464c:	00013a03          	ld	s4,0(sp)
    80004650:	03010113          	addi	sp,sp,48
    80004654:	00008067          	ret

0000000080004658 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80004658:	f8010113          	addi	sp,sp,-128
    8000465c:	06113c23          	sd	ra,120(sp)
    80004660:	06813823          	sd	s0,112(sp)
    80004664:	06913423          	sd	s1,104(sp)
    80004668:	07213023          	sd	s2,96(sp)
    8000466c:	05313c23          	sd	s3,88(sp)
    80004670:	05413823          	sd	s4,80(sp)
    80004674:	05513423          	sd	s5,72(sp)
    80004678:	05613023          	sd	s6,64(sp)
    8000467c:	03713c23          	sd	s7,56(sp)
    80004680:	03813823          	sd	s8,48(sp)
    80004684:	03913423          	sd	s9,40(sp)
    80004688:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    8000468c:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80004690:	00005517          	auipc	a0,0x5
    80004694:	c4050513          	addi	a0,a0,-960 # 800092d0 <CONSOLE_STATUS+0x2c0>
    80004698:	00000097          	auipc	ra,0x0
    8000469c:	604080e7          	jalr	1540(ra) # 80004c9c <_Z11printStringPKc>
    getString(input, 30);
    800046a0:	01e00593          	li	a1,30
    800046a4:	f8040493          	addi	s1,s0,-128
    800046a8:	00048513          	mv	a0,s1
    800046ac:	00000097          	auipc	ra,0x0
    800046b0:	678080e7          	jalr	1656(ra) # 80004d24 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800046b4:	00048513          	mv	a0,s1
    800046b8:	00000097          	auipc	ra,0x0
    800046bc:	744080e7          	jalr	1860(ra) # 80004dfc <_Z11stringToIntPKc>
    800046c0:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800046c4:	00005517          	auipc	a0,0x5
    800046c8:	c2c50513          	addi	a0,a0,-980 # 800092f0 <CONSOLE_STATUS+0x2e0>
    800046cc:	00000097          	auipc	ra,0x0
    800046d0:	5d0080e7          	jalr	1488(ra) # 80004c9c <_Z11printStringPKc>
    getString(input, 30);
    800046d4:	01e00593          	li	a1,30
    800046d8:	00048513          	mv	a0,s1
    800046dc:	00000097          	auipc	ra,0x0
    800046e0:	648080e7          	jalr	1608(ra) # 80004d24 <_Z9getStringPci>
    n = stringToInt(input);
    800046e4:	00048513          	mv	a0,s1
    800046e8:	00000097          	auipc	ra,0x0
    800046ec:	714080e7          	jalr	1812(ra) # 80004dfc <_Z11stringToIntPKc>
    800046f0:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800046f4:	00005517          	auipc	a0,0x5
    800046f8:	c1c50513          	addi	a0,a0,-996 # 80009310 <CONSOLE_STATUS+0x300>
    800046fc:	00000097          	auipc	ra,0x0
    80004700:	5a0080e7          	jalr	1440(ra) # 80004c9c <_Z11printStringPKc>
    80004704:	00000613          	li	a2,0
    80004708:	00a00593          	li	a1,10
    8000470c:	00090513          	mv	a0,s2
    80004710:	00000097          	auipc	ra,0x0
    80004714:	73c080e7          	jalr	1852(ra) # 80004e4c <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004718:	00005517          	auipc	a0,0x5
    8000471c:	c1050513          	addi	a0,a0,-1008 # 80009328 <CONSOLE_STATUS+0x318>
    80004720:	00000097          	auipc	ra,0x0
    80004724:	57c080e7          	jalr	1404(ra) # 80004c9c <_Z11printStringPKc>
    80004728:	00000613          	li	a2,0
    8000472c:	00a00593          	li	a1,10
    80004730:	00048513          	mv	a0,s1
    80004734:	00000097          	auipc	ra,0x0
    80004738:	718080e7          	jalr	1816(ra) # 80004e4c <_Z8printIntiii>
    printString(".\n");
    8000473c:	00005517          	auipc	a0,0x5
    80004740:	c0450513          	addi	a0,a0,-1020 # 80009340 <CONSOLE_STATUS+0x330>
    80004744:	00000097          	auipc	ra,0x0
    80004748:	558080e7          	jalr	1368(ra) # 80004c9c <_Z11printStringPKc>
    if(threadNum > n) {
    8000474c:	0324c463          	blt	s1,s2,80004774 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80004750:	03205c63          	blez	s2,80004788 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004754:	03800513          	li	a0,56
    80004758:	ffffd097          	auipc	ra,0xffffd
    8000475c:	68c080e7          	jalr	1676(ra) # 80001de4 <_Znwm>
    80004760:	00050a93          	mv	s5,a0
    80004764:	00048593          	mv	a1,s1
    80004768:	00001097          	auipc	ra,0x1
    8000476c:	804080e7          	jalr	-2044(ra) # 80004f6c <_ZN9BufferCPPC1Ei>
    80004770:	0300006f          	j	800047a0 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004774:	00005517          	auipc	a0,0x5
    80004778:	bd450513          	addi	a0,a0,-1068 # 80009348 <CONSOLE_STATUS+0x338>
    8000477c:	00000097          	auipc	ra,0x0
    80004780:	520080e7          	jalr	1312(ra) # 80004c9c <_Z11printStringPKc>
        return;
    80004784:	0140006f          	j	80004798 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004788:	00005517          	auipc	a0,0x5
    8000478c:	c0050513          	addi	a0,a0,-1024 # 80009388 <CONSOLE_STATUS+0x378>
    80004790:	00000097          	auipc	ra,0x0
    80004794:	50c080e7          	jalr	1292(ra) # 80004c9c <_Z11printStringPKc>
        return;
    80004798:	000b8113          	mv	sp,s7
    8000479c:	2380006f          	j	800049d4 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    800047a0:	01800513          	li	a0,24
    800047a4:	ffffd097          	auipc	ra,0xffffd
    800047a8:	640080e7          	jalr	1600(ra) # 80001de4 <_Znwm>
    800047ac:	00050493          	mv	s1,a0
    800047b0:	00000593          	li	a1,0
    800047b4:	ffffe097          	auipc	ra,0xffffe
    800047b8:	844080e7          	jalr	-1980(ra) # 80001ff8 <_ZN9SemaphoreC1Ej>
    800047bc:	00007797          	auipc	a5,0x7
    800047c0:	de97ba23          	sd	s1,-524(a5) # 8000b5b0 <_ZL10waitForAll>
    Thread* threads[threadNum];
    800047c4:	00391793          	slli	a5,s2,0x3
    800047c8:	00f78793          	addi	a5,a5,15
    800047cc:	ff07f793          	andi	a5,a5,-16
    800047d0:	40f10133          	sub	sp,sp,a5
    800047d4:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    800047d8:	0019071b          	addiw	a4,s2,1
    800047dc:	00171793          	slli	a5,a4,0x1
    800047e0:	00e787b3          	add	a5,a5,a4
    800047e4:	00379793          	slli	a5,a5,0x3
    800047e8:	00f78793          	addi	a5,a5,15
    800047ec:	ff07f793          	andi	a5,a5,-16
    800047f0:	40f10133          	sub	sp,sp,a5
    800047f4:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    800047f8:	00191c13          	slli	s8,s2,0x1
    800047fc:	012c07b3          	add	a5,s8,s2
    80004800:	00379793          	slli	a5,a5,0x3
    80004804:	00fa07b3          	add	a5,s4,a5
    80004808:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    8000480c:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80004810:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80004814:	02800513          	li	a0,40
    80004818:	ffffd097          	auipc	ra,0xffffd
    8000481c:	5cc080e7          	jalr	1484(ra) # 80001de4 <_Znwm>
    80004820:	00050b13          	mv	s6,a0
    80004824:	012c0c33          	add	s8,s8,s2
    80004828:	003c1c13          	slli	s8,s8,0x3
    8000482c:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80004830:	ffffd097          	auipc	ra,0xffffd
    80004834:	6bc080e7          	jalr	1724(ra) # 80001eec <_ZN6ThreadC1Ev>
    80004838:	00007797          	auipc	a5,0x7
    8000483c:	c4878793          	addi	a5,a5,-952 # 8000b480 <_ZTV12ConsumerSync+0x10>
    80004840:	00fb3023          	sd	a5,0(s6)
    80004844:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80004848:	000b0513          	mv	a0,s6
    8000484c:	ffffd097          	auipc	ra,0xffffd
    80004850:	730080e7          	jalr	1840(ra) # 80001f7c <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004854:	00000493          	li	s1,0
    80004858:	0380006f          	j	80004890 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    8000485c:	00007797          	auipc	a5,0x7
    80004860:	bfc78793          	addi	a5,a5,-1028 # 8000b458 <_ZTV12ProducerSync+0x10>
    80004864:	00fcb023          	sd	a5,0(s9)
    80004868:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    8000486c:	00349793          	slli	a5,s1,0x3
    80004870:	00f987b3          	add	a5,s3,a5
    80004874:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80004878:	00349793          	slli	a5,s1,0x3
    8000487c:	00f987b3          	add	a5,s3,a5
    80004880:	0007b503          	ld	a0,0(a5)
    80004884:	ffffd097          	auipc	ra,0xffffd
    80004888:	6f8080e7          	jalr	1784(ra) # 80001f7c <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    8000488c:	0014849b          	addiw	s1,s1,1
    80004890:	0b24d063          	bge	s1,s2,80004930 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80004894:	00149793          	slli	a5,s1,0x1
    80004898:	009787b3          	add	a5,a5,s1
    8000489c:	00379793          	slli	a5,a5,0x3
    800048a0:	00fa07b3          	add	a5,s4,a5
    800048a4:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800048a8:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    800048ac:	00007717          	auipc	a4,0x7
    800048b0:	d0473703          	ld	a4,-764(a4) # 8000b5b0 <_ZL10waitForAll>
    800048b4:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    800048b8:	02905863          	blez	s1,800048e8 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    800048bc:	02800513          	li	a0,40
    800048c0:	ffffd097          	auipc	ra,0xffffd
    800048c4:	524080e7          	jalr	1316(ra) # 80001de4 <_Znwm>
    800048c8:	00050c93          	mv	s9,a0
    800048cc:	00149c13          	slli	s8,s1,0x1
    800048d0:	009c0c33          	add	s8,s8,s1
    800048d4:	003c1c13          	slli	s8,s8,0x3
    800048d8:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800048dc:	ffffd097          	auipc	ra,0xffffd
    800048e0:	610080e7          	jalr	1552(ra) # 80001eec <_ZN6ThreadC1Ev>
    800048e4:	f79ff06f          	j	8000485c <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    800048e8:	02800513          	li	a0,40
    800048ec:	ffffd097          	auipc	ra,0xffffd
    800048f0:	4f8080e7          	jalr	1272(ra) # 80001de4 <_Znwm>
    800048f4:	00050c93          	mv	s9,a0
    800048f8:	00149c13          	slli	s8,s1,0x1
    800048fc:	009c0c33          	add	s8,s8,s1
    80004900:	003c1c13          	slli	s8,s8,0x3
    80004904:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80004908:	ffffd097          	auipc	ra,0xffffd
    8000490c:	5e4080e7          	jalr	1508(ra) # 80001eec <_ZN6ThreadC1Ev>
    80004910:	00007797          	auipc	a5,0x7
    80004914:	b2078793          	addi	a5,a5,-1248 # 8000b430 <_ZTV16ProducerKeyboard+0x10>
    80004918:	00fcb023          	sd	a5,0(s9)
    8000491c:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80004920:	00349793          	slli	a5,s1,0x3
    80004924:	00f987b3          	add	a5,s3,a5
    80004928:	0197b023          	sd	s9,0(a5)
    8000492c:	f4dff06f          	j	80004878 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80004930:	ffffd097          	auipc	ra,0xffffd
    80004934:	6a0080e7          	jalr	1696(ra) # 80001fd0 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004938:	00000493          	li	s1,0
    8000493c:	00994e63          	blt	s2,s1,80004958 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80004940:	00007517          	auipc	a0,0x7
    80004944:	c7053503          	ld	a0,-912(a0) # 8000b5b0 <_ZL10waitForAll>
    80004948:	ffffd097          	auipc	ra,0xffffd
    8000494c:	6ec080e7          	jalr	1772(ra) # 80002034 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004950:	0014849b          	addiw	s1,s1,1
    80004954:	fe9ff06f          	j	8000493c <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80004958:	00000493          	li	s1,0
    8000495c:	0080006f          	j	80004964 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80004960:	0014849b          	addiw	s1,s1,1
    80004964:	0324d263          	bge	s1,s2,80004988 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80004968:	00349793          	slli	a5,s1,0x3
    8000496c:	00f987b3          	add	a5,s3,a5
    80004970:	0007b503          	ld	a0,0(a5)
    80004974:	fe0506e3          	beqz	a0,80004960 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80004978:	00053783          	ld	a5,0(a0)
    8000497c:	0087b783          	ld	a5,8(a5)
    80004980:	000780e7          	jalr	a5
    80004984:	fddff06f          	j	80004960 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80004988:	000b0a63          	beqz	s6,8000499c <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    8000498c:	000b3783          	ld	a5,0(s6)
    80004990:	0087b783          	ld	a5,8(a5)
    80004994:	000b0513          	mv	a0,s6
    80004998:	000780e7          	jalr	a5
    delete waitForAll;
    8000499c:	00007517          	auipc	a0,0x7
    800049a0:	c1453503          	ld	a0,-1004(a0) # 8000b5b0 <_ZL10waitForAll>
    800049a4:	00050863          	beqz	a0,800049b4 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    800049a8:	00053783          	ld	a5,0(a0)
    800049ac:	0087b783          	ld	a5,8(a5)
    800049b0:	000780e7          	jalr	a5
    delete buffer;
    800049b4:	000a8e63          	beqz	s5,800049d0 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    800049b8:	000a8513          	mv	a0,s5
    800049bc:	00001097          	auipc	ra,0x1
    800049c0:	8a8080e7          	jalr	-1880(ra) # 80005264 <_ZN9BufferCPPD1Ev>
    800049c4:	000a8513          	mv	a0,s5
    800049c8:	ffffd097          	auipc	ra,0xffffd
    800049cc:	46c080e7          	jalr	1132(ra) # 80001e34 <_ZdlPv>
    800049d0:	000b8113          	mv	sp,s7

}
    800049d4:	f8040113          	addi	sp,s0,-128
    800049d8:	07813083          	ld	ra,120(sp)
    800049dc:	07013403          	ld	s0,112(sp)
    800049e0:	06813483          	ld	s1,104(sp)
    800049e4:	06013903          	ld	s2,96(sp)
    800049e8:	05813983          	ld	s3,88(sp)
    800049ec:	05013a03          	ld	s4,80(sp)
    800049f0:	04813a83          	ld	s5,72(sp)
    800049f4:	04013b03          	ld	s6,64(sp)
    800049f8:	03813b83          	ld	s7,56(sp)
    800049fc:	03013c03          	ld	s8,48(sp)
    80004a00:	02813c83          	ld	s9,40(sp)
    80004a04:	08010113          	addi	sp,sp,128
    80004a08:	00008067          	ret
    80004a0c:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004a10:	000a8513          	mv	a0,s5
    80004a14:	ffffd097          	auipc	ra,0xffffd
    80004a18:	420080e7          	jalr	1056(ra) # 80001e34 <_ZdlPv>
    80004a1c:	00048513          	mv	a0,s1
    80004a20:	00008097          	auipc	ra,0x8
    80004a24:	c78080e7          	jalr	-904(ra) # 8000c698 <_Unwind_Resume>
    80004a28:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80004a2c:	00048513          	mv	a0,s1
    80004a30:	ffffd097          	auipc	ra,0xffffd
    80004a34:	404080e7          	jalr	1028(ra) # 80001e34 <_ZdlPv>
    80004a38:	00090513          	mv	a0,s2
    80004a3c:	00008097          	auipc	ra,0x8
    80004a40:	c5c080e7          	jalr	-932(ra) # 8000c698 <_Unwind_Resume>
    80004a44:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80004a48:	000b0513          	mv	a0,s6
    80004a4c:	ffffd097          	auipc	ra,0xffffd
    80004a50:	3e8080e7          	jalr	1000(ra) # 80001e34 <_ZdlPv>
    80004a54:	00048513          	mv	a0,s1
    80004a58:	00008097          	auipc	ra,0x8
    80004a5c:	c40080e7          	jalr	-960(ra) # 8000c698 <_Unwind_Resume>
    80004a60:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80004a64:	000c8513          	mv	a0,s9
    80004a68:	ffffd097          	auipc	ra,0xffffd
    80004a6c:	3cc080e7          	jalr	972(ra) # 80001e34 <_ZdlPv>
    80004a70:	00048513          	mv	a0,s1
    80004a74:	00008097          	auipc	ra,0x8
    80004a78:	c24080e7          	jalr	-988(ra) # 8000c698 <_Unwind_Resume>
    80004a7c:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80004a80:	000c8513          	mv	a0,s9
    80004a84:	ffffd097          	auipc	ra,0xffffd
    80004a88:	3b0080e7          	jalr	944(ra) # 80001e34 <_ZdlPv>
    80004a8c:	00048513          	mv	a0,s1
    80004a90:	00008097          	auipc	ra,0x8
    80004a94:	c08080e7          	jalr	-1016(ra) # 8000c698 <_Unwind_Resume>

0000000080004a98 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80004a98:	ff010113          	addi	sp,sp,-16
    80004a9c:	00113423          	sd	ra,8(sp)
    80004aa0:	00813023          	sd	s0,0(sp)
    80004aa4:	01010413          	addi	s0,sp,16
    80004aa8:	00007797          	auipc	a5,0x7
    80004aac:	9d878793          	addi	a5,a5,-1576 # 8000b480 <_ZTV12ConsumerSync+0x10>
    80004ab0:	00f53023          	sd	a5,0(a0)
    80004ab4:	ffffd097          	auipc	ra,0xffffd
    80004ab8:	2b4080e7          	jalr	692(ra) # 80001d68 <_ZN6ThreadD1Ev>
    80004abc:	00813083          	ld	ra,8(sp)
    80004ac0:	00013403          	ld	s0,0(sp)
    80004ac4:	01010113          	addi	sp,sp,16
    80004ac8:	00008067          	ret

0000000080004acc <_ZN12ConsumerSyncD0Ev>:
    80004acc:	fe010113          	addi	sp,sp,-32
    80004ad0:	00113c23          	sd	ra,24(sp)
    80004ad4:	00813823          	sd	s0,16(sp)
    80004ad8:	00913423          	sd	s1,8(sp)
    80004adc:	02010413          	addi	s0,sp,32
    80004ae0:	00050493          	mv	s1,a0
    80004ae4:	00007797          	auipc	a5,0x7
    80004ae8:	99c78793          	addi	a5,a5,-1636 # 8000b480 <_ZTV12ConsumerSync+0x10>
    80004aec:	00f53023          	sd	a5,0(a0)
    80004af0:	ffffd097          	auipc	ra,0xffffd
    80004af4:	278080e7          	jalr	632(ra) # 80001d68 <_ZN6ThreadD1Ev>
    80004af8:	00048513          	mv	a0,s1
    80004afc:	ffffd097          	auipc	ra,0xffffd
    80004b00:	338080e7          	jalr	824(ra) # 80001e34 <_ZdlPv>
    80004b04:	01813083          	ld	ra,24(sp)
    80004b08:	01013403          	ld	s0,16(sp)
    80004b0c:	00813483          	ld	s1,8(sp)
    80004b10:	02010113          	addi	sp,sp,32
    80004b14:	00008067          	ret

0000000080004b18 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80004b18:	ff010113          	addi	sp,sp,-16
    80004b1c:	00113423          	sd	ra,8(sp)
    80004b20:	00813023          	sd	s0,0(sp)
    80004b24:	01010413          	addi	s0,sp,16
    80004b28:	00007797          	auipc	a5,0x7
    80004b2c:	93078793          	addi	a5,a5,-1744 # 8000b458 <_ZTV12ProducerSync+0x10>
    80004b30:	00f53023          	sd	a5,0(a0)
    80004b34:	ffffd097          	auipc	ra,0xffffd
    80004b38:	234080e7          	jalr	564(ra) # 80001d68 <_ZN6ThreadD1Ev>
    80004b3c:	00813083          	ld	ra,8(sp)
    80004b40:	00013403          	ld	s0,0(sp)
    80004b44:	01010113          	addi	sp,sp,16
    80004b48:	00008067          	ret

0000000080004b4c <_ZN12ProducerSyncD0Ev>:
    80004b4c:	fe010113          	addi	sp,sp,-32
    80004b50:	00113c23          	sd	ra,24(sp)
    80004b54:	00813823          	sd	s0,16(sp)
    80004b58:	00913423          	sd	s1,8(sp)
    80004b5c:	02010413          	addi	s0,sp,32
    80004b60:	00050493          	mv	s1,a0
    80004b64:	00007797          	auipc	a5,0x7
    80004b68:	8f478793          	addi	a5,a5,-1804 # 8000b458 <_ZTV12ProducerSync+0x10>
    80004b6c:	00f53023          	sd	a5,0(a0)
    80004b70:	ffffd097          	auipc	ra,0xffffd
    80004b74:	1f8080e7          	jalr	504(ra) # 80001d68 <_ZN6ThreadD1Ev>
    80004b78:	00048513          	mv	a0,s1
    80004b7c:	ffffd097          	auipc	ra,0xffffd
    80004b80:	2b8080e7          	jalr	696(ra) # 80001e34 <_ZdlPv>
    80004b84:	01813083          	ld	ra,24(sp)
    80004b88:	01013403          	ld	s0,16(sp)
    80004b8c:	00813483          	ld	s1,8(sp)
    80004b90:	02010113          	addi	sp,sp,32
    80004b94:	00008067          	ret

0000000080004b98 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80004b98:	ff010113          	addi	sp,sp,-16
    80004b9c:	00113423          	sd	ra,8(sp)
    80004ba0:	00813023          	sd	s0,0(sp)
    80004ba4:	01010413          	addi	s0,sp,16
    80004ba8:	00007797          	auipc	a5,0x7
    80004bac:	88878793          	addi	a5,a5,-1912 # 8000b430 <_ZTV16ProducerKeyboard+0x10>
    80004bb0:	00f53023          	sd	a5,0(a0)
    80004bb4:	ffffd097          	auipc	ra,0xffffd
    80004bb8:	1b4080e7          	jalr	436(ra) # 80001d68 <_ZN6ThreadD1Ev>
    80004bbc:	00813083          	ld	ra,8(sp)
    80004bc0:	00013403          	ld	s0,0(sp)
    80004bc4:	01010113          	addi	sp,sp,16
    80004bc8:	00008067          	ret

0000000080004bcc <_ZN16ProducerKeyboardD0Ev>:
    80004bcc:	fe010113          	addi	sp,sp,-32
    80004bd0:	00113c23          	sd	ra,24(sp)
    80004bd4:	00813823          	sd	s0,16(sp)
    80004bd8:	00913423          	sd	s1,8(sp)
    80004bdc:	02010413          	addi	s0,sp,32
    80004be0:	00050493          	mv	s1,a0
    80004be4:	00007797          	auipc	a5,0x7
    80004be8:	84c78793          	addi	a5,a5,-1972 # 8000b430 <_ZTV16ProducerKeyboard+0x10>
    80004bec:	00f53023          	sd	a5,0(a0)
    80004bf0:	ffffd097          	auipc	ra,0xffffd
    80004bf4:	178080e7          	jalr	376(ra) # 80001d68 <_ZN6ThreadD1Ev>
    80004bf8:	00048513          	mv	a0,s1
    80004bfc:	ffffd097          	auipc	ra,0xffffd
    80004c00:	238080e7          	jalr	568(ra) # 80001e34 <_ZdlPv>
    80004c04:	01813083          	ld	ra,24(sp)
    80004c08:	01013403          	ld	s0,16(sp)
    80004c0c:	00813483          	ld	s1,8(sp)
    80004c10:	02010113          	addi	sp,sp,32
    80004c14:	00008067          	ret

0000000080004c18 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80004c18:	ff010113          	addi	sp,sp,-16
    80004c1c:	00113423          	sd	ra,8(sp)
    80004c20:	00813023          	sd	s0,0(sp)
    80004c24:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80004c28:	02053583          	ld	a1,32(a0)
    80004c2c:	fffff097          	auipc	ra,0xfffff
    80004c30:	7bc080e7          	jalr	1980(ra) # 800043e8 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80004c34:	00813083          	ld	ra,8(sp)
    80004c38:	00013403          	ld	s0,0(sp)
    80004c3c:	01010113          	addi	sp,sp,16
    80004c40:	00008067          	ret

0000000080004c44 <_ZN12ProducerSync3runEv>:
    void run() override {
    80004c44:	ff010113          	addi	sp,sp,-16
    80004c48:	00113423          	sd	ra,8(sp)
    80004c4c:	00813023          	sd	s0,0(sp)
    80004c50:	01010413          	addi	s0,sp,16
        producer(td);
    80004c54:	02053583          	ld	a1,32(a0)
    80004c58:	00000097          	auipc	ra,0x0
    80004c5c:	860080e7          	jalr	-1952(ra) # 800044b8 <_ZN12ProducerSync8producerEPv>
    }
    80004c60:	00813083          	ld	ra,8(sp)
    80004c64:	00013403          	ld	s0,0(sp)
    80004c68:	01010113          	addi	sp,sp,16
    80004c6c:	00008067          	ret

0000000080004c70 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80004c70:	ff010113          	addi	sp,sp,-16
    80004c74:	00113423          	sd	ra,8(sp)
    80004c78:	00813023          	sd	s0,0(sp)
    80004c7c:	01010413          	addi	s0,sp,16
        consumer(td);
    80004c80:	02053583          	ld	a1,32(a0)
    80004c84:	00000097          	auipc	ra,0x0
    80004c88:	8e0080e7          	jalr	-1824(ra) # 80004564 <_ZN12ConsumerSync8consumerEPv>
    }
    80004c8c:	00813083          	ld	ra,8(sp)
    80004c90:	00013403          	ld	s0,0(sp)
    80004c94:	01010113          	addi	sp,sp,16
    80004c98:	00008067          	ret

0000000080004c9c <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80004c9c:	fe010113          	addi	sp,sp,-32
    80004ca0:	00113c23          	sd	ra,24(sp)
    80004ca4:	00813823          	sd	s0,16(sp)
    80004ca8:	00913423          	sd	s1,8(sp)
    80004cac:	02010413          	addi	s0,sp,32
    80004cb0:	00050493          	mv	s1,a0
    LOCK();
    80004cb4:	00100613          	li	a2,1
    80004cb8:	00000593          	li	a1,0
    80004cbc:	00007517          	auipc	a0,0x7
    80004cc0:	8fc50513          	addi	a0,a0,-1796 # 8000b5b8 <lockPrint>
    80004cc4:	ffffc097          	auipc	ra,0xffffc
    80004cc8:	460080e7          	jalr	1120(ra) # 80001124 <copy_and_swap>
    80004ccc:	00050863          	beqz	a0,80004cdc <_Z11printStringPKc+0x40>
    80004cd0:	ffffc097          	auipc	ra,0xffffc
    80004cd4:	5a4080e7          	jalr	1444(ra) # 80001274 <thread_dispatch>
    80004cd8:	fddff06f          	j	80004cb4 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80004cdc:	0004c503          	lbu	a0,0(s1)
    80004ce0:	00050a63          	beqz	a0,80004cf4 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80004ce4:	ffffc097          	auipc	ra,0xffffc
    80004ce8:	750080e7          	jalr	1872(ra) # 80001434 <putc>
        string++;
    80004cec:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80004cf0:	fedff06f          	j	80004cdc <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80004cf4:	00000613          	li	a2,0
    80004cf8:	00100593          	li	a1,1
    80004cfc:	00007517          	auipc	a0,0x7
    80004d00:	8bc50513          	addi	a0,a0,-1860 # 8000b5b8 <lockPrint>
    80004d04:	ffffc097          	auipc	ra,0xffffc
    80004d08:	420080e7          	jalr	1056(ra) # 80001124 <copy_and_swap>
    80004d0c:	fe0514e3          	bnez	a0,80004cf4 <_Z11printStringPKc+0x58>
}
    80004d10:	01813083          	ld	ra,24(sp)
    80004d14:	01013403          	ld	s0,16(sp)
    80004d18:	00813483          	ld	s1,8(sp)
    80004d1c:	02010113          	addi	sp,sp,32
    80004d20:	00008067          	ret

0000000080004d24 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80004d24:	fd010113          	addi	sp,sp,-48
    80004d28:	02113423          	sd	ra,40(sp)
    80004d2c:	02813023          	sd	s0,32(sp)
    80004d30:	00913c23          	sd	s1,24(sp)
    80004d34:	01213823          	sd	s2,16(sp)
    80004d38:	01313423          	sd	s3,8(sp)
    80004d3c:	01413023          	sd	s4,0(sp)
    80004d40:	03010413          	addi	s0,sp,48
    80004d44:	00050993          	mv	s3,a0
    80004d48:	00058a13          	mv	s4,a1
    LOCK();
    80004d4c:	00100613          	li	a2,1
    80004d50:	00000593          	li	a1,0
    80004d54:	00007517          	auipc	a0,0x7
    80004d58:	86450513          	addi	a0,a0,-1948 # 8000b5b8 <lockPrint>
    80004d5c:	ffffc097          	auipc	ra,0xffffc
    80004d60:	3c8080e7          	jalr	968(ra) # 80001124 <copy_and_swap>
    80004d64:	00050863          	beqz	a0,80004d74 <_Z9getStringPci+0x50>
    80004d68:	ffffc097          	auipc	ra,0xffffc
    80004d6c:	50c080e7          	jalr	1292(ra) # 80001274 <thread_dispatch>
    80004d70:	fddff06f          	j	80004d4c <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80004d74:	00000913          	li	s2,0
    80004d78:	00090493          	mv	s1,s2
    80004d7c:	0019091b          	addiw	s2,s2,1
    80004d80:	03495a63          	bge	s2,s4,80004db4 <_Z9getStringPci+0x90>
        cc = getc();
    80004d84:	ffffc097          	auipc	ra,0xffffc
    80004d88:	6d8080e7          	jalr	1752(ra) # 8000145c <getc>
        if(cc < 1)
    80004d8c:	02050463          	beqz	a0,80004db4 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80004d90:	009984b3          	add	s1,s3,s1
    80004d94:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80004d98:	00a00793          	li	a5,10
    80004d9c:	00f50a63          	beq	a0,a5,80004db0 <_Z9getStringPci+0x8c>
    80004da0:	00d00793          	li	a5,13
    80004da4:	fcf51ae3          	bne	a0,a5,80004d78 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80004da8:	00090493          	mv	s1,s2
    80004dac:	0080006f          	j	80004db4 <_Z9getStringPci+0x90>
    80004db0:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80004db4:	009984b3          	add	s1,s3,s1
    80004db8:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80004dbc:	00000613          	li	a2,0
    80004dc0:	00100593          	li	a1,1
    80004dc4:	00006517          	auipc	a0,0x6
    80004dc8:	7f450513          	addi	a0,a0,2036 # 8000b5b8 <lockPrint>
    80004dcc:	ffffc097          	auipc	ra,0xffffc
    80004dd0:	358080e7          	jalr	856(ra) # 80001124 <copy_and_swap>
    80004dd4:	fe0514e3          	bnez	a0,80004dbc <_Z9getStringPci+0x98>
    return buf;
}
    80004dd8:	00098513          	mv	a0,s3
    80004ddc:	02813083          	ld	ra,40(sp)
    80004de0:	02013403          	ld	s0,32(sp)
    80004de4:	01813483          	ld	s1,24(sp)
    80004de8:	01013903          	ld	s2,16(sp)
    80004dec:	00813983          	ld	s3,8(sp)
    80004df0:	00013a03          	ld	s4,0(sp)
    80004df4:	03010113          	addi	sp,sp,48
    80004df8:	00008067          	ret

0000000080004dfc <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80004dfc:	ff010113          	addi	sp,sp,-16
    80004e00:	00813423          	sd	s0,8(sp)
    80004e04:	01010413          	addi	s0,sp,16
    80004e08:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80004e0c:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80004e10:	0006c603          	lbu	a2,0(a3)
    80004e14:	fd06071b          	addiw	a4,a2,-48
    80004e18:	0ff77713          	andi	a4,a4,255
    80004e1c:	00900793          	li	a5,9
    80004e20:	02e7e063          	bltu	a5,a4,80004e40 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80004e24:	0025179b          	slliw	a5,a0,0x2
    80004e28:	00a787bb          	addw	a5,a5,a0
    80004e2c:	0017979b          	slliw	a5,a5,0x1
    80004e30:	00168693          	addi	a3,a3,1
    80004e34:	00c787bb          	addw	a5,a5,a2
    80004e38:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80004e3c:	fd5ff06f          	j	80004e10 <_Z11stringToIntPKc+0x14>
    return n;
}
    80004e40:	00813403          	ld	s0,8(sp)
    80004e44:	01010113          	addi	sp,sp,16
    80004e48:	00008067          	ret

0000000080004e4c <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80004e4c:	fc010113          	addi	sp,sp,-64
    80004e50:	02113c23          	sd	ra,56(sp)
    80004e54:	02813823          	sd	s0,48(sp)
    80004e58:	02913423          	sd	s1,40(sp)
    80004e5c:	03213023          	sd	s2,32(sp)
    80004e60:	01313c23          	sd	s3,24(sp)
    80004e64:	04010413          	addi	s0,sp,64
    80004e68:	00050493          	mv	s1,a0
    80004e6c:	00058913          	mv	s2,a1
    80004e70:	00060993          	mv	s3,a2
    LOCK();
    80004e74:	00100613          	li	a2,1
    80004e78:	00000593          	li	a1,0
    80004e7c:	00006517          	auipc	a0,0x6
    80004e80:	73c50513          	addi	a0,a0,1852 # 8000b5b8 <lockPrint>
    80004e84:	ffffc097          	auipc	ra,0xffffc
    80004e88:	2a0080e7          	jalr	672(ra) # 80001124 <copy_and_swap>
    80004e8c:	00050863          	beqz	a0,80004e9c <_Z8printIntiii+0x50>
    80004e90:	ffffc097          	auipc	ra,0xffffc
    80004e94:	3e4080e7          	jalr	996(ra) # 80001274 <thread_dispatch>
    80004e98:	fddff06f          	j	80004e74 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80004e9c:	00098463          	beqz	s3,80004ea4 <_Z8printIntiii+0x58>
    80004ea0:	0804c463          	bltz	s1,80004f28 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80004ea4:	0004851b          	sext.w	a0,s1
    neg = 0;
    80004ea8:	00000593          	li	a1,0
    }

    i = 0;
    80004eac:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80004eb0:	0009079b          	sext.w	a5,s2
    80004eb4:	0325773b          	remuw	a4,a0,s2
    80004eb8:	00048613          	mv	a2,s1
    80004ebc:	0014849b          	addiw	s1,s1,1
    80004ec0:	02071693          	slli	a3,a4,0x20
    80004ec4:	0206d693          	srli	a3,a3,0x20
    80004ec8:	00006717          	auipc	a4,0x6
    80004ecc:	5d070713          	addi	a4,a4,1488 # 8000b498 <digits>
    80004ed0:	00d70733          	add	a4,a4,a3
    80004ed4:	00074683          	lbu	a3,0(a4)
    80004ed8:	fd040713          	addi	a4,s0,-48
    80004edc:	00c70733          	add	a4,a4,a2
    80004ee0:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80004ee4:	0005071b          	sext.w	a4,a0
    80004ee8:	0325553b          	divuw	a0,a0,s2
    80004eec:	fcf772e3          	bgeu	a4,a5,80004eb0 <_Z8printIntiii+0x64>
    if(neg)
    80004ef0:	00058c63          	beqz	a1,80004f08 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80004ef4:	fd040793          	addi	a5,s0,-48
    80004ef8:	009784b3          	add	s1,a5,s1
    80004efc:	02d00793          	li	a5,45
    80004f00:	fef48823          	sb	a5,-16(s1)
    80004f04:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80004f08:	fff4849b          	addiw	s1,s1,-1
    80004f0c:	0204c463          	bltz	s1,80004f34 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80004f10:	fd040793          	addi	a5,s0,-48
    80004f14:	009787b3          	add	a5,a5,s1
    80004f18:	ff07c503          	lbu	a0,-16(a5)
    80004f1c:	ffffc097          	auipc	ra,0xffffc
    80004f20:	518080e7          	jalr	1304(ra) # 80001434 <putc>
    80004f24:	fe5ff06f          	j	80004f08 <_Z8printIntiii+0xbc>
        x = -xx;
    80004f28:	4090053b          	negw	a0,s1
        neg = 1;
    80004f2c:	00100593          	li	a1,1
        x = -xx;
    80004f30:	f7dff06f          	j	80004eac <_Z8printIntiii+0x60>

    UNLOCK();
    80004f34:	00000613          	li	a2,0
    80004f38:	00100593          	li	a1,1
    80004f3c:	00006517          	auipc	a0,0x6
    80004f40:	67c50513          	addi	a0,a0,1660 # 8000b5b8 <lockPrint>
    80004f44:	ffffc097          	auipc	ra,0xffffc
    80004f48:	1e0080e7          	jalr	480(ra) # 80001124 <copy_and_swap>
    80004f4c:	fe0514e3          	bnez	a0,80004f34 <_Z8printIntiii+0xe8>
    80004f50:	03813083          	ld	ra,56(sp)
    80004f54:	03013403          	ld	s0,48(sp)
    80004f58:	02813483          	ld	s1,40(sp)
    80004f5c:	02013903          	ld	s2,32(sp)
    80004f60:	01813983          	ld	s3,24(sp)
    80004f64:	04010113          	addi	sp,sp,64
    80004f68:	00008067          	ret

0000000080004f6c <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80004f6c:	fd010113          	addi	sp,sp,-48
    80004f70:	02113423          	sd	ra,40(sp)
    80004f74:	02813023          	sd	s0,32(sp)
    80004f78:	00913c23          	sd	s1,24(sp)
    80004f7c:	01213823          	sd	s2,16(sp)
    80004f80:	01313423          	sd	s3,8(sp)
    80004f84:	03010413          	addi	s0,sp,48
    80004f88:	00050493          	mv	s1,a0
    80004f8c:	00058913          	mv	s2,a1
    80004f90:	0015879b          	addiw	a5,a1,1
    80004f94:	0007851b          	sext.w	a0,a5
    80004f98:	00f4a023          	sw	a5,0(s1)
    80004f9c:	0004a823          	sw	zero,16(s1)
    80004fa0:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004fa4:	00251513          	slli	a0,a0,0x2
    80004fa8:	ffffc097          	auipc	ra,0xffffc
    80004fac:	19c080e7          	jalr	412(ra) # 80001144 <mem_alloc>
    80004fb0:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80004fb4:	01800513          	li	a0,24
    80004fb8:	ffffd097          	auipc	ra,0xffffd
    80004fbc:	e2c080e7          	jalr	-468(ra) # 80001de4 <_Znwm>
    80004fc0:	00050993          	mv	s3,a0
    80004fc4:	00000593          	li	a1,0
    80004fc8:	ffffd097          	auipc	ra,0xffffd
    80004fcc:	030080e7          	jalr	48(ra) # 80001ff8 <_ZN9SemaphoreC1Ej>
    80004fd0:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80004fd4:	01800513          	li	a0,24
    80004fd8:	ffffd097          	auipc	ra,0xffffd
    80004fdc:	e0c080e7          	jalr	-500(ra) # 80001de4 <_Znwm>
    80004fe0:	00050993          	mv	s3,a0
    80004fe4:	00090593          	mv	a1,s2
    80004fe8:	ffffd097          	auipc	ra,0xffffd
    80004fec:	010080e7          	jalr	16(ra) # 80001ff8 <_ZN9SemaphoreC1Ej>
    80004ff0:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80004ff4:	01800513          	li	a0,24
    80004ff8:	ffffd097          	auipc	ra,0xffffd
    80004ffc:	dec080e7          	jalr	-532(ra) # 80001de4 <_Znwm>
    80005000:	00050913          	mv	s2,a0
    80005004:	00100593          	li	a1,1
    80005008:	ffffd097          	auipc	ra,0xffffd
    8000500c:	ff0080e7          	jalr	-16(ra) # 80001ff8 <_ZN9SemaphoreC1Ej>
    80005010:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005014:	01800513          	li	a0,24
    80005018:	ffffd097          	auipc	ra,0xffffd
    8000501c:	dcc080e7          	jalr	-564(ra) # 80001de4 <_Znwm>
    80005020:	00050913          	mv	s2,a0
    80005024:	00100593          	li	a1,1
    80005028:	ffffd097          	auipc	ra,0xffffd
    8000502c:	fd0080e7          	jalr	-48(ra) # 80001ff8 <_ZN9SemaphoreC1Ej>
    80005030:	0324b823          	sd	s2,48(s1)
}
    80005034:	02813083          	ld	ra,40(sp)
    80005038:	02013403          	ld	s0,32(sp)
    8000503c:	01813483          	ld	s1,24(sp)
    80005040:	01013903          	ld	s2,16(sp)
    80005044:	00813983          	ld	s3,8(sp)
    80005048:	03010113          	addi	sp,sp,48
    8000504c:	00008067          	ret
    80005050:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005054:	00098513          	mv	a0,s3
    80005058:	ffffd097          	auipc	ra,0xffffd
    8000505c:	ddc080e7          	jalr	-548(ra) # 80001e34 <_ZdlPv>
    80005060:	00048513          	mv	a0,s1
    80005064:	00007097          	auipc	ra,0x7
    80005068:	634080e7          	jalr	1588(ra) # 8000c698 <_Unwind_Resume>
    8000506c:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005070:	00098513          	mv	a0,s3
    80005074:	ffffd097          	auipc	ra,0xffffd
    80005078:	dc0080e7          	jalr	-576(ra) # 80001e34 <_ZdlPv>
    8000507c:	00048513          	mv	a0,s1
    80005080:	00007097          	auipc	ra,0x7
    80005084:	618080e7          	jalr	1560(ra) # 8000c698 <_Unwind_Resume>
    80005088:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    8000508c:	00090513          	mv	a0,s2
    80005090:	ffffd097          	auipc	ra,0xffffd
    80005094:	da4080e7          	jalr	-604(ra) # 80001e34 <_ZdlPv>
    80005098:	00048513          	mv	a0,s1
    8000509c:	00007097          	auipc	ra,0x7
    800050a0:	5fc080e7          	jalr	1532(ra) # 8000c698 <_Unwind_Resume>
    800050a4:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    800050a8:	00090513          	mv	a0,s2
    800050ac:	ffffd097          	auipc	ra,0xffffd
    800050b0:	d88080e7          	jalr	-632(ra) # 80001e34 <_ZdlPv>
    800050b4:	00048513          	mv	a0,s1
    800050b8:	00007097          	auipc	ra,0x7
    800050bc:	5e0080e7          	jalr	1504(ra) # 8000c698 <_Unwind_Resume>

00000000800050c0 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    800050c0:	fe010113          	addi	sp,sp,-32
    800050c4:	00113c23          	sd	ra,24(sp)
    800050c8:	00813823          	sd	s0,16(sp)
    800050cc:	00913423          	sd	s1,8(sp)
    800050d0:	01213023          	sd	s2,0(sp)
    800050d4:	02010413          	addi	s0,sp,32
    800050d8:	00050493          	mv	s1,a0
    800050dc:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800050e0:	01853503          	ld	a0,24(a0)
    800050e4:	ffffd097          	auipc	ra,0xffffd
    800050e8:	f50080e7          	jalr	-176(ra) # 80002034 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800050ec:	0304b503          	ld	a0,48(s1)
    800050f0:	ffffd097          	auipc	ra,0xffffd
    800050f4:	f44080e7          	jalr	-188(ra) # 80002034 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800050f8:	0084b783          	ld	a5,8(s1)
    800050fc:	0144a703          	lw	a4,20(s1)
    80005100:	00271713          	slli	a4,a4,0x2
    80005104:	00e787b3          	add	a5,a5,a4
    80005108:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000510c:	0144a783          	lw	a5,20(s1)
    80005110:	0017879b          	addiw	a5,a5,1
    80005114:	0004a703          	lw	a4,0(s1)
    80005118:	02e7e7bb          	remw	a5,a5,a4
    8000511c:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005120:	0304b503          	ld	a0,48(s1)
    80005124:	ffffd097          	auipc	ra,0xffffd
    80005128:	f3c080e7          	jalr	-196(ra) # 80002060 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    8000512c:	0204b503          	ld	a0,32(s1)
    80005130:	ffffd097          	auipc	ra,0xffffd
    80005134:	f30080e7          	jalr	-208(ra) # 80002060 <_ZN9Semaphore6signalEv>

}
    80005138:	01813083          	ld	ra,24(sp)
    8000513c:	01013403          	ld	s0,16(sp)
    80005140:	00813483          	ld	s1,8(sp)
    80005144:	00013903          	ld	s2,0(sp)
    80005148:	02010113          	addi	sp,sp,32
    8000514c:	00008067          	ret

0000000080005150 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005150:	fe010113          	addi	sp,sp,-32
    80005154:	00113c23          	sd	ra,24(sp)
    80005158:	00813823          	sd	s0,16(sp)
    8000515c:	00913423          	sd	s1,8(sp)
    80005160:	01213023          	sd	s2,0(sp)
    80005164:	02010413          	addi	s0,sp,32
    80005168:	00050493          	mv	s1,a0
    itemAvailable->wait();
    8000516c:	02053503          	ld	a0,32(a0)
    80005170:	ffffd097          	auipc	ra,0xffffd
    80005174:	ec4080e7          	jalr	-316(ra) # 80002034 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005178:	0284b503          	ld	a0,40(s1)
    8000517c:	ffffd097          	auipc	ra,0xffffd
    80005180:	eb8080e7          	jalr	-328(ra) # 80002034 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005184:	0084b703          	ld	a4,8(s1)
    80005188:	0104a783          	lw	a5,16(s1)
    8000518c:	00279693          	slli	a3,a5,0x2
    80005190:	00d70733          	add	a4,a4,a3
    80005194:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005198:	0017879b          	addiw	a5,a5,1
    8000519c:	0004a703          	lw	a4,0(s1)
    800051a0:	02e7e7bb          	remw	a5,a5,a4
    800051a4:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800051a8:	0284b503          	ld	a0,40(s1)
    800051ac:	ffffd097          	auipc	ra,0xffffd
    800051b0:	eb4080e7          	jalr	-332(ra) # 80002060 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800051b4:	0184b503          	ld	a0,24(s1)
    800051b8:	ffffd097          	auipc	ra,0xffffd
    800051bc:	ea8080e7          	jalr	-344(ra) # 80002060 <_ZN9Semaphore6signalEv>

    return ret;
}
    800051c0:	00090513          	mv	a0,s2
    800051c4:	01813083          	ld	ra,24(sp)
    800051c8:	01013403          	ld	s0,16(sp)
    800051cc:	00813483          	ld	s1,8(sp)
    800051d0:	00013903          	ld	s2,0(sp)
    800051d4:	02010113          	addi	sp,sp,32
    800051d8:	00008067          	ret

00000000800051dc <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800051dc:	fe010113          	addi	sp,sp,-32
    800051e0:	00113c23          	sd	ra,24(sp)
    800051e4:	00813823          	sd	s0,16(sp)
    800051e8:	00913423          	sd	s1,8(sp)
    800051ec:	01213023          	sd	s2,0(sp)
    800051f0:	02010413          	addi	s0,sp,32
    800051f4:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800051f8:	02853503          	ld	a0,40(a0)
    800051fc:	ffffd097          	auipc	ra,0xffffd
    80005200:	e38080e7          	jalr	-456(ra) # 80002034 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005204:	0304b503          	ld	a0,48(s1)
    80005208:	ffffd097          	auipc	ra,0xffffd
    8000520c:	e2c080e7          	jalr	-468(ra) # 80002034 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005210:	0144a783          	lw	a5,20(s1)
    80005214:	0104a903          	lw	s2,16(s1)
    80005218:	0327ce63          	blt	a5,s2,80005254 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    8000521c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005220:	0304b503          	ld	a0,48(s1)
    80005224:	ffffd097          	auipc	ra,0xffffd
    80005228:	e3c080e7          	jalr	-452(ra) # 80002060 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    8000522c:	0284b503          	ld	a0,40(s1)
    80005230:	ffffd097          	auipc	ra,0xffffd
    80005234:	e30080e7          	jalr	-464(ra) # 80002060 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005238:	00090513          	mv	a0,s2
    8000523c:	01813083          	ld	ra,24(sp)
    80005240:	01013403          	ld	s0,16(sp)
    80005244:	00813483          	ld	s1,8(sp)
    80005248:	00013903          	ld	s2,0(sp)
    8000524c:	02010113          	addi	sp,sp,32
    80005250:	00008067          	ret
        ret = cap - head + tail;
    80005254:	0004a703          	lw	a4,0(s1)
    80005258:	4127093b          	subw	s2,a4,s2
    8000525c:	00f9093b          	addw	s2,s2,a5
    80005260:	fc1ff06f          	j	80005220 <_ZN9BufferCPP6getCntEv+0x44>

0000000080005264 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005264:	fe010113          	addi	sp,sp,-32
    80005268:	00113c23          	sd	ra,24(sp)
    8000526c:	00813823          	sd	s0,16(sp)
    80005270:	00913423          	sd	s1,8(sp)
    80005274:	02010413          	addi	s0,sp,32
    80005278:	00050493          	mv	s1,a0
    Console::putc('\n');
    8000527c:	00a00513          	li	a0,10
    80005280:	ffffd097          	auipc	ra,0xffffd
    80005284:	eb4080e7          	jalr	-332(ra) # 80002134 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005288:	00004517          	auipc	a0,0x4
    8000528c:	1e050513          	addi	a0,a0,480 # 80009468 <CONSOLE_STATUS+0x458>
    80005290:	00000097          	auipc	ra,0x0
    80005294:	a0c080e7          	jalr	-1524(ra) # 80004c9c <_Z11printStringPKc>
    while (getCnt()) {
    80005298:	00048513          	mv	a0,s1
    8000529c:	00000097          	auipc	ra,0x0
    800052a0:	f40080e7          	jalr	-192(ra) # 800051dc <_ZN9BufferCPP6getCntEv>
    800052a4:	02050c63          	beqz	a0,800052dc <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    800052a8:	0084b783          	ld	a5,8(s1)
    800052ac:	0104a703          	lw	a4,16(s1)
    800052b0:	00271713          	slli	a4,a4,0x2
    800052b4:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    800052b8:	0007c503          	lbu	a0,0(a5)
    800052bc:	ffffd097          	auipc	ra,0xffffd
    800052c0:	e78080e7          	jalr	-392(ra) # 80002134 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    800052c4:	0104a783          	lw	a5,16(s1)
    800052c8:	0017879b          	addiw	a5,a5,1
    800052cc:	0004a703          	lw	a4,0(s1)
    800052d0:	02e7e7bb          	remw	a5,a5,a4
    800052d4:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800052d8:	fc1ff06f          	j	80005298 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800052dc:	02100513          	li	a0,33
    800052e0:	ffffd097          	auipc	ra,0xffffd
    800052e4:	e54080e7          	jalr	-428(ra) # 80002134 <_ZN7Console4putcEc>
    Console::putc('\n');
    800052e8:	00a00513          	li	a0,10
    800052ec:	ffffd097          	auipc	ra,0xffffd
    800052f0:	e48080e7          	jalr	-440(ra) # 80002134 <_ZN7Console4putcEc>
    mem_free(buffer);
    800052f4:	0084b503          	ld	a0,8(s1)
    800052f8:	ffffc097          	auipc	ra,0xffffc
    800052fc:	e8c080e7          	jalr	-372(ra) # 80001184 <mem_free>
    delete itemAvailable;
    80005300:	0204b503          	ld	a0,32(s1)
    80005304:	00050863          	beqz	a0,80005314 <_ZN9BufferCPPD1Ev+0xb0>
    80005308:	00053783          	ld	a5,0(a0)
    8000530c:	0087b783          	ld	a5,8(a5)
    80005310:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005314:	0184b503          	ld	a0,24(s1)
    80005318:	00050863          	beqz	a0,80005328 <_ZN9BufferCPPD1Ev+0xc4>
    8000531c:	00053783          	ld	a5,0(a0)
    80005320:	0087b783          	ld	a5,8(a5)
    80005324:	000780e7          	jalr	a5
    delete mutexTail;
    80005328:	0304b503          	ld	a0,48(s1)
    8000532c:	00050863          	beqz	a0,8000533c <_ZN9BufferCPPD1Ev+0xd8>
    80005330:	00053783          	ld	a5,0(a0)
    80005334:	0087b783          	ld	a5,8(a5)
    80005338:	000780e7          	jalr	a5
    delete mutexHead;
    8000533c:	0284b503          	ld	a0,40(s1)
    80005340:	00050863          	beqz	a0,80005350 <_ZN9BufferCPPD1Ev+0xec>
    80005344:	00053783          	ld	a5,0(a0)
    80005348:	0087b783          	ld	a5,8(a5)
    8000534c:	000780e7          	jalr	a5
}
    80005350:	01813083          	ld	ra,24(sp)
    80005354:	01013403          	ld	s0,16(sp)
    80005358:	00813483          	ld	s1,8(sp)
    8000535c:	02010113          	addi	sp,sp,32
    80005360:	00008067          	ret

0000000080005364 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80005364:	fe010113          	addi	sp,sp,-32
    80005368:	00113c23          	sd	ra,24(sp)
    8000536c:	00813823          	sd	s0,16(sp)
    80005370:	00913423          	sd	s1,8(sp)
    80005374:	01213023          	sd	s2,0(sp)
    80005378:	02010413          	addi	s0,sp,32
       printString("Unesite broj testa? [1-7]\n");
    8000537c:	00004517          	auipc	a0,0x4
    80005380:	10450513          	addi	a0,a0,260 # 80009480 <CONSOLE_STATUS+0x470>
    80005384:	00000097          	auipc	ra,0x0
    80005388:	918080e7          	jalr	-1768(ra) # 80004c9c <_Z11printStringPKc>
    int test = getc() - '0';
    8000538c:	ffffc097          	auipc	ra,0xffffc
    80005390:	0d0080e7          	jalr	208(ra) # 8000145c <getc>
    80005394:	00050913          	mv	s2,a0
    80005398:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    8000539c:	ffffc097          	auipc	ra,0xffffc
    800053a0:	0c0080e7          	jalr	192(ra) # 8000145c <getc>
               printString("Nije navedeno da je zadatak 3 implementiran\n");
               return;
           }
       }

       if (test >= 5 && test <= 6) {
    800053a4:	fcb9091b          	addiw	s2,s2,-53
    800053a8:	00100793          	li	a5,1
    800053ac:	0327f463          	bgeu	a5,s2,800053d4 <_Z8userMainv+0x70>
               printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
           }
       }

       switch (test) {
    800053b0:	00700793          	li	a5,7
    800053b4:	0e97e263          	bltu	a5,s1,80005498 <_Z8userMainv+0x134>
    800053b8:	00249493          	slli	s1,s1,0x2
    800053bc:	00004717          	auipc	a4,0x4
    800053c0:	2dc70713          	addi	a4,a4,732 # 80009698 <CONSOLE_STATUS+0x688>
    800053c4:	00e484b3          	add	s1,s1,a4
    800053c8:	0004a783          	lw	a5,0(s1)
    800053cc:	00e787b3          	add	a5,a5,a4
    800053d0:	00078067          	jr	a5
               printString("Nije navedeno da je zadatak 4 implementiran\n");
    800053d4:	00004517          	auipc	a0,0x4
    800053d8:	0cc50513          	addi	a0,a0,204 # 800094a0 <CONSOLE_STATUS+0x490>
    800053dc:	00000097          	auipc	ra,0x0
    800053e0:	8c0080e7          	jalr	-1856(ra) # 80004c9c <_Z11printStringPKc>
           default:
               printString("Niste uneli odgovarajuci broj za test\n");
       }


    800053e4:	01813083          	ld	ra,24(sp)
    800053e8:	01013403          	ld	s0,16(sp)
    800053ec:	00813483          	ld	s1,8(sp)
    800053f0:	00013903          	ld	s2,0(sp)
    800053f4:	02010113          	addi	sp,sp,32
    800053f8:	00008067          	ret
               Threads_C_API_test();
    800053fc:	fffff097          	auipc	ra,0xfffff
    80005400:	ef0080e7          	jalr	-272(ra) # 800042ec <_Z18Threads_C_API_testv>
               printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80005404:	00004517          	auipc	a0,0x4
    80005408:	0cc50513          	addi	a0,a0,204 # 800094d0 <CONSOLE_STATUS+0x4c0>
    8000540c:	00000097          	auipc	ra,0x0
    80005410:	890080e7          	jalr	-1904(ra) # 80004c9c <_Z11printStringPKc>
               break;
    80005414:	fd1ff06f          	j	800053e4 <_Z8userMainv+0x80>
               Threads_CPP_API_test();
    80005418:	ffffe097          	auipc	ra,0xffffe
    8000541c:	538080e7          	jalr	1336(ra) # 80003950 <_Z20Threads_CPP_API_testv>
               printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80005420:	00004517          	auipc	a0,0x4
    80005424:	0f050513          	addi	a0,a0,240 # 80009510 <CONSOLE_STATUS+0x500>
    80005428:	00000097          	auipc	ra,0x0
    8000542c:	874080e7          	jalr	-1932(ra) # 80004c9c <_Z11printStringPKc>
               break;
    80005430:	fb5ff06f          	j	800053e4 <_Z8userMainv+0x80>
               producerConsumer_C_API();
    80005434:	ffffe097          	auipc	ra,0xffffe
    80005438:	d70080e7          	jalr	-656(ra) # 800031a4 <_Z22producerConsumer_C_APIv>
               printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    8000543c:	00004517          	auipc	a0,0x4
    80005440:	11450513          	addi	a0,a0,276 # 80009550 <CONSOLE_STATUS+0x540>
    80005444:	00000097          	auipc	ra,0x0
    80005448:	858080e7          	jalr	-1960(ra) # 80004c9c <_Z11printStringPKc>
               break;
    8000544c:	f99ff06f          	j	800053e4 <_Z8userMainv+0x80>
               producerConsumer_CPP_Sync_API();
    80005450:	fffff097          	auipc	ra,0xfffff
    80005454:	208080e7          	jalr	520(ra) # 80004658 <_Z29producerConsumer_CPP_Sync_APIv>
               printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80005458:	00004517          	auipc	a0,0x4
    8000545c:	14850513          	addi	a0,a0,328 # 800095a0 <CONSOLE_STATUS+0x590>
    80005460:	00000097          	auipc	ra,0x0
    80005464:	83c080e7          	jalr	-1988(ra) # 80004c9c <_Z11printStringPKc>
               break;
    80005468:	f7dff06f          	j	800053e4 <_Z8userMainv+0x80>
               System_Mode_test();
    8000546c:	00000097          	auipc	ra,0x0
    80005470:	52c080e7          	jalr	1324(ra) # 80005998 <_Z16System_Mode_testv>
               printString("Test se nije uspesno zavrsio\n");
    80005474:	00004517          	auipc	a0,0x4
    80005478:	18450513          	addi	a0,a0,388 # 800095f8 <CONSOLE_STATUS+0x5e8>
    8000547c:	00000097          	auipc	ra,0x0
    80005480:	820080e7          	jalr	-2016(ra) # 80004c9c <_Z11printStringPKc>
               printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80005484:	00004517          	auipc	a0,0x4
    80005488:	19450513          	addi	a0,a0,404 # 80009618 <CONSOLE_STATUS+0x608>
    8000548c:	00000097          	auipc	ra,0x0
    80005490:	810080e7          	jalr	-2032(ra) # 80004c9c <_Z11printStringPKc>
               break;
    80005494:	f51ff06f          	j	800053e4 <_Z8userMainv+0x80>
               printString("Niste uneli odgovarajuci broj za test\n");
    80005498:	00004517          	auipc	a0,0x4
    8000549c:	1d850513          	addi	a0,a0,472 # 80009670 <CONSOLE_STATUS+0x660>
    800054a0:	fffff097          	auipc	ra,0xfffff
    800054a4:	7fc080e7          	jalr	2044(ra) # 80004c9c <_Z11printStringPKc>
    800054a8:	f3dff06f          	j	800053e4 <_Z8userMainv+0x80>

00000000800054ac <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800054ac:	fe010113          	addi	sp,sp,-32
    800054b0:	00113c23          	sd	ra,24(sp)
    800054b4:	00813823          	sd	s0,16(sp)
    800054b8:	00913423          	sd	s1,8(sp)
    800054bc:	01213023          	sd	s2,0(sp)
    800054c0:	02010413          	addi	s0,sp,32
    800054c4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800054c8:	00100793          	li	a5,1
    800054cc:	02a7f863          	bgeu	a5,a0,800054fc <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800054d0:	00a00793          	li	a5,10
    800054d4:	02f577b3          	remu	a5,a0,a5
    800054d8:	02078e63          	beqz	a5,80005514 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800054dc:	fff48513          	addi	a0,s1,-1
    800054e0:	00000097          	auipc	ra,0x0
    800054e4:	fcc080e7          	jalr	-52(ra) # 800054ac <_ZL9fibonaccim>
    800054e8:	00050913          	mv	s2,a0
    800054ec:	ffe48513          	addi	a0,s1,-2
    800054f0:	00000097          	auipc	ra,0x0
    800054f4:	fbc080e7          	jalr	-68(ra) # 800054ac <_ZL9fibonaccim>
    800054f8:	00a90533          	add	a0,s2,a0
}
    800054fc:	01813083          	ld	ra,24(sp)
    80005500:	01013403          	ld	s0,16(sp)
    80005504:	00813483          	ld	s1,8(sp)
    80005508:	00013903          	ld	s2,0(sp)
    8000550c:	02010113          	addi	sp,sp,32
    80005510:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005514:	ffffc097          	auipc	ra,0xffffc
    80005518:	d60080e7          	jalr	-672(ra) # 80001274 <thread_dispatch>
    8000551c:	fc1ff06f          	j	800054dc <_ZL9fibonaccim+0x30>

0000000080005520 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005520:	fe010113          	addi	sp,sp,-32
    80005524:	00113c23          	sd	ra,24(sp)
    80005528:	00813823          	sd	s0,16(sp)
    8000552c:	00913423          	sd	s1,8(sp)
    80005530:	01213023          	sd	s2,0(sp)
    80005534:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005538:	00a00493          	li	s1,10
    8000553c:	0400006f          	j	8000557c <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005540:	00004517          	auipc	a0,0x4
    80005544:	b2050513          	addi	a0,a0,-1248 # 80009060 <CONSOLE_STATUS+0x50>
    80005548:	fffff097          	auipc	ra,0xfffff
    8000554c:	754080e7          	jalr	1876(ra) # 80004c9c <_Z11printStringPKc>
    80005550:	00000613          	li	a2,0
    80005554:	00a00593          	li	a1,10
    80005558:	00048513          	mv	a0,s1
    8000555c:	00000097          	auipc	ra,0x0
    80005560:	8f0080e7          	jalr	-1808(ra) # 80004e4c <_Z8printIntiii>
    80005564:	00004517          	auipc	a0,0x4
    80005568:	08c50513          	addi	a0,a0,140 # 800095f0 <CONSOLE_STATUS+0x5e0>
    8000556c:	fffff097          	auipc	ra,0xfffff
    80005570:	730080e7          	jalr	1840(ra) # 80004c9c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005574:	0014849b          	addiw	s1,s1,1
    80005578:	0ff4f493          	andi	s1,s1,255
    8000557c:	00c00793          	li	a5,12
    80005580:	fc97f0e3          	bgeu	a5,s1,80005540 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005584:	00004517          	auipc	a0,0x4
    80005588:	e6450513          	addi	a0,a0,-412 # 800093e8 <CONSOLE_STATUS+0x3d8>
    8000558c:	fffff097          	auipc	ra,0xfffff
    80005590:	710080e7          	jalr	1808(ra) # 80004c9c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005594:	00500313          	li	t1,5
    thread_dispatch();
    80005598:	ffffc097          	auipc	ra,0xffffc
    8000559c:	cdc080e7          	jalr	-804(ra) # 80001274 <thread_dispatch>

    uint64 result = fibonacci(16);
    800055a0:	01000513          	li	a0,16
    800055a4:	00000097          	auipc	ra,0x0
    800055a8:	f08080e7          	jalr	-248(ra) # 800054ac <_ZL9fibonaccim>
    800055ac:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800055b0:	00004517          	auipc	a0,0x4
    800055b4:	ac850513          	addi	a0,a0,-1336 # 80009078 <CONSOLE_STATUS+0x68>
    800055b8:	fffff097          	auipc	ra,0xfffff
    800055bc:	6e4080e7          	jalr	1764(ra) # 80004c9c <_Z11printStringPKc>
    800055c0:	00000613          	li	a2,0
    800055c4:	00a00593          	li	a1,10
    800055c8:	0009051b          	sext.w	a0,s2
    800055cc:	00000097          	auipc	ra,0x0
    800055d0:	880080e7          	jalr	-1920(ra) # 80004e4c <_Z8printIntiii>
    800055d4:	00004517          	auipc	a0,0x4
    800055d8:	01c50513          	addi	a0,a0,28 # 800095f0 <CONSOLE_STATUS+0x5e0>
    800055dc:	fffff097          	auipc	ra,0xfffff
    800055e0:	6c0080e7          	jalr	1728(ra) # 80004c9c <_Z11printStringPKc>
    800055e4:	0400006f          	j	80005624 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800055e8:	00004517          	auipc	a0,0x4
    800055ec:	a7850513          	addi	a0,a0,-1416 # 80009060 <CONSOLE_STATUS+0x50>
    800055f0:	fffff097          	auipc	ra,0xfffff
    800055f4:	6ac080e7          	jalr	1708(ra) # 80004c9c <_Z11printStringPKc>
    800055f8:	00000613          	li	a2,0
    800055fc:	00a00593          	li	a1,10
    80005600:	00048513          	mv	a0,s1
    80005604:	00000097          	auipc	ra,0x0
    80005608:	848080e7          	jalr	-1976(ra) # 80004e4c <_Z8printIntiii>
    8000560c:	00004517          	auipc	a0,0x4
    80005610:	fe450513          	addi	a0,a0,-28 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80005614:	fffff097          	auipc	ra,0xfffff
    80005618:	688080e7          	jalr	1672(ra) # 80004c9c <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000561c:	0014849b          	addiw	s1,s1,1
    80005620:	0ff4f493          	andi	s1,s1,255
    80005624:	00f00793          	li	a5,15
    80005628:	fc97f0e3          	bgeu	a5,s1,800055e8 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    8000562c:	00004517          	auipc	a0,0x4
    80005630:	dcc50513          	addi	a0,a0,-564 # 800093f8 <CONSOLE_STATUS+0x3e8>
    80005634:	fffff097          	auipc	ra,0xfffff
    80005638:	668080e7          	jalr	1640(ra) # 80004c9c <_Z11printStringPKc>
    finishedD = true;
    8000563c:	00100793          	li	a5,1
    80005640:	00006717          	auipc	a4,0x6
    80005644:	f8f70023          	sb	a5,-128(a4) # 8000b5c0 <_ZL9finishedD>
    thread_dispatch();
    80005648:	ffffc097          	auipc	ra,0xffffc
    8000564c:	c2c080e7          	jalr	-980(ra) # 80001274 <thread_dispatch>
}
    80005650:	01813083          	ld	ra,24(sp)
    80005654:	01013403          	ld	s0,16(sp)
    80005658:	00813483          	ld	s1,8(sp)
    8000565c:	00013903          	ld	s2,0(sp)
    80005660:	02010113          	addi	sp,sp,32
    80005664:	00008067          	ret

0000000080005668 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005668:	fe010113          	addi	sp,sp,-32
    8000566c:	00113c23          	sd	ra,24(sp)
    80005670:	00813823          	sd	s0,16(sp)
    80005674:	00913423          	sd	s1,8(sp)
    80005678:	01213023          	sd	s2,0(sp)
    8000567c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005680:	00000493          	li	s1,0
    80005684:	0400006f          	j	800056c4 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005688:	00004517          	auipc	a0,0x4
    8000568c:	9a850513          	addi	a0,a0,-1624 # 80009030 <CONSOLE_STATUS+0x20>
    80005690:	fffff097          	auipc	ra,0xfffff
    80005694:	60c080e7          	jalr	1548(ra) # 80004c9c <_Z11printStringPKc>
    80005698:	00000613          	li	a2,0
    8000569c:	00a00593          	li	a1,10
    800056a0:	00048513          	mv	a0,s1
    800056a4:	fffff097          	auipc	ra,0xfffff
    800056a8:	7a8080e7          	jalr	1960(ra) # 80004e4c <_Z8printIntiii>
    800056ac:	00004517          	auipc	a0,0x4
    800056b0:	f4450513          	addi	a0,a0,-188 # 800095f0 <CONSOLE_STATUS+0x5e0>
    800056b4:	fffff097          	auipc	ra,0xfffff
    800056b8:	5e8080e7          	jalr	1512(ra) # 80004c9c <_Z11printStringPKc>
    for (; i < 3; i++) {
    800056bc:	0014849b          	addiw	s1,s1,1
    800056c0:	0ff4f493          	andi	s1,s1,255
    800056c4:	00200793          	li	a5,2
    800056c8:	fc97f0e3          	bgeu	a5,s1,80005688 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800056cc:	00004517          	auipc	a0,0x4
    800056d0:	d0c50513          	addi	a0,a0,-756 # 800093d8 <CONSOLE_STATUS+0x3c8>
    800056d4:	fffff097          	auipc	ra,0xfffff
    800056d8:	5c8080e7          	jalr	1480(ra) # 80004c9c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800056dc:	00700313          	li	t1,7
    thread_dispatch();
    800056e0:	ffffc097          	auipc	ra,0xffffc
    800056e4:	b94080e7          	jalr	-1132(ra) # 80001274 <thread_dispatch>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800056e8:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800056ec:	00004517          	auipc	a0,0x4
    800056f0:	95c50513          	addi	a0,a0,-1700 # 80009048 <CONSOLE_STATUS+0x38>
    800056f4:	fffff097          	auipc	ra,0xfffff
    800056f8:	5a8080e7          	jalr	1448(ra) # 80004c9c <_Z11printStringPKc>
    800056fc:	00000613          	li	a2,0
    80005700:	00a00593          	li	a1,10
    80005704:	0009051b          	sext.w	a0,s2
    80005708:	fffff097          	auipc	ra,0xfffff
    8000570c:	744080e7          	jalr	1860(ra) # 80004e4c <_Z8printIntiii>
    80005710:	00004517          	auipc	a0,0x4
    80005714:	ee050513          	addi	a0,a0,-288 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80005718:	fffff097          	auipc	ra,0xfffff
    8000571c:	584080e7          	jalr	1412(ra) # 80004c9c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005720:	00c00513          	li	a0,12
    80005724:	00000097          	auipc	ra,0x0
    80005728:	d88080e7          	jalr	-632(ra) # 800054ac <_ZL9fibonaccim>
    8000572c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005730:	00004517          	auipc	a0,0x4
    80005734:	92050513          	addi	a0,a0,-1760 # 80009050 <CONSOLE_STATUS+0x40>
    80005738:	fffff097          	auipc	ra,0xfffff
    8000573c:	564080e7          	jalr	1380(ra) # 80004c9c <_Z11printStringPKc>
    80005740:	00000613          	li	a2,0
    80005744:	00a00593          	li	a1,10
    80005748:	0009051b          	sext.w	a0,s2
    8000574c:	fffff097          	auipc	ra,0xfffff
    80005750:	700080e7          	jalr	1792(ra) # 80004e4c <_Z8printIntiii>
    80005754:	00004517          	auipc	a0,0x4
    80005758:	e9c50513          	addi	a0,a0,-356 # 800095f0 <CONSOLE_STATUS+0x5e0>
    8000575c:	fffff097          	auipc	ra,0xfffff
    80005760:	540080e7          	jalr	1344(ra) # 80004c9c <_Z11printStringPKc>
    80005764:	0400006f          	j	800057a4 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005768:	00004517          	auipc	a0,0x4
    8000576c:	8c850513          	addi	a0,a0,-1848 # 80009030 <CONSOLE_STATUS+0x20>
    80005770:	fffff097          	auipc	ra,0xfffff
    80005774:	52c080e7          	jalr	1324(ra) # 80004c9c <_Z11printStringPKc>
    80005778:	00000613          	li	a2,0
    8000577c:	00a00593          	li	a1,10
    80005780:	00048513          	mv	a0,s1
    80005784:	fffff097          	auipc	ra,0xfffff
    80005788:	6c8080e7          	jalr	1736(ra) # 80004e4c <_Z8printIntiii>
    8000578c:	00004517          	auipc	a0,0x4
    80005790:	e6450513          	addi	a0,a0,-412 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80005794:	fffff097          	auipc	ra,0xfffff
    80005798:	508080e7          	jalr	1288(ra) # 80004c9c <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000579c:	0014849b          	addiw	s1,s1,1
    800057a0:	0ff4f493          	andi	s1,s1,255
    800057a4:	00500793          	li	a5,5
    800057a8:	fc97f0e3          	bgeu	a5,s1,80005768 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800057ac:	00004517          	auipc	a0,0x4
    800057b0:	c0c50513          	addi	a0,a0,-1012 # 800093b8 <CONSOLE_STATUS+0x3a8>
    800057b4:	fffff097          	auipc	ra,0xfffff
    800057b8:	4e8080e7          	jalr	1256(ra) # 80004c9c <_Z11printStringPKc>
    finishedC = true;
    800057bc:	00100793          	li	a5,1
    800057c0:	00006717          	auipc	a4,0x6
    800057c4:	e0f700a3          	sb	a5,-511(a4) # 8000b5c1 <_ZL9finishedC>
    thread_dispatch();
    800057c8:	ffffc097          	auipc	ra,0xffffc
    800057cc:	aac080e7          	jalr	-1364(ra) # 80001274 <thread_dispatch>
}
    800057d0:	01813083          	ld	ra,24(sp)
    800057d4:	01013403          	ld	s0,16(sp)
    800057d8:	00813483          	ld	s1,8(sp)
    800057dc:	00013903          	ld	s2,0(sp)
    800057e0:	02010113          	addi	sp,sp,32
    800057e4:	00008067          	ret

00000000800057e8 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800057e8:	fe010113          	addi	sp,sp,-32
    800057ec:	00113c23          	sd	ra,24(sp)
    800057f0:	00813823          	sd	s0,16(sp)
    800057f4:	00913423          	sd	s1,8(sp)
    800057f8:	01213023          	sd	s2,0(sp)
    800057fc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005800:	00000913          	li	s2,0
    80005804:	0400006f          	j	80005844 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80005808:	ffffc097          	auipc	ra,0xffffc
    8000580c:	a6c080e7          	jalr	-1428(ra) # 80001274 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80005810:	00148493          	addi	s1,s1,1
    80005814:	000027b7          	lui	a5,0x2
    80005818:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000581c:	0097ee63          	bltu	a5,s1,80005838 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005820:	00000713          	li	a4,0
    80005824:	000077b7          	lui	a5,0x7
    80005828:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000582c:	fce7eee3          	bltu	a5,a4,80005808 <_ZL11workerBodyBPv+0x20>
    80005830:	00170713          	addi	a4,a4,1
    80005834:	ff1ff06f          	j	80005824 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80005838:	00a00793          	li	a5,10
    8000583c:	04f90663          	beq	s2,a5,80005888 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80005840:	00190913          	addi	s2,s2,1
    80005844:	00f00793          	li	a5,15
    80005848:	0527e463          	bltu	a5,s2,80005890 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    8000584c:	00003517          	auipc	a0,0x3
    80005850:	7dc50513          	addi	a0,a0,2012 # 80009028 <CONSOLE_STATUS+0x18>
    80005854:	fffff097          	auipc	ra,0xfffff
    80005858:	448080e7          	jalr	1096(ra) # 80004c9c <_Z11printStringPKc>
    8000585c:	00000613          	li	a2,0
    80005860:	00a00593          	li	a1,10
    80005864:	0009051b          	sext.w	a0,s2
    80005868:	fffff097          	auipc	ra,0xfffff
    8000586c:	5e4080e7          	jalr	1508(ra) # 80004e4c <_Z8printIntiii>
    80005870:	00004517          	auipc	a0,0x4
    80005874:	d8050513          	addi	a0,a0,-640 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80005878:	fffff097          	auipc	ra,0xfffff
    8000587c:	424080e7          	jalr	1060(ra) # 80004c9c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005880:	00000493          	li	s1,0
    80005884:	f91ff06f          	j	80005814 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80005888:	14102ff3          	csrr	t6,sepc
    8000588c:	fb5ff06f          	j	80005840 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80005890:	00004517          	auipc	a0,0x4
    80005894:	b3850513          	addi	a0,a0,-1224 # 800093c8 <CONSOLE_STATUS+0x3b8>
    80005898:	fffff097          	auipc	ra,0xfffff
    8000589c:	404080e7          	jalr	1028(ra) # 80004c9c <_Z11printStringPKc>
    finishedB = true;
    800058a0:	00100793          	li	a5,1
    800058a4:	00006717          	auipc	a4,0x6
    800058a8:	d0f70f23          	sb	a5,-738(a4) # 8000b5c2 <_ZL9finishedB>
    thread_dispatch();
    800058ac:	ffffc097          	auipc	ra,0xffffc
    800058b0:	9c8080e7          	jalr	-1592(ra) # 80001274 <thread_dispatch>
}
    800058b4:	01813083          	ld	ra,24(sp)
    800058b8:	01013403          	ld	s0,16(sp)
    800058bc:	00813483          	ld	s1,8(sp)
    800058c0:	00013903          	ld	s2,0(sp)
    800058c4:	02010113          	addi	sp,sp,32
    800058c8:	00008067          	ret

00000000800058cc <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800058cc:	fe010113          	addi	sp,sp,-32
    800058d0:	00113c23          	sd	ra,24(sp)
    800058d4:	00813823          	sd	s0,16(sp)
    800058d8:	00913423          	sd	s1,8(sp)
    800058dc:	01213023          	sd	s2,0(sp)
    800058e0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800058e4:	00000913          	li	s2,0
    800058e8:	0380006f          	j	80005920 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800058ec:	ffffc097          	auipc	ra,0xffffc
    800058f0:	988080e7          	jalr	-1656(ra) # 80001274 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    800058f4:	00148493          	addi	s1,s1,1
    800058f8:	000027b7          	lui	a5,0x2
    800058fc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005900:	0097ee63          	bltu	a5,s1,8000591c <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005904:	00000713          	li	a4,0
    80005908:	000077b7          	lui	a5,0x7
    8000590c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005910:	fce7eee3          	bltu	a5,a4,800058ec <_ZL11workerBodyAPv+0x20>
    80005914:	00170713          	addi	a4,a4,1
    80005918:	ff1ff06f          	j	80005908 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000591c:	00190913          	addi	s2,s2,1
    80005920:	00900793          	li	a5,9
    80005924:	0527e063          	bltu	a5,s2,80005964 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005928:	00003517          	auipc	a0,0x3
    8000592c:	6f850513          	addi	a0,a0,1784 # 80009020 <CONSOLE_STATUS+0x10>
    80005930:	fffff097          	auipc	ra,0xfffff
    80005934:	36c080e7          	jalr	876(ra) # 80004c9c <_Z11printStringPKc>
    80005938:	00000613          	li	a2,0
    8000593c:	00a00593          	li	a1,10
    80005940:	0009051b          	sext.w	a0,s2
    80005944:	fffff097          	auipc	ra,0xfffff
    80005948:	508080e7          	jalr	1288(ra) # 80004e4c <_Z8printIntiii>
    8000594c:	00004517          	auipc	a0,0x4
    80005950:	ca450513          	addi	a0,a0,-860 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80005954:	fffff097          	auipc	ra,0xfffff
    80005958:	348080e7          	jalr	840(ra) # 80004c9c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000595c:	00000493          	li	s1,0
    80005960:	f99ff06f          	j	800058f8 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80005964:	00004517          	auipc	a0,0x4
    80005968:	a5450513          	addi	a0,a0,-1452 # 800093b8 <CONSOLE_STATUS+0x3a8>
    8000596c:	fffff097          	auipc	ra,0xfffff
    80005970:	330080e7          	jalr	816(ra) # 80004c9c <_Z11printStringPKc>
    finishedA = true;
    80005974:	00100793          	li	a5,1
    80005978:	00006717          	auipc	a4,0x6
    8000597c:	c4f705a3          	sb	a5,-949(a4) # 8000b5c3 <_ZL9finishedA>
}
    80005980:	01813083          	ld	ra,24(sp)
    80005984:	01013403          	ld	s0,16(sp)
    80005988:	00813483          	ld	s1,8(sp)
    8000598c:	00013903          	ld	s2,0(sp)
    80005990:	02010113          	addi	sp,sp,32
    80005994:	00008067          	ret

0000000080005998 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80005998:	fd010113          	addi	sp,sp,-48
    8000599c:	02113423          	sd	ra,40(sp)
    800059a0:	02813023          	sd	s0,32(sp)
    800059a4:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800059a8:	00000613          	li	a2,0
    800059ac:	00000597          	auipc	a1,0x0
    800059b0:	f2058593          	addi	a1,a1,-224 # 800058cc <_ZL11workerBodyAPv>
    800059b4:	fd040513          	addi	a0,s0,-48
    800059b8:	ffffc097          	auipc	ra,0xffffc
    800059bc:	81c080e7          	jalr	-2020(ra) # 800011d4 <thread_create>
    printString("ThreadA created\n");
    800059c0:	00004517          	auipc	a0,0x4
    800059c4:	a4850513          	addi	a0,a0,-1464 # 80009408 <CONSOLE_STATUS+0x3f8>
    800059c8:	fffff097          	auipc	ra,0xfffff
    800059cc:	2d4080e7          	jalr	724(ra) # 80004c9c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800059d0:	00000613          	li	a2,0
    800059d4:	00000597          	auipc	a1,0x0
    800059d8:	e1458593          	addi	a1,a1,-492 # 800057e8 <_ZL11workerBodyBPv>
    800059dc:	fd840513          	addi	a0,s0,-40
    800059e0:	ffffb097          	auipc	ra,0xffffb
    800059e4:	7f4080e7          	jalr	2036(ra) # 800011d4 <thread_create>
    printString("ThreadB created\n");
    800059e8:	00004517          	auipc	a0,0x4
    800059ec:	a3850513          	addi	a0,a0,-1480 # 80009420 <CONSOLE_STATUS+0x410>
    800059f0:	fffff097          	auipc	ra,0xfffff
    800059f4:	2ac080e7          	jalr	684(ra) # 80004c9c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800059f8:	00000613          	li	a2,0
    800059fc:	00000597          	auipc	a1,0x0
    80005a00:	c6c58593          	addi	a1,a1,-916 # 80005668 <_ZL11workerBodyCPv>
    80005a04:	fe040513          	addi	a0,s0,-32
    80005a08:	ffffb097          	auipc	ra,0xffffb
    80005a0c:	7cc080e7          	jalr	1996(ra) # 800011d4 <thread_create>
    printString("ThreadC created\n");
    80005a10:	00004517          	auipc	a0,0x4
    80005a14:	a2850513          	addi	a0,a0,-1496 # 80009438 <CONSOLE_STATUS+0x428>
    80005a18:	fffff097          	auipc	ra,0xfffff
    80005a1c:	284080e7          	jalr	644(ra) # 80004c9c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005a20:	00000613          	li	a2,0
    80005a24:	00000597          	auipc	a1,0x0
    80005a28:	afc58593          	addi	a1,a1,-1284 # 80005520 <_ZL11workerBodyDPv>
    80005a2c:	fe840513          	addi	a0,s0,-24
    80005a30:	ffffb097          	auipc	ra,0xffffb
    80005a34:	7a4080e7          	jalr	1956(ra) # 800011d4 <thread_create>
    printString("ThreadD created\n");
    80005a38:	00004517          	auipc	a0,0x4
    80005a3c:	a1850513          	addi	a0,a0,-1512 # 80009450 <CONSOLE_STATUS+0x440>
    80005a40:	fffff097          	auipc	ra,0xfffff
    80005a44:	25c080e7          	jalr	604(ra) # 80004c9c <_Z11printStringPKc>
    80005a48:	00c0006f          	j	80005a54 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005a4c:	ffffc097          	auipc	ra,0xffffc
    80005a50:	828080e7          	jalr	-2008(ra) # 80001274 <thread_dispatch>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005a54:	00006797          	auipc	a5,0x6
    80005a58:	b6f7c783          	lbu	a5,-1169(a5) # 8000b5c3 <_ZL9finishedA>
    80005a5c:	fe0788e3          	beqz	a5,80005a4c <_Z16System_Mode_testv+0xb4>
    80005a60:	00006797          	auipc	a5,0x6
    80005a64:	b627c783          	lbu	a5,-1182(a5) # 8000b5c2 <_ZL9finishedB>
    80005a68:	fe0782e3          	beqz	a5,80005a4c <_Z16System_Mode_testv+0xb4>
    80005a6c:	00006797          	auipc	a5,0x6
    80005a70:	b557c783          	lbu	a5,-1195(a5) # 8000b5c1 <_ZL9finishedC>
    80005a74:	fc078ce3          	beqz	a5,80005a4c <_Z16System_Mode_testv+0xb4>
    80005a78:	00006797          	auipc	a5,0x6
    80005a7c:	b487c783          	lbu	a5,-1208(a5) # 8000b5c0 <_ZL9finishedD>
    80005a80:	fc0786e3          	beqz	a5,80005a4c <_Z16System_Mode_testv+0xb4>
    }

}
    80005a84:	02813083          	ld	ra,40(sp)
    80005a88:	02013403          	ld	s0,32(sp)
    80005a8c:	03010113          	addi	sp,sp,48
    80005a90:	00008067          	ret

0000000080005a94 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005a94:	fe010113          	addi	sp,sp,-32
    80005a98:	00113c23          	sd	ra,24(sp)
    80005a9c:	00813823          	sd	s0,16(sp)
    80005aa0:	00913423          	sd	s1,8(sp)
    80005aa4:	01213023          	sd	s2,0(sp)
    80005aa8:	02010413          	addi	s0,sp,32
    80005aac:	00050493          	mv	s1,a0
    80005ab0:	00058913          	mv	s2,a1
    80005ab4:	0015879b          	addiw	a5,a1,1
    80005ab8:	0007851b          	sext.w	a0,a5
    80005abc:	00f4a023          	sw	a5,0(s1)
    80005ac0:	0004a823          	sw	zero,16(s1)
    80005ac4:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005ac8:	00251513          	slli	a0,a0,0x2
    80005acc:	ffffb097          	auipc	ra,0xffffb
    80005ad0:	678080e7          	jalr	1656(ra) # 80001144 <mem_alloc>
    80005ad4:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80005ad8:	00000593          	li	a1,0
    80005adc:	02048513          	addi	a0,s1,32
    80005ae0:	ffffb097          	auipc	ra,0xffffb
    80005ae4:	7f4080e7          	jalr	2036(ra) # 800012d4 <sem_open>
    sem_open(&spaceAvailable, _cap);
    80005ae8:	00090593          	mv	a1,s2
    80005aec:	01848513          	addi	a0,s1,24
    80005af0:	ffffb097          	auipc	ra,0xffffb
    80005af4:	7e4080e7          	jalr	2020(ra) # 800012d4 <sem_open>
    sem_open(&mutexHead, 1);
    80005af8:	00100593          	li	a1,1
    80005afc:	02848513          	addi	a0,s1,40
    80005b00:	ffffb097          	auipc	ra,0xffffb
    80005b04:	7d4080e7          	jalr	2004(ra) # 800012d4 <sem_open>
    sem_open(&mutexTail, 1);
    80005b08:	00100593          	li	a1,1
    80005b0c:	03048513          	addi	a0,s1,48
    80005b10:	ffffb097          	auipc	ra,0xffffb
    80005b14:	7c4080e7          	jalr	1988(ra) # 800012d4 <sem_open>
}
    80005b18:	01813083          	ld	ra,24(sp)
    80005b1c:	01013403          	ld	s0,16(sp)
    80005b20:	00813483          	ld	s1,8(sp)
    80005b24:	00013903          	ld	s2,0(sp)
    80005b28:	02010113          	addi	sp,sp,32
    80005b2c:	00008067          	ret

0000000080005b30 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80005b30:	fe010113          	addi	sp,sp,-32
    80005b34:	00113c23          	sd	ra,24(sp)
    80005b38:	00813823          	sd	s0,16(sp)
    80005b3c:	00913423          	sd	s1,8(sp)
    80005b40:	01213023          	sd	s2,0(sp)
    80005b44:	02010413          	addi	s0,sp,32
    80005b48:	00050493          	mv	s1,a0
    80005b4c:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80005b50:	01853503          	ld	a0,24(a0)
    80005b54:	ffffc097          	auipc	ra,0xffffc
    80005b58:	824080e7          	jalr	-2012(ra) # 80001378 <sem_wait>

    sem_wait(mutexTail);
    80005b5c:	0304b503          	ld	a0,48(s1)
    80005b60:	ffffc097          	auipc	ra,0xffffc
    80005b64:	818080e7          	jalr	-2024(ra) # 80001378 <sem_wait>
    buffer[tail] = val;
    80005b68:	0084b783          	ld	a5,8(s1)
    80005b6c:	0144a703          	lw	a4,20(s1)
    80005b70:	00271713          	slli	a4,a4,0x2
    80005b74:	00e787b3          	add	a5,a5,a4
    80005b78:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005b7c:	0144a783          	lw	a5,20(s1)
    80005b80:	0017879b          	addiw	a5,a5,1
    80005b84:	0004a703          	lw	a4,0(s1)
    80005b88:	02e7e7bb          	remw	a5,a5,a4
    80005b8c:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80005b90:	0304b503          	ld	a0,48(s1)
    80005b94:	ffffc097          	auipc	ra,0xffffc
    80005b98:	830080e7          	jalr	-2000(ra) # 800013c4 <sem_signal>

    sem_signal(itemAvailable);
    80005b9c:	0204b503          	ld	a0,32(s1)
    80005ba0:	ffffc097          	auipc	ra,0xffffc
    80005ba4:	824080e7          	jalr	-2012(ra) # 800013c4 <sem_signal>

}
    80005ba8:	01813083          	ld	ra,24(sp)
    80005bac:	01013403          	ld	s0,16(sp)
    80005bb0:	00813483          	ld	s1,8(sp)
    80005bb4:	00013903          	ld	s2,0(sp)
    80005bb8:	02010113          	addi	sp,sp,32
    80005bbc:	00008067          	ret

0000000080005bc0 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80005bc0:	fe010113          	addi	sp,sp,-32
    80005bc4:	00113c23          	sd	ra,24(sp)
    80005bc8:	00813823          	sd	s0,16(sp)
    80005bcc:	00913423          	sd	s1,8(sp)
    80005bd0:	01213023          	sd	s2,0(sp)
    80005bd4:	02010413          	addi	s0,sp,32
    80005bd8:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80005bdc:	02053503          	ld	a0,32(a0)
    80005be0:	ffffb097          	auipc	ra,0xffffb
    80005be4:	798080e7          	jalr	1944(ra) # 80001378 <sem_wait>

    sem_wait(mutexHead);
    80005be8:	0284b503          	ld	a0,40(s1)
    80005bec:	ffffb097          	auipc	ra,0xffffb
    80005bf0:	78c080e7          	jalr	1932(ra) # 80001378 <sem_wait>

    int ret = buffer[head];
    80005bf4:	0084b703          	ld	a4,8(s1)
    80005bf8:	0104a783          	lw	a5,16(s1)
    80005bfc:	00279693          	slli	a3,a5,0x2
    80005c00:	00d70733          	add	a4,a4,a3
    80005c04:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005c08:	0017879b          	addiw	a5,a5,1
    80005c0c:	0004a703          	lw	a4,0(s1)
    80005c10:	02e7e7bb          	remw	a5,a5,a4
    80005c14:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80005c18:	0284b503          	ld	a0,40(s1)
    80005c1c:	ffffb097          	auipc	ra,0xffffb
    80005c20:	7a8080e7          	jalr	1960(ra) # 800013c4 <sem_signal>

    sem_signal(spaceAvailable);
    80005c24:	0184b503          	ld	a0,24(s1)
    80005c28:	ffffb097          	auipc	ra,0xffffb
    80005c2c:	79c080e7          	jalr	1948(ra) # 800013c4 <sem_signal>

    return ret;
}
    80005c30:	00090513          	mv	a0,s2
    80005c34:	01813083          	ld	ra,24(sp)
    80005c38:	01013403          	ld	s0,16(sp)
    80005c3c:	00813483          	ld	s1,8(sp)
    80005c40:	00013903          	ld	s2,0(sp)
    80005c44:	02010113          	addi	sp,sp,32
    80005c48:	00008067          	ret

0000000080005c4c <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80005c4c:	fe010113          	addi	sp,sp,-32
    80005c50:	00113c23          	sd	ra,24(sp)
    80005c54:	00813823          	sd	s0,16(sp)
    80005c58:	00913423          	sd	s1,8(sp)
    80005c5c:	01213023          	sd	s2,0(sp)
    80005c60:	02010413          	addi	s0,sp,32
    80005c64:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80005c68:	02853503          	ld	a0,40(a0)
    80005c6c:	ffffb097          	auipc	ra,0xffffb
    80005c70:	70c080e7          	jalr	1804(ra) # 80001378 <sem_wait>
    sem_wait(mutexTail);
    80005c74:	0304b503          	ld	a0,48(s1)
    80005c78:	ffffb097          	auipc	ra,0xffffb
    80005c7c:	700080e7          	jalr	1792(ra) # 80001378 <sem_wait>

    if (tail >= head) {
    80005c80:	0144a783          	lw	a5,20(s1)
    80005c84:	0104a903          	lw	s2,16(s1)
    80005c88:	0327ce63          	blt	a5,s2,80005cc4 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80005c8c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80005c90:	0304b503          	ld	a0,48(s1)
    80005c94:	ffffb097          	auipc	ra,0xffffb
    80005c98:	730080e7          	jalr	1840(ra) # 800013c4 <sem_signal>
    sem_signal(mutexHead);
    80005c9c:	0284b503          	ld	a0,40(s1)
    80005ca0:	ffffb097          	auipc	ra,0xffffb
    80005ca4:	724080e7          	jalr	1828(ra) # 800013c4 <sem_signal>

    return ret;
}
    80005ca8:	00090513          	mv	a0,s2
    80005cac:	01813083          	ld	ra,24(sp)
    80005cb0:	01013403          	ld	s0,16(sp)
    80005cb4:	00813483          	ld	s1,8(sp)
    80005cb8:	00013903          	ld	s2,0(sp)
    80005cbc:	02010113          	addi	sp,sp,32
    80005cc0:	00008067          	ret
        ret = cap - head + tail;
    80005cc4:	0004a703          	lw	a4,0(s1)
    80005cc8:	4127093b          	subw	s2,a4,s2
    80005ccc:	00f9093b          	addw	s2,s2,a5
    80005cd0:	fc1ff06f          	j	80005c90 <_ZN6Buffer6getCntEv+0x44>

0000000080005cd4 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80005cd4:	fe010113          	addi	sp,sp,-32
    80005cd8:	00113c23          	sd	ra,24(sp)
    80005cdc:	00813823          	sd	s0,16(sp)
    80005ce0:	00913423          	sd	s1,8(sp)
    80005ce4:	02010413          	addi	s0,sp,32
    80005ce8:	00050493          	mv	s1,a0
    putc('\n');
    80005cec:	00a00513          	li	a0,10
    80005cf0:	ffffb097          	auipc	ra,0xffffb
    80005cf4:	744080e7          	jalr	1860(ra) # 80001434 <putc>
    printString("Buffer deleted!\n");
    80005cf8:	00003517          	auipc	a0,0x3
    80005cfc:	77050513          	addi	a0,a0,1904 # 80009468 <CONSOLE_STATUS+0x458>
    80005d00:	fffff097          	auipc	ra,0xfffff
    80005d04:	f9c080e7          	jalr	-100(ra) # 80004c9c <_Z11printStringPKc>
    while (getCnt() > 0) {
    80005d08:	00048513          	mv	a0,s1
    80005d0c:	00000097          	auipc	ra,0x0
    80005d10:	f40080e7          	jalr	-192(ra) # 80005c4c <_ZN6Buffer6getCntEv>
    80005d14:	02a05c63          	blez	a0,80005d4c <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80005d18:	0084b783          	ld	a5,8(s1)
    80005d1c:	0104a703          	lw	a4,16(s1)
    80005d20:	00271713          	slli	a4,a4,0x2
    80005d24:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80005d28:	0007c503          	lbu	a0,0(a5)
    80005d2c:	ffffb097          	auipc	ra,0xffffb
    80005d30:	708080e7          	jalr	1800(ra) # 80001434 <putc>
        head = (head + 1) % cap;
    80005d34:	0104a783          	lw	a5,16(s1)
    80005d38:	0017879b          	addiw	a5,a5,1
    80005d3c:	0004a703          	lw	a4,0(s1)
    80005d40:	02e7e7bb          	remw	a5,a5,a4
    80005d44:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80005d48:	fc1ff06f          	j	80005d08 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80005d4c:	02100513          	li	a0,33
    80005d50:	ffffb097          	auipc	ra,0xffffb
    80005d54:	6e4080e7          	jalr	1764(ra) # 80001434 <putc>
    putc('\n');
    80005d58:	00a00513          	li	a0,10
    80005d5c:	ffffb097          	auipc	ra,0xffffb
    80005d60:	6d8080e7          	jalr	1752(ra) # 80001434 <putc>
    mem_free(buffer);
    80005d64:	0084b503          	ld	a0,8(s1)
    80005d68:	ffffb097          	auipc	ra,0xffffb
    80005d6c:	41c080e7          	jalr	1052(ra) # 80001184 <mem_free>
    sem_close(itemAvailable);
    80005d70:	0204b503          	ld	a0,32(s1)
    80005d74:	ffffb097          	auipc	ra,0xffffb
    80005d78:	5b8080e7          	jalr	1464(ra) # 8000132c <sem_close>
    sem_close(spaceAvailable);
    80005d7c:	0184b503          	ld	a0,24(s1)
    80005d80:	ffffb097          	auipc	ra,0xffffb
    80005d84:	5ac080e7          	jalr	1452(ra) # 8000132c <sem_close>
    sem_close(mutexTail);
    80005d88:	0304b503          	ld	a0,48(s1)
    80005d8c:	ffffb097          	auipc	ra,0xffffb
    80005d90:	5a0080e7          	jalr	1440(ra) # 8000132c <sem_close>
    sem_close(mutexHead);
    80005d94:	0284b503          	ld	a0,40(s1)
    80005d98:	ffffb097          	auipc	ra,0xffffb
    80005d9c:	594080e7          	jalr	1428(ra) # 8000132c <sem_close>
}
    80005da0:	01813083          	ld	ra,24(sp)
    80005da4:	01013403          	ld	s0,16(sp)
    80005da8:	00813483          	ld	s1,8(sp)
    80005dac:	02010113          	addi	sp,sp,32
    80005db0:	00008067          	ret

0000000080005db4 <start>:
    80005db4:	ff010113          	addi	sp,sp,-16
    80005db8:	00813423          	sd	s0,8(sp)
    80005dbc:	01010413          	addi	s0,sp,16
    80005dc0:	300027f3          	csrr	a5,mstatus
    80005dc4:	ffffe737          	lui	a4,0xffffe
    80005dc8:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1fbf>
    80005dcc:	00e7f7b3          	and	a5,a5,a4
    80005dd0:	00001737          	lui	a4,0x1
    80005dd4:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80005dd8:	00e7e7b3          	or	a5,a5,a4
    80005ddc:	30079073          	csrw	mstatus,a5
    80005de0:	00000797          	auipc	a5,0x0
    80005de4:	16078793          	addi	a5,a5,352 # 80005f40 <system_main>
    80005de8:	34179073          	csrw	mepc,a5
    80005dec:	00000793          	li	a5,0
    80005df0:	18079073          	csrw	satp,a5
    80005df4:	000107b7          	lui	a5,0x10
    80005df8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80005dfc:	30279073          	csrw	medeleg,a5
    80005e00:	30379073          	csrw	mideleg,a5
    80005e04:	104027f3          	csrr	a5,sie
    80005e08:	2227e793          	ori	a5,a5,546
    80005e0c:	10479073          	csrw	sie,a5
    80005e10:	fff00793          	li	a5,-1
    80005e14:	00a7d793          	srli	a5,a5,0xa
    80005e18:	3b079073          	csrw	pmpaddr0,a5
    80005e1c:	00f00793          	li	a5,15
    80005e20:	3a079073          	csrw	pmpcfg0,a5
    80005e24:	f14027f3          	csrr	a5,mhartid
    80005e28:	0200c737          	lui	a4,0x200c
    80005e2c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005e30:	0007869b          	sext.w	a3,a5
    80005e34:	00269713          	slli	a4,a3,0x2
    80005e38:	000f4637          	lui	a2,0xf4
    80005e3c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005e40:	00d70733          	add	a4,a4,a3
    80005e44:	0037979b          	slliw	a5,a5,0x3
    80005e48:	020046b7          	lui	a3,0x2004
    80005e4c:	00d787b3          	add	a5,a5,a3
    80005e50:	00c585b3          	add	a1,a1,a2
    80005e54:	00371693          	slli	a3,a4,0x3
    80005e58:	00005717          	auipc	a4,0x5
    80005e5c:	77870713          	addi	a4,a4,1912 # 8000b5d0 <timer_scratch>
    80005e60:	00b7b023          	sd	a1,0(a5)
    80005e64:	00d70733          	add	a4,a4,a3
    80005e68:	00f73c23          	sd	a5,24(a4)
    80005e6c:	02c73023          	sd	a2,32(a4)
    80005e70:	34071073          	csrw	mscratch,a4
    80005e74:	00000797          	auipc	a5,0x0
    80005e78:	6ec78793          	addi	a5,a5,1772 # 80006560 <timervec>
    80005e7c:	30579073          	csrw	mtvec,a5
    80005e80:	300027f3          	csrr	a5,mstatus
    80005e84:	0087e793          	ori	a5,a5,8
    80005e88:	30079073          	csrw	mstatus,a5
    80005e8c:	304027f3          	csrr	a5,mie
    80005e90:	0807e793          	ori	a5,a5,128
    80005e94:	30479073          	csrw	mie,a5
    80005e98:	f14027f3          	csrr	a5,mhartid
    80005e9c:	0007879b          	sext.w	a5,a5
    80005ea0:	00078213          	mv	tp,a5
    80005ea4:	30200073          	mret
    80005ea8:	00813403          	ld	s0,8(sp)
    80005eac:	01010113          	addi	sp,sp,16
    80005eb0:	00008067          	ret

0000000080005eb4 <timerinit>:
    80005eb4:	ff010113          	addi	sp,sp,-16
    80005eb8:	00813423          	sd	s0,8(sp)
    80005ebc:	01010413          	addi	s0,sp,16
    80005ec0:	f14027f3          	csrr	a5,mhartid
    80005ec4:	0200c737          	lui	a4,0x200c
    80005ec8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005ecc:	0007869b          	sext.w	a3,a5
    80005ed0:	00269713          	slli	a4,a3,0x2
    80005ed4:	000f4637          	lui	a2,0xf4
    80005ed8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005edc:	00d70733          	add	a4,a4,a3
    80005ee0:	0037979b          	slliw	a5,a5,0x3
    80005ee4:	020046b7          	lui	a3,0x2004
    80005ee8:	00d787b3          	add	a5,a5,a3
    80005eec:	00c585b3          	add	a1,a1,a2
    80005ef0:	00371693          	slli	a3,a4,0x3
    80005ef4:	00005717          	auipc	a4,0x5
    80005ef8:	6dc70713          	addi	a4,a4,1756 # 8000b5d0 <timer_scratch>
    80005efc:	00b7b023          	sd	a1,0(a5)
    80005f00:	00d70733          	add	a4,a4,a3
    80005f04:	00f73c23          	sd	a5,24(a4)
    80005f08:	02c73023          	sd	a2,32(a4)
    80005f0c:	34071073          	csrw	mscratch,a4
    80005f10:	00000797          	auipc	a5,0x0
    80005f14:	65078793          	addi	a5,a5,1616 # 80006560 <timervec>
    80005f18:	30579073          	csrw	mtvec,a5
    80005f1c:	300027f3          	csrr	a5,mstatus
    80005f20:	0087e793          	ori	a5,a5,8
    80005f24:	30079073          	csrw	mstatus,a5
    80005f28:	304027f3          	csrr	a5,mie
    80005f2c:	0807e793          	ori	a5,a5,128
    80005f30:	30479073          	csrw	mie,a5
    80005f34:	00813403          	ld	s0,8(sp)
    80005f38:	01010113          	addi	sp,sp,16
    80005f3c:	00008067          	ret

0000000080005f40 <system_main>:
    80005f40:	fe010113          	addi	sp,sp,-32
    80005f44:	00813823          	sd	s0,16(sp)
    80005f48:	00913423          	sd	s1,8(sp)
    80005f4c:	00113c23          	sd	ra,24(sp)
    80005f50:	02010413          	addi	s0,sp,32
    80005f54:	00000097          	auipc	ra,0x0
    80005f58:	0c4080e7          	jalr	196(ra) # 80006018 <cpuid>
    80005f5c:	00005497          	auipc	s1,0x5
    80005f60:	5b448493          	addi	s1,s1,1460 # 8000b510 <started>
    80005f64:	02050263          	beqz	a0,80005f88 <system_main+0x48>
    80005f68:	0004a783          	lw	a5,0(s1)
    80005f6c:	0007879b          	sext.w	a5,a5
    80005f70:	fe078ce3          	beqz	a5,80005f68 <system_main+0x28>
    80005f74:	0ff0000f          	fence
    80005f78:	00003517          	auipc	a0,0x3
    80005f7c:	77050513          	addi	a0,a0,1904 # 800096e8 <CONSOLE_STATUS+0x6d8>
    80005f80:	00001097          	auipc	ra,0x1
    80005f84:	a7c080e7          	jalr	-1412(ra) # 800069fc <panic>
    80005f88:	00001097          	auipc	ra,0x1
    80005f8c:	9d0080e7          	jalr	-1584(ra) # 80006958 <consoleinit>
    80005f90:	00001097          	auipc	ra,0x1
    80005f94:	15c080e7          	jalr	348(ra) # 800070ec <printfinit>
    80005f98:	00003517          	auipc	a0,0x3
    80005f9c:	65850513          	addi	a0,a0,1624 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80005fa0:	00001097          	auipc	ra,0x1
    80005fa4:	ab8080e7          	jalr	-1352(ra) # 80006a58 <__printf>
    80005fa8:	00003517          	auipc	a0,0x3
    80005fac:	71050513          	addi	a0,a0,1808 # 800096b8 <CONSOLE_STATUS+0x6a8>
    80005fb0:	00001097          	auipc	ra,0x1
    80005fb4:	aa8080e7          	jalr	-1368(ra) # 80006a58 <__printf>
    80005fb8:	00003517          	auipc	a0,0x3
    80005fbc:	63850513          	addi	a0,a0,1592 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80005fc0:	00001097          	auipc	ra,0x1
    80005fc4:	a98080e7          	jalr	-1384(ra) # 80006a58 <__printf>
    80005fc8:	00001097          	auipc	ra,0x1
    80005fcc:	4b0080e7          	jalr	1200(ra) # 80007478 <kinit>
    80005fd0:	00000097          	auipc	ra,0x0
    80005fd4:	148080e7          	jalr	328(ra) # 80006118 <trapinit>
    80005fd8:	00000097          	auipc	ra,0x0
    80005fdc:	16c080e7          	jalr	364(ra) # 80006144 <trapinithart>
    80005fe0:	00000097          	auipc	ra,0x0
    80005fe4:	5c0080e7          	jalr	1472(ra) # 800065a0 <plicinit>
    80005fe8:	00000097          	auipc	ra,0x0
    80005fec:	5e0080e7          	jalr	1504(ra) # 800065c8 <plicinithart>
    80005ff0:	00000097          	auipc	ra,0x0
    80005ff4:	078080e7          	jalr	120(ra) # 80006068 <userinit>
    80005ff8:	0ff0000f          	fence
    80005ffc:	00100793          	li	a5,1
    80006000:	00003517          	auipc	a0,0x3
    80006004:	6d050513          	addi	a0,a0,1744 # 800096d0 <CONSOLE_STATUS+0x6c0>
    80006008:	00f4a023          	sw	a5,0(s1)
    8000600c:	00001097          	auipc	ra,0x1
    80006010:	a4c080e7          	jalr	-1460(ra) # 80006a58 <__printf>
    80006014:	0000006f          	j	80006014 <system_main+0xd4>

0000000080006018 <cpuid>:
    80006018:	ff010113          	addi	sp,sp,-16
    8000601c:	00813423          	sd	s0,8(sp)
    80006020:	01010413          	addi	s0,sp,16
    80006024:	00020513          	mv	a0,tp
    80006028:	00813403          	ld	s0,8(sp)
    8000602c:	0005051b          	sext.w	a0,a0
    80006030:	01010113          	addi	sp,sp,16
    80006034:	00008067          	ret

0000000080006038 <mycpu>:
    80006038:	ff010113          	addi	sp,sp,-16
    8000603c:	00813423          	sd	s0,8(sp)
    80006040:	01010413          	addi	s0,sp,16
    80006044:	00020793          	mv	a5,tp
    80006048:	00813403          	ld	s0,8(sp)
    8000604c:	0007879b          	sext.w	a5,a5
    80006050:	00779793          	slli	a5,a5,0x7
    80006054:	00006517          	auipc	a0,0x6
    80006058:	5ac50513          	addi	a0,a0,1452 # 8000c600 <cpus>
    8000605c:	00f50533          	add	a0,a0,a5
    80006060:	01010113          	addi	sp,sp,16
    80006064:	00008067          	ret

0000000080006068 <userinit>:
    80006068:	ff010113          	addi	sp,sp,-16
    8000606c:	00813423          	sd	s0,8(sp)
    80006070:	01010413          	addi	s0,sp,16
    80006074:	00813403          	ld	s0,8(sp)
    80006078:	01010113          	addi	sp,sp,16
    8000607c:	ffffc317          	auipc	t1,0xffffc
    80006080:	8ec30067          	jr	-1812(t1) # 80001968 <main>

0000000080006084 <either_copyout>:
    80006084:	ff010113          	addi	sp,sp,-16
    80006088:	00813023          	sd	s0,0(sp)
    8000608c:	00113423          	sd	ra,8(sp)
    80006090:	01010413          	addi	s0,sp,16
    80006094:	02051663          	bnez	a0,800060c0 <either_copyout+0x3c>
    80006098:	00058513          	mv	a0,a1
    8000609c:	00060593          	mv	a1,a2
    800060a0:	0006861b          	sext.w	a2,a3
    800060a4:	00002097          	auipc	ra,0x2
    800060a8:	c60080e7          	jalr	-928(ra) # 80007d04 <__memmove>
    800060ac:	00813083          	ld	ra,8(sp)
    800060b0:	00013403          	ld	s0,0(sp)
    800060b4:	00000513          	li	a0,0
    800060b8:	01010113          	addi	sp,sp,16
    800060bc:	00008067          	ret
    800060c0:	00003517          	auipc	a0,0x3
    800060c4:	65050513          	addi	a0,a0,1616 # 80009710 <CONSOLE_STATUS+0x700>
    800060c8:	00001097          	auipc	ra,0x1
    800060cc:	934080e7          	jalr	-1740(ra) # 800069fc <panic>

00000000800060d0 <either_copyin>:
    800060d0:	ff010113          	addi	sp,sp,-16
    800060d4:	00813023          	sd	s0,0(sp)
    800060d8:	00113423          	sd	ra,8(sp)
    800060dc:	01010413          	addi	s0,sp,16
    800060e0:	02059463          	bnez	a1,80006108 <either_copyin+0x38>
    800060e4:	00060593          	mv	a1,a2
    800060e8:	0006861b          	sext.w	a2,a3
    800060ec:	00002097          	auipc	ra,0x2
    800060f0:	c18080e7          	jalr	-1000(ra) # 80007d04 <__memmove>
    800060f4:	00813083          	ld	ra,8(sp)
    800060f8:	00013403          	ld	s0,0(sp)
    800060fc:	00000513          	li	a0,0
    80006100:	01010113          	addi	sp,sp,16
    80006104:	00008067          	ret
    80006108:	00003517          	auipc	a0,0x3
    8000610c:	63050513          	addi	a0,a0,1584 # 80009738 <CONSOLE_STATUS+0x728>
    80006110:	00001097          	auipc	ra,0x1
    80006114:	8ec080e7          	jalr	-1812(ra) # 800069fc <panic>

0000000080006118 <trapinit>:
    80006118:	ff010113          	addi	sp,sp,-16
    8000611c:	00813423          	sd	s0,8(sp)
    80006120:	01010413          	addi	s0,sp,16
    80006124:	00813403          	ld	s0,8(sp)
    80006128:	00003597          	auipc	a1,0x3
    8000612c:	63858593          	addi	a1,a1,1592 # 80009760 <CONSOLE_STATUS+0x750>
    80006130:	00006517          	auipc	a0,0x6
    80006134:	55050513          	addi	a0,a0,1360 # 8000c680 <tickslock>
    80006138:	01010113          	addi	sp,sp,16
    8000613c:	00001317          	auipc	t1,0x1
    80006140:	5cc30067          	jr	1484(t1) # 80007708 <initlock>

0000000080006144 <trapinithart>:
    80006144:	ff010113          	addi	sp,sp,-16
    80006148:	00813423          	sd	s0,8(sp)
    8000614c:	01010413          	addi	s0,sp,16
    80006150:	00000797          	auipc	a5,0x0
    80006154:	30078793          	addi	a5,a5,768 # 80006450 <kernelvec>
    80006158:	10579073          	csrw	stvec,a5
    8000615c:	00813403          	ld	s0,8(sp)
    80006160:	01010113          	addi	sp,sp,16
    80006164:	00008067          	ret

0000000080006168 <usertrap>:
    80006168:	ff010113          	addi	sp,sp,-16
    8000616c:	00813423          	sd	s0,8(sp)
    80006170:	01010413          	addi	s0,sp,16
    80006174:	00813403          	ld	s0,8(sp)
    80006178:	01010113          	addi	sp,sp,16
    8000617c:	00008067          	ret

0000000080006180 <usertrapret>:
    80006180:	ff010113          	addi	sp,sp,-16
    80006184:	00813423          	sd	s0,8(sp)
    80006188:	01010413          	addi	s0,sp,16
    8000618c:	00813403          	ld	s0,8(sp)
    80006190:	01010113          	addi	sp,sp,16
    80006194:	00008067          	ret

0000000080006198 <kerneltrap>:
    80006198:	fe010113          	addi	sp,sp,-32
    8000619c:	00813823          	sd	s0,16(sp)
    800061a0:	00113c23          	sd	ra,24(sp)
    800061a4:	00913423          	sd	s1,8(sp)
    800061a8:	02010413          	addi	s0,sp,32
    800061ac:	142025f3          	csrr	a1,scause
    800061b0:	100027f3          	csrr	a5,sstatus
    800061b4:	0027f793          	andi	a5,a5,2
    800061b8:	10079c63          	bnez	a5,800062d0 <kerneltrap+0x138>
    800061bc:	142027f3          	csrr	a5,scause
    800061c0:	0207ce63          	bltz	a5,800061fc <kerneltrap+0x64>
    800061c4:	00003517          	auipc	a0,0x3
    800061c8:	5e450513          	addi	a0,a0,1508 # 800097a8 <CONSOLE_STATUS+0x798>
    800061cc:	00001097          	auipc	ra,0x1
    800061d0:	88c080e7          	jalr	-1908(ra) # 80006a58 <__printf>
    800061d4:	141025f3          	csrr	a1,sepc
    800061d8:	14302673          	csrr	a2,stval
    800061dc:	00003517          	auipc	a0,0x3
    800061e0:	5dc50513          	addi	a0,a0,1500 # 800097b8 <CONSOLE_STATUS+0x7a8>
    800061e4:	00001097          	auipc	ra,0x1
    800061e8:	874080e7          	jalr	-1932(ra) # 80006a58 <__printf>
    800061ec:	00003517          	auipc	a0,0x3
    800061f0:	5e450513          	addi	a0,a0,1508 # 800097d0 <CONSOLE_STATUS+0x7c0>
    800061f4:	00001097          	auipc	ra,0x1
    800061f8:	808080e7          	jalr	-2040(ra) # 800069fc <panic>
    800061fc:	0ff7f713          	andi	a4,a5,255
    80006200:	00900693          	li	a3,9
    80006204:	04d70063          	beq	a4,a3,80006244 <kerneltrap+0xac>
    80006208:	fff00713          	li	a4,-1
    8000620c:	03f71713          	slli	a4,a4,0x3f
    80006210:	00170713          	addi	a4,a4,1
    80006214:	fae798e3          	bne	a5,a4,800061c4 <kerneltrap+0x2c>
    80006218:	00000097          	auipc	ra,0x0
    8000621c:	e00080e7          	jalr	-512(ra) # 80006018 <cpuid>
    80006220:	06050663          	beqz	a0,8000628c <kerneltrap+0xf4>
    80006224:	144027f3          	csrr	a5,sip
    80006228:	ffd7f793          	andi	a5,a5,-3
    8000622c:	14479073          	csrw	sip,a5
    80006230:	01813083          	ld	ra,24(sp)
    80006234:	01013403          	ld	s0,16(sp)
    80006238:	00813483          	ld	s1,8(sp)
    8000623c:	02010113          	addi	sp,sp,32
    80006240:	00008067          	ret
    80006244:	00000097          	auipc	ra,0x0
    80006248:	3d0080e7          	jalr	976(ra) # 80006614 <plic_claim>
    8000624c:	00a00793          	li	a5,10
    80006250:	00050493          	mv	s1,a0
    80006254:	06f50863          	beq	a0,a5,800062c4 <kerneltrap+0x12c>
    80006258:	fc050ce3          	beqz	a0,80006230 <kerneltrap+0x98>
    8000625c:	00050593          	mv	a1,a0
    80006260:	00003517          	auipc	a0,0x3
    80006264:	52850513          	addi	a0,a0,1320 # 80009788 <CONSOLE_STATUS+0x778>
    80006268:	00000097          	auipc	ra,0x0
    8000626c:	7f0080e7          	jalr	2032(ra) # 80006a58 <__printf>
    80006270:	01013403          	ld	s0,16(sp)
    80006274:	01813083          	ld	ra,24(sp)
    80006278:	00048513          	mv	a0,s1
    8000627c:	00813483          	ld	s1,8(sp)
    80006280:	02010113          	addi	sp,sp,32
    80006284:	00000317          	auipc	t1,0x0
    80006288:	3c830067          	jr	968(t1) # 8000664c <plic_complete>
    8000628c:	00006517          	auipc	a0,0x6
    80006290:	3f450513          	addi	a0,a0,1012 # 8000c680 <tickslock>
    80006294:	00001097          	auipc	ra,0x1
    80006298:	498080e7          	jalr	1176(ra) # 8000772c <acquire>
    8000629c:	00005717          	auipc	a4,0x5
    800062a0:	27870713          	addi	a4,a4,632 # 8000b514 <ticks>
    800062a4:	00072783          	lw	a5,0(a4)
    800062a8:	00006517          	auipc	a0,0x6
    800062ac:	3d850513          	addi	a0,a0,984 # 8000c680 <tickslock>
    800062b0:	0017879b          	addiw	a5,a5,1
    800062b4:	00f72023          	sw	a5,0(a4)
    800062b8:	00001097          	auipc	ra,0x1
    800062bc:	540080e7          	jalr	1344(ra) # 800077f8 <release>
    800062c0:	f65ff06f          	j	80006224 <kerneltrap+0x8c>
    800062c4:	00001097          	auipc	ra,0x1
    800062c8:	09c080e7          	jalr	156(ra) # 80007360 <uartintr>
    800062cc:	fa5ff06f          	j	80006270 <kerneltrap+0xd8>
    800062d0:	00003517          	auipc	a0,0x3
    800062d4:	49850513          	addi	a0,a0,1176 # 80009768 <CONSOLE_STATUS+0x758>
    800062d8:	00000097          	auipc	ra,0x0
    800062dc:	724080e7          	jalr	1828(ra) # 800069fc <panic>

00000000800062e0 <clockintr>:
    800062e0:	fe010113          	addi	sp,sp,-32
    800062e4:	00813823          	sd	s0,16(sp)
    800062e8:	00913423          	sd	s1,8(sp)
    800062ec:	00113c23          	sd	ra,24(sp)
    800062f0:	02010413          	addi	s0,sp,32
    800062f4:	00006497          	auipc	s1,0x6
    800062f8:	38c48493          	addi	s1,s1,908 # 8000c680 <tickslock>
    800062fc:	00048513          	mv	a0,s1
    80006300:	00001097          	auipc	ra,0x1
    80006304:	42c080e7          	jalr	1068(ra) # 8000772c <acquire>
    80006308:	00005717          	auipc	a4,0x5
    8000630c:	20c70713          	addi	a4,a4,524 # 8000b514 <ticks>
    80006310:	00072783          	lw	a5,0(a4)
    80006314:	01013403          	ld	s0,16(sp)
    80006318:	01813083          	ld	ra,24(sp)
    8000631c:	00048513          	mv	a0,s1
    80006320:	0017879b          	addiw	a5,a5,1
    80006324:	00813483          	ld	s1,8(sp)
    80006328:	00f72023          	sw	a5,0(a4)
    8000632c:	02010113          	addi	sp,sp,32
    80006330:	00001317          	auipc	t1,0x1
    80006334:	4c830067          	jr	1224(t1) # 800077f8 <release>

0000000080006338 <devintr>:
    80006338:	142027f3          	csrr	a5,scause
    8000633c:	00000513          	li	a0,0
    80006340:	0007c463          	bltz	a5,80006348 <devintr+0x10>
    80006344:	00008067          	ret
    80006348:	fe010113          	addi	sp,sp,-32
    8000634c:	00813823          	sd	s0,16(sp)
    80006350:	00113c23          	sd	ra,24(sp)
    80006354:	00913423          	sd	s1,8(sp)
    80006358:	02010413          	addi	s0,sp,32
    8000635c:	0ff7f713          	andi	a4,a5,255
    80006360:	00900693          	li	a3,9
    80006364:	04d70c63          	beq	a4,a3,800063bc <devintr+0x84>
    80006368:	fff00713          	li	a4,-1
    8000636c:	03f71713          	slli	a4,a4,0x3f
    80006370:	00170713          	addi	a4,a4,1
    80006374:	00e78c63          	beq	a5,a4,8000638c <devintr+0x54>
    80006378:	01813083          	ld	ra,24(sp)
    8000637c:	01013403          	ld	s0,16(sp)
    80006380:	00813483          	ld	s1,8(sp)
    80006384:	02010113          	addi	sp,sp,32
    80006388:	00008067          	ret
    8000638c:	00000097          	auipc	ra,0x0
    80006390:	c8c080e7          	jalr	-884(ra) # 80006018 <cpuid>
    80006394:	06050663          	beqz	a0,80006400 <devintr+0xc8>
    80006398:	144027f3          	csrr	a5,sip
    8000639c:	ffd7f793          	andi	a5,a5,-3
    800063a0:	14479073          	csrw	sip,a5
    800063a4:	01813083          	ld	ra,24(sp)
    800063a8:	01013403          	ld	s0,16(sp)
    800063ac:	00813483          	ld	s1,8(sp)
    800063b0:	00200513          	li	a0,2
    800063b4:	02010113          	addi	sp,sp,32
    800063b8:	00008067          	ret
    800063bc:	00000097          	auipc	ra,0x0
    800063c0:	258080e7          	jalr	600(ra) # 80006614 <plic_claim>
    800063c4:	00a00793          	li	a5,10
    800063c8:	00050493          	mv	s1,a0
    800063cc:	06f50663          	beq	a0,a5,80006438 <devintr+0x100>
    800063d0:	00100513          	li	a0,1
    800063d4:	fa0482e3          	beqz	s1,80006378 <devintr+0x40>
    800063d8:	00048593          	mv	a1,s1
    800063dc:	00003517          	auipc	a0,0x3
    800063e0:	3ac50513          	addi	a0,a0,940 # 80009788 <CONSOLE_STATUS+0x778>
    800063e4:	00000097          	auipc	ra,0x0
    800063e8:	674080e7          	jalr	1652(ra) # 80006a58 <__printf>
    800063ec:	00048513          	mv	a0,s1
    800063f0:	00000097          	auipc	ra,0x0
    800063f4:	25c080e7          	jalr	604(ra) # 8000664c <plic_complete>
    800063f8:	00100513          	li	a0,1
    800063fc:	f7dff06f          	j	80006378 <devintr+0x40>
    80006400:	00006517          	auipc	a0,0x6
    80006404:	28050513          	addi	a0,a0,640 # 8000c680 <tickslock>
    80006408:	00001097          	auipc	ra,0x1
    8000640c:	324080e7          	jalr	804(ra) # 8000772c <acquire>
    80006410:	00005717          	auipc	a4,0x5
    80006414:	10470713          	addi	a4,a4,260 # 8000b514 <ticks>
    80006418:	00072783          	lw	a5,0(a4)
    8000641c:	00006517          	auipc	a0,0x6
    80006420:	26450513          	addi	a0,a0,612 # 8000c680 <tickslock>
    80006424:	0017879b          	addiw	a5,a5,1
    80006428:	00f72023          	sw	a5,0(a4)
    8000642c:	00001097          	auipc	ra,0x1
    80006430:	3cc080e7          	jalr	972(ra) # 800077f8 <release>
    80006434:	f65ff06f          	j	80006398 <devintr+0x60>
    80006438:	00001097          	auipc	ra,0x1
    8000643c:	f28080e7          	jalr	-216(ra) # 80007360 <uartintr>
    80006440:	fadff06f          	j	800063ec <devintr+0xb4>
	...

0000000080006450 <kernelvec>:
    80006450:	f0010113          	addi	sp,sp,-256
    80006454:	00113023          	sd	ra,0(sp)
    80006458:	00213423          	sd	sp,8(sp)
    8000645c:	00313823          	sd	gp,16(sp)
    80006460:	00413c23          	sd	tp,24(sp)
    80006464:	02513023          	sd	t0,32(sp)
    80006468:	02613423          	sd	t1,40(sp)
    8000646c:	02713823          	sd	t2,48(sp)
    80006470:	02813c23          	sd	s0,56(sp)
    80006474:	04913023          	sd	s1,64(sp)
    80006478:	04a13423          	sd	a0,72(sp)
    8000647c:	04b13823          	sd	a1,80(sp)
    80006480:	04c13c23          	sd	a2,88(sp)
    80006484:	06d13023          	sd	a3,96(sp)
    80006488:	06e13423          	sd	a4,104(sp)
    8000648c:	06f13823          	sd	a5,112(sp)
    80006490:	07013c23          	sd	a6,120(sp)
    80006494:	09113023          	sd	a7,128(sp)
    80006498:	09213423          	sd	s2,136(sp)
    8000649c:	09313823          	sd	s3,144(sp)
    800064a0:	09413c23          	sd	s4,152(sp)
    800064a4:	0b513023          	sd	s5,160(sp)
    800064a8:	0b613423          	sd	s6,168(sp)
    800064ac:	0b713823          	sd	s7,176(sp)
    800064b0:	0b813c23          	sd	s8,184(sp)
    800064b4:	0d913023          	sd	s9,192(sp)
    800064b8:	0da13423          	sd	s10,200(sp)
    800064bc:	0db13823          	sd	s11,208(sp)
    800064c0:	0dc13c23          	sd	t3,216(sp)
    800064c4:	0fd13023          	sd	t4,224(sp)
    800064c8:	0fe13423          	sd	t5,232(sp)
    800064cc:	0ff13823          	sd	t6,240(sp)
    800064d0:	cc9ff0ef          	jal	ra,80006198 <kerneltrap>
    800064d4:	00013083          	ld	ra,0(sp)
    800064d8:	00813103          	ld	sp,8(sp)
    800064dc:	01013183          	ld	gp,16(sp)
    800064e0:	02013283          	ld	t0,32(sp)
    800064e4:	02813303          	ld	t1,40(sp)
    800064e8:	03013383          	ld	t2,48(sp)
    800064ec:	03813403          	ld	s0,56(sp)
    800064f0:	04013483          	ld	s1,64(sp)
    800064f4:	04813503          	ld	a0,72(sp)
    800064f8:	05013583          	ld	a1,80(sp)
    800064fc:	05813603          	ld	a2,88(sp)
    80006500:	06013683          	ld	a3,96(sp)
    80006504:	06813703          	ld	a4,104(sp)
    80006508:	07013783          	ld	a5,112(sp)
    8000650c:	07813803          	ld	a6,120(sp)
    80006510:	08013883          	ld	a7,128(sp)
    80006514:	08813903          	ld	s2,136(sp)
    80006518:	09013983          	ld	s3,144(sp)
    8000651c:	09813a03          	ld	s4,152(sp)
    80006520:	0a013a83          	ld	s5,160(sp)
    80006524:	0a813b03          	ld	s6,168(sp)
    80006528:	0b013b83          	ld	s7,176(sp)
    8000652c:	0b813c03          	ld	s8,184(sp)
    80006530:	0c013c83          	ld	s9,192(sp)
    80006534:	0c813d03          	ld	s10,200(sp)
    80006538:	0d013d83          	ld	s11,208(sp)
    8000653c:	0d813e03          	ld	t3,216(sp)
    80006540:	0e013e83          	ld	t4,224(sp)
    80006544:	0e813f03          	ld	t5,232(sp)
    80006548:	0f013f83          	ld	t6,240(sp)
    8000654c:	10010113          	addi	sp,sp,256
    80006550:	10200073          	sret
    80006554:	00000013          	nop
    80006558:	00000013          	nop
    8000655c:	00000013          	nop

0000000080006560 <timervec>:
    80006560:	34051573          	csrrw	a0,mscratch,a0
    80006564:	00b53023          	sd	a1,0(a0)
    80006568:	00c53423          	sd	a2,8(a0)
    8000656c:	00d53823          	sd	a3,16(a0)
    80006570:	01853583          	ld	a1,24(a0)
    80006574:	02053603          	ld	a2,32(a0)
    80006578:	0005b683          	ld	a3,0(a1)
    8000657c:	00c686b3          	add	a3,a3,a2
    80006580:	00d5b023          	sd	a3,0(a1)
    80006584:	00200593          	li	a1,2
    80006588:	14459073          	csrw	sip,a1
    8000658c:	01053683          	ld	a3,16(a0)
    80006590:	00853603          	ld	a2,8(a0)
    80006594:	00053583          	ld	a1,0(a0)
    80006598:	34051573          	csrrw	a0,mscratch,a0
    8000659c:	30200073          	mret

00000000800065a0 <plicinit>:
    800065a0:	ff010113          	addi	sp,sp,-16
    800065a4:	00813423          	sd	s0,8(sp)
    800065a8:	01010413          	addi	s0,sp,16
    800065ac:	00813403          	ld	s0,8(sp)
    800065b0:	0c0007b7          	lui	a5,0xc000
    800065b4:	00100713          	li	a4,1
    800065b8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800065bc:	00e7a223          	sw	a4,4(a5)
    800065c0:	01010113          	addi	sp,sp,16
    800065c4:	00008067          	ret

00000000800065c8 <plicinithart>:
    800065c8:	ff010113          	addi	sp,sp,-16
    800065cc:	00813023          	sd	s0,0(sp)
    800065d0:	00113423          	sd	ra,8(sp)
    800065d4:	01010413          	addi	s0,sp,16
    800065d8:	00000097          	auipc	ra,0x0
    800065dc:	a40080e7          	jalr	-1472(ra) # 80006018 <cpuid>
    800065e0:	0085171b          	slliw	a4,a0,0x8
    800065e4:	0c0027b7          	lui	a5,0xc002
    800065e8:	00e787b3          	add	a5,a5,a4
    800065ec:	40200713          	li	a4,1026
    800065f0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800065f4:	00813083          	ld	ra,8(sp)
    800065f8:	00013403          	ld	s0,0(sp)
    800065fc:	00d5151b          	slliw	a0,a0,0xd
    80006600:	0c2017b7          	lui	a5,0xc201
    80006604:	00a78533          	add	a0,a5,a0
    80006608:	00052023          	sw	zero,0(a0)
    8000660c:	01010113          	addi	sp,sp,16
    80006610:	00008067          	ret

0000000080006614 <plic_claim>:
    80006614:	ff010113          	addi	sp,sp,-16
    80006618:	00813023          	sd	s0,0(sp)
    8000661c:	00113423          	sd	ra,8(sp)
    80006620:	01010413          	addi	s0,sp,16
    80006624:	00000097          	auipc	ra,0x0
    80006628:	9f4080e7          	jalr	-1548(ra) # 80006018 <cpuid>
    8000662c:	00813083          	ld	ra,8(sp)
    80006630:	00013403          	ld	s0,0(sp)
    80006634:	00d5151b          	slliw	a0,a0,0xd
    80006638:	0c2017b7          	lui	a5,0xc201
    8000663c:	00a78533          	add	a0,a5,a0
    80006640:	00452503          	lw	a0,4(a0)
    80006644:	01010113          	addi	sp,sp,16
    80006648:	00008067          	ret

000000008000664c <plic_complete>:
    8000664c:	fe010113          	addi	sp,sp,-32
    80006650:	00813823          	sd	s0,16(sp)
    80006654:	00913423          	sd	s1,8(sp)
    80006658:	00113c23          	sd	ra,24(sp)
    8000665c:	02010413          	addi	s0,sp,32
    80006660:	00050493          	mv	s1,a0
    80006664:	00000097          	auipc	ra,0x0
    80006668:	9b4080e7          	jalr	-1612(ra) # 80006018 <cpuid>
    8000666c:	01813083          	ld	ra,24(sp)
    80006670:	01013403          	ld	s0,16(sp)
    80006674:	00d5179b          	slliw	a5,a0,0xd
    80006678:	0c201737          	lui	a4,0xc201
    8000667c:	00f707b3          	add	a5,a4,a5
    80006680:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006684:	00813483          	ld	s1,8(sp)
    80006688:	02010113          	addi	sp,sp,32
    8000668c:	00008067          	ret

0000000080006690 <consolewrite>:
    80006690:	fb010113          	addi	sp,sp,-80
    80006694:	04813023          	sd	s0,64(sp)
    80006698:	04113423          	sd	ra,72(sp)
    8000669c:	02913c23          	sd	s1,56(sp)
    800066a0:	03213823          	sd	s2,48(sp)
    800066a4:	03313423          	sd	s3,40(sp)
    800066a8:	03413023          	sd	s4,32(sp)
    800066ac:	01513c23          	sd	s5,24(sp)
    800066b0:	05010413          	addi	s0,sp,80
    800066b4:	06c05c63          	blez	a2,8000672c <consolewrite+0x9c>
    800066b8:	00060993          	mv	s3,a2
    800066bc:	00050a13          	mv	s4,a0
    800066c0:	00058493          	mv	s1,a1
    800066c4:	00000913          	li	s2,0
    800066c8:	fff00a93          	li	s5,-1
    800066cc:	01c0006f          	j	800066e8 <consolewrite+0x58>
    800066d0:	fbf44503          	lbu	a0,-65(s0)
    800066d4:	0019091b          	addiw	s2,s2,1
    800066d8:	00148493          	addi	s1,s1,1
    800066dc:	00001097          	auipc	ra,0x1
    800066e0:	a9c080e7          	jalr	-1380(ra) # 80007178 <uartputc>
    800066e4:	03298063          	beq	s3,s2,80006704 <consolewrite+0x74>
    800066e8:	00048613          	mv	a2,s1
    800066ec:	00100693          	li	a3,1
    800066f0:	000a0593          	mv	a1,s4
    800066f4:	fbf40513          	addi	a0,s0,-65
    800066f8:	00000097          	auipc	ra,0x0
    800066fc:	9d8080e7          	jalr	-1576(ra) # 800060d0 <either_copyin>
    80006700:	fd5518e3          	bne	a0,s5,800066d0 <consolewrite+0x40>
    80006704:	04813083          	ld	ra,72(sp)
    80006708:	04013403          	ld	s0,64(sp)
    8000670c:	03813483          	ld	s1,56(sp)
    80006710:	02813983          	ld	s3,40(sp)
    80006714:	02013a03          	ld	s4,32(sp)
    80006718:	01813a83          	ld	s5,24(sp)
    8000671c:	00090513          	mv	a0,s2
    80006720:	03013903          	ld	s2,48(sp)
    80006724:	05010113          	addi	sp,sp,80
    80006728:	00008067          	ret
    8000672c:	00000913          	li	s2,0
    80006730:	fd5ff06f          	j	80006704 <consolewrite+0x74>

0000000080006734 <consoleread>:
    80006734:	f9010113          	addi	sp,sp,-112
    80006738:	06813023          	sd	s0,96(sp)
    8000673c:	04913c23          	sd	s1,88(sp)
    80006740:	05213823          	sd	s2,80(sp)
    80006744:	05313423          	sd	s3,72(sp)
    80006748:	05413023          	sd	s4,64(sp)
    8000674c:	03513c23          	sd	s5,56(sp)
    80006750:	03613823          	sd	s6,48(sp)
    80006754:	03713423          	sd	s7,40(sp)
    80006758:	03813023          	sd	s8,32(sp)
    8000675c:	06113423          	sd	ra,104(sp)
    80006760:	01913c23          	sd	s9,24(sp)
    80006764:	07010413          	addi	s0,sp,112
    80006768:	00060b93          	mv	s7,a2
    8000676c:	00050913          	mv	s2,a0
    80006770:	00058c13          	mv	s8,a1
    80006774:	00060b1b          	sext.w	s6,a2
    80006778:	00006497          	auipc	s1,0x6
    8000677c:	f3048493          	addi	s1,s1,-208 # 8000c6a8 <cons>
    80006780:	00400993          	li	s3,4
    80006784:	fff00a13          	li	s4,-1
    80006788:	00a00a93          	li	s5,10
    8000678c:	05705e63          	blez	s7,800067e8 <consoleread+0xb4>
    80006790:	09c4a703          	lw	a4,156(s1)
    80006794:	0984a783          	lw	a5,152(s1)
    80006798:	0007071b          	sext.w	a4,a4
    8000679c:	08e78463          	beq	a5,a4,80006824 <consoleread+0xf0>
    800067a0:	07f7f713          	andi	a4,a5,127
    800067a4:	00e48733          	add	a4,s1,a4
    800067a8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800067ac:	0017869b          	addiw	a3,a5,1
    800067b0:	08d4ac23          	sw	a3,152(s1)
    800067b4:	00070c9b          	sext.w	s9,a4
    800067b8:	0b370663          	beq	a4,s3,80006864 <consoleread+0x130>
    800067bc:	00100693          	li	a3,1
    800067c0:	f9f40613          	addi	a2,s0,-97
    800067c4:	000c0593          	mv	a1,s8
    800067c8:	00090513          	mv	a0,s2
    800067cc:	f8e40fa3          	sb	a4,-97(s0)
    800067d0:	00000097          	auipc	ra,0x0
    800067d4:	8b4080e7          	jalr	-1868(ra) # 80006084 <either_copyout>
    800067d8:	01450863          	beq	a0,s4,800067e8 <consoleread+0xb4>
    800067dc:	001c0c13          	addi	s8,s8,1
    800067e0:	fffb8b9b          	addiw	s7,s7,-1
    800067e4:	fb5c94e3          	bne	s9,s5,8000678c <consoleread+0x58>
    800067e8:	000b851b          	sext.w	a0,s7
    800067ec:	06813083          	ld	ra,104(sp)
    800067f0:	06013403          	ld	s0,96(sp)
    800067f4:	05813483          	ld	s1,88(sp)
    800067f8:	05013903          	ld	s2,80(sp)
    800067fc:	04813983          	ld	s3,72(sp)
    80006800:	04013a03          	ld	s4,64(sp)
    80006804:	03813a83          	ld	s5,56(sp)
    80006808:	02813b83          	ld	s7,40(sp)
    8000680c:	02013c03          	ld	s8,32(sp)
    80006810:	01813c83          	ld	s9,24(sp)
    80006814:	40ab053b          	subw	a0,s6,a0
    80006818:	03013b03          	ld	s6,48(sp)
    8000681c:	07010113          	addi	sp,sp,112
    80006820:	00008067          	ret
    80006824:	00001097          	auipc	ra,0x1
    80006828:	1d8080e7          	jalr	472(ra) # 800079fc <push_on>
    8000682c:	0984a703          	lw	a4,152(s1)
    80006830:	09c4a783          	lw	a5,156(s1)
    80006834:	0007879b          	sext.w	a5,a5
    80006838:	fef70ce3          	beq	a4,a5,80006830 <consoleread+0xfc>
    8000683c:	00001097          	auipc	ra,0x1
    80006840:	234080e7          	jalr	564(ra) # 80007a70 <pop_on>
    80006844:	0984a783          	lw	a5,152(s1)
    80006848:	07f7f713          	andi	a4,a5,127
    8000684c:	00e48733          	add	a4,s1,a4
    80006850:	01874703          	lbu	a4,24(a4)
    80006854:	0017869b          	addiw	a3,a5,1
    80006858:	08d4ac23          	sw	a3,152(s1)
    8000685c:	00070c9b          	sext.w	s9,a4
    80006860:	f5371ee3          	bne	a4,s3,800067bc <consoleread+0x88>
    80006864:	000b851b          	sext.w	a0,s7
    80006868:	f96bf2e3          	bgeu	s7,s6,800067ec <consoleread+0xb8>
    8000686c:	08f4ac23          	sw	a5,152(s1)
    80006870:	f7dff06f          	j	800067ec <consoleread+0xb8>

0000000080006874 <consputc>:
    80006874:	10000793          	li	a5,256
    80006878:	00f50663          	beq	a0,a5,80006884 <consputc+0x10>
    8000687c:	00001317          	auipc	t1,0x1
    80006880:	9f430067          	jr	-1548(t1) # 80007270 <uartputc_sync>
    80006884:	ff010113          	addi	sp,sp,-16
    80006888:	00113423          	sd	ra,8(sp)
    8000688c:	00813023          	sd	s0,0(sp)
    80006890:	01010413          	addi	s0,sp,16
    80006894:	00800513          	li	a0,8
    80006898:	00001097          	auipc	ra,0x1
    8000689c:	9d8080e7          	jalr	-1576(ra) # 80007270 <uartputc_sync>
    800068a0:	02000513          	li	a0,32
    800068a4:	00001097          	auipc	ra,0x1
    800068a8:	9cc080e7          	jalr	-1588(ra) # 80007270 <uartputc_sync>
    800068ac:	00013403          	ld	s0,0(sp)
    800068b0:	00813083          	ld	ra,8(sp)
    800068b4:	00800513          	li	a0,8
    800068b8:	01010113          	addi	sp,sp,16
    800068bc:	00001317          	auipc	t1,0x1
    800068c0:	9b430067          	jr	-1612(t1) # 80007270 <uartputc_sync>

00000000800068c4 <consoleintr>:
    800068c4:	fe010113          	addi	sp,sp,-32
    800068c8:	00813823          	sd	s0,16(sp)
    800068cc:	00913423          	sd	s1,8(sp)
    800068d0:	01213023          	sd	s2,0(sp)
    800068d4:	00113c23          	sd	ra,24(sp)
    800068d8:	02010413          	addi	s0,sp,32
    800068dc:	00006917          	auipc	s2,0x6
    800068e0:	dcc90913          	addi	s2,s2,-564 # 8000c6a8 <cons>
    800068e4:	00050493          	mv	s1,a0
    800068e8:	00090513          	mv	a0,s2
    800068ec:	00001097          	auipc	ra,0x1
    800068f0:	e40080e7          	jalr	-448(ra) # 8000772c <acquire>
    800068f4:	02048c63          	beqz	s1,8000692c <consoleintr+0x68>
    800068f8:	0a092783          	lw	a5,160(s2)
    800068fc:	09892703          	lw	a4,152(s2)
    80006900:	07f00693          	li	a3,127
    80006904:	40e7873b          	subw	a4,a5,a4
    80006908:	02e6e263          	bltu	a3,a4,8000692c <consoleintr+0x68>
    8000690c:	00d00713          	li	a4,13
    80006910:	04e48063          	beq	s1,a4,80006950 <consoleintr+0x8c>
    80006914:	07f7f713          	andi	a4,a5,127
    80006918:	00e90733          	add	a4,s2,a4
    8000691c:	0017879b          	addiw	a5,a5,1
    80006920:	0af92023          	sw	a5,160(s2)
    80006924:	00970c23          	sb	s1,24(a4)
    80006928:	08f92e23          	sw	a5,156(s2)
    8000692c:	01013403          	ld	s0,16(sp)
    80006930:	01813083          	ld	ra,24(sp)
    80006934:	00813483          	ld	s1,8(sp)
    80006938:	00013903          	ld	s2,0(sp)
    8000693c:	00006517          	auipc	a0,0x6
    80006940:	d6c50513          	addi	a0,a0,-660 # 8000c6a8 <cons>
    80006944:	02010113          	addi	sp,sp,32
    80006948:	00001317          	auipc	t1,0x1
    8000694c:	eb030067          	jr	-336(t1) # 800077f8 <release>
    80006950:	00a00493          	li	s1,10
    80006954:	fc1ff06f          	j	80006914 <consoleintr+0x50>

0000000080006958 <consoleinit>:
    80006958:	fe010113          	addi	sp,sp,-32
    8000695c:	00113c23          	sd	ra,24(sp)
    80006960:	00813823          	sd	s0,16(sp)
    80006964:	00913423          	sd	s1,8(sp)
    80006968:	02010413          	addi	s0,sp,32
    8000696c:	00006497          	auipc	s1,0x6
    80006970:	d3c48493          	addi	s1,s1,-708 # 8000c6a8 <cons>
    80006974:	00048513          	mv	a0,s1
    80006978:	00003597          	auipc	a1,0x3
    8000697c:	e6858593          	addi	a1,a1,-408 # 800097e0 <CONSOLE_STATUS+0x7d0>
    80006980:	00001097          	auipc	ra,0x1
    80006984:	d88080e7          	jalr	-632(ra) # 80007708 <initlock>
    80006988:	00000097          	auipc	ra,0x0
    8000698c:	7ac080e7          	jalr	1964(ra) # 80007134 <uartinit>
    80006990:	01813083          	ld	ra,24(sp)
    80006994:	01013403          	ld	s0,16(sp)
    80006998:	00000797          	auipc	a5,0x0
    8000699c:	d9c78793          	addi	a5,a5,-612 # 80006734 <consoleread>
    800069a0:	0af4bc23          	sd	a5,184(s1)
    800069a4:	00000797          	auipc	a5,0x0
    800069a8:	cec78793          	addi	a5,a5,-788 # 80006690 <consolewrite>
    800069ac:	0cf4b023          	sd	a5,192(s1)
    800069b0:	00813483          	ld	s1,8(sp)
    800069b4:	02010113          	addi	sp,sp,32
    800069b8:	00008067          	ret

00000000800069bc <console_read>:
    800069bc:	ff010113          	addi	sp,sp,-16
    800069c0:	00813423          	sd	s0,8(sp)
    800069c4:	01010413          	addi	s0,sp,16
    800069c8:	00813403          	ld	s0,8(sp)
    800069cc:	00006317          	auipc	t1,0x6
    800069d0:	d9433303          	ld	t1,-620(t1) # 8000c760 <devsw+0x10>
    800069d4:	01010113          	addi	sp,sp,16
    800069d8:	00030067          	jr	t1

00000000800069dc <console_write>:
    800069dc:	ff010113          	addi	sp,sp,-16
    800069e0:	00813423          	sd	s0,8(sp)
    800069e4:	01010413          	addi	s0,sp,16
    800069e8:	00813403          	ld	s0,8(sp)
    800069ec:	00006317          	auipc	t1,0x6
    800069f0:	d7c33303          	ld	t1,-644(t1) # 8000c768 <devsw+0x18>
    800069f4:	01010113          	addi	sp,sp,16
    800069f8:	00030067          	jr	t1

00000000800069fc <panic>:
    800069fc:	fe010113          	addi	sp,sp,-32
    80006a00:	00113c23          	sd	ra,24(sp)
    80006a04:	00813823          	sd	s0,16(sp)
    80006a08:	00913423          	sd	s1,8(sp)
    80006a0c:	02010413          	addi	s0,sp,32
    80006a10:	00050493          	mv	s1,a0
    80006a14:	00003517          	auipc	a0,0x3
    80006a18:	dd450513          	addi	a0,a0,-556 # 800097e8 <CONSOLE_STATUS+0x7d8>
    80006a1c:	00006797          	auipc	a5,0x6
    80006a20:	de07a623          	sw	zero,-532(a5) # 8000c808 <pr+0x18>
    80006a24:	00000097          	auipc	ra,0x0
    80006a28:	034080e7          	jalr	52(ra) # 80006a58 <__printf>
    80006a2c:	00048513          	mv	a0,s1
    80006a30:	00000097          	auipc	ra,0x0
    80006a34:	028080e7          	jalr	40(ra) # 80006a58 <__printf>
    80006a38:	00003517          	auipc	a0,0x3
    80006a3c:	bb850513          	addi	a0,a0,-1096 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80006a40:	00000097          	auipc	ra,0x0
    80006a44:	018080e7          	jalr	24(ra) # 80006a58 <__printf>
    80006a48:	00100793          	li	a5,1
    80006a4c:	00005717          	auipc	a4,0x5
    80006a50:	acf72623          	sw	a5,-1332(a4) # 8000b518 <panicked>
    80006a54:	0000006f          	j	80006a54 <panic+0x58>

0000000080006a58 <__printf>:
    80006a58:	f3010113          	addi	sp,sp,-208
    80006a5c:	08813023          	sd	s0,128(sp)
    80006a60:	07313423          	sd	s3,104(sp)
    80006a64:	09010413          	addi	s0,sp,144
    80006a68:	05813023          	sd	s8,64(sp)
    80006a6c:	08113423          	sd	ra,136(sp)
    80006a70:	06913c23          	sd	s1,120(sp)
    80006a74:	07213823          	sd	s2,112(sp)
    80006a78:	07413023          	sd	s4,96(sp)
    80006a7c:	05513c23          	sd	s5,88(sp)
    80006a80:	05613823          	sd	s6,80(sp)
    80006a84:	05713423          	sd	s7,72(sp)
    80006a88:	03913c23          	sd	s9,56(sp)
    80006a8c:	03a13823          	sd	s10,48(sp)
    80006a90:	03b13423          	sd	s11,40(sp)
    80006a94:	00006317          	auipc	t1,0x6
    80006a98:	d5c30313          	addi	t1,t1,-676 # 8000c7f0 <pr>
    80006a9c:	01832c03          	lw	s8,24(t1)
    80006aa0:	00b43423          	sd	a1,8(s0)
    80006aa4:	00c43823          	sd	a2,16(s0)
    80006aa8:	00d43c23          	sd	a3,24(s0)
    80006aac:	02e43023          	sd	a4,32(s0)
    80006ab0:	02f43423          	sd	a5,40(s0)
    80006ab4:	03043823          	sd	a6,48(s0)
    80006ab8:	03143c23          	sd	a7,56(s0)
    80006abc:	00050993          	mv	s3,a0
    80006ac0:	4a0c1663          	bnez	s8,80006f6c <__printf+0x514>
    80006ac4:	60098c63          	beqz	s3,800070dc <__printf+0x684>
    80006ac8:	0009c503          	lbu	a0,0(s3)
    80006acc:	00840793          	addi	a5,s0,8
    80006ad0:	f6f43c23          	sd	a5,-136(s0)
    80006ad4:	00000493          	li	s1,0
    80006ad8:	22050063          	beqz	a0,80006cf8 <__printf+0x2a0>
    80006adc:	00002a37          	lui	s4,0x2
    80006ae0:	00018ab7          	lui	s5,0x18
    80006ae4:	000f4b37          	lui	s6,0xf4
    80006ae8:	00989bb7          	lui	s7,0x989
    80006aec:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80006af0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80006af4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80006af8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80006afc:	00148c9b          	addiw	s9,s1,1
    80006b00:	02500793          	li	a5,37
    80006b04:	01998933          	add	s2,s3,s9
    80006b08:	38f51263          	bne	a0,a5,80006e8c <__printf+0x434>
    80006b0c:	00094783          	lbu	a5,0(s2)
    80006b10:	00078c9b          	sext.w	s9,a5
    80006b14:	1e078263          	beqz	a5,80006cf8 <__printf+0x2a0>
    80006b18:	0024849b          	addiw	s1,s1,2
    80006b1c:	07000713          	li	a4,112
    80006b20:	00998933          	add	s2,s3,s1
    80006b24:	38e78a63          	beq	a5,a4,80006eb8 <__printf+0x460>
    80006b28:	20f76863          	bltu	a4,a5,80006d38 <__printf+0x2e0>
    80006b2c:	42a78863          	beq	a5,a0,80006f5c <__printf+0x504>
    80006b30:	06400713          	li	a4,100
    80006b34:	40e79663          	bne	a5,a4,80006f40 <__printf+0x4e8>
    80006b38:	f7843783          	ld	a5,-136(s0)
    80006b3c:	0007a603          	lw	a2,0(a5)
    80006b40:	00878793          	addi	a5,a5,8
    80006b44:	f6f43c23          	sd	a5,-136(s0)
    80006b48:	42064a63          	bltz	a2,80006f7c <__printf+0x524>
    80006b4c:	00a00713          	li	a4,10
    80006b50:	02e677bb          	remuw	a5,a2,a4
    80006b54:	00003d97          	auipc	s11,0x3
    80006b58:	cbcd8d93          	addi	s11,s11,-836 # 80009810 <digits>
    80006b5c:	00900593          	li	a1,9
    80006b60:	0006051b          	sext.w	a0,a2
    80006b64:	00000c93          	li	s9,0
    80006b68:	02079793          	slli	a5,a5,0x20
    80006b6c:	0207d793          	srli	a5,a5,0x20
    80006b70:	00fd87b3          	add	a5,s11,a5
    80006b74:	0007c783          	lbu	a5,0(a5)
    80006b78:	02e656bb          	divuw	a3,a2,a4
    80006b7c:	f8f40023          	sb	a5,-128(s0)
    80006b80:	14c5d863          	bge	a1,a2,80006cd0 <__printf+0x278>
    80006b84:	06300593          	li	a1,99
    80006b88:	00100c93          	li	s9,1
    80006b8c:	02e6f7bb          	remuw	a5,a3,a4
    80006b90:	02079793          	slli	a5,a5,0x20
    80006b94:	0207d793          	srli	a5,a5,0x20
    80006b98:	00fd87b3          	add	a5,s11,a5
    80006b9c:	0007c783          	lbu	a5,0(a5)
    80006ba0:	02e6d73b          	divuw	a4,a3,a4
    80006ba4:	f8f400a3          	sb	a5,-127(s0)
    80006ba8:	12a5f463          	bgeu	a1,a0,80006cd0 <__printf+0x278>
    80006bac:	00a00693          	li	a3,10
    80006bb0:	00900593          	li	a1,9
    80006bb4:	02d777bb          	remuw	a5,a4,a3
    80006bb8:	02079793          	slli	a5,a5,0x20
    80006bbc:	0207d793          	srli	a5,a5,0x20
    80006bc0:	00fd87b3          	add	a5,s11,a5
    80006bc4:	0007c503          	lbu	a0,0(a5)
    80006bc8:	02d757bb          	divuw	a5,a4,a3
    80006bcc:	f8a40123          	sb	a0,-126(s0)
    80006bd0:	48e5f263          	bgeu	a1,a4,80007054 <__printf+0x5fc>
    80006bd4:	06300513          	li	a0,99
    80006bd8:	02d7f5bb          	remuw	a1,a5,a3
    80006bdc:	02059593          	slli	a1,a1,0x20
    80006be0:	0205d593          	srli	a1,a1,0x20
    80006be4:	00bd85b3          	add	a1,s11,a1
    80006be8:	0005c583          	lbu	a1,0(a1)
    80006bec:	02d7d7bb          	divuw	a5,a5,a3
    80006bf0:	f8b401a3          	sb	a1,-125(s0)
    80006bf4:	48e57263          	bgeu	a0,a4,80007078 <__printf+0x620>
    80006bf8:	3e700513          	li	a0,999
    80006bfc:	02d7f5bb          	remuw	a1,a5,a3
    80006c00:	02059593          	slli	a1,a1,0x20
    80006c04:	0205d593          	srli	a1,a1,0x20
    80006c08:	00bd85b3          	add	a1,s11,a1
    80006c0c:	0005c583          	lbu	a1,0(a1)
    80006c10:	02d7d7bb          	divuw	a5,a5,a3
    80006c14:	f8b40223          	sb	a1,-124(s0)
    80006c18:	46e57663          	bgeu	a0,a4,80007084 <__printf+0x62c>
    80006c1c:	02d7f5bb          	remuw	a1,a5,a3
    80006c20:	02059593          	slli	a1,a1,0x20
    80006c24:	0205d593          	srli	a1,a1,0x20
    80006c28:	00bd85b3          	add	a1,s11,a1
    80006c2c:	0005c583          	lbu	a1,0(a1)
    80006c30:	02d7d7bb          	divuw	a5,a5,a3
    80006c34:	f8b402a3          	sb	a1,-123(s0)
    80006c38:	46ea7863          	bgeu	s4,a4,800070a8 <__printf+0x650>
    80006c3c:	02d7f5bb          	remuw	a1,a5,a3
    80006c40:	02059593          	slli	a1,a1,0x20
    80006c44:	0205d593          	srli	a1,a1,0x20
    80006c48:	00bd85b3          	add	a1,s11,a1
    80006c4c:	0005c583          	lbu	a1,0(a1)
    80006c50:	02d7d7bb          	divuw	a5,a5,a3
    80006c54:	f8b40323          	sb	a1,-122(s0)
    80006c58:	3eeaf863          	bgeu	s5,a4,80007048 <__printf+0x5f0>
    80006c5c:	02d7f5bb          	remuw	a1,a5,a3
    80006c60:	02059593          	slli	a1,a1,0x20
    80006c64:	0205d593          	srli	a1,a1,0x20
    80006c68:	00bd85b3          	add	a1,s11,a1
    80006c6c:	0005c583          	lbu	a1,0(a1)
    80006c70:	02d7d7bb          	divuw	a5,a5,a3
    80006c74:	f8b403a3          	sb	a1,-121(s0)
    80006c78:	42eb7e63          	bgeu	s6,a4,800070b4 <__printf+0x65c>
    80006c7c:	02d7f5bb          	remuw	a1,a5,a3
    80006c80:	02059593          	slli	a1,a1,0x20
    80006c84:	0205d593          	srli	a1,a1,0x20
    80006c88:	00bd85b3          	add	a1,s11,a1
    80006c8c:	0005c583          	lbu	a1,0(a1)
    80006c90:	02d7d7bb          	divuw	a5,a5,a3
    80006c94:	f8b40423          	sb	a1,-120(s0)
    80006c98:	42ebfc63          	bgeu	s7,a4,800070d0 <__printf+0x678>
    80006c9c:	02079793          	slli	a5,a5,0x20
    80006ca0:	0207d793          	srli	a5,a5,0x20
    80006ca4:	00fd8db3          	add	s11,s11,a5
    80006ca8:	000dc703          	lbu	a4,0(s11)
    80006cac:	00a00793          	li	a5,10
    80006cb0:	00900c93          	li	s9,9
    80006cb4:	f8e404a3          	sb	a4,-119(s0)
    80006cb8:	00065c63          	bgez	a2,80006cd0 <__printf+0x278>
    80006cbc:	f9040713          	addi	a4,s0,-112
    80006cc0:	00f70733          	add	a4,a4,a5
    80006cc4:	02d00693          	li	a3,45
    80006cc8:	fed70823          	sb	a3,-16(a4)
    80006ccc:	00078c93          	mv	s9,a5
    80006cd0:	f8040793          	addi	a5,s0,-128
    80006cd4:	01978cb3          	add	s9,a5,s9
    80006cd8:	f7f40d13          	addi	s10,s0,-129
    80006cdc:	000cc503          	lbu	a0,0(s9)
    80006ce0:	fffc8c93          	addi	s9,s9,-1
    80006ce4:	00000097          	auipc	ra,0x0
    80006ce8:	b90080e7          	jalr	-1136(ra) # 80006874 <consputc>
    80006cec:	ffac98e3          	bne	s9,s10,80006cdc <__printf+0x284>
    80006cf0:	00094503          	lbu	a0,0(s2)
    80006cf4:	e00514e3          	bnez	a0,80006afc <__printf+0xa4>
    80006cf8:	1a0c1663          	bnez	s8,80006ea4 <__printf+0x44c>
    80006cfc:	08813083          	ld	ra,136(sp)
    80006d00:	08013403          	ld	s0,128(sp)
    80006d04:	07813483          	ld	s1,120(sp)
    80006d08:	07013903          	ld	s2,112(sp)
    80006d0c:	06813983          	ld	s3,104(sp)
    80006d10:	06013a03          	ld	s4,96(sp)
    80006d14:	05813a83          	ld	s5,88(sp)
    80006d18:	05013b03          	ld	s6,80(sp)
    80006d1c:	04813b83          	ld	s7,72(sp)
    80006d20:	04013c03          	ld	s8,64(sp)
    80006d24:	03813c83          	ld	s9,56(sp)
    80006d28:	03013d03          	ld	s10,48(sp)
    80006d2c:	02813d83          	ld	s11,40(sp)
    80006d30:	0d010113          	addi	sp,sp,208
    80006d34:	00008067          	ret
    80006d38:	07300713          	li	a4,115
    80006d3c:	1ce78a63          	beq	a5,a4,80006f10 <__printf+0x4b8>
    80006d40:	07800713          	li	a4,120
    80006d44:	1ee79e63          	bne	a5,a4,80006f40 <__printf+0x4e8>
    80006d48:	f7843783          	ld	a5,-136(s0)
    80006d4c:	0007a703          	lw	a4,0(a5)
    80006d50:	00878793          	addi	a5,a5,8
    80006d54:	f6f43c23          	sd	a5,-136(s0)
    80006d58:	28074263          	bltz	a4,80006fdc <__printf+0x584>
    80006d5c:	00003d97          	auipc	s11,0x3
    80006d60:	ab4d8d93          	addi	s11,s11,-1356 # 80009810 <digits>
    80006d64:	00f77793          	andi	a5,a4,15
    80006d68:	00fd87b3          	add	a5,s11,a5
    80006d6c:	0007c683          	lbu	a3,0(a5)
    80006d70:	00f00613          	li	a2,15
    80006d74:	0007079b          	sext.w	a5,a4
    80006d78:	f8d40023          	sb	a3,-128(s0)
    80006d7c:	0047559b          	srliw	a1,a4,0x4
    80006d80:	0047569b          	srliw	a3,a4,0x4
    80006d84:	00000c93          	li	s9,0
    80006d88:	0ee65063          	bge	a2,a4,80006e68 <__printf+0x410>
    80006d8c:	00f6f693          	andi	a3,a3,15
    80006d90:	00dd86b3          	add	a3,s11,a3
    80006d94:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80006d98:	0087d79b          	srliw	a5,a5,0x8
    80006d9c:	00100c93          	li	s9,1
    80006da0:	f8d400a3          	sb	a3,-127(s0)
    80006da4:	0cb67263          	bgeu	a2,a1,80006e68 <__printf+0x410>
    80006da8:	00f7f693          	andi	a3,a5,15
    80006dac:	00dd86b3          	add	a3,s11,a3
    80006db0:	0006c583          	lbu	a1,0(a3)
    80006db4:	00f00613          	li	a2,15
    80006db8:	0047d69b          	srliw	a3,a5,0x4
    80006dbc:	f8b40123          	sb	a1,-126(s0)
    80006dc0:	0047d593          	srli	a1,a5,0x4
    80006dc4:	28f67e63          	bgeu	a2,a5,80007060 <__printf+0x608>
    80006dc8:	00f6f693          	andi	a3,a3,15
    80006dcc:	00dd86b3          	add	a3,s11,a3
    80006dd0:	0006c503          	lbu	a0,0(a3)
    80006dd4:	0087d813          	srli	a6,a5,0x8
    80006dd8:	0087d69b          	srliw	a3,a5,0x8
    80006ddc:	f8a401a3          	sb	a0,-125(s0)
    80006de0:	28b67663          	bgeu	a2,a1,8000706c <__printf+0x614>
    80006de4:	00f6f693          	andi	a3,a3,15
    80006de8:	00dd86b3          	add	a3,s11,a3
    80006dec:	0006c583          	lbu	a1,0(a3)
    80006df0:	00c7d513          	srli	a0,a5,0xc
    80006df4:	00c7d69b          	srliw	a3,a5,0xc
    80006df8:	f8b40223          	sb	a1,-124(s0)
    80006dfc:	29067a63          	bgeu	a2,a6,80007090 <__printf+0x638>
    80006e00:	00f6f693          	andi	a3,a3,15
    80006e04:	00dd86b3          	add	a3,s11,a3
    80006e08:	0006c583          	lbu	a1,0(a3)
    80006e0c:	0107d813          	srli	a6,a5,0x10
    80006e10:	0107d69b          	srliw	a3,a5,0x10
    80006e14:	f8b402a3          	sb	a1,-123(s0)
    80006e18:	28a67263          	bgeu	a2,a0,8000709c <__printf+0x644>
    80006e1c:	00f6f693          	andi	a3,a3,15
    80006e20:	00dd86b3          	add	a3,s11,a3
    80006e24:	0006c683          	lbu	a3,0(a3)
    80006e28:	0147d79b          	srliw	a5,a5,0x14
    80006e2c:	f8d40323          	sb	a3,-122(s0)
    80006e30:	21067663          	bgeu	a2,a6,8000703c <__printf+0x5e4>
    80006e34:	02079793          	slli	a5,a5,0x20
    80006e38:	0207d793          	srli	a5,a5,0x20
    80006e3c:	00fd8db3          	add	s11,s11,a5
    80006e40:	000dc683          	lbu	a3,0(s11)
    80006e44:	00800793          	li	a5,8
    80006e48:	00700c93          	li	s9,7
    80006e4c:	f8d403a3          	sb	a3,-121(s0)
    80006e50:	00075c63          	bgez	a4,80006e68 <__printf+0x410>
    80006e54:	f9040713          	addi	a4,s0,-112
    80006e58:	00f70733          	add	a4,a4,a5
    80006e5c:	02d00693          	li	a3,45
    80006e60:	fed70823          	sb	a3,-16(a4)
    80006e64:	00078c93          	mv	s9,a5
    80006e68:	f8040793          	addi	a5,s0,-128
    80006e6c:	01978cb3          	add	s9,a5,s9
    80006e70:	f7f40d13          	addi	s10,s0,-129
    80006e74:	000cc503          	lbu	a0,0(s9)
    80006e78:	fffc8c93          	addi	s9,s9,-1
    80006e7c:	00000097          	auipc	ra,0x0
    80006e80:	9f8080e7          	jalr	-1544(ra) # 80006874 <consputc>
    80006e84:	ff9d18e3          	bne	s10,s9,80006e74 <__printf+0x41c>
    80006e88:	0100006f          	j	80006e98 <__printf+0x440>
    80006e8c:	00000097          	auipc	ra,0x0
    80006e90:	9e8080e7          	jalr	-1560(ra) # 80006874 <consputc>
    80006e94:	000c8493          	mv	s1,s9
    80006e98:	00094503          	lbu	a0,0(s2)
    80006e9c:	c60510e3          	bnez	a0,80006afc <__printf+0xa4>
    80006ea0:	e40c0ee3          	beqz	s8,80006cfc <__printf+0x2a4>
    80006ea4:	00006517          	auipc	a0,0x6
    80006ea8:	94c50513          	addi	a0,a0,-1716 # 8000c7f0 <pr>
    80006eac:	00001097          	auipc	ra,0x1
    80006eb0:	94c080e7          	jalr	-1716(ra) # 800077f8 <release>
    80006eb4:	e49ff06f          	j	80006cfc <__printf+0x2a4>
    80006eb8:	f7843783          	ld	a5,-136(s0)
    80006ebc:	03000513          	li	a0,48
    80006ec0:	01000d13          	li	s10,16
    80006ec4:	00878713          	addi	a4,a5,8
    80006ec8:	0007bc83          	ld	s9,0(a5)
    80006ecc:	f6e43c23          	sd	a4,-136(s0)
    80006ed0:	00000097          	auipc	ra,0x0
    80006ed4:	9a4080e7          	jalr	-1628(ra) # 80006874 <consputc>
    80006ed8:	07800513          	li	a0,120
    80006edc:	00000097          	auipc	ra,0x0
    80006ee0:	998080e7          	jalr	-1640(ra) # 80006874 <consputc>
    80006ee4:	00003d97          	auipc	s11,0x3
    80006ee8:	92cd8d93          	addi	s11,s11,-1748 # 80009810 <digits>
    80006eec:	03ccd793          	srli	a5,s9,0x3c
    80006ef0:	00fd87b3          	add	a5,s11,a5
    80006ef4:	0007c503          	lbu	a0,0(a5)
    80006ef8:	fffd0d1b          	addiw	s10,s10,-1
    80006efc:	004c9c93          	slli	s9,s9,0x4
    80006f00:	00000097          	auipc	ra,0x0
    80006f04:	974080e7          	jalr	-1676(ra) # 80006874 <consputc>
    80006f08:	fe0d12e3          	bnez	s10,80006eec <__printf+0x494>
    80006f0c:	f8dff06f          	j	80006e98 <__printf+0x440>
    80006f10:	f7843783          	ld	a5,-136(s0)
    80006f14:	0007bc83          	ld	s9,0(a5)
    80006f18:	00878793          	addi	a5,a5,8
    80006f1c:	f6f43c23          	sd	a5,-136(s0)
    80006f20:	000c9a63          	bnez	s9,80006f34 <__printf+0x4dc>
    80006f24:	1080006f          	j	8000702c <__printf+0x5d4>
    80006f28:	001c8c93          	addi	s9,s9,1
    80006f2c:	00000097          	auipc	ra,0x0
    80006f30:	948080e7          	jalr	-1720(ra) # 80006874 <consputc>
    80006f34:	000cc503          	lbu	a0,0(s9)
    80006f38:	fe0518e3          	bnez	a0,80006f28 <__printf+0x4d0>
    80006f3c:	f5dff06f          	j	80006e98 <__printf+0x440>
    80006f40:	02500513          	li	a0,37
    80006f44:	00000097          	auipc	ra,0x0
    80006f48:	930080e7          	jalr	-1744(ra) # 80006874 <consputc>
    80006f4c:	000c8513          	mv	a0,s9
    80006f50:	00000097          	auipc	ra,0x0
    80006f54:	924080e7          	jalr	-1756(ra) # 80006874 <consputc>
    80006f58:	f41ff06f          	j	80006e98 <__printf+0x440>
    80006f5c:	02500513          	li	a0,37
    80006f60:	00000097          	auipc	ra,0x0
    80006f64:	914080e7          	jalr	-1772(ra) # 80006874 <consputc>
    80006f68:	f31ff06f          	j	80006e98 <__printf+0x440>
    80006f6c:	00030513          	mv	a0,t1
    80006f70:	00000097          	auipc	ra,0x0
    80006f74:	7bc080e7          	jalr	1980(ra) # 8000772c <acquire>
    80006f78:	b4dff06f          	j	80006ac4 <__printf+0x6c>
    80006f7c:	40c0053b          	negw	a0,a2
    80006f80:	00a00713          	li	a4,10
    80006f84:	02e576bb          	remuw	a3,a0,a4
    80006f88:	00003d97          	auipc	s11,0x3
    80006f8c:	888d8d93          	addi	s11,s11,-1912 # 80009810 <digits>
    80006f90:	ff700593          	li	a1,-9
    80006f94:	02069693          	slli	a3,a3,0x20
    80006f98:	0206d693          	srli	a3,a3,0x20
    80006f9c:	00dd86b3          	add	a3,s11,a3
    80006fa0:	0006c683          	lbu	a3,0(a3)
    80006fa4:	02e557bb          	divuw	a5,a0,a4
    80006fa8:	f8d40023          	sb	a3,-128(s0)
    80006fac:	10b65e63          	bge	a2,a1,800070c8 <__printf+0x670>
    80006fb0:	06300593          	li	a1,99
    80006fb4:	02e7f6bb          	remuw	a3,a5,a4
    80006fb8:	02069693          	slli	a3,a3,0x20
    80006fbc:	0206d693          	srli	a3,a3,0x20
    80006fc0:	00dd86b3          	add	a3,s11,a3
    80006fc4:	0006c683          	lbu	a3,0(a3)
    80006fc8:	02e7d73b          	divuw	a4,a5,a4
    80006fcc:	00200793          	li	a5,2
    80006fd0:	f8d400a3          	sb	a3,-127(s0)
    80006fd4:	bca5ece3          	bltu	a1,a0,80006bac <__printf+0x154>
    80006fd8:	ce5ff06f          	j	80006cbc <__printf+0x264>
    80006fdc:	40e007bb          	negw	a5,a4
    80006fe0:	00003d97          	auipc	s11,0x3
    80006fe4:	830d8d93          	addi	s11,s11,-2000 # 80009810 <digits>
    80006fe8:	00f7f693          	andi	a3,a5,15
    80006fec:	00dd86b3          	add	a3,s11,a3
    80006ff0:	0006c583          	lbu	a1,0(a3)
    80006ff4:	ff100613          	li	a2,-15
    80006ff8:	0047d69b          	srliw	a3,a5,0x4
    80006ffc:	f8b40023          	sb	a1,-128(s0)
    80007000:	0047d59b          	srliw	a1,a5,0x4
    80007004:	0ac75e63          	bge	a4,a2,800070c0 <__printf+0x668>
    80007008:	00f6f693          	andi	a3,a3,15
    8000700c:	00dd86b3          	add	a3,s11,a3
    80007010:	0006c603          	lbu	a2,0(a3)
    80007014:	00f00693          	li	a3,15
    80007018:	0087d79b          	srliw	a5,a5,0x8
    8000701c:	f8c400a3          	sb	a2,-127(s0)
    80007020:	d8b6e4e3          	bltu	a3,a1,80006da8 <__printf+0x350>
    80007024:	00200793          	li	a5,2
    80007028:	e2dff06f          	j	80006e54 <__printf+0x3fc>
    8000702c:	00002c97          	auipc	s9,0x2
    80007030:	7c4c8c93          	addi	s9,s9,1988 # 800097f0 <CONSOLE_STATUS+0x7e0>
    80007034:	02800513          	li	a0,40
    80007038:	ef1ff06f          	j	80006f28 <__printf+0x4d0>
    8000703c:	00700793          	li	a5,7
    80007040:	00600c93          	li	s9,6
    80007044:	e0dff06f          	j	80006e50 <__printf+0x3f8>
    80007048:	00700793          	li	a5,7
    8000704c:	00600c93          	li	s9,6
    80007050:	c69ff06f          	j	80006cb8 <__printf+0x260>
    80007054:	00300793          	li	a5,3
    80007058:	00200c93          	li	s9,2
    8000705c:	c5dff06f          	j	80006cb8 <__printf+0x260>
    80007060:	00300793          	li	a5,3
    80007064:	00200c93          	li	s9,2
    80007068:	de9ff06f          	j	80006e50 <__printf+0x3f8>
    8000706c:	00400793          	li	a5,4
    80007070:	00300c93          	li	s9,3
    80007074:	dddff06f          	j	80006e50 <__printf+0x3f8>
    80007078:	00400793          	li	a5,4
    8000707c:	00300c93          	li	s9,3
    80007080:	c39ff06f          	j	80006cb8 <__printf+0x260>
    80007084:	00500793          	li	a5,5
    80007088:	00400c93          	li	s9,4
    8000708c:	c2dff06f          	j	80006cb8 <__printf+0x260>
    80007090:	00500793          	li	a5,5
    80007094:	00400c93          	li	s9,4
    80007098:	db9ff06f          	j	80006e50 <__printf+0x3f8>
    8000709c:	00600793          	li	a5,6
    800070a0:	00500c93          	li	s9,5
    800070a4:	dadff06f          	j	80006e50 <__printf+0x3f8>
    800070a8:	00600793          	li	a5,6
    800070ac:	00500c93          	li	s9,5
    800070b0:	c09ff06f          	j	80006cb8 <__printf+0x260>
    800070b4:	00800793          	li	a5,8
    800070b8:	00700c93          	li	s9,7
    800070bc:	bfdff06f          	j	80006cb8 <__printf+0x260>
    800070c0:	00100793          	li	a5,1
    800070c4:	d91ff06f          	j	80006e54 <__printf+0x3fc>
    800070c8:	00100793          	li	a5,1
    800070cc:	bf1ff06f          	j	80006cbc <__printf+0x264>
    800070d0:	00900793          	li	a5,9
    800070d4:	00800c93          	li	s9,8
    800070d8:	be1ff06f          	j	80006cb8 <__printf+0x260>
    800070dc:	00002517          	auipc	a0,0x2
    800070e0:	71c50513          	addi	a0,a0,1820 # 800097f8 <CONSOLE_STATUS+0x7e8>
    800070e4:	00000097          	auipc	ra,0x0
    800070e8:	918080e7          	jalr	-1768(ra) # 800069fc <panic>

00000000800070ec <printfinit>:
    800070ec:	fe010113          	addi	sp,sp,-32
    800070f0:	00813823          	sd	s0,16(sp)
    800070f4:	00913423          	sd	s1,8(sp)
    800070f8:	00113c23          	sd	ra,24(sp)
    800070fc:	02010413          	addi	s0,sp,32
    80007100:	00005497          	auipc	s1,0x5
    80007104:	6f048493          	addi	s1,s1,1776 # 8000c7f0 <pr>
    80007108:	00048513          	mv	a0,s1
    8000710c:	00002597          	auipc	a1,0x2
    80007110:	6fc58593          	addi	a1,a1,1788 # 80009808 <CONSOLE_STATUS+0x7f8>
    80007114:	00000097          	auipc	ra,0x0
    80007118:	5f4080e7          	jalr	1524(ra) # 80007708 <initlock>
    8000711c:	01813083          	ld	ra,24(sp)
    80007120:	01013403          	ld	s0,16(sp)
    80007124:	0004ac23          	sw	zero,24(s1)
    80007128:	00813483          	ld	s1,8(sp)
    8000712c:	02010113          	addi	sp,sp,32
    80007130:	00008067          	ret

0000000080007134 <uartinit>:
    80007134:	ff010113          	addi	sp,sp,-16
    80007138:	00813423          	sd	s0,8(sp)
    8000713c:	01010413          	addi	s0,sp,16
    80007140:	100007b7          	lui	a5,0x10000
    80007144:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007148:	f8000713          	li	a4,-128
    8000714c:	00e781a3          	sb	a4,3(a5)
    80007150:	00300713          	li	a4,3
    80007154:	00e78023          	sb	a4,0(a5)
    80007158:	000780a3          	sb	zero,1(a5)
    8000715c:	00e781a3          	sb	a4,3(a5)
    80007160:	00700693          	li	a3,7
    80007164:	00d78123          	sb	a3,2(a5)
    80007168:	00e780a3          	sb	a4,1(a5)
    8000716c:	00813403          	ld	s0,8(sp)
    80007170:	01010113          	addi	sp,sp,16
    80007174:	00008067          	ret

0000000080007178 <uartputc>:
    80007178:	00004797          	auipc	a5,0x4
    8000717c:	3a07a783          	lw	a5,928(a5) # 8000b518 <panicked>
    80007180:	00078463          	beqz	a5,80007188 <uartputc+0x10>
    80007184:	0000006f          	j	80007184 <uartputc+0xc>
    80007188:	fd010113          	addi	sp,sp,-48
    8000718c:	02813023          	sd	s0,32(sp)
    80007190:	00913c23          	sd	s1,24(sp)
    80007194:	01213823          	sd	s2,16(sp)
    80007198:	01313423          	sd	s3,8(sp)
    8000719c:	02113423          	sd	ra,40(sp)
    800071a0:	03010413          	addi	s0,sp,48
    800071a4:	00004917          	auipc	s2,0x4
    800071a8:	37c90913          	addi	s2,s2,892 # 8000b520 <uart_tx_r>
    800071ac:	00093783          	ld	a5,0(s2)
    800071b0:	00004497          	auipc	s1,0x4
    800071b4:	37848493          	addi	s1,s1,888 # 8000b528 <uart_tx_w>
    800071b8:	0004b703          	ld	a4,0(s1)
    800071bc:	02078693          	addi	a3,a5,32
    800071c0:	00050993          	mv	s3,a0
    800071c4:	02e69c63          	bne	a3,a4,800071fc <uartputc+0x84>
    800071c8:	00001097          	auipc	ra,0x1
    800071cc:	834080e7          	jalr	-1996(ra) # 800079fc <push_on>
    800071d0:	00093783          	ld	a5,0(s2)
    800071d4:	0004b703          	ld	a4,0(s1)
    800071d8:	02078793          	addi	a5,a5,32
    800071dc:	00e79463          	bne	a5,a4,800071e4 <uartputc+0x6c>
    800071e0:	0000006f          	j	800071e0 <uartputc+0x68>
    800071e4:	00001097          	auipc	ra,0x1
    800071e8:	88c080e7          	jalr	-1908(ra) # 80007a70 <pop_on>
    800071ec:	00093783          	ld	a5,0(s2)
    800071f0:	0004b703          	ld	a4,0(s1)
    800071f4:	02078693          	addi	a3,a5,32
    800071f8:	fce688e3          	beq	a3,a4,800071c8 <uartputc+0x50>
    800071fc:	01f77693          	andi	a3,a4,31
    80007200:	00005597          	auipc	a1,0x5
    80007204:	61058593          	addi	a1,a1,1552 # 8000c810 <uart_tx_buf>
    80007208:	00d586b3          	add	a3,a1,a3
    8000720c:	00170713          	addi	a4,a4,1
    80007210:	01368023          	sb	s3,0(a3)
    80007214:	00e4b023          	sd	a4,0(s1)
    80007218:	10000637          	lui	a2,0x10000
    8000721c:	02f71063          	bne	a4,a5,8000723c <uartputc+0xc4>
    80007220:	0340006f          	j	80007254 <uartputc+0xdc>
    80007224:	00074703          	lbu	a4,0(a4)
    80007228:	00f93023          	sd	a5,0(s2)
    8000722c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007230:	00093783          	ld	a5,0(s2)
    80007234:	0004b703          	ld	a4,0(s1)
    80007238:	00f70e63          	beq	a4,a5,80007254 <uartputc+0xdc>
    8000723c:	00564683          	lbu	a3,5(a2)
    80007240:	01f7f713          	andi	a4,a5,31
    80007244:	00e58733          	add	a4,a1,a4
    80007248:	0206f693          	andi	a3,a3,32
    8000724c:	00178793          	addi	a5,a5,1
    80007250:	fc069ae3          	bnez	a3,80007224 <uartputc+0xac>
    80007254:	02813083          	ld	ra,40(sp)
    80007258:	02013403          	ld	s0,32(sp)
    8000725c:	01813483          	ld	s1,24(sp)
    80007260:	01013903          	ld	s2,16(sp)
    80007264:	00813983          	ld	s3,8(sp)
    80007268:	03010113          	addi	sp,sp,48
    8000726c:	00008067          	ret

0000000080007270 <uartputc_sync>:
    80007270:	ff010113          	addi	sp,sp,-16
    80007274:	00813423          	sd	s0,8(sp)
    80007278:	01010413          	addi	s0,sp,16
    8000727c:	00004717          	auipc	a4,0x4
    80007280:	29c72703          	lw	a4,668(a4) # 8000b518 <panicked>
    80007284:	02071663          	bnez	a4,800072b0 <uartputc_sync+0x40>
    80007288:	00050793          	mv	a5,a0
    8000728c:	100006b7          	lui	a3,0x10000
    80007290:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007294:	02077713          	andi	a4,a4,32
    80007298:	fe070ce3          	beqz	a4,80007290 <uartputc_sync+0x20>
    8000729c:	0ff7f793          	andi	a5,a5,255
    800072a0:	00f68023          	sb	a5,0(a3)
    800072a4:	00813403          	ld	s0,8(sp)
    800072a8:	01010113          	addi	sp,sp,16
    800072ac:	00008067          	ret
    800072b0:	0000006f          	j	800072b0 <uartputc_sync+0x40>

00000000800072b4 <uartstart>:
    800072b4:	ff010113          	addi	sp,sp,-16
    800072b8:	00813423          	sd	s0,8(sp)
    800072bc:	01010413          	addi	s0,sp,16
    800072c0:	00004617          	auipc	a2,0x4
    800072c4:	26060613          	addi	a2,a2,608 # 8000b520 <uart_tx_r>
    800072c8:	00004517          	auipc	a0,0x4
    800072cc:	26050513          	addi	a0,a0,608 # 8000b528 <uart_tx_w>
    800072d0:	00063783          	ld	a5,0(a2)
    800072d4:	00053703          	ld	a4,0(a0)
    800072d8:	04f70263          	beq	a4,a5,8000731c <uartstart+0x68>
    800072dc:	100005b7          	lui	a1,0x10000
    800072e0:	00005817          	auipc	a6,0x5
    800072e4:	53080813          	addi	a6,a6,1328 # 8000c810 <uart_tx_buf>
    800072e8:	01c0006f          	j	80007304 <uartstart+0x50>
    800072ec:	0006c703          	lbu	a4,0(a3)
    800072f0:	00f63023          	sd	a5,0(a2)
    800072f4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800072f8:	00063783          	ld	a5,0(a2)
    800072fc:	00053703          	ld	a4,0(a0)
    80007300:	00f70e63          	beq	a4,a5,8000731c <uartstart+0x68>
    80007304:	01f7f713          	andi	a4,a5,31
    80007308:	00e806b3          	add	a3,a6,a4
    8000730c:	0055c703          	lbu	a4,5(a1)
    80007310:	00178793          	addi	a5,a5,1
    80007314:	02077713          	andi	a4,a4,32
    80007318:	fc071ae3          	bnez	a4,800072ec <uartstart+0x38>
    8000731c:	00813403          	ld	s0,8(sp)
    80007320:	01010113          	addi	sp,sp,16
    80007324:	00008067          	ret

0000000080007328 <uartgetc>:
    80007328:	ff010113          	addi	sp,sp,-16
    8000732c:	00813423          	sd	s0,8(sp)
    80007330:	01010413          	addi	s0,sp,16
    80007334:	10000737          	lui	a4,0x10000
    80007338:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000733c:	0017f793          	andi	a5,a5,1
    80007340:	00078c63          	beqz	a5,80007358 <uartgetc+0x30>
    80007344:	00074503          	lbu	a0,0(a4)
    80007348:	0ff57513          	andi	a0,a0,255
    8000734c:	00813403          	ld	s0,8(sp)
    80007350:	01010113          	addi	sp,sp,16
    80007354:	00008067          	ret
    80007358:	fff00513          	li	a0,-1
    8000735c:	ff1ff06f          	j	8000734c <uartgetc+0x24>

0000000080007360 <uartintr>:
    80007360:	100007b7          	lui	a5,0x10000
    80007364:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007368:	0017f793          	andi	a5,a5,1
    8000736c:	0a078463          	beqz	a5,80007414 <uartintr+0xb4>
    80007370:	fe010113          	addi	sp,sp,-32
    80007374:	00813823          	sd	s0,16(sp)
    80007378:	00913423          	sd	s1,8(sp)
    8000737c:	00113c23          	sd	ra,24(sp)
    80007380:	02010413          	addi	s0,sp,32
    80007384:	100004b7          	lui	s1,0x10000
    80007388:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000738c:	0ff57513          	andi	a0,a0,255
    80007390:	fffff097          	auipc	ra,0xfffff
    80007394:	534080e7          	jalr	1332(ra) # 800068c4 <consoleintr>
    80007398:	0054c783          	lbu	a5,5(s1)
    8000739c:	0017f793          	andi	a5,a5,1
    800073a0:	fe0794e3          	bnez	a5,80007388 <uartintr+0x28>
    800073a4:	00004617          	auipc	a2,0x4
    800073a8:	17c60613          	addi	a2,a2,380 # 8000b520 <uart_tx_r>
    800073ac:	00004517          	auipc	a0,0x4
    800073b0:	17c50513          	addi	a0,a0,380 # 8000b528 <uart_tx_w>
    800073b4:	00063783          	ld	a5,0(a2)
    800073b8:	00053703          	ld	a4,0(a0)
    800073bc:	04f70263          	beq	a4,a5,80007400 <uartintr+0xa0>
    800073c0:	100005b7          	lui	a1,0x10000
    800073c4:	00005817          	auipc	a6,0x5
    800073c8:	44c80813          	addi	a6,a6,1100 # 8000c810 <uart_tx_buf>
    800073cc:	01c0006f          	j	800073e8 <uartintr+0x88>
    800073d0:	0006c703          	lbu	a4,0(a3)
    800073d4:	00f63023          	sd	a5,0(a2)
    800073d8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800073dc:	00063783          	ld	a5,0(a2)
    800073e0:	00053703          	ld	a4,0(a0)
    800073e4:	00f70e63          	beq	a4,a5,80007400 <uartintr+0xa0>
    800073e8:	01f7f713          	andi	a4,a5,31
    800073ec:	00e806b3          	add	a3,a6,a4
    800073f0:	0055c703          	lbu	a4,5(a1)
    800073f4:	00178793          	addi	a5,a5,1
    800073f8:	02077713          	andi	a4,a4,32
    800073fc:	fc071ae3          	bnez	a4,800073d0 <uartintr+0x70>
    80007400:	01813083          	ld	ra,24(sp)
    80007404:	01013403          	ld	s0,16(sp)
    80007408:	00813483          	ld	s1,8(sp)
    8000740c:	02010113          	addi	sp,sp,32
    80007410:	00008067          	ret
    80007414:	00004617          	auipc	a2,0x4
    80007418:	10c60613          	addi	a2,a2,268 # 8000b520 <uart_tx_r>
    8000741c:	00004517          	auipc	a0,0x4
    80007420:	10c50513          	addi	a0,a0,268 # 8000b528 <uart_tx_w>
    80007424:	00063783          	ld	a5,0(a2)
    80007428:	00053703          	ld	a4,0(a0)
    8000742c:	04f70263          	beq	a4,a5,80007470 <uartintr+0x110>
    80007430:	100005b7          	lui	a1,0x10000
    80007434:	00005817          	auipc	a6,0x5
    80007438:	3dc80813          	addi	a6,a6,988 # 8000c810 <uart_tx_buf>
    8000743c:	01c0006f          	j	80007458 <uartintr+0xf8>
    80007440:	0006c703          	lbu	a4,0(a3)
    80007444:	00f63023          	sd	a5,0(a2)
    80007448:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000744c:	00063783          	ld	a5,0(a2)
    80007450:	00053703          	ld	a4,0(a0)
    80007454:	02f70063          	beq	a4,a5,80007474 <uartintr+0x114>
    80007458:	01f7f713          	andi	a4,a5,31
    8000745c:	00e806b3          	add	a3,a6,a4
    80007460:	0055c703          	lbu	a4,5(a1)
    80007464:	00178793          	addi	a5,a5,1
    80007468:	02077713          	andi	a4,a4,32
    8000746c:	fc071ae3          	bnez	a4,80007440 <uartintr+0xe0>
    80007470:	00008067          	ret
    80007474:	00008067          	ret

0000000080007478 <kinit>:
    80007478:	fc010113          	addi	sp,sp,-64
    8000747c:	02913423          	sd	s1,40(sp)
    80007480:	fffff7b7          	lui	a5,0xfffff
    80007484:	00006497          	auipc	s1,0x6
    80007488:	3bb48493          	addi	s1,s1,955 # 8000d83f <end+0xfff>
    8000748c:	02813823          	sd	s0,48(sp)
    80007490:	01313c23          	sd	s3,24(sp)
    80007494:	00f4f4b3          	and	s1,s1,a5
    80007498:	02113c23          	sd	ra,56(sp)
    8000749c:	03213023          	sd	s2,32(sp)
    800074a0:	01413823          	sd	s4,16(sp)
    800074a4:	01513423          	sd	s5,8(sp)
    800074a8:	04010413          	addi	s0,sp,64
    800074ac:	000017b7          	lui	a5,0x1
    800074b0:	01100993          	li	s3,17
    800074b4:	00f487b3          	add	a5,s1,a5
    800074b8:	01b99993          	slli	s3,s3,0x1b
    800074bc:	06f9e063          	bltu	s3,a5,8000751c <kinit+0xa4>
    800074c0:	00005a97          	auipc	s5,0x5
    800074c4:	380a8a93          	addi	s5,s5,896 # 8000c840 <end>
    800074c8:	0754ec63          	bltu	s1,s5,80007540 <kinit+0xc8>
    800074cc:	0734fa63          	bgeu	s1,s3,80007540 <kinit+0xc8>
    800074d0:	00088a37          	lui	s4,0x88
    800074d4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800074d8:	00004917          	auipc	s2,0x4
    800074dc:	05890913          	addi	s2,s2,88 # 8000b530 <kmem>
    800074e0:	00ca1a13          	slli	s4,s4,0xc
    800074e4:	0140006f          	j	800074f8 <kinit+0x80>
    800074e8:	000017b7          	lui	a5,0x1
    800074ec:	00f484b3          	add	s1,s1,a5
    800074f0:	0554e863          	bltu	s1,s5,80007540 <kinit+0xc8>
    800074f4:	0534f663          	bgeu	s1,s3,80007540 <kinit+0xc8>
    800074f8:	00001637          	lui	a2,0x1
    800074fc:	00100593          	li	a1,1
    80007500:	00048513          	mv	a0,s1
    80007504:	00000097          	auipc	ra,0x0
    80007508:	5e4080e7          	jalr	1508(ra) # 80007ae8 <__memset>
    8000750c:	00093783          	ld	a5,0(s2)
    80007510:	00f4b023          	sd	a5,0(s1)
    80007514:	00993023          	sd	s1,0(s2)
    80007518:	fd4498e3          	bne	s1,s4,800074e8 <kinit+0x70>
    8000751c:	03813083          	ld	ra,56(sp)
    80007520:	03013403          	ld	s0,48(sp)
    80007524:	02813483          	ld	s1,40(sp)
    80007528:	02013903          	ld	s2,32(sp)
    8000752c:	01813983          	ld	s3,24(sp)
    80007530:	01013a03          	ld	s4,16(sp)
    80007534:	00813a83          	ld	s5,8(sp)
    80007538:	04010113          	addi	sp,sp,64
    8000753c:	00008067          	ret
    80007540:	00002517          	auipc	a0,0x2
    80007544:	2e850513          	addi	a0,a0,744 # 80009828 <digits+0x18>
    80007548:	fffff097          	auipc	ra,0xfffff
    8000754c:	4b4080e7          	jalr	1204(ra) # 800069fc <panic>

0000000080007550 <freerange>:
    80007550:	fc010113          	addi	sp,sp,-64
    80007554:	000017b7          	lui	a5,0x1
    80007558:	02913423          	sd	s1,40(sp)
    8000755c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007560:	009504b3          	add	s1,a0,s1
    80007564:	fffff537          	lui	a0,0xfffff
    80007568:	02813823          	sd	s0,48(sp)
    8000756c:	02113c23          	sd	ra,56(sp)
    80007570:	03213023          	sd	s2,32(sp)
    80007574:	01313c23          	sd	s3,24(sp)
    80007578:	01413823          	sd	s4,16(sp)
    8000757c:	01513423          	sd	s5,8(sp)
    80007580:	01613023          	sd	s6,0(sp)
    80007584:	04010413          	addi	s0,sp,64
    80007588:	00a4f4b3          	and	s1,s1,a0
    8000758c:	00f487b3          	add	a5,s1,a5
    80007590:	06f5e463          	bltu	a1,a5,800075f8 <freerange+0xa8>
    80007594:	00005a97          	auipc	s5,0x5
    80007598:	2aca8a93          	addi	s5,s5,684 # 8000c840 <end>
    8000759c:	0954e263          	bltu	s1,s5,80007620 <freerange+0xd0>
    800075a0:	01100993          	li	s3,17
    800075a4:	01b99993          	slli	s3,s3,0x1b
    800075a8:	0734fc63          	bgeu	s1,s3,80007620 <freerange+0xd0>
    800075ac:	00058a13          	mv	s4,a1
    800075b0:	00004917          	auipc	s2,0x4
    800075b4:	f8090913          	addi	s2,s2,-128 # 8000b530 <kmem>
    800075b8:	00002b37          	lui	s6,0x2
    800075bc:	0140006f          	j	800075d0 <freerange+0x80>
    800075c0:	000017b7          	lui	a5,0x1
    800075c4:	00f484b3          	add	s1,s1,a5
    800075c8:	0554ec63          	bltu	s1,s5,80007620 <freerange+0xd0>
    800075cc:	0534fa63          	bgeu	s1,s3,80007620 <freerange+0xd0>
    800075d0:	00001637          	lui	a2,0x1
    800075d4:	00100593          	li	a1,1
    800075d8:	00048513          	mv	a0,s1
    800075dc:	00000097          	auipc	ra,0x0
    800075e0:	50c080e7          	jalr	1292(ra) # 80007ae8 <__memset>
    800075e4:	00093703          	ld	a4,0(s2)
    800075e8:	016487b3          	add	a5,s1,s6
    800075ec:	00e4b023          	sd	a4,0(s1)
    800075f0:	00993023          	sd	s1,0(s2)
    800075f4:	fcfa76e3          	bgeu	s4,a5,800075c0 <freerange+0x70>
    800075f8:	03813083          	ld	ra,56(sp)
    800075fc:	03013403          	ld	s0,48(sp)
    80007600:	02813483          	ld	s1,40(sp)
    80007604:	02013903          	ld	s2,32(sp)
    80007608:	01813983          	ld	s3,24(sp)
    8000760c:	01013a03          	ld	s4,16(sp)
    80007610:	00813a83          	ld	s5,8(sp)
    80007614:	00013b03          	ld	s6,0(sp)
    80007618:	04010113          	addi	sp,sp,64
    8000761c:	00008067          	ret
    80007620:	00002517          	auipc	a0,0x2
    80007624:	20850513          	addi	a0,a0,520 # 80009828 <digits+0x18>
    80007628:	fffff097          	auipc	ra,0xfffff
    8000762c:	3d4080e7          	jalr	980(ra) # 800069fc <panic>

0000000080007630 <kfree>:
    80007630:	fe010113          	addi	sp,sp,-32
    80007634:	00813823          	sd	s0,16(sp)
    80007638:	00113c23          	sd	ra,24(sp)
    8000763c:	00913423          	sd	s1,8(sp)
    80007640:	02010413          	addi	s0,sp,32
    80007644:	03451793          	slli	a5,a0,0x34
    80007648:	04079c63          	bnez	a5,800076a0 <kfree+0x70>
    8000764c:	00005797          	auipc	a5,0x5
    80007650:	1f478793          	addi	a5,a5,500 # 8000c840 <end>
    80007654:	00050493          	mv	s1,a0
    80007658:	04f56463          	bltu	a0,a5,800076a0 <kfree+0x70>
    8000765c:	01100793          	li	a5,17
    80007660:	01b79793          	slli	a5,a5,0x1b
    80007664:	02f57e63          	bgeu	a0,a5,800076a0 <kfree+0x70>
    80007668:	00001637          	lui	a2,0x1
    8000766c:	00100593          	li	a1,1
    80007670:	00000097          	auipc	ra,0x0
    80007674:	478080e7          	jalr	1144(ra) # 80007ae8 <__memset>
    80007678:	00004797          	auipc	a5,0x4
    8000767c:	eb878793          	addi	a5,a5,-328 # 8000b530 <kmem>
    80007680:	0007b703          	ld	a4,0(a5)
    80007684:	01813083          	ld	ra,24(sp)
    80007688:	01013403          	ld	s0,16(sp)
    8000768c:	00e4b023          	sd	a4,0(s1)
    80007690:	0097b023          	sd	s1,0(a5)
    80007694:	00813483          	ld	s1,8(sp)
    80007698:	02010113          	addi	sp,sp,32
    8000769c:	00008067          	ret
    800076a0:	00002517          	auipc	a0,0x2
    800076a4:	18850513          	addi	a0,a0,392 # 80009828 <digits+0x18>
    800076a8:	fffff097          	auipc	ra,0xfffff
    800076ac:	354080e7          	jalr	852(ra) # 800069fc <panic>

00000000800076b0 <kalloc>:
    800076b0:	fe010113          	addi	sp,sp,-32
    800076b4:	00813823          	sd	s0,16(sp)
    800076b8:	00913423          	sd	s1,8(sp)
    800076bc:	00113c23          	sd	ra,24(sp)
    800076c0:	02010413          	addi	s0,sp,32
    800076c4:	00004797          	auipc	a5,0x4
    800076c8:	e6c78793          	addi	a5,a5,-404 # 8000b530 <kmem>
    800076cc:	0007b483          	ld	s1,0(a5)
    800076d0:	02048063          	beqz	s1,800076f0 <kalloc+0x40>
    800076d4:	0004b703          	ld	a4,0(s1)
    800076d8:	00001637          	lui	a2,0x1
    800076dc:	00500593          	li	a1,5
    800076e0:	00048513          	mv	a0,s1
    800076e4:	00e7b023          	sd	a4,0(a5)
    800076e8:	00000097          	auipc	ra,0x0
    800076ec:	400080e7          	jalr	1024(ra) # 80007ae8 <__memset>
    800076f0:	01813083          	ld	ra,24(sp)
    800076f4:	01013403          	ld	s0,16(sp)
    800076f8:	00048513          	mv	a0,s1
    800076fc:	00813483          	ld	s1,8(sp)
    80007700:	02010113          	addi	sp,sp,32
    80007704:	00008067          	ret

0000000080007708 <initlock>:
    80007708:	ff010113          	addi	sp,sp,-16
    8000770c:	00813423          	sd	s0,8(sp)
    80007710:	01010413          	addi	s0,sp,16
    80007714:	00813403          	ld	s0,8(sp)
    80007718:	00b53423          	sd	a1,8(a0)
    8000771c:	00052023          	sw	zero,0(a0)
    80007720:	00053823          	sd	zero,16(a0)
    80007724:	01010113          	addi	sp,sp,16
    80007728:	00008067          	ret

000000008000772c <acquire>:
    8000772c:	fe010113          	addi	sp,sp,-32
    80007730:	00813823          	sd	s0,16(sp)
    80007734:	00913423          	sd	s1,8(sp)
    80007738:	00113c23          	sd	ra,24(sp)
    8000773c:	01213023          	sd	s2,0(sp)
    80007740:	02010413          	addi	s0,sp,32
    80007744:	00050493          	mv	s1,a0
    80007748:	10002973          	csrr	s2,sstatus
    8000774c:	100027f3          	csrr	a5,sstatus
    80007750:	ffd7f793          	andi	a5,a5,-3
    80007754:	10079073          	csrw	sstatus,a5
    80007758:	fffff097          	auipc	ra,0xfffff
    8000775c:	8e0080e7          	jalr	-1824(ra) # 80006038 <mycpu>
    80007760:	07852783          	lw	a5,120(a0)
    80007764:	06078e63          	beqz	a5,800077e0 <acquire+0xb4>
    80007768:	fffff097          	auipc	ra,0xfffff
    8000776c:	8d0080e7          	jalr	-1840(ra) # 80006038 <mycpu>
    80007770:	07852783          	lw	a5,120(a0)
    80007774:	0004a703          	lw	a4,0(s1)
    80007778:	0017879b          	addiw	a5,a5,1
    8000777c:	06f52c23          	sw	a5,120(a0)
    80007780:	04071063          	bnez	a4,800077c0 <acquire+0x94>
    80007784:	00100713          	li	a4,1
    80007788:	00070793          	mv	a5,a4
    8000778c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007790:	0007879b          	sext.w	a5,a5
    80007794:	fe079ae3          	bnez	a5,80007788 <acquire+0x5c>
    80007798:	0ff0000f          	fence
    8000779c:	fffff097          	auipc	ra,0xfffff
    800077a0:	89c080e7          	jalr	-1892(ra) # 80006038 <mycpu>
    800077a4:	01813083          	ld	ra,24(sp)
    800077a8:	01013403          	ld	s0,16(sp)
    800077ac:	00a4b823          	sd	a0,16(s1)
    800077b0:	00013903          	ld	s2,0(sp)
    800077b4:	00813483          	ld	s1,8(sp)
    800077b8:	02010113          	addi	sp,sp,32
    800077bc:	00008067          	ret
    800077c0:	0104b903          	ld	s2,16(s1)
    800077c4:	fffff097          	auipc	ra,0xfffff
    800077c8:	874080e7          	jalr	-1932(ra) # 80006038 <mycpu>
    800077cc:	faa91ce3          	bne	s2,a0,80007784 <acquire+0x58>
    800077d0:	00002517          	auipc	a0,0x2
    800077d4:	06050513          	addi	a0,a0,96 # 80009830 <digits+0x20>
    800077d8:	fffff097          	auipc	ra,0xfffff
    800077dc:	224080e7          	jalr	548(ra) # 800069fc <panic>
    800077e0:	00195913          	srli	s2,s2,0x1
    800077e4:	fffff097          	auipc	ra,0xfffff
    800077e8:	854080e7          	jalr	-1964(ra) # 80006038 <mycpu>
    800077ec:	00197913          	andi	s2,s2,1
    800077f0:	07252e23          	sw	s2,124(a0)
    800077f4:	f75ff06f          	j	80007768 <acquire+0x3c>

00000000800077f8 <release>:
    800077f8:	fe010113          	addi	sp,sp,-32
    800077fc:	00813823          	sd	s0,16(sp)
    80007800:	00113c23          	sd	ra,24(sp)
    80007804:	00913423          	sd	s1,8(sp)
    80007808:	01213023          	sd	s2,0(sp)
    8000780c:	02010413          	addi	s0,sp,32
    80007810:	00052783          	lw	a5,0(a0)
    80007814:	00079a63          	bnez	a5,80007828 <release+0x30>
    80007818:	00002517          	auipc	a0,0x2
    8000781c:	02050513          	addi	a0,a0,32 # 80009838 <digits+0x28>
    80007820:	fffff097          	auipc	ra,0xfffff
    80007824:	1dc080e7          	jalr	476(ra) # 800069fc <panic>
    80007828:	01053903          	ld	s2,16(a0)
    8000782c:	00050493          	mv	s1,a0
    80007830:	fffff097          	auipc	ra,0xfffff
    80007834:	808080e7          	jalr	-2040(ra) # 80006038 <mycpu>
    80007838:	fea910e3          	bne	s2,a0,80007818 <release+0x20>
    8000783c:	0004b823          	sd	zero,16(s1)
    80007840:	0ff0000f          	fence
    80007844:	0f50000f          	fence	iorw,ow
    80007848:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000784c:	ffffe097          	auipc	ra,0xffffe
    80007850:	7ec080e7          	jalr	2028(ra) # 80006038 <mycpu>
    80007854:	100027f3          	csrr	a5,sstatus
    80007858:	0027f793          	andi	a5,a5,2
    8000785c:	04079a63          	bnez	a5,800078b0 <release+0xb8>
    80007860:	07852783          	lw	a5,120(a0)
    80007864:	02f05e63          	blez	a5,800078a0 <release+0xa8>
    80007868:	fff7871b          	addiw	a4,a5,-1
    8000786c:	06e52c23          	sw	a4,120(a0)
    80007870:	00071c63          	bnez	a4,80007888 <release+0x90>
    80007874:	07c52783          	lw	a5,124(a0)
    80007878:	00078863          	beqz	a5,80007888 <release+0x90>
    8000787c:	100027f3          	csrr	a5,sstatus
    80007880:	0027e793          	ori	a5,a5,2
    80007884:	10079073          	csrw	sstatus,a5
    80007888:	01813083          	ld	ra,24(sp)
    8000788c:	01013403          	ld	s0,16(sp)
    80007890:	00813483          	ld	s1,8(sp)
    80007894:	00013903          	ld	s2,0(sp)
    80007898:	02010113          	addi	sp,sp,32
    8000789c:	00008067          	ret
    800078a0:	00002517          	auipc	a0,0x2
    800078a4:	fb850513          	addi	a0,a0,-72 # 80009858 <digits+0x48>
    800078a8:	fffff097          	auipc	ra,0xfffff
    800078ac:	154080e7          	jalr	340(ra) # 800069fc <panic>
    800078b0:	00002517          	auipc	a0,0x2
    800078b4:	f9050513          	addi	a0,a0,-112 # 80009840 <digits+0x30>
    800078b8:	fffff097          	auipc	ra,0xfffff
    800078bc:	144080e7          	jalr	324(ra) # 800069fc <panic>

00000000800078c0 <holding>:
    800078c0:	00052783          	lw	a5,0(a0)
    800078c4:	00079663          	bnez	a5,800078d0 <holding+0x10>
    800078c8:	00000513          	li	a0,0
    800078cc:	00008067          	ret
    800078d0:	fe010113          	addi	sp,sp,-32
    800078d4:	00813823          	sd	s0,16(sp)
    800078d8:	00913423          	sd	s1,8(sp)
    800078dc:	00113c23          	sd	ra,24(sp)
    800078e0:	02010413          	addi	s0,sp,32
    800078e4:	01053483          	ld	s1,16(a0)
    800078e8:	ffffe097          	auipc	ra,0xffffe
    800078ec:	750080e7          	jalr	1872(ra) # 80006038 <mycpu>
    800078f0:	01813083          	ld	ra,24(sp)
    800078f4:	01013403          	ld	s0,16(sp)
    800078f8:	40a48533          	sub	a0,s1,a0
    800078fc:	00153513          	seqz	a0,a0
    80007900:	00813483          	ld	s1,8(sp)
    80007904:	02010113          	addi	sp,sp,32
    80007908:	00008067          	ret

000000008000790c <push_off>:
    8000790c:	fe010113          	addi	sp,sp,-32
    80007910:	00813823          	sd	s0,16(sp)
    80007914:	00113c23          	sd	ra,24(sp)
    80007918:	00913423          	sd	s1,8(sp)
    8000791c:	02010413          	addi	s0,sp,32
    80007920:	100024f3          	csrr	s1,sstatus
    80007924:	100027f3          	csrr	a5,sstatus
    80007928:	ffd7f793          	andi	a5,a5,-3
    8000792c:	10079073          	csrw	sstatus,a5
    80007930:	ffffe097          	auipc	ra,0xffffe
    80007934:	708080e7          	jalr	1800(ra) # 80006038 <mycpu>
    80007938:	07852783          	lw	a5,120(a0)
    8000793c:	02078663          	beqz	a5,80007968 <push_off+0x5c>
    80007940:	ffffe097          	auipc	ra,0xffffe
    80007944:	6f8080e7          	jalr	1784(ra) # 80006038 <mycpu>
    80007948:	07852783          	lw	a5,120(a0)
    8000794c:	01813083          	ld	ra,24(sp)
    80007950:	01013403          	ld	s0,16(sp)
    80007954:	0017879b          	addiw	a5,a5,1
    80007958:	06f52c23          	sw	a5,120(a0)
    8000795c:	00813483          	ld	s1,8(sp)
    80007960:	02010113          	addi	sp,sp,32
    80007964:	00008067          	ret
    80007968:	0014d493          	srli	s1,s1,0x1
    8000796c:	ffffe097          	auipc	ra,0xffffe
    80007970:	6cc080e7          	jalr	1740(ra) # 80006038 <mycpu>
    80007974:	0014f493          	andi	s1,s1,1
    80007978:	06952e23          	sw	s1,124(a0)
    8000797c:	fc5ff06f          	j	80007940 <push_off+0x34>

0000000080007980 <pop_off>:
    80007980:	ff010113          	addi	sp,sp,-16
    80007984:	00813023          	sd	s0,0(sp)
    80007988:	00113423          	sd	ra,8(sp)
    8000798c:	01010413          	addi	s0,sp,16
    80007990:	ffffe097          	auipc	ra,0xffffe
    80007994:	6a8080e7          	jalr	1704(ra) # 80006038 <mycpu>
    80007998:	100027f3          	csrr	a5,sstatus
    8000799c:	0027f793          	andi	a5,a5,2
    800079a0:	04079663          	bnez	a5,800079ec <pop_off+0x6c>
    800079a4:	07852783          	lw	a5,120(a0)
    800079a8:	02f05a63          	blez	a5,800079dc <pop_off+0x5c>
    800079ac:	fff7871b          	addiw	a4,a5,-1
    800079b0:	06e52c23          	sw	a4,120(a0)
    800079b4:	00071c63          	bnez	a4,800079cc <pop_off+0x4c>
    800079b8:	07c52783          	lw	a5,124(a0)
    800079bc:	00078863          	beqz	a5,800079cc <pop_off+0x4c>
    800079c0:	100027f3          	csrr	a5,sstatus
    800079c4:	0027e793          	ori	a5,a5,2
    800079c8:	10079073          	csrw	sstatus,a5
    800079cc:	00813083          	ld	ra,8(sp)
    800079d0:	00013403          	ld	s0,0(sp)
    800079d4:	01010113          	addi	sp,sp,16
    800079d8:	00008067          	ret
    800079dc:	00002517          	auipc	a0,0x2
    800079e0:	e7c50513          	addi	a0,a0,-388 # 80009858 <digits+0x48>
    800079e4:	fffff097          	auipc	ra,0xfffff
    800079e8:	018080e7          	jalr	24(ra) # 800069fc <panic>
    800079ec:	00002517          	auipc	a0,0x2
    800079f0:	e5450513          	addi	a0,a0,-428 # 80009840 <digits+0x30>
    800079f4:	fffff097          	auipc	ra,0xfffff
    800079f8:	008080e7          	jalr	8(ra) # 800069fc <panic>

00000000800079fc <push_on>:
    800079fc:	fe010113          	addi	sp,sp,-32
    80007a00:	00813823          	sd	s0,16(sp)
    80007a04:	00113c23          	sd	ra,24(sp)
    80007a08:	00913423          	sd	s1,8(sp)
    80007a0c:	02010413          	addi	s0,sp,32
    80007a10:	100024f3          	csrr	s1,sstatus
    80007a14:	100027f3          	csrr	a5,sstatus
    80007a18:	0027e793          	ori	a5,a5,2
    80007a1c:	10079073          	csrw	sstatus,a5
    80007a20:	ffffe097          	auipc	ra,0xffffe
    80007a24:	618080e7          	jalr	1560(ra) # 80006038 <mycpu>
    80007a28:	07852783          	lw	a5,120(a0)
    80007a2c:	02078663          	beqz	a5,80007a58 <push_on+0x5c>
    80007a30:	ffffe097          	auipc	ra,0xffffe
    80007a34:	608080e7          	jalr	1544(ra) # 80006038 <mycpu>
    80007a38:	07852783          	lw	a5,120(a0)
    80007a3c:	01813083          	ld	ra,24(sp)
    80007a40:	01013403          	ld	s0,16(sp)
    80007a44:	0017879b          	addiw	a5,a5,1
    80007a48:	06f52c23          	sw	a5,120(a0)
    80007a4c:	00813483          	ld	s1,8(sp)
    80007a50:	02010113          	addi	sp,sp,32
    80007a54:	00008067          	ret
    80007a58:	0014d493          	srli	s1,s1,0x1
    80007a5c:	ffffe097          	auipc	ra,0xffffe
    80007a60:	5dc080e7          	jalr	1500(ra) # 80006038 <mycpu>
    80007a64:	0014f493          	andi	s1,s1,1
    80007a68:	06952e23          	sw	s1,124(a0)
    80007a6c:	fc5ff06f          	j	80007a30 <push_on+0x34>

0000000080007a70 <pop_on>:
    80007a70:	ff010113          	addi	sp,sp,-16
    80007a74:	00813023          	sd	s0,0(sp)
    80007a78:	00113423          	sd	ra,8(sp)
    80007a7c:	01010413          	addi	s0,sp,16
    80007a80:	ffffe097          	auipc	ra,0xffffe
    80007a84:	5b8080e7          	jalr	1464(ra) # 80006038 <mycpu>
    80007a88:	100027f3          	csrr	a5,sstatus
    80007a8c:	0027f793          	andi	a5,a5,2
    80007a90:	04078463          	beqz	a5,80007ad8 <pop_on+0x68>
    80007a94:	07852783          	lw	a5,120(a0)
    80007a98:	02f05863          	blez	a5,80007ac8 <pop_on+0x58>
    80007a9c:	fff7879b          	addiw	a5,a5,-1
    80007aa0:	06f52c23          	sw	a5,120(a0)
    80007aa4:	07853783          	ld	a5,120(a0)
    80007aa8:	00079863          	bnez	a5,80007ab8 <pop_on+0x48>
    80007aac:	100027f3          	csrr	a5,sstatus
    80007ab0:	ffd7f793          	andi	a5,a5,-3
    80007ab4:	10079073          	csrw	sstatus,a5
    80007ab8:	00813083          	ld	ra,8(sp)
    80007abc:	00013403          	ld	s0,0(sp)
    80007ac0:	01010113          	addi	sp,sp,16
    80007ac4:	00008067          	ret
    80007ac8:	00002517          	auipc	a0,0x2
    80007acc:	db850513          	addi	a0,a0,-584 # 80009880 <digits+0x70>
    80007ad0:	fffff097          	auipc	ra,0xfffff
    80007ad4:	f2c080e7          	jalr	-212(ra) # 800069fc <panic>
    80007ad8:	00002517          	auipc	a0,0x2
    80007adc:	d8850513          	addi	a0,a0,-632 # 80009860 <digits+0x50>
    80007ae0:	fffff097          	auipc	ra,0xfffff
    80007ae4:	f1c080e7          	jalr	-228(ra) # 800069fc <panic>

0000000080007ae8 <__memset>:
    80007ae8:	ff010113          	addi	sp,sp,-16
    80007aec:	00813423          	sd	s0,8(sp)
    80007af0:	01010413          	addi	s0,sp,16
    80007af4:	1a060e63          	beqz	a2,80007cb0 <__memset+0x1c8>
    80007af8:	40a007b3          	neg	a5,a0
    80007afc:	0077f793          	andi	a5,a5,7
    80007b00:	00778693          	addi	a3,a5,7
    80007b04:	00b00813          	li	a6,11
    80007b08:	0ff5f593          	andi	a1,a1,255
    80007b0c:	fff6071b          	addiw	a4,a2,-1
    80007b10:	1b06e663          	bltu	a3,a6,80007cbc <__memset+0x1d4>
    80007b14:	1cd76463          	bltu	a4,a3,80007cdc <__memset+0x1f4>
    80007b18:	1a078e63          	beqz	a5,80007cd4 <__memset+0x1ec>
    80007b1c:	00b50023          	sb	a1,0(a0)
    80007b20:	00100713          	li	a4,1
    80007b24:	1ae78463          	beq	a5,a4,80007ccc <__memset+0x1e4>
    80007b28:	00b500a3          	sb	a1,1(a0)
    80007b2c:	00200713          	li	a4,2
    80007b30:	1ae78a63          	beq	a5,a4,80007ce4 <__memset+0x1fc>
    80007b34:	00b50123          	sb	a1,2(a0)
    80007b38:	00300713          	li	a4,3
    80007b3c:	18e78463          	beq	a5,a4,80007cc4 <__memset+0x1dc>
    80007b40:	00b501a3          	sb	a1,3(a0)
    80007b44:	00400713          	li	a4,4
    80007b48:	1ae78263          	beq	a5,a4,80007cec <__memset+0x204>
    80007b4c:	00b50223          	sb	a1,4(a0)
    80007b50:	00500713          	li	a4,5
    80007b54:	1ae78063          	beq	a5,a4,80007cf4 <__memset+0x20c>
    80007b58:	00b502a3          	sb	a1,5(a0)
    80007b5c:	00700713          	li	a4,7
    80007b60:	18e79e63          	bne	a5,a4,80007cfc <__memset+0x214>
    80007b64:	00b50323          	sb	a1,6(a0)
    80007b68:	00700e93          	li	t4,7
    80007b6c:	00859713          	slli	a4,a1,0x8
    80007b70:	00e5e733          	or	a4,a1,a4
    80007b74:	01059e13          	slli	t3,a1,0x10
    80007b78:	01c76e33          	or	t3,a4,t3
    80007b7c:	01859313          	slli	t1,a1,0x18
    80007b80:	006e6333          	or	t1,t3,t1
    80007b84:	02059893          	slli	a7,a1,0x20
    80007b88:	40f60e3b          	subw	t3,a2,a5
    80007b8c:	011368b3          	or	a7,t1,a7
    80007b90:	02859813          	slli	a6,a1,0x28
    80007b94:	0108e833          	or	a6,a7,a6
    80007b98:	03059693          	slli	a3,a1,0x30
    80007b9c:	003e589b          	srliw	a7,t3,0x3
    80007ba0:	00d866b3          	or	a3,a6,a3
    80007ba4:	03859713          	slli	a4,a1,0x38
    80007ba8:	00389813          	slli	a6,a7,0x3
    80007bac:	00f507b3          	add	a5,a0,a5
    80007bb0:	00e6e733          	or	a4,a3,a4
    80007bb4:	000e089b          	sext.w	a7,t3
    80007bb8:	00f806b3          	add	a3,a6,a5
    80007bbc:	00e7b023          	sd	a4,0(a5)
    80007bc0:	00878793          	addi	a5,a5,8
    80007bc4:	fed79ce3          	bne	a5,a3,80007bbc <__memset+0xd4>
    80007bc8:	ff8e7793          	andi	a5,t3,-8
    80007bcc:	0007871b          	sext.w	a4,a5
    80007bd0:	01d787bb          	addw	a5,a5,t4
    80007bd4:	0ce88e63          	beq	a7,a4,80007cb0 <__memset+0x1c8>
    80007bd8:	00f50733          	add	a4,a0,a5
    80007bdc:	00b70023          	sb	a1,0(a4)
    80007be0:	0017871b          	addiw	a4,a5,1
    80007be4:	0cc77663          	bgeu	a4,a2,80007cb0 <__memset+0x1c8>
    80007be8:	00e50733          	add	a4,a0,a4
    80007bec:	00b70023          	sb	a1,0(a4)
    80007bf0:	0027871b          	addiw	a4,a5,2
    80007bf4:	0ac77e63          	bgeu	a4,a2,80007cb0 <__memset+0x1c8>
    80007bf8:	00e50733          	add	a4,a0,a4
    80007bfc:	00b70023          	sb	a1,0(a4)
    80007c00:	0037871b          	addiw	a4,a5,3
    80007c04:	0ac77663          	bgeu	a4,a2,80007cb0 <__memset+0x1c8>
    80007c08:	00e50733          	add	a4,a0,a4
    80007c0c:	00b70023          	sb	a1,0(a4)
    80007c10:	0047871b          	addiw	a4,a5,4
    80007c14:	08c77e63          	bgeu	a4,a2,80007cb0 <__memset+0x1c8>
    80007c18:	00e50733          	add	a4,a0,a4
    80007c1c:	00b70023          	sb	a1,0(a4)
    80007c20:	0057871b          	addiw	a4,a5,5
    80007c24:	08c77663          	bgeu	a4,a2,80007cb0 <__memset+0x1c8>
    80007c28:	00e50733          	add	a4,a0,a4
    80007c2c:	00b70023          	sb	a1,0(a4)
    80007c30:	0067871b          	addiw	a4,a5,6
    80007c34:	06c77e63          	bgeu	a4,a2,80007cb0 <__memset+0x1c8>
    80007c38:	00e50733          	add	a4,a0,a4
    80007c3c:	00b70023          	sb	a1,0(a4)
    80007c40:	0077871b          	addiw	a4,a5,7
    80007c44:	06c77663          	bgeu	a4,a2,80007cb0 <__memset+0x1c8>
    80007c48:	00e50733          	add	a4,a0,a4
    80007c4c:	00b70023          	sb	a1,0(a4)
    80007c50:	0087871b          	addiw	a4,a5,8
    80007c54:	04c77e63          	bgeu	a4,a2,80007cb0 <__memset+0x1c8>
    80007c58:	00e50733          	add	a4,a0,a4
    80007c5c:	00b70023          	sb	a1,0(a4)
    80007c60:	0097871b          	addiw	a4,a5,9
    80007c64:	04c77663          	bgeu	a4,a2,80007cb0 <__memset+0x1c8>
    80007c68:	00e50733          	add	a4,a0,a4
    80007c6c:	00b70023          	sb	a1,0(a4)
    80007c70:	00a7871b          	addiw	a4,a5,10
    80007c74:	02c77e63          	bgeu	a4,a2,80007cb0 <__memset+0x1c8>
    80007c78:	00e50733          	add	a4,a0,a4
    80007c7c:	00b70023          	sb	a1,0(a4)
    80007c80:	00b7871b          	addiw	a4,a5,11
    80007c84:	02c77663          	bgeu	a4,a2,80007cb0 <__memset+0x1c8>
    80007c88:	00e50733          	add	a4,a0,a4
    80007c8c:	00b70023          	sb	a1,0(a4)
    80007c90:	00c7871b          	addiw	a4,a5,12
    80007c94:	00c77e63          	bgeu	a4,a2,80007cb0 <__memset+0x1c8>
    80007c98:	00e50733          	add	a4,a0,a4
    80007c9c:	00b70023          	sb	a1,0(a4)
    80007ca0:	00d7879b          	addiw	a5,a5,13
    80007ca4:	00c7f663          	bgeu	a5,a2,80007cb0 <__memset+0x1c8>
    80007ca8:	00f507b3          	add	a5,a0,a5
    80007cac:	00b78023          	sb	a1,0(a5)
    80007cb0:	00813403          	ld	s0,8(sp)
    80007cb4:	01010113          	addi	sp,sp,16
    80007cb8:	00008067          	ret
    80007cbc:	00b00693          	li	a3,11
    80007cc0:	e55ff06f          	j	80007b14 <__memset+0x2c>
    80007cc4:	00300e93          	li	t4,3
    80007cc8:	ea5ff06f          	j	80007b6c <__memset+0x84>
    80007ccc:	00100e93          	li	t4,1
    80007cd0:	e9dff06f          	j	80007b6c <__memset+0x84>
    80007cd4:	00000e93          	li	t4,0
    80007cd8:	e95ff06f          	j	80007b6c <__memset+0x84>
    80007cdc:	00000793          	li	a5,0
    80007ce0:	ef9ff06f          	j	80007bd8 <__memset+0xf0>
    80007ce4:	00200e93          	li	t4,2
    80007ce8:	e85ff06f          	j	80007b6c <__memset+0x84>
    80007cec:	00400e93          	li	t4,4
    80007cf0:	e7dff06f          	j	80007b6c <__memset+0x84>
    80007cf4:	00500e93          	li	t4,5
    80007cf8:	e75ff06f          	j	80007b6c <__memset+0x84>
    80007cfc:	00600e93          	li	t4,6
    80007d00:	e6dff06f          	j	80007b6c <__memset+0x84>

0000000080007d04 <__memmove>:
    80007d04:	ff010113          	addi	sp,sp,-16
    80007d08:	00813423          	sd	s0,8(sp)
    80007d0c:	01010413          	addi	s0,sp,16
    80007d10:	0e060863          	beqz	a2,80007e00 <__memmove+0xfc>
    80007d14:	fff6069b          	addiw	a3,a2,-1
    80007d18:	0006881b          	sext.w	a6,a3
    80007d1c:	0ea5e863          	bltu	a1,a0,80007e0c <__memmove+0x108>
    80007d20:	00758713          	addi	a4,a1,7
    80007d24:	00a5e7b3          	or	a5,a1,a0
    80007d28:	40a70733          	sub	a4,a4,a0
    80007d2c:	0077f793          	andi	a5,a5,7
    80007d30:	00f73713          	sltiu	a4,a4,15
    80007d34:	00174713          	xori	a4,a4,1
    80007d38:	0017b793          	seqz	a5,a5
    80007d3c:	00e7f7b3          	and	a5,a5,a4
    80007d40:	10078863          	beqz	a5,80007e50 <__memmove+0x14c>
    80007d44:	00900793          	li	a5,9
    80007d48:	1107f463          	bgeu	a5,a6,80007e50 <__memmove+0x14c>
    80007d4c:	0036581b          	srliw	a6,a2,0x3
    80007d50:	fff8081b          	addiw	a6,a6,-1
    80007d54:	02081813          	slli	a6,a6,0x20
    80007d58:	01d85893          	srli	a7,a6,0x1d
    80007d5c:	00858813          	addi	a6,a1,8
    80007d60:	00058793          	mv	a5,a1
    80007d64:	00050713          	mv	a4,a0
    80007d68:	01088833          	add	a6,a7,a6
    80007d6c:	0007b883          	ld	a7,0(a5)
    80007d70:	00878793          	addi	a5,a5,8
    80007d74:	00870713          	addi	a4,a4,8
    80007d78:	ff173c23          	sd	a7,-8(a4)
    80007d7c:	ff0798e3          	bne	a5,a6,80007d6c <__memmove+0x68>
    80007d80:	ff867713          	andi	a4,a2,-8
    80007d84:	02071793          	slli	a5,a4,0x20
    80007d88:	0207d793          	srli	a5,a5,0x20
    80007d8c:	00f585b3          	add	a1,a1,a5
    80007d90:	40e686bb          	subw	a3,a3,a4
    80007d94:	00f507b3          	add	a5,a0,a5
    80007d98:	06e60463          	beq	a2,a4,80007e00 <__memmove+0xfc>
    80007d9c:	0005c703          	lbu	a4,0(a1)
    80007da0:	00e78023          	sb	a4,0(a5)
    80007da4:	04068e63          	beqz	a3,80007e00 <__memmove+0xfc>
    80007da8:	0015c603          	lbu	a2,1(a1)
    80007dac:	00100713          	li	a4,1
    80007db0:	00c780a3          	sb	a2,1(a5)
    80007db4:	04e68663          	beq	a3,a4,80007e00 <__memmove+0xfc>
    80007db8:	0025c603          	lbu	a2,2(a1)
    80007dbc:	00200713          	li	a4,2
    80007dc0:	00c78123          	sb	a2,2(a5)
    80007dc4:	02e68e63          	beq	a3,a4,80007e00 <__memmove+0xfc>
    80007dc8:	0035c603          	lbu	a2,3(a1)
    80007dcc:	00300713          	li	a4,3
    80007dd0:	00c781a3          	sb	a2,3(a5)
    80007dd4:	02e68663          	beq	a3,a4,80007e00 <__memmove+0xfc>
    80007dd8:	0045c603          	lbu	a2,4(a1)
    80007ddc:	00400713          	li	a4,4
    80007de0:	00c78223          	sb	a2,4(a5)
    80007de4:	00e68e63          	beq	a3,a4,80007e00 <__memmove+0xfc>
    80007de8:	0055c603          	lbu	a2,5(a1)
    80007dec:	00500713          	li	a4,5
    80007df0:	00c782a3          	sb	a2,5(a5)
    80007df4:	00e68663          	beq	a3,a4,80007e00 <__memmove+0xfc>
    80007df8:	0065c703          	lbu	a4,6(a1)
    80007dfc:	00e78323          	sb	a4,6(a5)
    80007e00:	00813403          	ld	s0,8(sp)
    80007e04:	01010113          	addi	sp,sp,16
    80007e08:	00008067          	ret
    80007e0c:	02061713          	slli	a4,a2,0x20
    80007e10:	02075713          	srli	a4,a4,0x20
    80007e14:	00e587b3          	add	a5,a1,a4
    80007e18:	f0f574e3          	bgeu	a0,a5,80007d20 <__memmove+0x1c>
    80007e1c:	02069613          	slli	a2,a3,0x20
    80007e20:	02065613          	srli	a2,a2,0x20
    80007e24:	fff64613          	not	a2,a2
    80007e28:	00e50733          	add	a4,a0,a4
    80007e2c:	00c78633          	add	a2,a5,a2
    80007e30:	fff7c683          	lbu	a3,-1(a5)
    80007e34:	fff78793          	addi	a5,a5,-1
    80007e38:	fff70713          	addi	a4,a4,-1
    80007e3c:	00d70023          	sb	a3,0(a4)
    80007e40:	fec798e3          	bne	a5,a2,80007e30 <__memmove+0x12c>
    80007e44:	00813403          	ld	s0,8(sp)
    80007e48:	01010113          	addi	sp,sp,16
    80007e4c:	00008067          	ret
    80007e50:	02069713          	slli	a4,a3,0x20
    80007e54:	02075713          	srli	a4,a4,0x20
    80007e58:	00170713          	addi	a4,a4,1
    80007e5c:	00e50733          	add	a4,a0,a4
    80007e60:	00050793          	mv	a5,a0
    80007e64:	0005c683          	lbu	a3,0(a1)
    80007e68:	00178793          	addi	a5,a5,1
    80007e6c:	00158593          	addi	a1,a1,1
    80007e70:	fed78fa3          	sb	a3,-1(a5)
    80007e74:	fee798e3          	bne	a5,a4,80007e64 <__memmove+0x160>
    80007e78:	f89ff06f          	j	80007e00 <__memmove+0xfc>

0000000080007e7c <__mem_free>:
    80007e7c:	ff010113          	addi	sp,sp,-16
    80007e80:	00813423          	sd	s0,8(sp)
    80007e84:	01010413          	addi	s0,sp,16
    80007e88:	00003597          	auipc	a1,0x3
    80007e8c:	6b058593          	addi	a1,a1,1712 # 8000b538 <freep>
    80007e90:	0005b783          	ld	a5,0(a1)
    80007e94:	ff050693          	addi	a3,a0,-16
    80007e98:	0007b703          	ld	a4,0(a5)
    80007e9c:	00d7fc63          	bgeu	a5,a3,80007eb4 <__mem_free+0x38>
    80007ea0:	00e6ee63          	bltu	a3,a4,80007ebc <__mem_free+0x40>
    80007ea4:	00e7fc63          	bgeu	a5,a4,80007ebc <__mem_free+0x40>
    80007ea8:	00070793          	mv	a5,a4
    80007eac:	0007b703          	ld	a4,0(a5)
    80007eb0:	fed7e8e3          	bltu	a5,a3,80007ea0 <__mem_free+0x24>
    80007eb4:	fee7eae3          	bltu	a5,a4,80007ea8 <__mem_free+0x2c>
    80007eb8:	fee6f8e3          	bgeu	a3,a4,80007ea8 <__mem_free+0x2c>
    80007ebc:	ff852803          	lw	a6,-8(a0)
    80007ec0:	02081613          	slli	a2,a6,0x20
    80007ec4:	01c65613          	srli	a2,a2,0x1c
    80007ec8:	00c68633          	add	a2,a3,a2
    80007ecc:	02c70a63          	beq	a4,a2,80007f00 <__mem_free+0x84>
    80007ed0:	fee53823          	sd	a4,-16(a0)
    80007ed4:	0087a503          	lw	a0,8(a5)
    80007ed8:	02051613          	slli	a2,a0,0x20
    80007edc:	01c65613          	srli	a2,a2,0x1c
    80007ee0:	00c78633          	add	a2,a5,a2
    80007ee4:	04c68263          	beq	a3,a2,80007f28 <__mem_free+0xac>
    80007ee8:	00813403          	ld	s0,8(sp)
    80007eec:	00d7b023          	sd	a3,0(a5)
    80007ef0:	00f5b023          	sd	a5,0(a1)
    80007ef4:	00000513          	li	a0,0
    80007ef8:	01010113          	addi	sp,sp,16
    80007efc:	00008067          	ret
    80007f00:	00872603          	lw	a2,8(a4)
    80007f04:	00073703          	ld	a4,0(a4)
    80007f08:	0106083b          	addw	a6,a2,a6
    80007f0c:	ff052c23          	sw	a6,-8(a0)
    80007f10:	fee53823          	sd	a4,-16(a0)
    80007f14:	0087a503          	lw	a0,8(a5)
    80007f18:	02051613          	slli	a2,a0,0x20
    80007f1c:	01c65613          	srli	a2,a2,0x1c
    80007f20:	00c78633          	add	a2,a5,a2
    80007f24:	fcc692e3          	bne	a3,a2,80007ee8 <__mem_free+0x6c>
    80007f28:	00813403          	ld	s0,8(sp)
    80007f2c:	0105053b          	addw	a0,a0,a6
    80007f30:	00a7a423          	sw	a0,8(a5)
    80007f34:	00e7b023          	sd	a4,0(a5)
    80007f38:	00f5b023          	sd	a5,0(a1)
    80007f3c:	00000513          	li	a0,0
    80007f40:	01010113          	addi	sp,sp,16
    80007f44:	00008067          	ret

0000000080007f48 <__mem_alloc>:
    80007f48:	fc010113          	addi	sp,sp,-64
    80007f4c:	02813823          	sd	s0,48(sp)
    80007f50:	02913423          	sd	s1,40(sp)
    80007f54:	03213023          	sd	s2,32(sp)
    80007f58:	01513423          	sd	s5,8(sp)
    80007f5c:	02113c23          	sd	ra,56(sp)
    80007f60:	01313c23          	sd	s3,24(sp)
    80007f64:	01413823          	sd	s4,16(sp)
    80007f68:	01613023          	sd	s6,0(sp)
    80007f6c:	04010413          	addi	s0,sp,64
    80007f70:	00003a97          	auipc	s5,0x3
    80007f74:	5c8a8a93          	addi	s5,s5,1480 # 8000b538 <freep>
    80007f78:	00f50913          	addi	s2,a0,15
    80007f7c:	000ab683          	ld	a3,0(s5)
    80007f80:	00495913          	srli	s2,s2,0x4
    80007f84:	0019049b          	addiw	s1,s2,1
    80007f88:	00048913          	mv	s2,s1
    80007f8c:	0c068c63          	beqz	a3,80008064 <__mem_alloc+0x11c>
    80007f90:	0006b503          	ld	a0,0(a3)
    80007f94:	00852703          	lw	a4,8(a0)
    80007f98:	10977063          	bgeu	a4,s1,80008098 <__mem_alloc+0x150>
    80007f9c:	000017b7          	lui	a5,0x1
    80007fa0:	0009099b          	sext.w	s3,s2
    80007fa4:	0af4e863          	bltu	s1,a5,80008054 <__mem_alloc+0x10c>
    80007fa8:	02099a13          	slli	s4,s3,0x20
    80007fac:	01ca5a13          	srli	s4,s4,0x1c
    80007fb0:	fff00b13          	li	s6,-1
    80007fb4:	0100006f          	j	80007fc4 <__mem_alloc+0x7c>
    80007fb8:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    80007fbc:	00852703          	lw	a4,8(a0)
    80007fc0:	04977463          	bgeu	a4,s1,80008008 <__mem_alloc+0xc0>
    80007fc4:	00050793          	mv	a5,a0
    80007fc8:	fea698e3          	bne	a3,a0,80007fb8 <__mem_alloc+0x70>
    80007fcc:	000a0513          	mv	a0,s4
    80007fd0:	00000097          	auipc	ra,0x0
    80007fd4:	1f0080e7          	jalr	496(ra) # 800081c0 <kvmincrease>
    80007fd8:	00050793          	mv	a5,a0
    80007fdc:	01050513          	addi	a0,a0,16
    80007fe0:	07678e63          	beq	a5,s6,8000805c <__mem_alloc+0x114>
    80007fe4:	0137a423          	sw	s3,8(a5)
    80007fe8:	00000097          	auipc	ra,0x0
    80007fec:	e94080e7          	jalr	-364(ra) # 80007e7c <__mem_free>
    80007ff0:	000ab783          	ld	a5,0(s5)
    80007ff4:	06078463          	beqz	a5,8000805c <__mem_alloc+0x114>
    80007ff8:	0007b503          	ld	a0,0(a5)
    80007ffc:	00078693          	mv	a3,a5
    80008000:	00852703          	lw	a4,8(a0)
    80008004:	fc9760e3          	bltu	a4,s1,80007fc4 <__mem_alloc+0x7c>
    80008008:	08e48263          	beq	s1,a4,8000808c <__mem_alloc+0x144>
    8000800c:	4127073b          	subw	a4,a4,s2
    80008010:	02071693          	slli	a3,a4,0x20
    80008014:	01c6d693          	srli	a3,a3,0x1c
    80008018:	00e52423          	sw	a4,8(a0)
    8000801c:	00d50533          	add	a0,a0,a3
    80008020:	01252423          	sw	s2,8(a0)
    80008024:	00fab023          	sd	a5,0(s5)
    80008028:	01050513          	addi	a0,a0,16
    8000802c:	03813083          	ld	ra,56(sp)
    80008030:	03013403          	ld	s0,48(sp)
    80008034:	02813483          	ld	s1,40(sp)
    80008038:	02013903          	ld	s2,32(sp)
    8000803c:	01813983          	ld	s3,24(sp)
    80008040:	01013a03          	ld	s4,16(sp)
    80008044:	00813a83          	ld	s5,8(sp)
    80008048:	00013b03          	ld	s6,0(sp)
    8000804c:	04010113          	addi	sp,sp,64
    80008050:	00008067          	ret
    80008054:	000019b7          	lui	s3,0x1
    80008058:	f51ff06f          	j	80007fa8 <__mem_alloc+0x60>
    8000805c:	00000513          	li	a0,0
    80008060:	fcdff06f          	j	8000802c <__mem_alloc+0xe4>
    80008064:	00004797          	auipc	a5,0x4
    80008068:	7cc78793          	addi	a5,a5,1996 # 8000c830 <base>
    8000806c:	00078513          	mv	a0,a5
    80008070:	00fab023          	sd	a5,0(s5)
    80008074:	00f7b023          	sd	a5,0(a5)
    80008078:	00000713          	li	a4,0
    8000807c:	00004797          	auipc	a5,0x4
    80008080:	7a07ae23          	sw	zero,1980(a5) # 8000c838 <base+0x8>
    80008084:	00050693          	mv	a3,a0
    80008088:	f11ff06f          	j	80007f98 <__mem_alloc+0x50>
    8000808c:	00053703          	ld	a4,0(a0)
    80008090:	00e7b023          	sd	a4,0(a5)
    80008094:	f91ff06f          	j	80008024 <__mem_alloc+0xdc>
    80008098:	00068793          	mv	a5,a3
    8000809c:	f6dff06f          	j	80008008 <__mem_alloc+0xc0>

00000000800080a0 <__putc>:
    800080a0:	fe010113          	addi	sp,sp,-32
    800080a4:	00813823          	sd	s0,16(sp)
    800080a8:	00113c23          	sd	ra,24(sp)
    800080ac:	02010413          	addi	s0,sp,32
    800080b0:	00050793          	mv	a5,a0
    800080b4:	fef40593          	addi	a1,s0,-17
    800080b8:	00100613          	li	a2,1
    800080bc:	00000513          	li	a0,0
    800080c0:	fef407a3          	sb	a5,-17(s0)
    800080c4:	fffff097          	auipc	ra,0xfffff
    800080c8:	918080e7          	jalr	-1768(ra) # 800069dc <console_write>
    800080cc:	01813083          	ld	ra,24(sp)
    800080d0:	01013403          	ld	s0,16(sp)
    800080d4:	02010113          	addi	sp,sp,32
    800080d8:	00008067          	ret

00000000800080dc <__getc>:
    800080dc:	fe010113          	addi	sp,sp,-32
    800080e0:	00813823          	sd	s0,16(sp)
    800080e4:	00113c23          	sd	ra,24(sp)
    800080e8:	02010413          	addi	s0,sp,32
    800080ec:	fe840593          	addi	a1,s0,-24
    800080f0:	00100613          	li	a2,1
    800080f4:	00000513          	li	a0,0
    800080f8:	fffff097          	auipc	ra,0xfffff
    800080fc:	8c4080e7          	jalr	-1852(ra) # 800069bc <console_read>
    80008100:	fe844503          	lbu	a0,-24(s0)
    80008104:	01813083          	ld	ra,24(sp)
    80008108:	01013403          	ld	s0,16(sp)
    8000810c:	02010113          	addi	sp,sp,32
    80008110:	00008067          	ret

0000000080008114 <console_handler>:
    80008114:	fe010113          	addi	sp,sp,-32
    80008118:	00813823          	sd	s0,16(sp)
    8000811c:	00113c23          	sd	ra,24(sp)
    80008120:	00913423          	sd	s1,8(sp)
    80008124:	02010413          	addi	s0,sp,32
    80008128:	14202773          	csrr	a4,scause
    8000812c:	100027f3          	csrr	a5,sstatus
    80008130:	0027f793          	andi	a5,a5,2
    80008134:	06079e63          	bnez	a5,800081b0 <console_handler+0x9c>
    80008138:	00074c63          	bltz	a4,80008150 <console_handler+0x3c>
    8000813c:	01813083          	ld	ra,24(sp)
    80008140:	01013403          	ld	s0,16(sp)
    80008144:	00813483          	ld	s1,8(sp)
    80008148:	02010113          	addi	sp,sp,32
    8000814c:	00008067          	ret
    80008150:	0ff77713          	andi	a4,a4,255
    80008154:	00900793          	li	a5,9
    80008158:	fef712e3          	bne	a4,a5,8000813c <console_handler+0x28>
    8000815c:	ffffe097          	auipc	ra,0xffffe
    80008160:	4b8080e7          	jalr	1208(ra) # 80006614 <plic_claim>
    80008164:	00a00793          	li	a5,10
    80008168:	00050493          	mv	s1,a0
    8000816c:	02f50c63          	beq	a0,a5,800081a4 <console_handler+0x90>
    80008170:	fc0506e3          	beqz	a0,8000813c <console_handler+0x28>
    80008174:	00050593          	mv	a1,a0
    80008178:	00001517          	auipc	a0,0x1
    8000817c:	61050513          	addi	a0,a0,1552 # 80009788 <CONSOLE_STATUS+0x778>
    80008180:	fffff097          	auipc	ra,0xfffff
    80008184:	8d8080e7          	jalr	-1832(ra) # 80006a58 <__printf>
    80008188:	01013403          	ld	s0,16(sp)
    8000818c:	01813083          	ld	ra,24(sp)
    80008190:	00048513          	mv	a0,s1
    80008194:	00813483          	ld	s1,8(sp)
    80008198:	02010113          	addi	sp,sp,32
    8000819c:	ffffe317          	auipc	t1,0xffffe
    800081a0:	4b030067          	jr	1200(t1) # 8000664c <plic_complete>
    800081a4:	fffff097          	auipc	ra,0xfffff
    800081a8:	1bc080e7          	jalr	444(ra) # 80007360 <uartintr>
    800081ac:	fddff06f          	j	80008188 <console_handler+0x74>
    800081b0:	00001517          	auipc	a0,0x1
    800081b4:	6d850513          	addi	a0,a0,1752 # 80009888 <digits+0x78>
    800081b8:	fffff097          	auipc	ra,0xfffff
    800081bc:	844080e7          	jalr	-1980(ra) # 800069fc <panic>

00000000800081c0 <kvmincrease>:
    800081c0:	fe010113          	addi	sp,sp,-32
    800081c4:	01213023          	sd	s2,0(sp)
    800081c8:	00001937          	lui	s2,0x1
    800081cc:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    800081d0:	00813823          	sd	s0,16(sp)
    800081d4:	00113c23          	sd	ra,24(sp)
    800081d8:	00913423          	sd	s1,8(sp)
    800081dc:	02010413          	addi	s0,sp,32
    800081e0:	01250933          	add	s2,a0,s2
    800081e4:	00c95913          	srli	s2,s2,0xc
    800081e8:	02090863          	beqz	s2,80008218 <kvmincrease+0x58>
    800081ec:	00000493          	li	s1,0
    800081f0:	00148493          	addi	s1,s1,1
    800081f4:	fffff097          	auipc	ra,0xfffff
    800081f8:	4bc080e7          	jalr	1212(ra) # 800076b0 <kalloc>
    800081fc:	fe991ae3          	bne	s2,s1,800081f0 <kvmincrease+0x30>
    80008200:	01813083          	ld	ra,24(sp)
    80008204:	01013403          	ld	s0,16(sp)
    80008208:	00813483          	ld	s1,8(sp)
    8000820c:	00013903          	ld	s2,0(sp)
    80008210:	02010113          	addi	sp,sp,32
    80008214:	00008067          	ret
    80008218:	01813083          	ld	ra,24(sp)
    8000821c:	01013403          	ld	s0,16(sp)
    80008220:	00813483          	ld	s1,8(sp)
    80008224:	00013903          	ld	s2,0(sp)
    80008228:	00000513          	li	a0,0
    8000822c:	02010113          	addi	sp,sp,32
    80008230:	00008067          	ret
	...
