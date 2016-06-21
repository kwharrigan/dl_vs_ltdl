CC=gcc -g

all: ltdl dl

ltdl: ltdl.c
	$(CC) -lltdl -o ltdl ltdl.c

dl: dl.c
	$(CC) -ldl -o dl dl.c

clean: 
	rm dl ltdl

dmtcp_test:
	@echo
	@echo Testing outside of DMTCP...
	./dl
	./ltdl
	dmtcp_launch ./dl
	dmtcp_launch ./ltdl


dmtcp_test_noalloc:
	dmtcp_launch --disable-alloc-plugin ./ltdl
