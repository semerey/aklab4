
CLEANEXTS   = o a


OUTPUTFILE  = AnyaLib1.a
EXEFILE = AnyaExe1.exe
# Default target
.PHONY: all
all: $(OUTPUTFILE) $(EXEFILE)


$(OUTPUTFILE): calculator.o
	ar ru $@ $^
	ranlib $@
$(EXEFILE): calculator.o
	gcc -o $(EXEFILE) calculator.o 

.PHONY: clean 
clean:
	for file in $(CLEANEXTS); do rm -f *.$$file; done

calculator.o: calculator.cpp
hello.o: hello.cpp
factorial.o: factorial.cpp
