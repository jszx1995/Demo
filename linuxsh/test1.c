#include <stdio.h>

struct m {
	int x;
	int *y;
} *p;

int a [4] = {12,33,40,100};

struct m b [4] = {10,&a[2],9,&a[3],8,&a[0],7,&a[1]};
int main(void){
    p = b;
    printf("%d\n",++p -> x);
    printf("%d\n",(++p) -> x);
    printf("%d\n",++(*p -> y));
return 0;
}

