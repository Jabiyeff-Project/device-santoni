LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := vendor.lineage.touch@1.0-service.xiaomi_8937
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_RELATIVE_PATH := hw

LOCAL_VENDOR_MODULE := true

LOCAL_INIT_RC := vendor.lineage.touch@1.0-service.xiaomi_8937.rc
LOCAL_VINTF_FRAGMENTS := vendor.lineage.touch@1.0-service.xiaomi_8937.xml

LOCAL_SRC_FILES := \
    service.cpp \
    KeyDisabler.cpp

LOCAL_SHARED_LIBRARIES := \
    libbase \
    libhidlbase \
    libutils \
    vendor.lineage.touch@1.0

include $(BUILD_EXECUTABLE)
