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
drvModbusAsynConfigure("ActualState",           "HVPS_modbus", 0, 3, 0, 1,    INT32_BE,  2000, "AB")
drvModbusAsynConfigure("FaultId",               "HVPS_modbus", 0, 3, 2, 1,    INT32_BE,  2000, "AB")
drvModbusAsynConfigure("FaultTimestamp",        "HVPS_modbus", 0, 3, 4, 1,    INT32_BE,  2000, "AB")
drvModbusAsynConfigure("ResetFaultCmd",         "HVPS_modbus", 0, 3, 6, 1,    INT32_BE,  2000, "AB")
drvModbusAsynConfigure("SmSumWarning",          "HVPS_modbus", 0, 3, 8, 1,    INT32_BE,  2000, "AB")
drvModbusAsynConfigure("SumFault",              "HVPS_modbus", 0, 3, 10, 1,    INT32_BE,  2000, "AB")
drvModbusAsynConfigure("SumFaultAct",           "HVPS_modbus", 0, 3, 12, 1,    INT32_BE,  2000, "AB")
drvModbusAsynConfigure("SumWarn",               "HVPS_modbus", 0, 3, 14, 1,    INT32_BE,  2000, "AB")
drvModbusAsynConfigure("TargetStateCmd",        "HVPS_modbus", 0, 3, 16, 1,    INT32_BE,  2000, "AB")
drvModbusAsynConfigure("WarnId",                "HVPS_modbus", 0, 3, 18, 1,    INT32_BE,  2000, "AB")
drvModbusAsynConfigure("WarnTimestamp",         "HVPS_modbus", 0, 3, 20, 1,    INT32_BE,  2000, "AB")

drvModbusAsynConfigure("HvpsLeakDetOk",         "HVPS_modbus", 0, 3, 22, 1,    INT32_BE,  2000, "AB")
drvModbusAsynConfigure("MvSdcSsContOn",         "HVPS_modbus", 0, 3, 24, 1,    INT32_BE,  2000, "AB")
drvModbusAsynConfigure("MvSfcFuseClosed",       "HVPS_modbus", 0, 3, 26, 1,    INT32_BE,  2000, "AB")
drvModbusAsynConfigure("MvWbcTransfCbOn",       "HVPS_modbus", 0, 3, 28, 1,    INT32_BE,  2000, "AB")

drvModbusAsynConfigure("PsmDiffCurrDetOk",      "HVPS_modbus", 0, 3, 30, 1,    INT32_BE,  2000, "AB")
drvModbusAsynConfigure("PsmTrafoT401TempL1",    "HVPS_modbus", 0, 3, 32, 1,    FLOAT32_BE,  2000, "AB")
drvModbusAsynConfigure("PsmTrafoT401TempL1_MIN","HVPS_modbus", 0, 3, 34, 1,    FLOAT32_BE,  2000, "AB")
drvModbusAsynConfigure("PsmTrafoT401TempL1_MAX","HVPS_modbus", 0, 3, 36, 1,    FLOAT32_BE,  2000, "AB")
drvModbusAsynConfigure("PsmTrafoT401TempL1_LOW","HVPS_modbus", 0, 3, 38, 1,    FLOAT32_BE,  2000, "AB")
drvModbusAsynConfigure("PsmTrafoT401TempL1_HIGH","HVPS_modbus", 0, 3, 40, 1,    FLOAT32_BE,  2000, "AB")
drvModbusAsynConfigure("PsmTrafoT401TempL1_STATUS","HVPS_modbus", 0, 3, 42, 1,    INT32_BE,  2000, "AB")

drvModbusAsynConfigure("PsmTrafoT401TempL2",    "HVPS_modbus", 0, 3, 44, 1,    FLOAT32_BE,  2000, "AB")
drvModbusAsynConfigure("PsmTrafoT401TempL2_MIN","HVPS_modbus", 0, 3, 46, 1,    FLOAT32_BE,  2000, "AB")
drvModbusAsynConfigure("PsmTrafoT401TempL2_MAX","HVPS_modbus", 0, 3, 48, 1,    FLOAT32_BE,  2000, "AB")
drvModbusAsynConfigure("PsmTrafoT401TempL2_LOW","HVPS_modbus", 0, 3, 50, 1,    FLOAT32_BE,  2000, "AB")
drvModbusAsynConfigure("PsmTrafoT401TempL2_HIGH","HVPS_modbus", 0, 3, 52, 1,    FLOAT32_BE,  2000, "AB")
drvModbusAsynConfigure("PsmTrafoT401TempL2_STATUS","HVPS_modbus", 0, 3, 54, 1,    INT32_BE,  2000, "AB")

drvModbusAsynConfigure("PsmTrafoT401TempL3",    "HVPS_modbus", 0, 3, 56, 1,    FLOAT32_BE,  2000, "AB")
drvModbusAsynConfigure("PsmTrafoT401TempL3_MIN","HVPS_modbus", 0, 3, 58, 1,    FLOAT32_BE,  2000, "AB")
drvModbusAsynConfigure("PsmTrafoT401TempL3_MAX","HVPS_modbus", 0, 3, 60, 1,    FLOAT32_BE,  2000, "AB")
drvModbusAsynConfigure("PsmTrafoT401TempL3_LOW","HVPS_modbus", 0, 3, 62, 1,    FLOAT32_BE,  2000, "AB")
drvModbusAsynConfigure("PsmTrafoT401TempL3_HIGH","HVPS_modbus", 0, 3, 64, 1,    FLOAT32_BE,  2000, "AB")
drvModbusAsynConfigure("PsmTrafoT401TempL3_STATUS","HVPS_modbus", 0, 3, 66, 1,    INT32_BE,  2000, "AB")

drvModbusAsynConfigure("PsmTrafoT402TempL1",    "HVPS_modbus", 0, 3, 68, 1,    FLOAT32_BE,  2000, "AB")
drvModbusAsynConfigure("PsmTrafoT402TempL1_MIN","HVPS_modbus", 0, 3, 70, 1,    FLOAT32_BE,  2000, "AB")
drvModbusAsynConfigure("PsmTrafoT402TempL1_MAX","HVPS_modbus", 0, 3, 72, 1,    FLOAT32_BE,  2000, "AB")
drvModbusAsynConfigure("PsmTrafoT402TempL1_LOW","HVPS_modbus", 0, 3, 74, 1,    FLOAT32_BE,  2000, "AB")
drvModbusAsynConfigure("PsmTrafoT402TempL1_HIGH","HVPS_modbus", 0, 3, 76, 1,    FLOAT32_BE,  2000, "AB")
drvModbusAsynConfigure("PsmTrafoT402TempL1_STATUS","HVPS_modbus", 0, 3, 78, 1,    INT32_BE,  2000, "AB")

drvModbusAsynConfigure("PsmTrafoT402TempL2",    "HVPS_modbus", 0, 3, 80, 1,    FLOAT32_BE,  2000, "AB")
drvModbusAsynConfigure("PsmTrafoT402TempL2_MIN","HVPS_modbus", 0, 3, 82, 1,    FLOAT32_BE,  2000, "AB")
drvModbusAsynConfigure("PsmTrafoT402TempL2_MAX","HVPS_modbus", 0, 3, 84, 1,    FLOAT32_BE,  2000, "AB")
drvModbusAsynConfigure("PsmTrafoT402TempL2_LOW","HVPS_modbus", 0, 3, 86, 1,    FLOAT32_BE,  2000, "AB")
drvModbusAsynConfigure("PsmTrafoT402TempL2_HIGH","HVPS_modbus", 0, 3, 88, 1,    FLOAT32_BE,  2000, "AB")
drvModbusAsynConfigure("PsmTrafoT402TempL2_STATUS","HVPS_modbus", 0, 3, 90, 1,    INT32_BE,  2000, "AB")

drvModbusAsynConfigure("PsmTrafoT402TempL3",    "HVPS_modbus", 0, 3, 92, 1,    FLOAT32_BE,  2000, "AB")
drvModbusAsynConfigure("PsmTrafoT402TempL3_MIN","HVPS_modbus", 0, 3, 94, 1,    FLOAT32_BE,  2000, "AB")
drvModbusAsynConfigure("PsmTrafoT402TempL3_MAX","HVPS_modbus", 0, 3, 96, 1,    FLOAT32_BE,  2000, "AB")
drvModbusAsynConfigure("PsmTrafoT402TempL3_LOW","HVPS_modbus", 0, 3, 98, 1,    FLOAT32_BE,  2000, "AB")
drvModbusAsynConfigure("PsmTrafoT402TempL3_HIGH","HVPS_modbus", 0, 3, 100, 1,    FLOAT32_BE,  2000, "AB")
drvModbusAsynConfigure("PsmTrafoT402TempL3_STATUS","HVPS_modbus", 0, 3, 102, 1,    INT32_BE,  2000, "AB")

drvModbusAsynConfigure("WaterFlowOut",          "HVPS_modbus", 0, 3, 104, 1,    FLOAT32_BE,  2000, "AB")
drvModbusAsynConfigure("WaterFlowOut_MIN",      "HVPS_modbus", 0, 3, 106, 1,    FLOAT32_BE,  2000, "AB")
drvModbusAsynConfigure("WaterFlowOut_MAX",      "HVPS_modbus", 0, 3, 108, 1,    FLOAT32_BE,  2000, "AB")
drvModbusAsynConfigure("WaterFlowOut_LOW",      "HVPS_modbus", 0, 3, 110, 1,    FLOAT32_BE,  2000, "AB")
drvModbusAsynConfigure("WaterFlowOut_HIGH",     "HVPS_modbus", 0, 3, 112, 1,    FLOAT32_BE,  2000, "AB")
drvModbusAsynConfigure("WaterFlowOut_STATUS",   "HVPS_modbus", 0, 3, 114, 1,    INT32_BE,  2000, "AB")

drvModbusAsynConfigure("WaterTempIn",          "HVPS_modbus", 0, 3, 116, 1,    FLOAT32_BE,  2000, "AB")
drvModbusAsynConfigure("WaterTempIn_MIN",      "HVPS_modbus", 0, 3, 118, 1,    FLOAT32_BE,  2000, "AB")
drvModbusAsynConfigure("WaterTempIn_MAX",      "HVPS_modbus", 0, 3, 120, 1,    FLOAT32_BE,  2000, "AB")
drvModbusAsynConfigure("WaterTempIn_LOW",      "HVPS_modbus", 0, 3, 122, 1,    FLOAT32_BE,  2000, "AB")
drvModbusAsynConfigure("WaterTempIn_HIGH",     "HVPS_modbus", 0, 3, 124, 1,    FLOAT32_BE,  2000, "AB")
drvModbusAsynConfigure("WaterTempIn_STATUS",   "HVPS_modbus", 0, 3, 126, 1,    INT32_BE,  2000, "AB")

drvModbusAsynConfigure("WaterTempOut",          "HVPS_modbus", 0, 3, 128, 1,    FLOAT32_BE,  2000, "AB")
drvModbusAsynConfigure("WaterTempOut_MIN",      "HVPS_modbus", 0, 3, 130, 1,    FLOAT32_BE,  2000, "AB")
drvModbusAsynConfigure("WaterTempOut_MAX",      "HVPS_modbus", 0, 3, 132, 1,    FLOAT32_BE,  2000, "AB")
drvModbusAsynConfigure("WaterTempOut_LOW",      "HVPS_modbus", 0, 3, 134, 1,    FLOAT32_BE,  2000, "AB")
drvModbusAsynConfigure("WaterTempOut_HIGH",     "HVPS_modbus", 0, 3, 136, 1,    FLOAT32_BE,  2000, "AB")
drvModbusAsynConfigure("WaterTempOut_STATUS",   "HVPS_modbus", 0, 3, 138, 1,    INT32_BE,  2000, "AB")

drvModbusAsynConfigure("AccessDoorClosed",      "HVPS_modbus", 0, 3, 140, 1,    INT32_BE,  2000, "AB")
drvModbusAsynConfigure("AccessDoorLocked",      "HVPS_modbus", 0, 3, 142, 1,    INT32_BE,  2000, "AB")
drvModbusAsynConfigure("EmButNotPressed",       "HVPS_modbus", 0, 3, 144, 1,    INT32_BE,  2000, "AB")
drvModbusAsynConfigure("ExtPssInt",             "HVPS_modbus", 0, 3, 146, 1,    INT32_BE,  2000, "AB")
drvModbusAsynConfigure("GndHookParkPosOk",      "HVPS_modbus", 0, 3, 148, 1,    INT32_BE,  2000, "AB")
drvModbusAsynConfigure("GndRelClosed",          "HVPS_modbus", 0, 3, 150, 1,    INT32_BE,  2000, "AB")
drvModbusAsynConfigure("GndSwClosed",           "HVPS_modbus", 0, 3, 152, 1,    INT32_BE,  2000, "AB")
drvModbusAsynConfigure("GreenLightOnCmd",       "HVPS_modbus", 0, 3, 154, 1,    INT32_BE,  2000, "AB")
drvModbusAsynConfigure("LvCbOpen",              "HVPS_modbus", 0, 3, 156, 1,    INT32_BE,  2000, "AB")
drvModbusAsynConfigure("MvSdcGndSwClosed",      "HVPS_modbus", 0, 3, 158, 1,    INT32_BE,  2000, "AB")
drvModbusAsynConfigure("MvSfcGndSwClosed",      "HVPS_modbus", 0, 3, 160, 1,    INT32_BE,  2000, "AB")
drvModbusAsynConfigure("MvWbcGndSwClosed",      "HVPS_modbus", 0, 3, 162, 1,    INT32_BE,  2000, "AB")
drvModbusAsynConfigure("OrangeLightOnCmd",      "HVPS_modbus", 0, 3, 164, 1,    INT32_BE,  2000, "AB")
drvModbusAsynConfigure("RedLightOnCmd",         "HVPS_modbus", 0, 3, 166, 1,    INT32_BE,  2000, "AB")

drvModbusAsynConfigure("VoutMeas",          "HVPS_modbus", 0, 3, 168, 1,    FLOAT32_BE,  2000, "AB")
drvModbusAsynConfigure("IoutMeas",          "HVPS_modbus", 0, 3, 170, 1,    FLOAT32_BE,  2000, "AB")
drvModbusAsynConfigure("IoutMeasAverage",   "HVPS_modbus", 0, 3, 172, 1,    FLOAT32_BE,  2000, "AB")

drvModbusAsynConfigure("ReactivePower",     "HVPS_modbus", 0, 3, 174, 1,    FLOAT32_BE,  2000, "AB")
drvModbusAsynConfigure("ApparentPower",     "HVPS_modbus", 0, 3, 176, 1,    FLOAT32_BE,  2000, "AB")
drvModbusAsynConfigure("ActivePower",       "HVPS_modbus", 0, 3, 178, 1,    FLOAT32_BE,  2000, "AB")
drvModbusAsynConfigure("PowerFactor",       "HVPS_modbus", 0, 3, 180, 1,    FLOAT32_BE,  2000, "AB")
drvModbusAsynConfigure("VoltageL12",        "HVPS_modbus", 0, 3, 182, 3,    FLOAT32_BE,  2000, "AB")
drvModbusAsynConfigure("VoltageL23",        "HVPS_modbus", 0, 3, 184, 1,    FLOAT32_BE,  2000, "AB")
drvModbusAsynConfigure("VoltageL31",        "HVPS_modbus", 0, 3, 186, 1,    FLOAT32_BE,  2000, "AB")
drvModbusAsynConfigure("CurrentL1",         "HVPS_modbus", 0, 3, 188, 1,    FLOAT32_BE,  2000, "AB")
drvModbusAsynConfigure("CurrentL2",         "HVPS_modbus", 0, 3, 190, 1,    FLOAT32_BE,  2000, "AB")
drvModbusAsynConfigure("CurrentL3",         "HVPS_modbus", 0, 3, 192, 1,    FLOAT32_BE,  2000, "AB")



# Enable ASYN_TRACEIO_HEX on octet server
#asynSetTraceIOMask("HVPS_modbus",0,4)
# Enable ASYN_TRACE_ERROR and ASYN_TRACEIO_DRIVER on octet server
#asynSetTraceMask("HVPS_modbus",0,9)

# Enable ASYN_TRACEIO_HEX on modbus server
#asynSetTraceIOMask("HVPS_modbus_slaveID",0,4)
# Enable ASYN_TRACE_ERROR, ASYN_TRACEIO_DEVICE, and ASYN_TRACEIO_DRIVER on modbus server
#asynSetTraceMask("HVPS_modbus_slaveID",0,11)

dbLoadTemplate("hvps.substitutions")

iocInit

