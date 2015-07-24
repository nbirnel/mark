PREFIX = /usr/local

all :: install showcm

showcm ::
	@cat cm

install :: 
	mkdir -p ${DESTDIR}${PREFIX}/bin
	cp -f m mpwd mo vm ${DESTDIR}${PREFIX}/bin/
	chmod 755 ${DESTDIR}${PREFIX}/bin/m
	chmod 755 ${DESTDIR}${PREFIX}/bin/mpwd
	chmod 755 ${DESTDIR}${PREFIX}/bin/mo
	chmod 755 ${DESTDIR}${PREFIX}/bin/vm
	mkdir -p ${DESTDIR}${PREFIX}/man/man1
	cp -f m.1 mpwd.1 mo.1 vm.1 ${DESTDIR}${PREFIX}/man/man1/
	chmod 644 ${DESTDIR}${PREFIX}/man/man1/m.1
	chmod 644 ${DESTDIR}${PREFIX}/man/man1/mpwd.1
	chmod 644 ${DESTDIR}${PREFIX}/man/man1/mo.1
	chmod 644 ${DESTDIR}${PREFIX}/man/man1/vm.1

uninstall:
	rm -f ${DESTDIR}${PREFIX}/bin/m
	rm -f ${DESTDIR}${PREFIX}/man/man1/m.1
	rm -f ${DESTDIR}${PREFIX}/bin/mpwd
	rm -f ${DESTDIR}${PREFIX}/man/man1/mpwd.1
	rm -f ${DESTDIR}${PREFIX}/bin/mo
	rm -f ${DESTDIR}${PREFIX}/man/man1/mo.1
	rm -f ${DESTDIR}${PREFIX}/bin/vm
	rm -f ${DESTDIR}${PREFIX}/man/man1/vm.1

.PHONY : all install showcm uninstall
