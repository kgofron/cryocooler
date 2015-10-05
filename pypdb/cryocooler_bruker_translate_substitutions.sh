#!/bin/bash
IOC_PATH=~/local/data/work/hg/repos/modules/cryocooler_bruker
applypvs  -i $IOC_PATH/pypdb/cryocooler_bruker.pot \
	-o $IOC_PATH/fls \
	-m subs \
	$IOC_PATH/ccApp/Db/cc.substitutions
