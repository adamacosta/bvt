CC = gcc            
CFLAGS = -g -Wall
TESTS = tests
LIBS ?= $(RVMDIR)/seqsrchst.o $(RVMDIR)/steque.o $(RVMDIR)/rvm.o

# pattern rule for object files
%.o: %.c
	$(CC) -c $(CFLAGS) $< -o $@

tests: rvm_test1 rvm_test2 rvm_test3 rvm_test4 rvm_test5 rvm_test6 rvm_test7
	rm -f *.o
	rm -f $(TESTS)/*.o

rvm_test1: $(LIBS) $(TESTS)/rvm_test1.o
	$(CC) -o $(TESTS)/rvm_test1 $(LIBS) $(TESTS)/rvm_test1.o

rvm_test2: $(LIBS) $(TESTS)/rvm_test2.o
	$(CC) -o $(TESTS)/rvm_test2 $(LIBS) $(TESTS)/rvm_test2.o

rvm_test3: $(LIBS) $(TESTS)/rvm_test3.o
	$(CC) -o $(TESTS)/rvm_test3 $(LIBS) $(TESTS)/rvm_test3.o

rvm_test4: $(LIBS) $(TESTS)/rvm_test4.o
	$(CC) -o $(TESTS)/rvm_test4 $(LIBS) $(TESTS)/rvm_test4.o

rvm_test5: $(LIBS) $(TESTS)/rvm_test5.o
	$(CC) -o $(TESTS)/rvm_test5 $(LIBS) $(TESTS)/rvm_test5.o

rvm_test6: $(LIBS) $(TESTS)/rvm_test6.o
	$(CC) -o $(TESTS)/rvm_test6 $(LIBS) $(TESTS)/rvm_test6.o

rvm_test7: $(LIBS) $(TESTS)/rvm_test7.o
	$(CC) -o $(TESTS)/rvm_test7 $(LIBS) $(TESTS)/rvm_test7.o

clean:
	rm -f *.o $(TESTS)/rvm_test1 $(TESTS)/rvm_test2 $(TESTS)/rvm_test3 \
	          $(TESTS)/rvm_test4 $(TESTS)/rvm_test5 $(TESTS)/rvm_test6 \
	          $(TESTS)/rvm_test7
	rm -f core