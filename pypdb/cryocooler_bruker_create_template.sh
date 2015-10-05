#!/bin/bash
getpvs -I /usr/lib/epics/dbd -I . \
	-o cryocooler_bruker.pot \
	base.dbd \
	~/local/data/work/hg/repos/modules/cryocooler_bruker/ccApp/Db/cc-in.db
