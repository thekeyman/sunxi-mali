# Mali support for Allwinner / sunXi platform for mainline Linux

Here is the driver needed in order to support ARM's Mali GPU found on the Allwinner
SoC.

This fork is mainly out of interest for the Allwinner H5 based Orange Pi PC2. For other
boards, refer to [the uptream project](https://github.com/mripard/sunxi-mali).

These instruction assume you have already built [this kernel](https://github.com/thekeyman/linux).

## Compiling

Type the following (adjusting paths to match your setup):

```
export CROSS_COMPILE="aarch64-linux-gnu-"
export PATH=/home/thekeyman/toolchains/gcc-linaro-7.3.1-2018.05-x86_64_aarch64-linux-gnu/bin:$PATH
export KDIR=/home/thekeyman/linux
./build.sh -r r5p0 -b
```

## Installing Module on Target

Mount your Orange Pi's SD card and type:

```
export INSTALL_MOD_PATH=/media/thekeyman/targets_sd_card
./build.sh -r r5p0 -i
echo 'KERNEL=="mali", MODE="0660", GROUP="video"' > /media/thekeyman/targets_sd_card/etc/udev/rules.d/50-mali.rules
```

This last line assumes your regular user on the Orange Pi is a member of the 'video' group.

