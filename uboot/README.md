接toolchain
下载uboot=2020.10
patch 1.patch
复制elftosb，给与执行权限
./build.sh
sd烧写

其中，ddr2值是根据MX28_DDR2_register_programming_aid_v0.1得来的适用IS43DR16640B-3DB
