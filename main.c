/*
	main function
	
	編譯步驟 :
	1) gcc -c thanks.c hello.c main.c		// 產生 thanks.o hello.o main.o 的目標檔
	2) gcc -o main main.o thanks.o hello.o	// 將 thanks.o hello.o main.o 的目標檔 link起來變成一個名為 main的執行檔

	如果有一天，我更新了 thanks.c 這個檔案的內容，我只要重新編譯 thanks.c 來產生新的 thanks.o，
	然後再link製作出新的binary可執行檔即可! 不必再重新編譯其他沒更動過的檔案。
*/

#include <stdio.h>
#include "hello.h"
#include "thanks.h"

int main(void){

    printf("walter\n");
    thanks();
    hello();
    return 0;

}

