#!../../bin/linux-x86_64/cc

< envPaths
< /epics/common/xf10idd-ioc1-netsetup.cmd

epicsEnvSet("ENGINEER",  "kgofron x5283")
epicsEnvSet("LOCATION",  "740 IXS RG:B1")

epicsEnvSet("Sys",  "XF:10IDA-UT")
epicsEnvSet("Dev",  "Cryo:1")

epicsEnvSet("STREAM_PROTOCOL_PATH", "ccApp/Db")

cd ${TOP}

# Register all support components
dbLoadDatabase("dbd/cc.dbd")
cc_registerRecordDeviceDriver(pdbbase)

drvAsynIPPortConfigure("CC","xf10id-cryo1.nsls2.bnl.local:2000")
dbLoadTemplate("db/cc.substitutions", "SYS=XF:10IDA-UT,PDEV=Cryo:1,PORT=CC")

dbLoadRecords("db/iocAdminSoft.db","IOC=XF:10IDA-CT{IOC-Cryo1}")
dbLoadRecords("db/reccaster.db", "P=XF:10IDA-CT{IOC-Cryo1}RecSync")

#asynSetTraceMask CC , -1, 0x9
#asynSetTraceIOMask CC, -1, 0x2

iocInit()

dbpf("$(Sys){$(Dev)}L:23-I.HYST","5")
dbpf("$(Sys){$(Dev)}L:23-I.MDEL","1")
dbpf("$(Sys){$(Dev)}L:23-I.ADEL","1")

dbpf("$(Sys){$(Dev)}L:19-I.HYST","7")
dbpf("$(Sys){$(Dev)}L:19-I.MDEL","1")
dbpf("$(Sys){$(Dev)}L:19-I.ADEL","1")

dbpf("$(Sys){$(Dev)}T:06-I.HYST","5")
dbpf("$(Sys){$(Dev)}T:06-I.MDEL","1")
dbpf("$(Sys){$(Dev)}T:06-I.ADEL","1")


dbl > $(TOP)/records.dbl
#dbl > "/cf-update/xf10idb-ioc1.cryo.dbl"

# "Boot complete"
