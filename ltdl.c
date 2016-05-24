// see http://tldp.org/HOWTO/Program-Library-HOWTO/dl-libraries.html

#include <stdlib.h>
#include <stdio.h>
#include <ltdl.h>

int main(int argc, char **argv) {
    lt_dlhandle handle;
    double (*cosine)(double);
    char *error;

    lt_dlinit();
    handle = lt_dlopen ("/lib64/libm.so.6");
    cosine = lt_dlsym(handle, "cos");
    printf ("%f\n", (*cosine)(2.0));
    lt_dlclose(handle);
}
