# Android device tree for Lenovo Lenovo TB-7304F (TB-7304F)

TWRP for Lenovo TB_7304F, currently does not work...

For the very helpful links on how to unlock bootloader & rooting, check out [baejeogwan's readme](https://github.com/baejeongwan/twrp_device_lenovo_tb7304f)


Currently I am stuck so will just be asking around xda or giithub if anyone else can help me fix it... It does boot forever sometimes and that kinda feels right as it doesnt bootloop and is only stuck on lenovo bootimage but i coould be wrong (kernel doesn't panic -> no bootloop right?)


### Noted while building (for compiling)

> Deleting multi_init causes it to reboot to stock rom

> Easier way to reboot after flashing recovery.img and the device bootlooping: Hold vol- and power till the device reboots faster than usual, and then immediately only hold the vol+ button. Now you can flash your stock recovery or boot normally


### Related info 

https://www.phoronix.com/forums/forum/linux-graphics-x-org-drivers/x-org-drm/1222747-mediatek-drm-driver-adding-mt8167-support-in-linux-5-11

Don't have the kernel source so can't disable verity (disabled it from magisk)

Some mt8167 twrp sources:
- https://teclast-m89.neocities.org/ (has the device tree in the compressed folder along with the recovery)
- https://github.com/LINGJP/android_device_bbkedu_twrp
- https://github.com/Awayume/android_device_a04br3_mt8167_twrp.old (The repo this is forked from is more accurate)

A lenovo tablet with mt8167's open source code
- https://pcsupport.lenovo.com/us/en/products/tablets/e-series/tab-e7/downloads/ds504948

Others
- https://xdaforums.com/t/recovery-mt6735-twrp-3-0-2-for-lenovo-tab3-7-tb3-730x.3468589/
- https://github.com/feravolt/FDE.AI-docs
- https://github.com/NeonzDump/twrp_xiaomi_ice/compare/12.1...smiley9000:twrp_lenovo_m7:12.1
- https://xdaforums.com/t/mediatek-mt8173-mt8176-development.3791009/ (Main mt8176 and mt8173 development thread)
- You can get the stock firmware from RSA/Software Fix application

Check the other branches too for other stuff
