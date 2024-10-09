//
// Created by os on 9/16/24.
//
#include "../h/mod.hpp"
#include "../h/syscall_cpp.hpp"
#include "../h/print.hpp"



static Semaphore* waitForAll;

struct thread_data {
    int id;
    Semaphore* sem;
};

static volatile int threadEnd = 0;


class Nit : public Thread {
    thread_data *td;
public:
    Nit(thread_data *_td) : Thread(), td(_td) {}

    void run() override {

     /*   for (int i=0;i<3;i++){

            for (int j = 0; j < 7; ++j) {

            }
            modifikacijaFunk();

            printStr("Nit ");
            printInt(td->id);
            printStr(" zavrsila iteraciju ");
            printInt(i);
            printStr("\n");


        }

        td->sem->signal();
        */

        for (int i=0;i<3;i++){

            printStr("Nit ");
            printInt(td->id);
            printStr(" se sinhronizuje.");
            printStr("\n");

            this->synchronize();

            printStr("Nit ");
            printInt(td->id);
            printStr(" se nastavlja.");
            printStr("\n");

        }

        printStr("Nit ");
        printInt(td->id);
        printStr(" je zavrsila.");
        printStr("\n");

        td->sem->signal();


    }
};

class NitB : public Thread {
    thread_data *td;
public:
    NitB(thread_data *_td) : Thread(), td(_td) {}

    void run() override {

           for (int i=0;i<3;i++){

               for (int j = 0; j < 7; ++j) {

               }
               modifikacijaFunk();

               printStr("Nit ");
               printInt(td->id);
               printStr(" zavrsila iteraciju ");
               printInt(i);
               printStr("\n");


           }

           td->sem->signal();

    }
};


void bariera(){
    int threadNum=3;

    waitForAll = new Semaphore(0);

    Thread *niti[threadNum];
    thread_data threadData[threadNum];

    for (int i = 0; i < threadNum; i++) {
        threadData[i].id = i;
        threadData[i].sem = waitForAll;

        niti[i] = new NitB(&threadData[i]);
        niti[i]->start();
    }

    Thread::dispatch();

    for (int i = 0; i < threadNum; i++) {
        waitForAll->wait();
    }

    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete niti[i];
    }
}

void modifikacija(){

    int threadNum=11;

    waitForAll = new Semaphore(0);

    Thread *niti[threadNum];
    thread_data threadData[threadNum];

    for (int i = 1; i < threadNum; i++) {
        threadData[i].id = i;
        threadData[i].sem = waitForAll;

        niti[i] = new Nit(&threadData[i]);
        niti[i]->start();
    }

    Thread::pair(niti[1],niti[2]);
    Thread::pair(niti[3],niti[4]);
    Thread::pair(niti[5],niti[6]);
    Thread::pair(niti[7],niti[8]);
    Thread::pair(niti[9],niti[10]);

    Thread::dispatch();

    for (int i = 1; i < threadNum; i++) {
        waitForAll->wait();
    }

    delete waitForAll;
    for (int i = 1; i < threadNum; i++) {
        delete niti[i];
    }

}

bool finishedA = false;
bool finishedB = false;

class WorkerA: public Thread
{
    void mod_fun_A(void* arg);
public:
    WorkerA():Thread() {}

    void run() override
    {
        mod_fun_A(nullptr);
    }
};

class WorkerB: public Thread
{
    void mod_fun_B(void* arg);
public:
    WorkerB():Thread() {}

    void run() override
    {
        mod_fun_B(nullptr);
    }
};

void WorkerA::mod_fun_A(void *arg)
{
    for (uint64 i = 0; i < 10; i++)
    {
        printStr("A: i=");
        printInt(i);
        printStr("\n");

        for (uint64 j = 0; j < 10000; j++)
        {
            for (uint64 k = 0; k < 30000; k++)
            {
                /* busy wait */
            }

            thread_dispatch();
        }
    }

    printStr("A finished!\n");
    finishedA = true;
}

void WorkerB::mod_fun_B(void *arg)
{
    for (uint64 i = 0; i < 16; i++)
    {
        printStr("B: i=");
        printInt(i);
        printStr("\n");

        for (uint64 j = 0; j < 10000; j++)
        {
            for (uint64 k = 0; k < 30000; k++)
            {
                /* busy wait */
            }

            thread_dispatch();
        }
    }

    printStr("B finished!\n");
    finishedB = true;
    thread_dispatch();
}

void dodatna(){

    Thread* threads[2];

    threads[0] = new WorkerA();
    printStr("ThreadA created\n");

    threads[1] = new WorkerB();
    printStr("ThreadB created\n");

    for(int i = 0; i < 2; i++)
        threads[i]->start();

    threads[0]->join();
    threads[1]->join();

    for (auto thread: threads)
        delete thread;

}



int threadNum=3;

struct t_data {
    int id;
    Semaphore *sem;
    Thread* niz[3];
};

class NitJoin : public Thread {
    t_data *td;
public:
    NitJoin(t_data *_td) : Thread(), td(_td) {}

    void run() override {

        printStr("Nit broj ");
        printInt(td->id);
        printStr(" je krenula sa radom.");

        for (int i = 0; i < 30; ++i) {
            for (int i = 0; i < 1000; ++i) {
                thread_dispatch();
            }
        }

        printStr("Nit broj ");
        printInt(td->id);
        printStr(" je zavrsila sa radom.");

        td->sem->signal();
    }
};
class NitCekajuca : public Thread {
    t_data *td;
public:
    NitCekajuca(t_data *_td) : Thread(), td(_td) {}

    void run() override {

        printStr("Nit broj ");
        printInt(td->id);
        printStr(" je krenula sa radom.");

        for (int i = 0; i < 3; ++i) {
            for (int i = 0; i < 100; ++i) {

            }
            thread_dispatch();
        }
        for (int k=0;k<3;k++){
            printStr("Cekam.");
            if(k!=td->id)(td->niz[k])->join();
            //if(k!=td->id)thread_join(&(td->niz[k]->myHandlevrati()));
        }

        printStr("Nit broj ");
        printInt(td->id);
        printStr(" je zavrsila sa radom.");
        td->sem->signal();
    }
};


void d(){

    waitForAll = new Semaphore(0);
    Thread *niti[3];
    t_data threadData[3];

    threadData[0].id = 0;
    threadData[0].sem = waitForAll;

    for (int i = 1; i < 3; i++) {
        threadData[i].id = i;
        threadData[i].sem = waitForAll;

        niti[i] = new NitJoin(&threadData[i]);
        niti[i]->start();

    }
    threadData[0].niz[1]=niti[1];
    threadData[0].niz[2]=niti[2];

    niti[0] = new NitCekajuca(&threadData[0]);
    niti[0]->start();

    thread_dispatch();

    for (int i = 0; i <threadNum; i++) { //= bilo
        waitForAll->wait();
    }

    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete niti[i];
    }


}