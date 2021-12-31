.POSIX:

OS = $(shell uname -s)
ifndef PREFIX
  PREFIX = /usr/local
endif
MANPREFIX = $(PREFIX)/share/man

install:
	mkdir -p $(DESTDIR)$(PREFIX)/bin/
	for script in bin/*; do \
		cp -f $$script $(DESTDIR)$(PREFIX)/bin/; \
		chmod 755 $(DESTDIR)$(PREFIX)/$$script; \
	done
	mkdir -p $(DESTDIR)$(MANPREFIX)/man1
	cp -f isbn.1 $(DESTDIR)$(MANPREFIX)/man1/isbn.1
	chmod 644 $(DESTDIR)$(MANPREFIX)/man1/isbn.1
	if [ "$(PREFIX)" ]; then \
		sed -iba 's:/usr/local:$(PREFIX):' $(DESTDIR)$(PREFIX)/bin/isbn; \
	fi

uninstall:
	for script in bin/*; do \
		rm -f $(DESTDIR)$(PREFIX)/bin/$$script; \
	done
	rm -rf $(DESTDIR)$(PREFIX)/bin/isbn
	rm -r $(DESTDIR)$(MANPREFIX)/man1/isbn.1

PHONY: install uninstall
