# TWRP device tree for Lenovo TB-7304F

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

Check the other branches too for other stuff (like the 'archive' branch)



## For TB-7304I variant 

Some context: I also had the 7304I variant and i had tried to unlock the device by using adb reboot bootloader -> fastboot flashing unlock, which didnt work (i think i read that u have to use fastboot OEM unlock if u didnt use software fix (RSA)...). Then i bricked it somehow and used software fix application to fix it (NEVER DO THIS) which caused it to not be unlockable anymore. tried using mtkclient with normal da, didnt work even in liveusb state (would show unlocked=yes in fastboot getvars but even secure=yes which would cause it to be in red state.).Using SP Flash, tried flashing the stock software from online (180xxx not 220xxx), had showed some errors related to DA. Tried [hovatek's DA](https://www.hovatek.com/forum/thread-23383.html) for 7304I which works for flashing RSA firmware of lenovo but could not work with online one. Wasnt thinking straight and did the one thing that was said many times to not be done -> format all + download -> showed an error right after formatting saying something wasnt writable and now the tablet is well... bricked. It still connects to mtkclient via some other preloader but does nothing else and mtkclient doesnt load after that.

So long story short: Flash software from other fw sites like this [one for 7304F as an example](https://firmwareos.com/lenovo-tab-7-essential-tb-7304f) and do not use RSA's firmware for 7304I (do not know abt other devices.)

U could also root it temporarily using [mtk-easy-su](https://github.com/JunioJsv/mtk-easy-su)
Maybe [this](https://github.com/bkerler/mtkclient/issues/785) fastboot command
