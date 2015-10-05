#!/bin/bash
# Cryocooler alarm setting script
# Author: K. Gofron
# Last modified: 2015-10-5
#
# HYST Hysteresis of an alarm
# MDEL Monitor, value change, Deadband
# ADEL Archiver Deadband

caput XF:10IDA-UT{Cryo:1}L:23-I.HYST 5
caput XF:10IDA-UT{Cryo:1}L:23-I.MDEL 1
caput XF:10IDA-UT{Cryo:1}L:23-I.ADEL 1

caput XF:10IDA-UT{Cryo:1}L:19-I.HYST 7
caput XF:10IDA-UT{Cryo:1}L:19-I.MDEL 1
caput XF:10IDA-UT{Cryo:1}L:19-I.ADEL 1

caput XF:10IDA-UT{Cryo:1}T:06-I.HYST 5
caput XF:10IDA-UT{Cryo:1}T:06-I.MDEL 1
caput XF:10IDA-UT{Cryo:1}T:06-I.ADEL 1
