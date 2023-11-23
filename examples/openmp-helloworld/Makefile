HIP_PATH?= $(wildcard /opt/rocm)
HIPCC=$(HIP_PATH)/bin/hipcc

CXX=$(HIPCC)
CXXFLAGS =-fopenmp -fsanitize=address -shared-libasan --offload-arch=gfx90a:xnack+

SOURCES = openmp_helloworld.cpp

EXECUTABLE=./openmp_helloworld.exe

.PHONY: test


all: $(EXECUTABLE) test


$(EXECUTABLE):
	$(CXX) $(CXXFLAGS) $(SOURCES) -o $@


test: $(EXECUTABLE)
	$(EXECUTABLE)


clean:
	rm -f $(EXECUTABLE) *.o

