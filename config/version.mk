#
# Copyright (C) 2022 Acme
#
# SPDX-License-Identifier: Apache-2.0
#

# Version
ACME_BRANCH := spring
ACME_BUILD_TYPE := DEBUG
ACME_DATE := $(shell date -u +%Y%m%d)
ACME_DEVICE := $(shell echo "$(TARGET_PRODUCT)" | cut -d '_' -f 2,3)

ifeq ($(IS_RELEASE), true)
    ACME_BUILD_TYPE := RELEASE
endif

ACME_VERSION := AcmeUI-$(ACME_BRANCH)-$(ACME_DEVICE)-$(ACME_BUILD_TYPE)-$(ACME_DATE)

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.acme.branch=$(shell echo "$(ACME_BRANCH)") \
    ro.acme.build.type=$(shell echo "$(ACME_BUILD_TYPE)")
