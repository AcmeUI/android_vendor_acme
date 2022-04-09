#
# Copyright (C) 2022 Acme
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit vendor submodules
$(call inherit-product, vendor/acme/bootanimation/bootanimation.mk)

# Acme version
-include vendor/acme/build/tools/version.mk
