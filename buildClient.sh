#!/bin/bash

##### Make for MinGW Cross Compile only.
cd OneLife/gameSource
PATH="/usr/i686-w64-mingw32/bin:${PATH}"
make
cd ../..

##### Create Game Folder
mkdir -p build
cd build

# the actual game executable
echo "moving executable"
mv -f ../OneLife/gameSource/OneLife.exe .

# data
echo "copying animations"
cp -r ../OneLifeData7/animations animations
echo "copying categories"
cp -r ../OneLifeData7/categories categories
echo "copying ground"
cp -r ../OneLifeData7/ground ground
echo "copying music"
cp -r ../OneLifeData7/music music
echo "copying objects"
cp -r ../OneLifeData7/objects objects
echo "copying sounds"
cp -r ../OneLifeData7/sounds sounds
echo "copying sprites"
cp -r ../OneLifeData7/sprites sprites
echo "copying transitions"
cp -r ../OneLifeData7/transitions transitions

# other data (?!)
echo "copying graphics"
cp -r ../OneLife/gameSource/graphics graphics
echo "copying other sounds"
cp -r ../OneLife/gameSource/otherSounds otherSounds
echo "copying languages"
cp -r ../OneLife/gameSource/languages languages

# some more shit
echo "copying some other stuff"
cp -rn ../OneLife/gameSource/settings .
cp ../OneLife/gameSource/reverbImpulseResponse.aiff .
cp ../OneLife/server/wordList.txt .
cp ../OneLifeData7/dataVersionNumber.txt .
cp ../OneLife/build/win32/SDL.dll .
