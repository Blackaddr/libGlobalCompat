# Library version.  Must use Semantic Versioning 'x.y.z'.  E.g. '1.5.2'
LIB_MAJOR_VER ?= 0
LIB_MINOR_VER ?= 0
LIB_PATCH_VER ?= 0
LIB_VER ?= $(LIB_MAJOR_VER).$(LIB_MINOR_VER).$(LIB_PATCH_VER)

# Name of the library (do not prefix with 'lib'), e.g. MyUtil
TARGET_NAME = globalCompat

DOC_PATH_DOXYGEN =

# List of source files (do not include extentions.  E.g. 'MyClass', not 'MyClass.cpp')
#CPP_SRC_LIST = $(subst /$(TARGET_NAME)/,/, $(subst .cpp,,$(wildcard ./$(TARGET_NAME)/*.cpp)))
#CPP_SRC_LIST += $(subst /$(TARGET_NAME)/,/, $(subst .cpp,,$(wildcard ./$(TARGET_NAME)/utility/*.cpp)))
CPP_SRC_LIST =
C_SRC_LIST =
S_SRC_LIST =

# Do not include $(TARGET_NAME).h in API_HEADER LIST. This file is required and handled separately.
API_HEADER_LIST += \
    Audio \
	DebugPrint

#API_HEADER_LIST = $(subst /$(TARGET_NAME)/,/,$(subst .h,,$(wildcard ./$(TARGET_NAME)/*.h)))
#API_HEADER_LIST += $(subst /$(TARGET_NAME)/,/,$(subst .h,,$(wildcard ./$(TARGET_NAME)/utility/*.h)))


# List of Git-repo dependencies
DEP_BUILD_LIST = \
    $(LIBSYSPLATFORM_REPO)

# List of system include/lib directories not checked by default by your compiler.
# Always use the -I=<dir> and -L=<dir> syntax, not -I<dir>, etc.
#-Isrc/i2c/$(TARGET_OS) - is needed to include the correct i2cOs.h
SYS_INC_DIRS  =
SYS_LIBS_DIRS =

# List of libraries to be compiled and linked statically. This can only be used for Wescam code, BSD and other similar permissively-licensed software
# example: SYS_STAT_LIBS_LIST = Wire Audio
SYS_STAT_LIBS_LIST =

PREPROC_DEFINES_LIST =

MAKEFILE_NAME ?= Makefile

# Check if build engine location has already been defined
export LIB_BUILD_ENGINE_LOC ?= $(CURDIR)/scripts/avalon_lib_build_engine.$(MCU_TYPE)/
include $(LIB_BUILD_ENGINE_LOC)/Makefile.inc

