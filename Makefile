# Makefile generated by imake - do not edit!
# $Xorg: imake.c,v 1.6 2001/02/09 02:03:15 xorgcvs Exp $

#pragma GCC set_debug_pwd "/Users/scott/src/ivtools-1.1"

# Read "template" to understand how this Makefile was generated.
# Edit <arch.def> to add support for a new platform.
# Edit <InterViews/iv-darwin.cf> to change platform-specific parameters.
# Edit <local.def> to change site-specific parameters.
# Edit <Imakefile> to change actions that make should perform.

# architecture:  DARWIN

# -------------------------------------------------------------------------
# from <local.def>:

     GPLUSPLUS_INCLUDE_DIR = /usr/include/gcc/darwin/3.1/g++-v3/backward/
          TOOL_INCLUDE_DIR = /usr/include

    NORM_CCINCLUDES = -I$(CURRENT_DIR)/.. -I$(CURRENT_DIR)/../..  -I$(IVTOOLSSRC) $(BACKWARD_CCINCLUDES) -I$(IVTOOLSSRC)/include -I$(IVTOOLSSRC)/include/ivstd $(X_CCINCLUDES)

    APP_CCINCLUDES = $(NORM_CCINCLUDES)

             IVTOOLSSRC = /Users/scott/src/ivtools-1.1/src

LIBUNIDRAWCOMMON = -L$(IVTOOLSSRC)/Unidraw-common/$(CPU) -lUnidraw-common
LIBIVCOMMON = -L$(IVTOOLSSRC)/IV-common/$(CPU) -lIV-common
LIBTIME = -L$(IVTOOLSSRC)/Time/$(CPU) -lTime
LIBATTRIBUTE = -L$(IVTOOLSSRC)/Attribute/$(CPU) -lAttribute
LIBCOMUTIL = -L$(IVTOOLSSRC)/ComUtil/$(CPU) -lComUtil
LIBCOMTERP = -L$(IVTOOLSSRC)/ComTerp/$(CPU) -lComTerp
LIBIVGLYPH = -L$(IVTOOLSSRC)/IVGlyph/$(CPU) -lIVGlyph
LIBATTRGLYPH = -L$(IVTOOLSSRC)/AttrGlyph/$(CPU) -lAttrGlyph
LIBCOMGLYPH = -L$(IVTOOLSSRC)/ComGlyph/$(CPU) -lComGlyph
LIBGLYPHTERP = -L$(IVTOOLSSRC)/GlyphTerp/$(CPU) -lGlyphTerp
LIBUNIIDRAW = -L$(IVTOOLSSRC)/UniIdraw/$(CPU) -lUniIdraw
LIBTOPOFACE = -L$(IVTOOLSSRC)/TopoFace/$(CPU) -lTopoFace
LIBOVERLAYUNIDRAW = -L$(IVTOOLSSRC)/OverlayUnidraw/$(CPU) -lOverlayUnidraw

  LIBACEDISPATCH =

LIBCOMUNIDRAW = -L$(IVTOOLSSRC)/ComUnidraw/$(CPU) -lComUnidraw
LIBFRAMEUNIDRAW = -L$(IVTOOLSSRC)/FrameUnidraw/$(CPU) -lFrameUnidraw
LIBGRAPHUNIDRAW = -L$(IVTOOLSSRC)/GraphUnidraw/$(CPU) -lGraphUnidraw
LIBDRAWSERV = -L$(IVTOOLSSRC)/DrawServ/$(CPU) -lDrawServ

DEPUNIDRAWCOMMON = $(IVTOOLSSRC)/Unidraw-common/$(CPU)/libUnidraw-common.$(VERSION).dylib
DEPIVCOMMON = $(IVTOOLSSRC)/IV-common/$(CPU)/libIV-common.$(VERSION).dylib
DEPTIME = $(IVTOOLSSRC)/Time/$(CPU)/libTime.$(VERSION).dylib
DEPATTRIBUTE = $(IVTOOLSSRC)/Attribute/$(CPU)/libAttribute.$(VERSION).dylib
DEPCOMUTIL = $(IVTOOLSSRC)/ComUtil/$(CPU)/libComUtil.$(VERSION).dylib
DEPCOMTERP = $(IVTOOLSSRC)/ComTerp/$(CPU)/libComTerp.$(VERSION).dylib
DEPIVGLYPH = $(IVTOOLSSRC)/IVGlyph/$(CPU)/libIVGlyph.$(VERSION).dylib
DEPATTRGLYPH = $(IVTOOLSSRC)/AttrGlyph/$(CPU)/libAttrGlyph.$(VERSION).dylib
DEPCOMGLYPH = $(IVTOOLSSRC)/ComGlyph/$(CPU)/libComGlyph.$(VERSION).dylib
DEPGLYPHTERP = $(IVTOOLSSRC)/GlyphTerp/$(CPU)/libGlyphTerp.$(VERSION).dylib
DEPUNIIDRAW = $(IVTOOLSSRC)/UniIdraw/$(CPU)/libUniIdraw.$(VERSION).dylib
DEPTOPOFACE = $(IVTOOLSSRC)/TopoFace/$(CPU)/libTopoFace.$(VERSION).dylib
DEPOVERLAYUNIDRAW = $(IVTOOLSSRC)/OverlayUnidraw/$(CPU)/libOverlayUnidraw.$(VERSION).dylib

    DEPACEDISPATCH =

DEPCOMUNIDRAW = $(IVTOOLSSRC)/ComUnidraw/$(CPU)/libComUnidraw.$(VERSION).dylib
DEPFRAMEUNIDRAW = $(IVTOOLSSRC)/FrameUnidraw/$(CPU)/libFrameUnidraw.$(VERSION).dylib
DEPGRAPHUNIDRAW = $(IVTOOLSSRC)/GraphUnidraw/$(CPU)/libGraphUnidraw.$(VERSION).dylib
DEPDRAWSERV = $(IVTOOLSSRC)/DrawServ/$(CPU)/libDrawServ.$(VERSION).dylib

# -------------------------------------------------------------------------

   PROJECTDIR = /proj

   RELEASE = ivtools-1.1.1

   VERSION = 1.1.1

   REPOSITORY_FILES = *.c *.cc *.cxx *.C *.h Imakefile *.def template README INSTALL VERSION MANIFEST COPYRIGHT ANNOUNCE README.ivmkcm *.patch *.bugfix.? *.script *.sed comutil.arg comterp.err comutil.ci comterp.arg comterp.ci site.def.SUN4 site.def.LINUX site.def.SGI site.def.HP800 site.def.ALPHA site.def.CYGWIN site.def.NETBSD site.def.FREEBSD WishList *.defaults *.cf HOWTO Copyright *.sh CHANGES CHANGES-0.? *.cpp ivmkmf *.bash *.1  *.3 config.guess config.sub configure configure.in MANIFEST.perceps MANIFEST.comterp *.mk config.mk.in *.tmpl *.flt *.m4 config.defs.in

              SHELL = /bin/sh

              IMAKE = imake
         IMAKEFLAGS = \
		      -T "template"\
		      -I$(ABSTOP)/config -I$(CONFIGDIR) -I$(CONFIGDIR)/.. -I$(XCONFIGDIR) -I$(IVTOOLSSRC)/../config\
		      $(SPECIAL_IMAKEFLAGS)
 SPECIAL_IMAKEFLAGS =
             DEPEND = c++ -M
     DEPEND_CCFLAGS = -w -DMAKEDEPEND $(CCDEFINES) $(CCINCLUDES) -I$(GPLUSPLUS_INCLUDE_DIR) 		      -I$(TOOL_INCLUDE_DIR) -UHAVE_ACE
               MAKE = make
           PASSARCH = ARCH="$(ARCH)" SPECIAL_IMAKEFLAGS="$(SPECIAL_IMAKEFLAGS)" CMFLAGS="$(CMFLAGS)" CMMSG="$(CMMSG)"
          ARCHORCPU = $(CPU)
               ARCH = $(ARCHORCPU)$(SPECIAL_ARCH)
       SPECIAL_ARCH =

           CCDRIVER = c++
           CCSUFFIX = c
            CDRIVER = gcc
            CSUFFIX = c
                SRC = /Users/scott/src/ivtools-1.1/.
              SLASH = /
               SRCS = $(SRC)$(SLASH)*.$(CCSUFFIX)
               OBJS = *.o
               AOUT = a.out

            CCFLAGS = $(APP_CCFLAGS) $(IV_CCFLAGS) $(OTHER_CCFLAGS) $(EXTRA_CCFLAGS)
         IV_CCFLAGS = \
		      -g\
		      $(OPTIMIZE_CCFLAGS)\
		      $(SHARED_CCFLAGS)\
		      $(CCDEFINES)\
		      $(CCINCLUDES)
      DEBUG_CCFLAGS = -gdwarf-2
   OPTIMIZE_CCFLAGS = -O2
     SHARED_CCFLAGS =
      EXTRA_CCFLAGS = -fno-common

          CCDEFINES = $(APP_CCDEFINES) $(IV_CCDEFINES) $(OTHER_CCDEFINES) $(EXTRA_CCDEFINES)
       IV_CCDEFINES = $(LANGUAGE_CCDEFINES) $(BACKWARD_CCDEFINES)
 LANGUAGE_CCDEFINES = -Dcplusplus_2_1 -Wno-deprecated
 BACKWARD_CCDEFINES =
    EXTRA_CCDEFINES =

 CLIPPOLY_CCDEFINES =
      ACE_CCDEFINES =
      IUE_CCDEFINES =

         CCINCLUDES = $(APP_CCINCLUDES) $(OTHER_CCINCLUDES) $(EXTRA_CCINCLUDES)
      IV_CCINCLUDES = IvCCIncludes
BACKWARD_CCINCLUDES =
     TOP_CCINCLUDES = -I$(INCSRC)
       X_CCINCLUDES = -I$(XINCDIR)
   EXTRA_CCINCLUDES = -I/sw/include

CLIPPOLY_CCINCLUDES =
     ACE_CCINCLUDES =
     IUE_CCINCLUDES =

             CFLAGS = $(APP_CCFLAGS) $(IV_CCFLAGS) $(OTHER_CCFLAGS) $(EXTRA_CCFLAGS)

          CCLDFLAGS = $(APP_CCLDFLAGS) $(IV_CCLDFLAGS) $(OTHER_CCLDFLAGS) $(EXTRA_CCLDFLAGS)
       IV_CCLDFLAGS = \
		      -g\
		      $(OPTIMIZE_CCFLAGS)\
		      $(NONSHARED_CCLDFLAGS)
NONSHARED_CCLDFLAGS =
   SHARED_CCLDFLAGS = -Wl,-bind_at_load
    EXTRA_CCLDFLAGS = -Wl,-bind_at_load

          CCDEPLIBS = $(APP_CCDEPLIBS) $(IV_CCDEPLIBS) $(OTHER_CCDEPLIBS) $(EXTRA_CCDEPLIBS) $(_CCDEPLIBS)
       IV_CCDEPLIBS = \
		      $(DEPLIBUNIDRAW)\
		      $(DEPLIBGRAPHIC)\
		      $(DEPLIBIV)\
		      $(DEPLIBXEXT)\
		      $(DEPLIBX11)\
		      $(DEPLIBM)
    EXTRA_CCDEPLIBS =

           CCLDLIBS = $(APP_CCLDLIBS) $(IV_CCLDLIBS) $(OTHER_CCLDLIBS) $(EXTRA_CCLDLIBS)
        IV_CCLDLIBS = \
		      $(LIBDIRPATH)\
		      $(LDLIBUNIDRAW)\
		      $(LDLIBGRAPHIC)\
		      $(LDLIBIV)\
		      $(XLIBDIRPATH)\
		      $(LDLIBXEXT)\
		      $(LDLIBX11)\
		      $(ABSLIBDIRPATH)
    SHARED_CCLDLIBS =
     EXTRA_CCLDLIBS = -lstdc++ -lm

  CLIPPOLY_CCLDLIBS =
     CLIPPOLYLIBDIR =
    CLIPPOLYLIBBASE = libclippoly.so
       ACE_CCLDLIBS =
          ACELIBDIR =
         ACELIBBASE = libACE.so
       IUE_CCLDLIBS =
          IUELIBDIR =
         IUELIBBASE = libIUE.so

            INSTALL = install
       INSTPGMFLAGS = -s
       INSTBINFLAGS = -m 0755
       INSTUIDFLAGS = -m 4755
       INSTLIBFLAGS = -m 0644
       INSTINCFLAGS = -m 0444
       INSTMANFLAGS = -m 0444
       INSTDATFLAGS = -m 0444
      INSTKMEMFLAGS = -m 4755

                 AR = ar clq
                 AS = as
                 CP = cp
                CPP = c++ -E $(EXTRA_CCDEFINES) $(OTHER_CCDEFINES)
      PREPROCESSCMD = $(CCDRIVER) -E $(EXTRA_CCDEFINES) $(OTHER_CCDEFINES)
                 LD = ld
                 LN = ln -s
          MKDIRHIER = $(SHELL) $(SCRIPTSRC)/mkdirhier.sh
                 MV = mv
             RANLIB = ranlib
    RANLIBINSTFLAGS =
                 RM = rm -f
              RMDIR = rm -rf
             RM_CMD = $(RM) ,* .emacs_* *..c *.BAK *.CKP *.a *.bak *.ln *.o a.out core errs make.log make.out tags TAGS
              TROFF = groff

                TOP = /Users/scott/src/ivtools-1.1
             RELTOP = .
        CURRENT_DIR = /Users/scott/src/ivtools-1.1

              IVSRC = /Users/scott/src/ivtools-1.1/src
             BINSRC = $(IVSRC)/bin
          CONFIGSRC = $(RELTOP)/config
             INCSRC = $(IVSRC)/include
             LIBSRC = $(IVSRC)
             MANSRC = $(IVSRC)/man
          SCRIPTSRC = $(RELTOP)/src/scripts

             BINDIR = /usr/local/bin
          CONFIGDIR = /usr/local/lib/ivtools/config
             INCDIR = /usr/local/include
             LIBDIR = /usr/local/lib
          LIBABSDIR = /usr/local/lib
          LIBALLDIR = /usr/local/lib/ivtools
             MANDIR = /usr/local/man

       ABSCONFIGDIR = /usr/local/lib/ivtools/config
          ABSLIBDIR = /usr/local/lib
       ABSLIBALLDIR = /usr/local/lib/ivtools
       RELLIBALLDIR = $(TOP)/lib/ivtools
         XCONFIGDIR = /usr/X11R6/lib/X11/config
            XINCDIR = /usr/X11R6/include
            XLIBDIR = /usr/X11R6/lib
          PSFONTDIR = /usr/lib/ps

  SOCKLEN_T_DEFINED = 0

include $(RELTOP)/config/config.mk

all::

Makefile::
	-@if [ -f Makefile ]; then \
		$(RM) Makefile.bak; \
		$(MV) Makefile Makefile.bak; \
	else exit 0; fi
	-@echo "Making Makefile"
	-@if [ $(TOP) = $(CURRENT_DIR) ]; then \
	echo >.toplevel-make-makefile; else \
	echo >.not-toplevel-make-makefile; fi
	-@if [ -f .toplevel-make-makefile ]; then \
	echo;\
	echo "remaking top-level Makefile using:";\
	echo "    top-level directory -- $(ABSTOP)";\
	echo "    ivtools config directory -- $(CONFIGSRC)";\
	echo "    X11 config directory -- $(XCONFIGDIR)";\
	echo;\
	$(IMAKE) $(IMAKEFLAGS) -I$(ABSTOP)/config \
	-DTOPDIR=$(ABSTOP) -DRELTOPDIR=$(RELTOP) -DCURDIR=$(ABSTOP); fi
	-@if [ -f .not-toplevel-make-makefile ]; then \
	$(IMAKE) $(IMAKEFLAGS) -DTOPDIR=$(TOP) \
		-DRELTOPDIR=$(RELTOP) -DCURDIR=$(CURRENT_DIR); fi
	-@if [ $(TOP) = $(CURRENT_DIR) ]; then \
	$(RM) .toplevel-make-makefile; else \
	$(RM) .not-toplevel-make-makefile; fi
Makefiles::
depend::
install::
uninstall::

clean::
	@$(RM_CMD) "#"*

# -------------------------------------------------------------------------

#
# "make CPU" prints the CPU name used for machine-specific subdirectories.
# "make" builds everything.
# "make install" installs everything.
#

PACKAGE = top_ivtools

WORLDOPTS =
SUBDIRS = src config

CPU:
	@$(SHELL) $(SCRIPTSRC)/cpu.sh $(CONFIGSRC)/arch.def

World::
	@echo ""
	@echo "Building $(RELEASE) on `date`"
	@echo ""
	$(MAKE) Makefile CONFIGSRC=$(CONFIGSRC) XCONFIGDIR=$(XCONFIGDIR)
	@echo "twice to propogate new toplevel pathname"
	$(MAKE) Makefile
	@echo ""
	$(MAKE) Makefiles
	@echo ""
	$(MAKE) depend
	@echo ""
	$(MAKE) $(WORLDOPTS) subdirs
	@echo ""
	@echo "$(RELEASE) build completed on `date`"
	@echo ""

World.debug::
	@echo ""
	@echo "Building $(RELEASE) on `date`"
	@echo ""
	$(MAKE) Makefile XCONFIGDIR=$(XCONFIGDIR)
	@echo ""
	$(MAKE) Makefiles.debug
	@echo ""
	$(MAKE) depend.debug
	@echo ""
	$(MAKE) $(WORLDOPTS) all.debug
	@echo ""
	@echo "$(RELEASE) build completed on `date`"
	@echo ""

World.noshared::
	@echo ""
	@echo "Building $(RELEASE) on `date`"
	@echo ""
	$(MAKE) Makefile XCONFIGDIR=$(XCONFIGDIR)
	@echo ""
	$(MAKE) Makefiles.noshared
	@echo ""
	$(MAKE) depend.noshared
	@echo ""
	$(MAKE) $(WORLDOPTS) all.noshared
	@echo ""
	@echo "$(RELEASE) build completed on `date`"
	@echo ""

all::
	-@if [ ! -f make.makefile ]; then \
	echo ""; \
	echo "Building $(RELEASE) on `date`"; \
	echo ""; \
	$(MAKE) Makefile CONFIGSRC=$(CONFIGSRC) XCONFIGDIR=$(XCONFIGDIR);\
	echo "twice to propogate new toplevel pathname"; \
	$(MAKE) Makefile; \
	touch make.makefile; fi
	-@if [ ! -f make.makefiles ]; then \
	echo ""; \
	$(MAKE) Makefiles; \
	touch make.makefiles; fi
	-@if [ ! -f make.depend ]; then \
	echo ""; \
	$(MAKE) depend; \
	touch make.depend; fi
	-@if [ ! -f make.make ]; then \
	echo ""; fi
	$(MAKE) $(WORLDOPTS) subdirs
	-@if [ ! -f make.make ]; then \
	echo ""; \
	echo "$(RELEASE) build completed on `date`"; \
	echo ""; \
	touch make.make; fi

Makefiles::
	-@for i in $(SUBDIRS); \
	do \
		if [ -d $$i ]; then ( \
			echo "Making Makefiles" \
			"for $(ARCH) in $(CURRENT_DIR)/$$i"; \
			if [ -f $$i/Makefile ]; then \
				$(RM) $$i/Makefile.bak; \
				$(MV) $$i/Makefile $$i/Makefile.bak; \
			fi; \
			$(IMAKE) $(IMAKEFLAGS) \
			-DTOPDIR=$(TOP) -DRELTOPDIR=../$(RELTOP) \
			-DCURDIR=$(CURRENT_DIR)/$$i \
			-f $$i/Imakefile -s $$i/Makefile; \
			cd $$i; \
			$(MAKE) $(PASSARCH) Makefiles; \
		) else continue; fi; \
	done

depend::
	-@for i in $(SUBDIRS); \
	do \
		if [ -d $$i ]; then ( \
			echo "depending" \
			"for $(ARCH) in $(CURRENT_DIR)/$$i"; \
			cd $$i; \
			$(MAKE) $(PASSARCH) depend; \
		) else continue; fi; \
	done

subdirs::
	-@for i in $(SUBDIRS); \
	do \
		if [ -d $$i ]; then ( \
			echo "making all" \
			"for $(ARCH) in $(CURRENT_DIR)/$$i"; \
			cd $$i; \
			$(MAKE) $(PASSARCH) all; \
		) else continue; fi; \
	done

install::
	-@for i in $(SUBDIRS); \
	do \
		if [ -d $$i ]; then ( \
			echo "installing" \
			"for $(ARCH) in $(CURRENT_DIR)/$$i"; \
			cd $$i; \
			$(MAKE) $(PASSARCH) install; \
		) else continue; fi; \
	done

uninstall::
	-@for i in $(SUBDIRS); \
	do \
		if [ -d $$i ]; then ( \
			echo "uninstalling" \
			"for $(ARCH) in $(CURRENT_DIR)/$$i"; \
			cd $$i; \
			$(MAKE) $(PASSARCH) uninstall; \
		) else continue; fi; \
	done

clean::
	-@for i in $(SUBDIRS); \
	do \
		if [ -d $$i ]; then ( \
			echo "cleaning" \
			"for $(ARCH) in $(CURRENT_DIR)/$$i"; \
			cd $$i; \
			$(MAKE) $(PASSARCH) clean; \
		) else continue; fi; \
	done

Makefiles.debug:
	@$(MAKE) ARCH="$(ARCH).debug" \
	SPECIAL_IMAKEFLAGS="$(SPECIAL_IMAKEFLAGS) -DUseDebug" \
	Makefiles
depend.debug:
	@$(MAKE) ARCH="$(ARCH).debug" \
	SPECIAL_IMAKEFLAGS="$(SPECIAL_IMAKEFLAGS) -DUseDebug" \
	depend
all.debug:
	@$(MAKE) ARCH="$(ARCH).debug" \
	SPECIAL_IMAKEFLAGS="$(SPECIAL_IMAKEFLAGS) -DUseDebug" \
	all
install.debug:
	@$(MAKE) ARCH="$(ARCH).debug" \
	SPECIAL_IMAKEFLAGS="$(SPECIAL_IMAKEFLAGS) -DUseDebug" \
	install
clean.debug:
	@$(MAKE) ARCH="$(ARCH).debug" \
	SPECIAL_IMAKEFLAGS="$(SPECIAL_IMAKEFLAGS) -DUseDebug" \
	clean

Makefiles.noshared:
	@$(MAKE) ARCH="$(ARCH).noshared" \
	SPECIAL_IMAKEFLAGS="$(SPECIAL_IMAKEFLAGS) -DUseNonShared" \
	Makefiles
depend.noshared:
	@$(MAKE) ARCH="$(ARCH).noshared" \
	SPECIAL_IMAKEFLAGS="$(SPECIAL_IMAKEFLAGS) -DUseNonShared" \
	depend
all.noshared:
	@$(MAKE) ARCH="$(ARCH).noshared" \
	SPECIAL_IMAKEFLAGS="$(SPECIAL_IMAKEFLAGS) -DUseNonShared" \
	all
install.noshared:
	@$(MAKE) ARCH="$(ARCH).noshared" \
	SPECIAL_IMAKEFLAGS="$(SPECIAL_IMAKEFLAGS) -DUseNonShared" \
	install
clean.noshared:
	@$(MAKE) ARCH="$(ARCH).noshared" \
	SPECIAL_IMAKEFLAGS="$(SPECIAL_IMAKEFLAGS) -DUseNonShared" \
	clean

cmchkin::
	-@if [ $(NO_IVMKCM) ]; then exit 0; else \
	if [ ! -d $(TOP)/cm ]; then \
	(cd $(TOP); cminstall); fi; fi
	-@if [ $(NO_IVMKCM) ]; then exit 0; else \
	csh -c '(setenv REPOSITORY_FILES "$(REPOSITORY_FILES)"; \
	cmchkin $(PACKAGE) $(TOP)/cm $(TOP) $(CURRENT_DIR))'; fi

cmtag::
	-@if [ $(NO_IVMKCM) ]; then exit 0; else \
	if [ ! -d $(TOP)/cm ]; then \
	(echo "Build repository first with cmchkin"; exit 0;); fi; \
	if [ ! -d $(CURRENT_DIR)/CVS ]; then \
	(echo "Build repository first with cmchkin"; exit 0;); fi; fi
	-@if [ $(NO_IVMKCM) ]; then exit 0; else \
	cmtag $(CMFLAGS) $(CMARGS); fi

cmadd::
	-@if [ $(NO_IVMKCM) ]; then exit 0; else \
	if [ ! -d $(TOP)/cm ]; then \
	(echo "Build repository first with cmchkin"; exit 0;); fi; \
	if [ ! -d $(CURRENT_DIR)/CVS ]; then \
	(echo "Build repository first with cmchkin"; exit 0;); fi; fi
	-@if [ $(NO_IVMKCM) ]; then exit 0; else \
	csh -c '(setenv REPOSITORY_FILES "$(REPOSITORY_FILES)"; cmadd -m null_message)'; fi

cmupdate::
	-@if [ $(NO_IVMKCM) ]; then exit 0; else \
	if [ ! -d $(TOP)/cm ]; then \
	(echo "Build repository first with cmchkin"; exit 0;); fi; \
	if [ ! -d $(CURRENT_DIR)/CVS ]; then \
	(echo "Build repository first with cmchkin"; exit 0;); fi; fi
	-@if [ $(NO_IVMKCM) ]; then exit 0; else cmupdate; fi

cmcommit::
	-@if [ $(NO_IVMKCM) ]; then exit 0; else \
	if [ ! -d $(TOP)/cm ]; then \
	(echo "Build repository first with cmchkin"; exit 0;); fi; \
	if [ ! -d $(CURRENT_DIR)/CVS ]; then \
	(echo "Build repository first with cmchkin"; exit 0;); fi; fi
	-@if [ $(NO_IVMKCM) ]; then exit 0; else \
	if [ -z "$(CMMSG)" ]; then cmcommit $(CMFLAGS); \
	else cmcommit $(CMFLAGS) -m "$(CMMSG)"; fi; fi

cmchkin::
	-@for i in $(SUBDIRS); \
	do \
		if [ -d $$i ]; then ( \
			echo "checking into the repository" \
			"for $(ARCH) in $(CURRENT_DIR)/$$i"; \
			cd $$i; \
			$(MAKE) $(PASSARCH) cmchkin; \
		) else continue; fi; \
	done

cmtag::
	-@for i in $(SUBDIRS); \
	do \
		if [ -d $$i ]; then ( \
			echo "tagging the repository" \
			"for $(ARCH) in $(CURRENT_DIR)/$$i"; \
			cd $$i; \
			$(MAKE) $(PASSARCH) cmtag; \
		) else continue; fi; \
	done

cmadd::
	-@for i in $(SUBDIRS); \
	do \
		if [ -d $$i ]; then ( \
			echo "adding to the repository" \
			"for $(ARCH) in $(CURRENT_DIR)/$$i"; \
			cd $$i; \
			$(MAKE) $(PASSARCH) cmadd; \
		) else continue; fi; \
	done

cmupdate::
	-@for i in $(SUBDIRS); \
	do \
		if [ -d $$i ]; then ( \
			echo "updating from repository" \
			"for $(ARCH) in $(CURRENT_DIR)/$$i"; \
			cd $$i; \
			$(MAKE) $(PASSARCH) cmupdate; \
		) else continue; fi; \
	done

cmcommit::
	-@for i in $(SUBDIRS); \
	do \
		if [ -d $$i ]; then ( \
			echo "committing to repository" \
			"for $(ARCH) in $(CURRENT_DIR)/$$i"; \
			cd $$i; \
			$(MAKE) $(PASSARCH) cmcommit; \
		) else continue; fi; \
	done

clean::
	@$(RM_CMD) make.makefile make.makefiles make.depend make.make

