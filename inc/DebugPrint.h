#pragma once

#include "sysPlatform/SysDebugPrint.h"

#ifdef NO_PRINTF
#define DEBUG_PRINT(x)
#else
#define DEBUG_PRINT(x) {if (SysPlatform::g_sysDebugPrintEnable) { std::lock_guard<std::mutex> lck(SysPlatform::g_sysSerialLock); x;}}
#endif
