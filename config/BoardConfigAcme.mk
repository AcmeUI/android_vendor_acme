# Kernel
include vendor/acme/config/BoardConfigKernel.mk

# Qcom-specific bits
ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/acme/config/BoardConfigQcom.mk
endif

# Soong
include vendor/acme/config/BoardConfigSoong.mk
