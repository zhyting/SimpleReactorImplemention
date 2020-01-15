PROGS = reactor_server_time reactor_client reactor_server_echo 
CLEANFILES = *.o 

all : ${PROGS}

CXXFLAGS += -g -std=c++11

reactor_server_time: reactor_server_test.o event_demultiplexer.o reactor.o global.o
	${CXX} ${CXXFLAG} -o $@ $^ 

reactor_server_echo: reactor_server_echo.o event_demultiplexer.o reactor.o global.o 
	${CXX} ${CXXFLAG} -o $@ $^

reactor_client: reactor_client_test.o event_demultiplexer.o reactor.o global.o
	${CXX} ${CXXFLAG} -o $@ $^

clean:
	rm -rf ${PROGS} ${CLEANFILES}
