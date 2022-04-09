#
# Copyright (C) 2022 Acme
#
# SPDX-License-Identifier: Apache-2.0
#

ifeq ($(TARGET_BOOTANIMATION),)
    TARGET_BOOTANIMATION := vendor/acme/bootanimation/bootanimation.zip
endif

include $(CLEAR_VARS)
LOCAL_MODULE := bootanimation.zip
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/media

include $(BUILD_SYSTEM)/base_rules.mk

$(LOCAL_BUILT_MODULE): $(TARGET_BOOTANIMATION)
    @cp $(TARGET_BOOTANIMATION) $@
