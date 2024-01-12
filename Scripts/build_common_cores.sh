#!/bin/sh

__='
$1 sgb       Spiritualized.SuperGB
$2 sgb8x7    Spiritualized.SuperGB.8x7
$3 sgb2      Spiritualized.SuperGB2
$4 sgb28x7   Spiritualized.SuperGB2.8x7
$5 sgb2vw    Spiritualized.SuperGB2.VW
$6 sgb2vw8x7 Spiritualized.SuperGB2.VW.8x7
'

if test "$1" != ""; then
	cp -R Common/Cores/common/ _release/Cores/Spiritualized.SuperGB/
fi

if test "$2" != ""; then
	cp -R Common/Cores/common/ _release/Cores/Spiritualized.SuperGB.8x7/
fi

if test "$3" != ""; then
	cp -R Common/Cores/common/ _release/Cores/Spiritualized.SuperGB2/
fi

if test "$4" != ""; then
	cp -R Common/Cores/common/ _release/Cores/Spiritualized.SuperGB2.8x7/
fi

if test "$5" != ""; then
	cp -R Common/Cores/common/ _release/Cores/Spiritualized.SuperGB2.VW/
fi

if test "$6" != ""; then
	cp -R Common/Cores/common/ _release/Cores/Spiritualized.SuperGB2.VW.8x7/
fi


if test "$1" != ""; then
	cp -R Common/Cores/Spiritualized.SuperGB/ _release/Cores/Spiritualized.SuperGB/
fi

if test "$2" != ""; then
	cp -R Common/Cores/Spiritualized.SuperGB.8x7/ _release/Cores/Spiritualized.SuperGB.8x7/
fi

if test "$3" != ""; then
	cp -R Common/Cores/Spiritualized.SuperGB2/ _release/Cores/Spiritualized.SuperGB2/
fi

if test "$4" != ""; then
	cp -R Common/Cores/Spiritualized.SuperGB2.8x7/ _release/Cores/Spiritualized.SuperGB2.8x7/
fi

if test "$5" != ""; then
	cp -R Common/Cores/Spiritualized.SuperGB2.VW/ _release/Cores/Spiritualized.SuperGB2.VW/
fi

if test "$6" != ""; then
	cp -R Common/Cores/Spiritualized.SuperGB2.VW.8x7/ _release/Cores/Spiritualized.SuperGB2.VW.8x7/
fi
