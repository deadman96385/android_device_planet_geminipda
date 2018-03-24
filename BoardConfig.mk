# mt6797 platform boardconfig
LOCAL_PATH := device/planet/geminipda

# Audio
USE_XML_AUDIO_POLICY_CONF := 1

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth
BOARD_HAVE_BLUETOOTH := true

# Boot animation
TARGET_BOOTANIMATION_MULTITHREAD_DECODE := true

# Charger
BACKLIGHT_PATH := /sys/class/leds/lcd-backlight/brightness

# CPU
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53
# Device haves a combination of cortex a72 + cortex a53
#2x Cortex-A72 @ 2.1GHz ~ 2.3GHz
#4x Cortex-A53 @ 1.85GHz
#4x Cortex-A53 @ 1.4GHz
TARGET_CPU_SMP := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53
TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true

# DEXPREOPT
#ifeq ($(TARGET_BUILD_VARIANT),user)
WITH_DEXPREOPT := true
DONT_DEXPREOPT_PREBUILTS := true
#endif

# Display
TARGET_SCREEN_HEIGHT := 2160
TARGET_SCREEN_WIDTH := 1080
USE_OPENGL_RENDERER := true
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
BOARD_EGL_CFG := $(LOCAL_PATH)/configs/egl.cfg

# Kernel
TARGET_USES_64_BIT_BINDER := true
TARGET_IS_64_BIT := true
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 androidboot.selinux=permissive
# TEMP
BOARD_KERNEL_CMDLINE += log_buf_len=4M
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --base 0x40078000 --pagesize 2048 --kernel_offset 0x00008000 --ramdisk_offset 0x04f88000 --tags_offset 0x03f88000 --board 1517312270
TARGET_KERNEL_SOURCE := kernel/planet/mt6797
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_CONFIG := lineage_gemini_defconfig
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
MTK_APPENDED_DTB_SUPPORT := yes
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb

# LightHAL
TARGET_PROVIDES_LIBLIGHT := true

# MTK Hardware
BOARD_HAS_MTK_HARDWARE := true

# RIL
BOARD_RIL_CLASS := ../../../$(LOCAL_PATH)/ril

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560
BOARD_USERDATAIMAGE_PARTITION_SIZE := 3221225472
BOARD_CACHEIMAGE_PARTITION_SIZE := 452984832
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 4096

# Platform
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOARD_PLATFORM := mt6797
TARGET_NO_BOOTLOADER := true
TARGET_NO_FACTORYIMAGE := true
TARGET_BOOTLOADER_BOARD_NAME := mt6797
TARGET_CPU_CORTEX_A53 := true

BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/recovery.fstab

# System Props
TARGET_SYSTEM_PROP := $(LOCAL_PATH)/system.prop

# SELinux
BOARD_SEPOLICY_DIRS += $(LOCAL_PATH)/sepolicy

# Seccomp filter
BOARD_SECCOMP_POLICY := $(LOCAL_PATH)/seccomp

# Linker
LINKER_FORCED_SHIM_LIBS := /system/vendor/lib64/libgui_ext.so|libmtkshim_gui.so:/system/vendor/bin/thermal|libmtkshim_ifc.so

# Wifi
BOARD_WLAN_DEVICE := MediaTek
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM := /dev/wmtWifi
WIFI_DRIVER_FW_PATH_AP := AP
WIFI_DRIVER_FW_PATH_STA := STA
WIFI_DRIVER_FW_PATH_P2P := P2P
WIFI_DRIVER_STATE_CTRL_PARAM := /dev/wmtWifi
WIFI_DRIVER_STATE_ON := 1
WIFI_DRIVER_STATE_OFF := 0
