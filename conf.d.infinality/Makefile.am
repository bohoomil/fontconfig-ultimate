# 
#  fontconfig/conf.d/Makefile.am
# 
#  Copyright © 2005 Keith Packard
# 
#  Permission to use, copy, modify, distribute, and sell this software and its
#  documentation for any purpose is hereby granted without fee, provided that
#  the above copyright notice appear in all copies and that both that
#  copyright notice and this permission notice appear in supporting
#  documentation, and that the name of the author(s) not be used in
#  advertising or publicity pertaining to distribution of the software without
#  specific, written prior permission.  The authors make no
#  representations about the suitability of this software for any purpose.  It
#  is provided "as is" without express or implied warranty.
# 
#  THE AUTHOR(S) DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE,
#  INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS, IN NO
#  EVENT SHALL THE AUTHOR(S) BE LIABLE FOR ANY SPECIAL, INDIRECT OR
#  CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE,
#  DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER
#  TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR
#  PERFORMANCE OF THIS SOFTWARE.

BUILT_SOURCES = README
DOC_SOURCES = README.in
DOC_FILES = $(DOC_SOURCES:.in=)

CONF_LINKS = \
	10-base-rendering.conf    \
	28-user.conf		\
	29-local.conf		\
	35-repl-custom.conf		\
	37-repl-webfonts.conf		\
	38-repl-webfonts-custom.conf		\
	40-non-latin-microsoft.conf    \
	40-non-latin-misc.conf    \
	45-latin-microsoft.conf   \
	45-latin-misc.conf   \
	49-sansserif.conf   \
	68-override.conf    \
	67-override-aliases.conf		\
	82-no-embedded-bitmaps.conf   \
	82-no-force-autohint.conf   \
	82-no-ttf-as-bitmap.conf    \
	83-yes-bitmaps.conf   \
	83-yes-postscript.conf    \
	88-forced-synthetic.conf    \
	90-non-tt-fonts.conf    \
	90-tt-fonts-microsoft.conf    \
	90-tt-fonts-misc.conf    \
	92-selective-rendering-microsoft.conf   \
	92-selective-rendering-misc.conf   \
	93-final-rendering.conf   \
	94-no-synthetic.conf    \
	95-reject.conf		\
	97-selective-rendering-custom.conf

EXTRA_DIST = $(templateinf_DATA) $(DOC_SOURCES)
CLEANFILES = $(DOC_FILES)

configdir = $(CONFIGDIR)
config_DATA = $(DOC_FILES)

templateinfdir = $(TEMPLATEINFDIR)
templateinf_DATA =				\
	10-base-rendering.conf    \
	10-scale-bitmap-fonts.conf	\
	28-user.conf		\
	29-local.conf		\
	35-repl-custom.conf		\
	36-repl-missing-glyphs.conf  \
	37-repl-webfonts.conf		\
	38-repl-proggy-bitmap.conf   \
	38-repl-terminus-bitmap.conf   \
	38-repl-webfonts-custom.conf		\
	40-non-latin-microsoft.conf    \
	40-non-latin-misc.conf    \
	45-latin-microsoft.conf   \
	45-latin-misc.conf   \
	49-sansserif.conf   \
	67-override-aliases.conf		\
	68-override.conf    \
	82-no-bitmaps.conf    \
	82-no-embedded-bitmaps.conf   \
	82-no-force-autohint.conf   \
	82-no-postscript.conf   \
	82-no-ttf-as-bitmap.conf    \
	83-yes-bitmaps.conf   \
	83-yes-embedded-bitmaps.conf    \
	83-yes-force-autohint.conf    \
	83-yes-postscript.conf    \
	83-yes-ttf-as-bitmap.conf   \
	88-forced-synthetic.conf    \
	90-non-tt-fonts.conf    \
	90-tt-fonts-microsoft.conf    \
	90-tt-fonts-misc.conf    \
	92-selective-rendering-microsoft.conf   \
	92-selective-rendering-misc.conf   \
	93-final-rendering.conf   \
	94-no-synthetic.conf    \
	95-reject.conf	\
	97-selective-rendering-custom.conf

README: $(srcdir)/README.in
	sed "s|\@TEMPLATEINFDIR\@|$(templateinfdir)|" $< > $@

install-data-hook:
	mkdir -p $(DESTDIR)$(configdir)
	@(echo cd $(DESTDIR)$(configdir);			\
	  cd $(DESTDIR)$(configdir);				\
	  for i in $(CONF_LINKS); do				\
	    echo $(RM) $$i";" ln -s $(templateinfdir)/$$i .;	\
	    $(RM) $$i;						\
	    ln -s $(templateinfdir)/$$i .;				\
	  done)
uninstall-local:
	@(echo cd $(DESTDIR)$(configdir);			\
	  cd $(DESTDIR)$(configdir);				\
	  for i in $(CONF_LINKS); do				\
	    echo $(RM) $$i;					\
	    $(RM) $$i;						\
	  done)

-include $(top_srcdir)/git.mk
