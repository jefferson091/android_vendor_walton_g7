LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),g7)

$(info copying DP Framework proprietary blobs)

include $(CLEAR_VARS)
LOCAL_MODULE = libdpframework
LOCAL_MODULE_CLASS = SHARED_LIBRARIES
LOCAL_MODULE_OWNER = $VENDOR
LOCAL_MODULE_SUFFIX = .so
LOCAL_PROPRIETARY_MODULE = true
LOCAL_MULTILIB = 32
LOCAL_SRC_FILES = proprietary/lib/libdpframework.so
include $(BUILD_PREBUILT)

endif
