PREFIX = /usr/local

install:
	mkdir -p ${DESTDIR}${PREFIX}/bin
	cp -f m ${DESTDIR}${PREFIX}/bin
	chmod 755 ${DESTDIR}${PREFIX}/bin/m
	cp -f mcd ${DESTDIR}${PREFIX}/bin
	chmod 755 ${DESTDIR}${PREFIX}/bin/mcd
	cp -f mo ${DESTDIR}${PREFIX}/bin
	chmod 755 ${DESTDIR}${PREFIX}/bin/mo
	cp -f vm ${DESTDIR}${PREFIX}/bin
	chmod 755 ${DESTDIR}${PREFIX}/bin/vm
	mkdir -p ${DESTDIR}${PREFIX}/man/man1
	cp -f m.1 ${DESTDIR}${PREFIX}/man/man1
	chmod 644 ${DESTDIR}${PREFIX}/man/man1/m.1
	cp -f mcd.1 ${DESTDIR}${PREFIX}/man/man1
	chmod 644 ${DESTDIR}${PREFIX}/man/man1/mcd.1
	cp -f mo.1 ${DESTDIR}${PREFIX}/man/man1
	chmod 644 ${DESTDIR}${PREFIX}/man/man1/mo.1
	cp -f vm.1 ${DESTDIR}${PREFIX}/man/man1
	chmod 644 ${DESTDIR}${PREFIX}/man/man1/vm.1
	@cat cm

uninstall:
	rm -f ${DESTDIR}${PREFIX}/bin/m
	rm -f ${DESTDIR}${PREFIX}/man/man1/m.1
	rm -f ${DESTDIR}${PREFIX}/bin/mcd
	rm -f ${DESTDIR}${PREFIX}/man/man1/mcd.1
	rm -f ${DESTDIR}${PREFIX}/bin/mo
	rm -f ${DESTDIR}${PREFIX}/man/man1/mo.1
	rm -f ${DESTDIR}${PREFIX}/bin/vm
	rm -f ${DESTDIR}${PREFIX}/man/man1/vm.1

