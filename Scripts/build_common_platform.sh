#!/bin/sh

if test ! -d _release/Platforms; then
	mkdir _release/Platforms
fi

cp Common/Platforms/$1.json _release/Platforms/$1.json

if test ! -d _release/Platforms/_images; then
	mkdir _release/Platforms/_images
fi

cp Common/Platforms/_images/$1.bin _release/Platforms/_images/$1.bin
