MTK_PLATFORM := mt6735
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --base 0x40078000 --pagesize 2048 --kernel_offset 0x00008000 --ramdisk_offset 0x03f88000 --second_offset 0x00e88000 --tags_offset 0x0df88000 --board 1450352440
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/G42-kernel/kernel

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/G42-kernel/kernel:kernel
