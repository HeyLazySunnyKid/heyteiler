ifndef PREFIX
  PREFIX=/usr/local
endif

install:
	install -Dm755 teiler $(DESTDIR)$(PREFIX)/bin/teiler
	install -Dm644 README.md $(DESTDIR)$(PREFIX)/share/doc/teiler/README.md
	install -Dm644 teiler.conf $(DESTDIR)/etc/teiler/teiler.conf
	install -Dm755 teiler_helper $(DESTDIR)/etc/teiler/teiler_helper
	install -Dm644 pygmentize_types.txt $(DESTDIR)/etc/teiler/pygmentize_types.txt
	install -Dm644 targets/local $(DESTDIR)/etc/teiler/targets/local
	install -Dm644 targets/s3 $(DESTDIR)/etc/teiler/targets/s3
	install -Dm644 targets/scp $(DESTDIR)/etc/teiler/targets/scp
