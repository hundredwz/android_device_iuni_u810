LOCAL_PATH := $(call my-dir)

ifneq ($(filter msm8974,$(TARGET_BOARD_PLATFORM)),)
  include $(call all-makefiles-under,$(LOCAL_PATH))

#Copying ETC files of 8974
    $(shell [ -f $(TARGET_OUT)/etc/ ] || mkdir -p $(TARGET_OUT)/etc/)
    $(shell cp $(LOCAL_PATH)/etc/* $(TARGET_OUT)/etc/)

#Copying scripts files of PAC-Man Files
    $(shell [ -f $(TARGET_OUT)/etc/init.d ] || mkdir -p $(TARGET_OUT)/etc/init.d)
    $(shell cp $(LOCAL_PATH)/scripts/* $(TARGET_OUT)/etc/init.d/)

#Copying other files
    $(shell [ -f $(TARGET_OUT)/bin ] || mkdir -p $(TARGET_OUT)/bin)
    $(shell cp $(LOCAL_PATH)/other/bin/* $(TARGET_OUT)/bin/)
    $(shell [ -f $(TARGET_OUT)/lib ] || mkdir -p $(TARGET_OUT)/lib)
    $(shell cp -r $(LOCAL_PATH)/other/lib/* $(TARGET_OUT)/lib/)

#Copying 7x27a drivers(Display, Audio, Sensors, Wifi)
    $(shell [ -f $(TARGET_OUT)/lib/hw ] || mkdir -p $(TARGET_OUT)/lib/hw)
    $(shell cp -r $(LOCAL_PATH)/8974/* $(TARGET_OUT)/lib/)

#Fixing lost libs
include $(CLEAR_VARS)
LOCAL_MODULE := libqdutils
LOCAL_MODULE_OWNER := iuni
LOCAL_SRC_FILES := 8974/libqdutils.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libqservice
LOCAL_MODULE_OWNER := iuni
LOCAL_SRC_FILES := 8974/libqservice.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libqdMetaData
LOCAL_MODULE_OWNER := iuni
LOCAL_SRC_FILES := 8974/libqdMetaData.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
include $(BUILD_PREBUILT)

endif
