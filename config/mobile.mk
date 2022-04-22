#
# Copyright (C) 2022 Acme
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit common Acme stuff
$(call inherit-product, vendor/acme/config/common.mk)

# World APN list
PRODUCT_COPY_FILES += \
    vendor/acme/prebuilt/etc/apns-conf.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/apns-conf.xml

# Telephony packages
PRODUCT_PACKAGES += \
    messaging \
    Stk
