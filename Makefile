MPICXX=mpicxx

EXECS=Task_1 Task_2 Task_3 Task_4 Task_5

CCFLAGS=-std=c++11 -Ofast -march=native


all: $(EXECS)


$(EXECS): %: %.cpp
	$(MPICXX) $(CCFLAGS) -o $@ $^

clean:
	rm $(EXECS)
