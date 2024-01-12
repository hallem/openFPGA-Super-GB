#!/bin/sh

DEFAULT="NONE"
USE_ROM="${1:-${DEFAULT}}"

./build.sh Single $USE_ROM
./build.sh Three $USE_ROM
./build.sh Individual $USE_ROM
./build.sh sgb $USE_ROM
./build.sh sgb8x7 $USE_ROM
./build.sh sgb2 $USE_ROM
./build.sh sgb28x7 $USE_ROM
./build.sh sgb2vw $USE_ROM
./build.sh sgb2vw8x7 $USE_ROM
rm -R _release
