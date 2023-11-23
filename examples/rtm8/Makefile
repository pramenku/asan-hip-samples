HIP_PATH?= $(wildcard /opt/rocm)
HIPCC=$(HIP_PATH)/bin/hipcc

CXXFLAGS += -std=c++11 -O3 -fsanitize=address -shared-libasan

rtm8: rtm8.cpp
ifeq ($(shell which $(HIPCC) > /dev/null; echo $$?), 0)
	${HIPCC} --offload-arch=gfx90a:xnack+ ${CXXFLAGS} -o $@ $^ 
else
	$(error "Cannot find $(HIPCC), please install HIP toolkit")
endif

.PHONY: clean

clean:
	rm -f rtm8 *.o
