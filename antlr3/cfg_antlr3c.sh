
source ../scripts/cfg_ios.sh

set_ios

cd runtime/C
OPTIONS=""
cfg_ios
make clean
make
