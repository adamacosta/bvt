CC = gcc            # default is CC = cc
CFLAGS = -g -Wall   # default is CFLAGS = [blank]
TESTDIR = tests

GTTHREADS_SRC = $(GTTHREADDIR)/gtthread_sched.c $(GTTHREADDIR)/gtthread_mutex.c \
	$(GTTHREADDIR)/steque.c
GTTHREADS_OBJ = $(patsubst %.c,%.o,$(GTTHREADS_SRC))

# pattern rule for object files
%.o: %.c
	$(CC) -c $(CFLAGS) $< -o $@

all: producer_consumer dining_main gtthread_main

#### Producer-Consumer ####
producer_consumer: $(TESTDIR)/producer_consumer.o $(GTTHREADDIR)/steque.o
	$(CC) -o $(TESTDIR)/producer_consumer $(TESTDIR)/producer_consumer.o \
	$(GTTHREADDIR)/steque.o -lpthread

#### Dining ####
dining_main: $(TESTDIR)/dining_main.o
	$(CC) -o $(TESTDIR)/dining_main $(TESTDIR)/dining_main.o -lpthread

#### GTThreads ####
gtthread_main: $(TESTDIR)/gtthread_main.o $(GTTHREADS_OBJ)
	$(CC) -o $(TESTDIR)/gtthread_main $(TESTDIR)/gtthread_main.o $(GTTHREADS_OBJ)

clean:
	$(RM) -f $(TESTDIR)/*.o $(TESTDIR)/producer_consumer $(TESTDIR)/dining_main \
	$(TESTDIR)/gtthread_main $(GTTHREADDIR)/*.o