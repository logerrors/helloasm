hello: hello.o
	gcc -o hello hello.o -no-pie
hello.o: hello.asm
	nasm -f elf64 -g -F dwarf hello.asm -l hello.lst

hello2: hello2.o
	gcc -o hello2 hello2.o -no-pie
hello2.o: hello2.asm
	nasm -f elf64 -g -F dwarf hello2.asm -l hello2.lst

hello3: hello3.o
	gcc -o hello3 hello3.o -no-pie
hello3.o: hello3.asm
	nasm -f elf64 -g -F dwarf hello3.asm -l hello3.lst

alive: alive.o
	gcc -o alive alive.o -no-pie
alive.o:alive.asm
	nasm -f elf64 -g -F dwarf alive.asm -l alive.lst

hello4: hello4.o
	gcc -o hello4 hello4.o -no-pie
hello4.o: hello4.asm
	nasm -f elf64 -g -F dwarf hello4.asm -l hello4.lst

alive2: alive2.o
	gcc -o alive2 alive2.o -no-pie
alive2.o:alive2.asm
	nasm -f elf64 -g -F dwarf alive2.asm -l alive2.lst

clean:
	rm hello hello2 hello3 hello4 alive alive2 *.o *.lst