# download and install the openshift oc utility
all: download

download:
	/bin/bash download.sh

install:
	mkdir -p $(DESTDIR)/usr/bin
	cp download/oc $(DESTDIR)/usr/bin

clean:
	rm -rf download

.PHONY:
	download install clean
