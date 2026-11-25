#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

TARGET_LINUX_KERNEL_VERSION := 4.14

TARGET_SOC_BASE := exynos9610

# Gralloc
BOARD_USES_EXYNOS_GRALLOC_VERSION := 4
BOARD_GPU_SUPPORT_AFBC_BASIC := true
BOARD_GRALLOC_DPU_NO_AFBC := true
BOARD_GRALLOC4_LEGACY_V3_HANDLE := true
BOARD_USES_ALIGN_RESTRICTION := true
BOARD_USES_GRALLOC_ION_SYNC := true

# Codec2
BOARD_USE_CSC_FILTER := true
BOARD_DEC_USE_VIDEO_DECODER_USAGE := true
BOARD_UNSUPPORT_10BIT := true

# HWComposer
ifneq ($(BOARD_VENDOR), samsung)
HWC_SUPPORT_COLOR_TRANSFORM := true
TARGET_USES_DISPLAY_RENDER_INTENTS := true
endif

# SCALER
BOARD_USES_SCALER_M2M1SHOT := true

# Acryl
BOARD_LIBACRYL_DEFAULT_COMPOSITOR := fimg2d_9610
BOARD_LIBACRYL_DEFAULT_SCALER := mscl_9810
BOARD_LIBACRYL_DEFAULT_BLTER := fimg2d_9810_blter

ifneq ($(BOARD_VENDOR), samsung)

$(call soong_config_set,libacryl,g2d9810_hdr_plugin,libacryl_plugin_slsi_hdr10)

$(call soong_config_set,libhwjpeg,HWJPEG_ANDROID_VERSION,10)

endif

include hardware/samsung_slsi-linaro/config/BoardConfigCommon.mk
