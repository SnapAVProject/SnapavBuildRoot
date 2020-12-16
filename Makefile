BUILDDIR=build
boardtype :=snapav51
appversion :=108
dspversion :=100
deletedatabase :=false

all:
	make -C build -f Makefile boardtype=${boardtype} appversion=${appversion} dspversion=${dspversion}

toolchain:
	if [ ! -d image ];then mkdir image ;fi || true
	
	if [ nuc970_buildroot/output/target/etc/network/interfaces ] ;then	rm  nuc970_buildroot/output/target/etc/network/interfaces ;fi || true
	cp nuc970_buildroot/board/nuvoton/hs_rootfs_common/etc/network/interfaces.bk nuc970_buildroot/output/target/etc/network/interfaces
	cd ${BUILDDIR} && ./build.sh rootfs snapav8d 100 100
	if [ -f host ];then rm host ;fi || true
	ln -s nuc970_buildroot/output/host host

app:


