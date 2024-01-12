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
	cp Common/Assets/Spiritualized.SuperGB/sgb_snes.smc _release/Assets/$1/Spiritualized.SuperGB/sgb_snes.smc
fi

if test "$2" != ""; then
	cp Common/Assets/Spiritualized.SuperGB/sgb_snes.smc _release/Assets/$2/Spiritualized.SuperGB.8x7/sgb_snes.smc
fi

if test "$3" != ""; then
	cp Common/Assets/Spiritualized.SuperGB2/sgb2_snes.smc _release/Assets/$3/Spiritualized.SuperGB2/sgb2_snes.smc
fi

if test "$4" != ""; then
	cp Common/Assets/Spiritualized.SuperGB2/sgb2_snes.smc _release/Assets/$4/Spiritualized.SuperGB2.8x7/sgb2_snes.smc
fi

if test "$5" != ""; then
	cp Common/Assets/Spiritualized.SuperGB2.VW/sgb2vw171_snes.smc _release/Assets/$5/Spiritualized.SuperGB2.VW/sgb2vw171_snes.smc
fi

if test "$6" != ""; then
	cp Common/Assets/Spiritualized.SuperGB2.VW/sgb2vw171_snes.smc _release/Assets/$6/Spiritualized.SuperGB2.VW.8x7/sgb2vw171_snes.smc
fi
