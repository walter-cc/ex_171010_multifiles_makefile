# simple makefile for multi-files
# "main" is the target file, "main.o thanks.o hello.o" is the object file(dependency), "clean" is the fake entry.

# 1) 下了"make" or "make main"指令，會先找到line 12，因為還沒有main.o thanks.o hello.o，所以會先跳到line 14(dependency)，接著執行line 15
# 2) 重複執行同樣的行為到"main.o thanks.o hello.o"產出
# 3) 回到line 12，dependency 條件都成立了，所以可以執行line 13，產生"main"執行檔




# method 1
main: main.o thanks.o hello.o
	gcc -o main main.o thanks.o hello.o
main.o:
	gcc -c main.c
thanks.o:
	gcc -c thanks.c
hello.o:
	gcc -c hello.c

clean:
	rm -rf main *.o


# method 2
# main: main.o thanks.o hello.o
# 	gcc main.o thanks.o hello.o -o main
# main.o:
# 	gcc main.c -c
# thanks.o:
# 	gcc thanks.c -c
# hello.o:
# 	gcc hello.c -c

# clean:
# 	rm -rf main *.o
