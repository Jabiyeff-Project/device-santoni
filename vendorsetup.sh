
color='\033[0;32m'
color2='\033[0;31m'
nc='\033[0m'

if [ ! -f .repo/local_manifests/santoni.xml ]; then
    echo "${color}Cloning local_manifests${nc}"
    git clone -b 11.0 https://github.com/Jabiyeff-Project/local_manifests.git .repo/local_manifests/
    echo "${color}Syncing full sources (It will be take some time)${nc}"
    repo sync --force-sync -j$(nproc --all) -q
else
    echo "${color}Pulling local_manifests${nc}"
    cd .repo/local_manifests
    git pull
    cd ../..
    repo sync --force-sync -q android_hardware_qcom_audio android_hardware_qcom_display android_hardware_qcom_media
fi

if [ ! -f kernel/xiaomi/msm8937/Makefile ]; then
    echo "${color}Using default kernel${nc}"
    export TARGET_KERNEL_SOURCE=kernel/xiaomi/santoni
    export TARGET_KERNEL_CONFIG=santoni_treble_defconfig
else
    echo "${color}Using custom kernel${nc}"
    export TARGET_KERNEL_SOURCE=kernel/xiaomi/msm8937
    if [ -f kernel/xiaomi/msm8937/arch/arm64/configs/santoni_treble_defconfig ]; then
        export TARGET_KERNEL_CONFIG=santoni_treble_defconfig
    else
        export TARGET_KERNEL_CONFIG=santoni_defconfig
    fi
fi
