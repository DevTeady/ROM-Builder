#!/bin/bash

# Manifest
export MANIFEST="https://github.com/Project-Awaken/android_manifest.git"
export MANIFEST_BRANCH="12"

# Device Info
export DEVICE="r5x" # Codename
export OEM="realme"
export PLATFORM="" # eg: sm6250, mt6765 etc.

# Trees
export DT_LINK="https://github.com/mishrabiswajit/device_realme_r5x.git"
export DCT_LINK="" # Device Common Tree, Leave Blank if None
export VT_LINK="https://github.com/mishrabiswajit/vendor_realme_r5x"
export VCT_LINK="" # Vendor Common Tree, Leave Blank if None
export KT_LINK="https://github.com/mishrabiswajit/kernel_realme_r5x" # Kernel Tree, Leave Blank if Prebuilt

# Trees Path
export DT_PATH="device/$OEM/$DEVICE"
export DCT_PATH="device/$OEM/${PLATFORM}-common"
export VT_PATH="vendor/$OEM/$DEVICE"
export VCT_PATH="vendor/$OEM/${PLATFORM}-common"
export KT_PATH="kernel/$OEM/$PLATFORM"

# Lunch Combos and Targets
export USE_BRUNCH_AS_TARGET=false # set it to "true" if you want to use brunch
export LUNCH_COMBO="awaken_r5x-userdebug" # eg: "aosp_miatoll-userdebug", No need if USE_BRUNCH_AS_TARGET is set to true
export TARGET="" # eg: "bacon", No need if USE_BRUNCH_AS_TARGET is set to true

# Output File (to upload)
export OUTPUT_FILE="" # eg: "PixelExperience*.zip"

# Extra Command
export EXTRA_CMD="git clone --single-branch --depth=1 https://github.com/LineageOS/android_external_ant-wireless_antradio-library.git external/ant-wireless/antradio-library/"

# Not Recommended to Change
export SYNC_PATH=$HOME/work
export USE_CCACHE=1
export CCACHE_EXEC=$(which ccache)
export CCACHE_DIR="${SYNC_PATH}/.ccache"
export CCACHE_SIZE=30G
export J_VAL=16 # for -jx, eg: "16"
