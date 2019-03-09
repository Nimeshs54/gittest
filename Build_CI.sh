wget https://releases.linaro.org/components/toolchain/binaries/latest-7/arm-linux-gnueabihf/gcc-linaro-7.4.1-2019.02-i686_arm-linux-gnueabihf.tar.xz
tar xf gcc-linaro-7.4.1-2019.02-i686_arm-linux-gnueabihf.tar.xz && mv gcc-linaro-7.4.1-2019.02-i686_arm-linux-gnueabihf aarch64-linux-gnu
export CROSS_COMPILE="/usr/bin/ccache ./aarch64-linux-gnu/bin/aarch64-linux-gnu-" ;
export ARCH=arm;
export SUBARCH=arm;
export KBUILD_BUILD_USER="K-hawk";
export KBUILD_BUILD_HOST="Peace_boys";
STRIP="aarch64-linux-gnu/bin/aarch64-linux-gnu-strip";
export CCOMPILE=$CROSS_COMPILE;
export CROSS_COMPILE="/usr/bin/ccache aarch64-linux-gnu-" ;
export PATH=$PATH:./aarch64-linux-gnu/bin/ ;
make haruhi_defconfig;
make -j$(nproc --all);
