TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = cc
# cc.dbd will be created and installed
DBD += cc.dbd

# cc.dbd will be made up from these files:
cc_DBD += base.dbd

# Include dbd files from all support applications:
#cc_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#cc_LIBS += xxx

# cc_registerRecordDeviceDriver.cpp derives from cc.dbd
cc_SRCS += cc_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
cc_SRCS_DEFAULT += ccMain.cpp
cc_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#cc_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
cc_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

# Include stream device support dbd
cc_DBD += asyn.dbd
cc_DBD += drvAsynSerialPort.dbd
cc_DBD += stream.dbd
# Include stream device support libs
cc_LIBS += asyn
cc_LIBS += stream
cc_DBD += drvAsynIPPort.dbd
