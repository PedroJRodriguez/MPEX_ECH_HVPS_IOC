#!../../bin/linux-x86_64/modbusApp

# fc17_modicon.cmd


< envPaths

dbLoadDatabase("../../dbd/modbusApp.dbd")
modbusApp_registerRecordDeviceDriver(pdbbase)

# Use the following commands for TCP/IP
#drvAsynIPPortConfigure(const char *portName,
#                       const char *hostInfo,
#                       unsigned int priority,
#                       int noAutoConnect,
#                       int noProcessEos);
drvAsynIPPortConfigure("HVPS_modbus","10.112.2.15:50502",0,0,0)
#modbusInterposeConfig(const char *portName,
#                      modbusLinkType linkType,
#                      int timeoutMsec,
#                      int writeDelayMsec)
modbusInterposeConfig("HVPS_modbus",0,5000,0)

#drvModbusAsynConfigure(portName,
#                      tcpPortName,
#                      slaveAddress,
#                      modbusFunction,
#                      modbusStartAddress,
#                      modbusLength,
#                      dataType,
#                      pollMsec,
#                      plcType);


# Read 2 words (32 bits).  Function code=3.
drvModbusAsynConfigure("HVPS_FN3",               "HVPS_modbus", 0, 3, 0, 194,    INT32_BE,  1000, "AB")

#drvModbusAsynConfigure("WaterFlowOut",           "HVPS_mod", 0, 3, 104, 1,    FLOAT32_BE,  100, "AB")
#drvModbusAsynConfigure("PsmTrafoT401TempL1",           "HVPS_mod", 0, 3, 32, 1,    FLOAT32_BE,  100, "AB")

# Enable ASYN_TRACEIO_HEX on octet server
#asynSetTraceIOMask("HVPS_modbus",0,4)
# Enable ASYN_TRACE_ERROR and ASYN_TRACEIO_DRIVER on octet server
#asynSetTraceMask("HVPS_modbus",0,9)

# Enable ASYN_TRACEIO_HEX on modbus server
#asynSetTraceIOMask("HVPS_modbus",0,4)
# Enable ASYN_TRACE_ERROR, ASYN_TRACEIO_DEVICE, and ASYN_TRACEIO_DRIVER on modbus server
#asynSetTraceMask("HVPS_modbus",0,11)

dbLoadTemplate("hvps_test.substitutions")

iocInit

