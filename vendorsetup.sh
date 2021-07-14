if [ ! -f .repo/local_manifests/santoni.xml ]; then
    echo "Cloning local_manifests"
    git clone -b 11.0 https://github.com/Jabiyeff-Project/local_manifests.git .repo/local_manifests/
    echo "Syncing full sources (It will be take some time)"
    repo sync --force-sync -j$(nproc --all) -q
else
    echo "Pulling local_manifests"
    cd .repo/local_manifests
    git pull
    cd ../..
    repo sync --force-sync -q android_hardware_qcom_audio android_hardware_qcom_display android_hardware_qcom_media
fi

if [ ! -f kernel/xiaomi/msm8937/Makefile ]; then
    echo "Using default kernel"
    export TARGET_KERNEL_SOURCE=kernel/xiaomi/santoni
    export TARGET_KERNEL_CONFIG=santoni_treble_defconfig
else
    echo "Using custom kernel"
    export TARGET_KERNEL_SOURCE=kernel/xiaomi/msm8937
    if [ -f kernel/xiaomi/msm8937/arch/arm64/configs/santoni_treble_defconfig ]; then
        export TARGET_KERNEL_CONFIG=santoni_treble_defconfig
    else
        export TARGET_KERNEL_CONFIG=santoni_defconfig
    fi
fi
