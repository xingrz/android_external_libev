LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libev

LOCAL_CFLAGS := \
    -Wall \
    -Wextra \
    -Wno-unused-parameter \
    -Wno-sign-compare \
    -Wno-comment \
    -Wno-extern-initializer \
    -Wno-bitwise-op-parentheses \
    -Wno-unused-function \
    -D_BSD_SOURCE \

LOCAL_SRC_FILES := \
    ev.c \
    event.c \

LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)

include $(BUILD_SHARED_LIBRARY)
