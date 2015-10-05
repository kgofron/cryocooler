#!../../bin/linux-x86_64/cc

< envPaths

epicsEnvSet("ENGINEER",  "kgofron x5283")
epicsEnvSet("LOCATION",  "740 IXS RG:B1")

epicsEnvSet("EPICS_CA_AUTO_ADDR_LIST", "NO")
epicsEnvSet("EPICS_CA_ADDR_LIST", "10.10.0.255")
epicsEnvSet("STREAM_PROTOCOL_PATH", "ccApp/Db")

cd ${TOP}

# Register all support components
dbLoadDatabase("dbd/cc.dbd")
cc_registerRecordDeviceDriver(pdbbase)

drvAsynIPPortConfigure("CC","10.10.2.43:2000")
dbLoadTemplate("db/cc.substitutions", "SYS=XF:10IDA-UT,PDEV=Cryo:1,PORT=CC")

#asynSetTraceMask CC , -1, 0x9
#asynSetTraceIOMask CC, -1, 0x2

iocInit()

dbl > "/cf-update/xf10ida-ioc1.cryo.dbl"
