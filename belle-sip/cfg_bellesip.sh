
source ../scripts/cfg_ios.sh

set_ios

CFLAGS+=" -I`pwd`/../antlr3/runtime/C/include -I`pwd`/../antlr3/runtime/C"
LDFLAGS+=" -L`pwd`/../antlr3/runtime/C/.libs"
OPTIONS+="--disable-tests"
cfg_ios

