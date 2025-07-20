#pragma once

#include "sysPlatform/SysTypes.h"
#include "sysPlatform/SysLogger.h"
#include "sysPlatform/AudioStream.h"

// Replace the old Arduino Serial class with the new sysLogger
#ifdef Serial
#undef Serial
#endif

#define Serial SysPlatform::sysLogger
