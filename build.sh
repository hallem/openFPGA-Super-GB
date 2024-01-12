#!/bin/sh

# add parameter checking for $1
# valid values: single, three, individual, <platform_id>
# add parameter checking for $2
# valid value: ROM, ""

DEFAULT="NONE"
MODE="${1:-${DEFAULT}}"
USE_ROM="${2:-${DEFAULT}}"

if test -d _release; then
	echo "Removing existing _release folder"
	rm -R _release
fi

if test -f "release-$MODE-Platform.zip"; then
	echo "Removing existing release-$MODE-Platform.zip"
	rm "release-$MODE-Platform.zip"
fi

mkdir _release

__='
build_common_* arg list:
	$1 sgb       Spiritualized.SuperGB
	$2 sgb8x7    Spiritualized.SuperGB.8x7
	$3 sgb2      Spiritualized.SuperGB2
	$4 sgb28x7   Spiritualized.SuperGB2.8x7
	$5 sgb2vw    Spiritualized.SuperGB2.VW
	$6 sgb2vw8x7 Spiritualized.SuperGB2.VW.8x7
'

echo "Building $MODE Platform Configuration..."

if test $MODE == "Single" || test $MODE == "Three" || test $MODE == "Individual"; then
	cp -R "$MODE Platform/Assets" _release/Assets
	cp -R "$MODE Platform/Cores" _release/Cores
else
	mkdir _release/Assets
	cp -R "Individual Platform/Assets/$MODE" "_release/Assets/$MODE"

	mkdir _release/Cores

	case $MODE in

		"sgb")
			cp -R "Individual Platform/Cores/Spiritualized.SuperGB" "_release/Cores/Spiritualized.SuperGB"
		;;

		"sgb8x7")
			cp -R "Individual Platform/Cores/Spiritualized.SuperGB.8x7" "_release/Cores/Spiritualized.SuperGB.8x7"
		;;

		"sgb2")
			cp -R "Individual Platform/Cores/Spiritualized.SuperGB2" "_release/Cores/Spiritualized.SuperGB2"
		;;

		"sgb28x7")
			cp -R "Individual Platform/Cores/Spiritualized.SuperGB2.8x7" "_release/Cores/Spiritualized.SuperGB2.8x7"
		;;

		"sgb2")
			cp -R "Individual Platform/Cores/Spiritualized.SuperGB2.VW" "_release/Cores/Spiritualized.SuperGB2.VW"
		;;

		"sgb28x7")
			cp -R "Individual Platform/Cores/Spiritualized.SuperGB2.VW.8x7" "_release/Cores/Spiritualized.SuperGB2.VW.8x7"
		;;
	esac
fi

if test $MODE == "Single"; then
	./Scripts/build_common_run_cartridge.sh "sgb" "" "" "" "" ""
	if test $USE_ROM == "ROM"; then
		./Scripts/build_common_sgb_boot.sh  "sgb" "sgb" "sgb" "sgb" "sgb" "sgb"
		./Scripts/build_common_sgb_rom.sh   "sgb" "sgb" "sgb" "sgb" "sgb" "sgb"
	fi
	./Scripts/build_common_cores.sh         "sgb" "sgb" "sgb" "sgb" "sgb" "sgb"

	./Scripts/build_common_platform.sh "sgb"
elif test $MODE == "Three"; then
	./Scripts/build_common_run_cartridge.sh "sgb" "sgb" "sgb2" "sgb2" "sgb2vw" "sgb2vw"
	if test $USE_ROM == "ROM"; then
		./Scripts/build_common_sgb_boot.sh  "sgb" "sgb" "sgb2" "sgb2" "sgb2vw" "sgb2vw"
		./Scripts/build_common_sgb_rom.sh   "sgb" "sgb" "sgb2" "sgb2" "sgb2vw" "sgb2vw"
	fi
	./Scripts/build_common_cores.sh         "sgb" "sgb" "sgb2" "sgb2" "sgb2vw" "sgb2vw"

	./Scripts/build_common_platform.sh "sgb"
	./Scripts/build_common_platform.sh "sgb2"
	./Scripts/build_common_platform.sh "sgb2vw"
elif test $MODE == "Individual"; then
	./Scripts/build_common_run_cartridge.sh "sgb" "sgb8x7" "sgb2" "sgb28x7" "sgb2vw" "sgb2vw8x7"
	if test $USE_ROM == "ROM"; then
		./Scripts/build_common_sgb_boot.sh  "sgb" "sgb8x7" "sgb2" "sgb28x7" "sgb2vw" "sgb2vw8x7"
		./Scripts/build_common_sgb_rom.sh   "sgb" "sgb8x7" "sgb2" "sgb28x7" "sgb2vw" "sgb2vw8x7"
	fi
	./Scripts/build_common_cores.sh         "sgb" "sgb8x7" "sgb2" "sgb28x7" "sgb2vw" "sgb2vw8x7"

	cp -R Common/Platforms _release/Platforms
elif test $MODE == "sgb"; then
	./Scripts/build_common_run_cartridge.sh "sgb" "" "" "" "" ""
	if test $USE_ROM == "ROM"; then
		./Scripts/build_common_sgb_boot.sh  "sgb" "" "" "" "" ""
		./Scripts/build_common_sgb_rom.sh   "sgb" "" "" "" "" ""
	fi
	./Scripts/build_common_cores.sh         "sgb" "" "" "" "" ""

	./Scripts/build_common_platform.sh $MODE
elif test $MODE == "sgb8x7"; then
	./Scripts/build_common_run_cartridge.sh "" "sgb8x7" "" "" "" ""
	if test $USE_ROM == "ROM"; then
		./Scripts/build_common_sgb_boot.sh  "" "sgb8x7" "" "" "" ""
		./Scripts/build_common_sgb_rom.sh   "" "sgb8x7" "" "" "" ""
	fi
	./Scripts/build_common_cores.sh         "" "sgb8x7" "" "" "" ""

	./Scripts/build_common_platform.sh $MODE
elif test $MODE == "sgb2"; then
	./Scripts/build_common_run_cartridge.sh "" "" "sgb2" "" "" ""
	if test $USE_ROM == "ROM"; then
		./Scripts/build_common_sgb_boot.sh  "" "" "sgb2" "" "" ""
		./Scripts/build_common_sgb_rom.sh   "" "" "sgb2" "" "" ""
	fi
	./Scripts/build_common_cores.sh         "" "" "sgb2" "" "" ""

	./Scripts/build_common_platform.sh $MODE
elif test $MODE == "sgb28x7"; then
	./Scripts/build_common_run_cartridge.sh "" "" "" "sgb28x7" "" ""
	if test $USE_ROM == "ROM"; then
		./Scripts/build_common_sgb_boot.sh  "" "" "" "sgb28x7" "" ""
		./Scripts/build_common_sgb_rom.sh   "" "" "" "sgb28x7" "" ""
	fi
	./Scripts/build_common_cores.sh         "" "" "" "sgb28x7" "" ""

	./Scripts/build_common_platform.sh $MODE
elif test $MODE == "sgb2vw"; then
	./Scripts/build_common_run_cartridge.sh "" "" "" "" "sgb2vw" ""
	if test $USE_ROM == "ROM"; then
		./Scripts/build_common_sgb_boot.sh  "" "" "" "" "sgb2vw" ""
		./Scripts/build_common_sgb_rom.sh   "" "" "" "" "sgb2vw" ""
	fi
	./Scripts/build_common_cores.sh         "" "" "" "" "sgb2vw" ""

	./Scripts/build_common_platform.sh $MODE
elif test $MODE == "sgb2vw8x7"; then
	./Scripts/build_common_run_cartridge.sh "" "" "" "" "" "sgb2vw8x7"
	if test $USE_ROM == "ROM"; then
		./Scripts/build_common_sgb_boot.sh  "" "" "" "" "" "sgb2vw8x7"
		./Scripts/build_common_sgb_rom.sh   "" "" "" "" "" "sgb2vw8x7"
	fi
	./Scripts/build_common_cores.sh         "" "" "" "" "" "sgb2vw8x7"

	./Scripts/build_common_platform.sh $MODE
fi

find _release -name .gitkeep -delete
find _release -name .DS_Store -delete

zip -qr "release-$MODE-Platform.zip" _release/ -x *.DS_Store *.gitkeep
