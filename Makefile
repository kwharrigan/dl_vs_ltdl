

all: ltdl dl

ltdl: ltdl.c
	gcc -lltdl -o ltdl ltdl.c

dl: dl.c
	gcc -ldl -o dl dl.c

clean: 
	rm dl ltdl
