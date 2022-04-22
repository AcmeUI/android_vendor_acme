#
# Copyright (C) 2022 Acme
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit common Acme stuff
$(call inherit-product, vendor/acme/config/common.mk)

# Telephony packages
PRODUCT_PACKAGES += \
    messaging \
    Stk
