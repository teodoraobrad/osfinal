//
// Created by teodora on 6/3/24.
//
#include "../h/MemoryAllocator.hpp"

#include "../h/print.hpp"

MemoryBlock *MemoryAllocator::base = nullptr;
char *MemoryAllocator::baseAddress = nullptr;
size_t MemoryAllocator::freeSpaceInBlks = 0;

void *MemoryAllocator::mem_alloc(size_t size) { //numofBlocks +1
//best-fit
//lock
    if (size <= 0) {
        //unlock
        return nullptr;
    }
    if (size > freeSpaceInBlks) {
        //unlock
        return nullptr;
    }

    if (base == nullptr) {
        return nullptr;
    }

    MemoryBlock *curr = base;
    MemoryBlock *toReturn = nullptr;
    size_t remainBest = freeSpaceInBlks;

    while (curr != nullptr) {
        if (!curr->allocated) {
            size_t remain = curr->size - size - 1;

            if (remain >= 0) {

                if (remain == 0) {
                    toReturn = curr;
                    remainBest = 0;
                    break;

                } else {

                    if (toReturn == nullptr) {
                        toReturn = curr;
                        remainBest = remain;
                    } else {
                        if (remainBest > remain) {
                            remainBest = remain;
                            toReturn = curr;
                        }
                    }
                }
            }
        }
        curr = curr->next;
    }

    if (toReturn == nullptr) {
        //unlock
        return nullptr;
    }

    toReturn->allocated = true;
    freeSpaceInBlks = freeSpaceInBlks - size - 1;//numofBlocks+1

    if (remainBest == 0) {
        //unlock
        return (void *) ((char *) ((char *) toReturn + sizeof(MemoryBlock)));//MEM_BLOCK_SIZE
    }

    if (remainBest == 1) {
        freeSpaceInBlks = freeSpaceInBlks - 1;
        toReturn->size++;
        //unlock
        return (void *) ((char *) ((char *) toReturn + sizeof(MemoryBlock)));//MEM_BLOCK_SIZE
    }

    size_t s = toReturn->size;

    MemoryBlock *fragment = (MemoryBlock *) ((char *) toReturn + (size + 1) * MEM_BLOCK_SIZE);
    fragment->next = toReturn->next;
    fragment->prev = toReturn;
    fragment->size = s - size - 1;
    fragment->allocated = false;
    toReturn->next = fragment;
    toReturn->size = size + 1;
//unlocl

    return (void *) ((char *) toReturn + sizeof(MemoryBlock));//MEM_BLOCK_SIZE
}


int MemoryAllocator::mem_free(void *ptr) {
//lock
    if (!ptr) return 0;
    if ((char *) ptr < (char *) HEAP_START_ADDR)return -1;
    if ((char *) ptr > (char *) HEAP_END_ADDR)return -2;

    MemoryBlock *curr = base;
    MemoryBlock *find = (MemoryBlock *) ((char *) ptr - sizeof(MemoryBlock));//-MEM_BLOCK_SIZE

    for (; (char *) find > (char *) curr && curr->next != nullptr; curr = curr->next);

    if ((char *) find == (char *) curr) {

        curr->allocated = false;
        freeSpaceInBlks += curr->size;

        merge(curr);
        //unlock
        return 0;
    }
    return -1;
//unlock

}

void MemoryAllocator::merge(void *curr) {
    if (curr == nullptr) return;
    MemoryBlock *cur = (MemoryBlock *) curr;
    if (cur->next != nullptr && !((cur->next)->allocated)) {
        cur->size = cur->next->size + cur->size;
        cur->next = cur->next->next;
    }
    if (cur->prev != nullptr && !((cur->prev)->allocated)) {
        cur->prev->size = cur->prev->size + cur->size;
        cur->prev->next = cur->next;
    }

}

void MemoryAllocator::print_blk(MemoryBlock *blk) {

    printStr("blk:\t\0");
    printInt((unsigned long) blk);
    printStr("\nnext:\t\0");
    printInt((unsigned long) blk->next);
    printStr("\nprev:\t\0");
    printInt((unsigned long) blk->prev);
    printStr("\nsize:\t\0");
    printInt(blk->size);
    printStr("\nstat:\t\0");
    printInt(blk->allocated);
    printStr("\n");
}

void MemoryAllocator::print_allocator() {
    printInt(freeSpaceInBlks);
    printStr("\n");
    printInt((uint64) baseAddress);
    printStr("\n");
    printInt((uint64) base);
    printStr("\n");
    for (MemoryBlock *curr = base; curr; curr = curr->next) {
        print_blk(curr);
        printStr("\n");
    }
}