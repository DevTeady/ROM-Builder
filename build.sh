#!/bin/bash

# Change to the Source Directory
cd $SYNC_PATH

# Set-up ccache
if [ -z "$CCACHE_SIZE" ]; then
    ccache -M 50G
else
    ccache -M ${CCACHE_SIZE}
fi

# Run the Extra Command
$EXTRA_CMD

# Prepare the Build Environment
source build/envsetup.sh

# lunch the target
lunch ${LUNCH_COMBO} || { echo "ERROR: Failed to lunch the target!" && exit 1; }

# Build the Code
make bacon -j$(nproc --all)

# Exit
exit 0
