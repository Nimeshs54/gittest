wget https://releases.linaro.org/components/toolchain/binaries/latest-7/arm-linux-gnueabihf/gcc-linaro-7.4.1-2019.02-i686_arm-linux-gnueabihf.tar.xz
tar xf gcc-linaro-7.4.1-2019.02-i686_arm-linux-gnueabihf.tar.xz && mv gcc-linaro-7.4.1-2019.02-i686_arm-linux-gnueabihf arm-linux-gnueabihf
ls -l
export CROSS_COMPILE="/usr/bin/ccache /home/travis/build/manu490/GT-I9082_Stock_Kernel/arm-linux-gnueabihf/bin/arm-linux-gnueabihf-" ;
export ARCH=arm;
export SUBARCH=arm;
export KBUILD_BUILD_USER="K-hawk";
export KBUILD_BUILD_HOST="Peace_boys";
STRIP="arm-linux-gnueabihf/bin/arm-linux-gnueabihf-strip";
export CCOMPILE=$CROSS_COMPILE;
export CROSS_COMPILE="/usr/bin/ccache arm-linux-gnueabihf-" ;
pwd
export PATH=$PATH:/home/travis/build/manu490/GT-I9082_Stock_Kernel/arm-linux-gnueabihf/bin ;
make alldefconfig;
make -j$(nproc --all);
