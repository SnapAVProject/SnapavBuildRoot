BUILDDIR=build
boardtype :=snapav51
appversion :=108
dspversion :=100
deletedatabase :=false

all:
	make -C build -f Makefile boardtype=${boardtype} appversion=${appversion} dspversion=${dspversion}

toolchain:
	make -C build -f Makefile toolchain

clean:
	make -C build -f Makefile clean
app:


