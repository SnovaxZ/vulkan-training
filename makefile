CFLAGS = -std=c++17 -O2
LDFLAGS = -lglfw -lvulkan -ldl -lpthread -lX11 -lXxf86vm -lXi

Vulkantest: main.cpp
	g++ $(CFLAGS) -o Vulkantest main.cpp $(LDFLAGS)

.PHONY: test clean

test: Vulkantest
	./Vulkantest

clean:
	rm -f Vulkantest
