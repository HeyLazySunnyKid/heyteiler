ifndef PREFIX
  PREFIX=/usr/local
endif

install:
	install -Dm755 heyteiler $(DESTDIR)$(PREFIX)/bin/heyteiler
	install -Dm644 README.md $(DESTDIR)$(PREFIX)/share/doc/heyteiler/README.md
	install -Dm644 heyteiler.conf $(DESTDIR)/etc/heyteiler/heyteiler.conf
	install -Dm755 heyteiler_helper $(DESTDIR)/etc/heyteiler/heyteiler_helper
	install -Dm644 pygmentize_types.txt $(DESTDIR)/etc/heyteiler/pygmentize_types.txt
	install -Dm644 targets/local $(DESTDIR)/etc/heyteiler/targets/local
	install -Dm644 targets/s3 $(DESTDIR)/etc/heyteiler/targets/s3
	install -Dm644 targets/scp $(DESTDIR)/etc/heyteiler/targets/scp
