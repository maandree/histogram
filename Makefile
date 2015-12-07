# Copying and distribution of this file, with or without modification,
# are permitted in any medium without royalty provided the copyright
# notice and this notice are preserved.  This file is offered as-is,
# without any warranty.

PREFIX = /usr
BIN = /bin
DATA = /share
BINDIR = $(PREFIX)$(BIN)
DATADIR = $(PREFIX)$(DATA)
DOCDIR = $(DATADIR)/doc
INFODIR = $(DATADIR)/info
MANDIR = $(DATADIR)/man
MAN1DIR = $(MANDIR)/man1
LICENSEDIR = $(DATADIR)/licenses

PKGNAME = histogram
COMMAND = histogram



.PHONY: default
default: base

.PHONY: all
all: base

.PHONY: base
base:



.PHONY: install
install: install-base

.PHONY: install-all
install-all: install-base

.PHONY: install-base
install-base: install-cmd install-copyright

.PHONY: install-cmd
install-cmd:
	install -dm755 -- "$(DESTDIR)$(BINDIR)"
	install -m755 histogram -- "$(DESTDIR)$(BINDIR)/$(COMMAND)"

.PHONY: install-copyright
install-copyright: install-license

.PHONY: install-license
install-license:
	install -dm755 -- "$(DESTDIR)$(LICENSEDIR)/$(PKGNAME)"
	install -m644 LICENSE -- "$(DESTDIR)$(LICENSEDIR)/$(PKGNAME)"




.PHONY: uninstall
uninstall:
	-rm -- "$(DESTDIR)$(BINDIR)/$(COMMAND)"
	-rm -- "$(DESTDIR)$(LICENSEDIR)/$(PKGNAME)/LICENSE"
	-rmdir -- "$(DESTDIR)$(LICENSEDIR)/$(PKGNAME)"



.PHONY: clean
clean:
	-rm -r bin obj

