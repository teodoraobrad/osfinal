//
// Created by teodora on 6/3/24.
//

#ifndef OS2024_MEMORYALLOCATOR_HPP
#define OS2024_MEMORYALLOCATOR_HPP

#include "../lib/hw.h"

struct MemoryBlock {
    MemoryBlock *next;
    MemoryBlock *prev;
    size_t size; //in blks
    bool allocated;
    //bool sMode; default false
};

class MemoryAllocator {

private:

    MemoryAllocator() {
        initialize();
    }

    MemoryAllocator(const MemoryAllocator &) = delete;

    MemoryAllocator &operator=(const MemoryAllocator &) = delete;


public:

    static MemoryBlock *base;
    static char *baseAddress;
    static size_t freeSpaceInBlks;

    ~MemoryAllocator() {
        mem_free((void *) ((char *) base + sizeof(MemoryBlock)));//ili MEM_BLOCK_SIZE
    }

    static void *mem_alloc(size_t size);

    static int mem_free(void *ptr);

    static void merge(void *cur);

    static uint64 getBlockSize() { return MEM_BLOCK_SIZE; };

    static uint64 getHeaderSize() { return sizeof(MemoryBlock); };

    static MemoryAllocator &getInstance() {
        static MemoryAllocator instance;
        return instance;
    }

    inline static size_t align(size_t addr, size_t to) {
        return (size_t) (((addr + to - 1) / to) * to);

    }

    inline static size_t alignToPrevious(size_t addr, size_t to) {
        return (size_t) (((addr ) / to) * to);

    }

    static void initialize() {
        char *start = (char *) align((size_t) HEAP_START_ADDR, MEM_BLOCK_SIZE);
        baseAddress = (char *) (start);
        char *end = (char *) alignToPrevious((size_t) HEAP_END_ADDR, MEM_BLOCK_SIZE);

        freeSpaceInBlks = ((size_t) end - (size_t) start) / MEM_BLOCK_SIZE;

        base = (MemoryBlock *) baseAddress;
        base->next = nullptr;
        base->prev = nullptr;
        base->allocated = false;
        //base->sMode=false;
        base->size = freeSpaceInBlks;
    }

    static void print_blk(MemoryBlock *blk);

    static void print_allocator() ;
};


#endif //OS2024_MEMORYALLOCATOR_HPP