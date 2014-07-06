#!/bin/bash

set_ios ()
{
    [ "$ARCH" = "" ] && ARCH=armv7

    CC=clang
    CXX=clang++
    if [[ "$ARCH" =~ "86" ]]; then
        SDKTYPE=iPhoneSimulator
    else
        SDKTYPE=iPhoneOS
    fi  
    SDKTYPE_=`echo $SDKTYPE | tr A-Z a-z`
    SDK=`xcrun --sdk $SDKTYPE_ --show-sdk-version`

    SDK_MIN=5.1
    XCODE=`xcode-select -p`
    SDKROOT=$XCODE/Platforms/$SDKTYPE.platform/Developer/SDKs/"$SDKTYPE""$SDK".sdk
    CFLAGS="-arch $ARCH -isysroot $SDKROOT -miphoneos-version-min=$SDK_MIN -DAPPLE_IOS"
    LDFLAGS="-arch $ARCH -isysroot $SDKROOT -miphoneos-version-min=$SDK_MIN"
    return 0
}


cfg_ios ()
{
    export CC="$CC"
    export CXX="$CXX"
    export CFLAGS="$CFLAGS"
    export LDFLAGS="$LDFLAGS"
    ./configure --host=arm --disable-shared "$OPTIONS"
}

