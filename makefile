
CFLAGS := 
CFLAGS1=-L`pwd`/lib -I`pwd`/include $(CFLAGS)
CC := gcc $(CFLAGS1)
CXX := g++ $(CFLAGS1)
all: server123 termchat tmp tmp1 tmp2 nc.xaxaxa
install: termchat_install nc.xaxaxa_install
clean:
	rm -rf termchat servertroll tmp tmp1 tmp2 nc.xaxaxa server123
email_extract:
	$(CXX) email_extract.C -o email_extract --std=c++0x -O3 -lcplib
termchat:
	$(CXX) -o "termchat" "termchat.cxx" -Wall -lncurses --std=c++0x -lpthread -lcplib
termchat_install:
	cp -f termchat /usr/local/bin/
server123:
	$(CXX) server123.C -o server123 --std=c++0x -lcplib -O3
tmp:
	$(CXX) tmp.C -o tmp --std=c++0x -lcplib -O3
tmp1:
	$(CXX) tmp1.C -o tmp1 --std=c++0x -lcplib -O3
tmp2:
	$(CXX) tmp2.C -o tmp2 --std=c++0x -lcplib -O3
nc.xaxaxa:
	$(CXX) nc.xaxaxa.C -o nc.xaxaxa --std=c++0x -lcpoll -Ofast
tcpfuck:
	$(CXX) tcpfuck.C -o tcpfuck --std=c++0x -lcpoll
nc.xaxaxa_install:
	cp -f nc.xaxaxa /usr/local/bin/
bitflip_proxy:
	$(CXX) bitflip_proxy.C -o bitflip_proxy --std=c++0x -lcpoll -Wno-pmf-conversions



