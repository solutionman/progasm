apt search nasm
sudo apt-get install nasm

whereis ld

to compile

nasm -f elf prog.asm

ld -m elf_i386 -s -o prog prog.o
