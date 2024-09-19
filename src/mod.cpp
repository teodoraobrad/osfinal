//
// Created by os on 9/16/24.
//
#include "../h/mod.hpp"

/*

static sem_t waitForAll;

struct thread_data {
    int id;
    Buffer *buffer;
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    while ((key = getc()) != 0x30) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
        }
    }

    threadEnd = 1;
    data->buffer->put('!');

    sem_signal(data->wait);
}

static void producer(void *arg) {
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
        }
    }

    sem_signal(data->wait);
}

static void consumer(void *arg) {
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    while (!threadEnd) {
        int key = data->buffer->get();
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
        }

        if (i % 80 == 0) {
            putc('\n');
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
        putc(key);
    }

    sem_signal(data->wait);
}

 */
/*


static Semaphore *waitForAll;

struct thread_data {
    int id;
    BufferCPP *buffer;
    Semaphore *sem;
};

static volatile int threadEnd = 0;

class ProducerKeyborad : public Thread {
    thread_data *td;
public:
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}

    void run() override {
        int key;
        int i = 0;
        while ((key = getc()) != 0x30) {
            td->buffer->put(key);
            i++;
        }

        threadEnd = 1;
        td->buffer->put('!');

        td->sem->signal();
    }
};

class Producer : public Thread {
    thread_data *td;
public:
    Producer(thread_data *_td) : Thread(), td(_td) {}

    void run() override {
        int i = 0;
        while (!threadEnd) {
            td->buffer->put(td->id + '0');
            i++;
            Thread::sleep((i + td->id) % 5);
        }

        td->sem->signal();
    }
};

class Consumer : public Thread {
    thread_data *td;
public:
    Consumer(thread_data *_td) : Thread(), td(_td) {}

    void run() override {
        int i = 0;
        while (!threadEnd) {
            int key = td->buffer->get();
            i++;

            Console::putc(key);

            if (i % 80 == 0) {
                Console::putc('\n');
            }
        }

        while (td->buffer->getCnt() > 0) {
            int key = td->buffer->get();
            Console::putc(key);
        }

        td->sem->signal();
    }
};

 */



void modifikacija(){
/*
 *
  char input[30];
    int n, threadNum;

    printString("Unesite broj proizvodjaca?\n");
    getString(input, 30);
    threadNum = stringToInt(input);

    printString("Unesite velicinu bafera?\n");
    getString(input, 30);
    n = stringToInt(input);

    printString("Broj proizvodjaca "); printInt(threadNum);
    printString(" i velicina bafera "); printInt(n);
    printString(".\n");

    if(threadNum > n) {
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
        return;
    } else if (threadNum < 1) {
        printString("Broj proizvodjaca mora biti veci od nula!\n");
        return;
    }

    Buffer *buffer = new Buffer(n);

    sem_open(&waitForAll, 0);

    thread_t threads[threadNum];
    thread_t consumerThread;

    struct thread_data data[threadNum + 1];

    data[threadNum].id = threadNum;
    data[threadNum].buffer = buffer;
    data[threadNum].wait = waitForAll;
    thread_create(&consumerThread, consumer, data + threadNum);

    for (int i = 0; i < threadNum; i++) {
        data[i].id = i;
        data[i].buffer = buffer;
        data[i].wait = waitForAll;

        thread_create(threads + i,
                      i > 0 ? producer : producerKeyboard,
                      data + i);
    }

    thread_dispatch();

    for (int i = 0; i <= threadNum; i++) {
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
 */








/*
  char input[30];
    int n, threadNum;

    printString("Unesite broj proizvodjaca?\n");
    getString(input, 30);
    threadNum = stringToInt(input);

    printString("Unesite velicinu bafera?\n");
    getString(input, 30);
    n = stringToInt(input);

    printString("Broj proizvodjaca ");
    printInt(threadNum);
    printString(" i velicina bafera ");
    printInt(n);
    printString(".\n");

    if (threadNum > n) {
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
        return;
    } else if (threadNum < 1) {
        printString("Broj proizvodjaca mora biti veci od nula!\n");
        return;
    }

    BufferCPP *buffer = new BufferCPP(n);

    waitForAll = new Semaphore(0);
    Thread *producers[threadNum];
    thread_data threadData[threadNum + 1];

    threadData[threadNum].id = threadNum;
    threadData[threadNum].buffer = buffer;
    threadData[threadNum].sem = waitForAll;
    Thread *consumer = new Consumer(&threadData[threadNum]);
    consumer->start();

    threadData[0].id = 0;
    threadData[0].buffer = buffer;
    threadData[0].sem = waitForAll;
    producers[0] = new ProducerKeyborad(&threadData[0]);
    producers[0]->start();

    for (int i = 1; i < threadNum; i++) {
        threadData[i].id = i;
        threadData[i].buffer = buffer;
        threadData[i].sem = waitForAll;

        producers[i] = new Producer(&threadData[i]);
        producers[i]->start();

    }

    Thread::dispatch();

    for (int i = 0; i <= threadNum; i++) {
        waitForAll->wait();
    }

    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
 */



}