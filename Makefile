# download and install the openshift oc utility
all: download

download:
	download.sh

install:
	cp download/oc $(DESTDIR)/usr/bin

clean:
	rm -rf download

.PHONY:
	download install clean
