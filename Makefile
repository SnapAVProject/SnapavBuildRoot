BUILDDIR=build
boardtype :=snapav51
deletedatabase :=false

all:
	make -C build -f Makefile boardtype=${boardtype} 

toolchain:
	make -C build -f Makefile toolchain

clean:
	make -C build -f Makefile cleanall
app:


