# Device Tree for Xiaomi Redmi 4X (santoni)

### 1. Initialize Repo and sync ROM
```bash
$ mkdir "romname or anything"
$ cd "romname or anything"
$ repo init -u "take manifest link from ROM readme" "take ROM branch from ROM readme"
repo sync --force-sync -j$(nproc --all)
```
### 2. Clone device tree:
```bash
git clone -b 11.0 https://github.com/Jabiyeff-Project/device-santoni device/xiaomi/santoni
```
### 3. Run envsetup (First time it will be take much time, please wait!)
```bash
. build/envsetup.sh
```
### 4. Start building ROMs
```bash
$ lunch "romname"_santoni-userdebug
m bacon
```
### 4.1. Fix Mobile Network problem on some ROMs
Before build ROM (Use this command on ROM source folder):
```bash
sed -i '/qti-telephony-common.jar/d' vendor/xiaomi/santoni/santoni-vendor.mk
```
After build ROM:
remove /system/system_ext/framework/qti-telephony-common.jar

### 4.2. How to use custom kernel source (Not recommended)
Clone kernel source on kernel/xiaomi/msm8937 path, ROM will be use it.

### 4.3. How to add new ROM support
Hard to explain, just contact me on [Telegram](https://t.me/jabiyeff21), I will add ROM support which your need (except CAF based ROMs)

## Spec Sheet

| Feature                 | Specification                     |
| :---------------------- | :-------------------------------- |
| CPU                     | Octa-core 1.4 GHz Cortex-A53      |
| Chipset                 | Qualcomm MSM8940 Snapdragon 435   |
| GPU                     | Adreno 505                        |
| Memory                  | 2/3 GB                            |
| Shipped Android Version | 6.0.1                             |
| Storage                 | 16/32 GB                          |
| MicroSD                 | Up to 256 GB                      |
| Battery                 | 4100 mAh (non-removable)          |
| Dimensions              | 139 x 69 x 8.65 mm                |
| Display                 | 720 x 1280 pixels, 5" (~294 PPI)   |
| Rear Camera             | 13 MP, LED flash                  |
| Front Camera            | 5 MP                              |
| Release Date            | May 2017                          |

## Device Picture

![Redmi 4X](https://cdn.tgdd.vn/Products/Images/42/99145/xiaomi-redmi-4x-400-400x460.png "Redmi 4X")
