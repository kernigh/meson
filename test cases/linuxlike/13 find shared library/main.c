#include <string.h>

const char *call1(void);
const char *call2(void);

int main(void) {
    if (strcmp(call1(), "shared1") != 0)
	return 1;
    if (strcmp(call2(), "shared2") != 0)
	return 2;
    return 0;
}
