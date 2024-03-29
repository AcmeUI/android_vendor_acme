#
# Copyright (C) 2022 Acme
#
# SPDX-License-Identifier: Apache-2.0
#

# Version
ACME_BRANCH := taffy
ACME_BUILD_TYPE := DEBUG
ACME_DATE := $(shell date -u +%Y%m%d)
ACME_DEVICE := $(shell echo "$(TARGET_PRODUCT)" | cut -d '_' -f 2,3)

ifeq ($(IS_RELEASE), true)
    ACME_BUILD_TYPE := RELEASE
endif

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.acme.branch=$(shell echo "$(ACME_BRANCH)") \
    ro.acme.build.type=$(shell echo "$(ACME_BUILD_TYPE)")

ifeq ($(WITH_GMS), true)
ACME_GMS_TYPE := GMS
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.acme.gms.type=GMS
else ifeq ($(WITH_GMS_CORE), true)
ACME_GMS_TYPE := GMSCore
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.acme.gms.type=GMSCore
else
ACME_GMS_TYPE := VANILLA
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.acme.gms.type=VANILLA
endif

ACME_VERSION := AcmeUI-$(ACME_BRANCH)-$(ACME_DEVICE)-$(ACME_GMS_TYPE)-$(ACME_BUILD_TYPE)-$(ACME_DATE)
