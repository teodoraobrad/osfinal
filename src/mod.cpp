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

    for (int i = 0; i < threadNum; i++) {
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

    for (int i = 0; i < threadNum; i++) {
        waitForAll->wait();
    }

    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete niti[i];
    }

}