mkdir ~/aarch32-toolchain
cd ~/aarch32-toolchain
wget https://releases.linaro.org/components/toolchain/binaries/latest-7/arm-linux-gnueabihf/gcc-linaro-7.4.1-2019.02-i686_arm-linux-gnueabihf.tar.xz
tar xf gcc-linaro-7.4.1-2019.02-i686_arm-linux-gnueabihf.tar.xz
export PATH=$PATH:$PWD/gcc-linaro-7.4.1-2019.02-i686_arm-linux-gnueabihf/bin
export CROSS_COMPILE="/usr/bin/ccache ./gcc-linaro-7.4.1-2019.02-i686_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-" ;
export ARCH=arm;
export SUBARCH=armhf;
export KBUILD_BUILD_USER="K-hawk";
export KBUILD_BUILD_HOST="Peace_boys";
STRIP="gcc-linaro-7.4.1-2019.02-i686_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-strip";
export CCOMPILE=$CROSS_COMPILE;
export CROSS_COMPILE="/usr/bin/ccache arm-linux-gnueabihf-" ;
export PATH=$PATH:./gcc-linaro-7.4.1-2019.02-i686_arm-linux-gnueabihf/bin/ ;
make $alldefconfig;
make -j$(nproc --all);
# Don't edit #travisCI
