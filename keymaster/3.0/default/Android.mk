LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.keymaster@3.0-impl
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_SRC_FILES := \
    KeymasterDevice.cpp \

LOCAL_SHARED_LIBRARIES := \
    liblog \
    libsoftkeymasterdevice \
    libcrypto \
    libkeymaster1 \
    libhidlbase \
    libhidltransport \
    libhwbinder \
    libutils \
    libhardware \
    android.hardware.keymaster@3.0

include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_MODULE := android.hardware.keymaster@3.0-service
LOCAL_INIT_RC := android.hardware.keymaster@3.0-service.rc
LOCAL_SRC_FILES := \
    service.cpp

LOCAL_SHARED_LIBRARIES := \
    liblog \
    libcutils \
    libdl \
    libbase \
    libutils \
    libhardware_legacy \
    libhardware \
    libhwbinder \
    libhidlbase \
    libhidltransport \
    android.hardware.keymaster@3.0

include $(BUILD_EXECUTABLE)
