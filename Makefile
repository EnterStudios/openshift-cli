# download and install the openshift oc utility
all: download

download:
	/bin/bash download.sh

install:
	mkdir -p $(DESTDIR)/usr/bin
	cp download/oc $(DESTDIR)/usr/bin
	mkdir -p $(DESTDIR)/etc/bash_completion.d
	download/oc completion bash > $(DESTDIR)/etc/bash_completion.d/oc

clean:
	rm -rf download

.PHONY:
	download install clean
