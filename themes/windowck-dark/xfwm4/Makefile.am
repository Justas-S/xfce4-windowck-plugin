themedir = $(datadir)/themes/Windowck-dark/xfwm4

EXTRA_DIST = generator.py themerc

all: refresh all-am

refresh:
	echo -e "Going to refresh xpm files";
	$(srcdir)/generator.py;

install-data: install-data-local

install-data-local:
	echo -e "Going to copy files for $$size"; \
	for file in `find . -name "*.xpm"` $(srcdir)/themerc; do \
		$(mkdir_p) $(DESTDIR)$(themedir); \
		$(install_sh_DATA) $$file $(DESTDIR)$(themedir); \
	done; 

clean: clean-data-local clean-am

clean-data-local:
	echo -e "Going to clean xpm files"; \
	rm -f *.xpm;	

uninstall-local: uninstall-am

distclean:
	rm -f Makefile;
	rm -f *.xpm;
	rm -f themerc;

uninstall:
	rm -f $(themedir)/*.xpm;
	rm -f $(themedir)/themerc;
#	rm -f $(srcdir)/*.xpm;
#	rm -f $(srcdir)/themerc;
	rm -f $(DESTDIR)$(themedir)/*.xpm;
	rm -f $(DESTDIR)$(themedir)/themerc;
