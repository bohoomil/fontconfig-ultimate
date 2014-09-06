###          freetype2-infinality-ultimate settings          ###
###           rev. 0.4.8.0, for freetype2 v.2.5.x            ###
###                                                          ###
###                Copyright (c) 2014 bohoomil               ###
### The MIT License (MIT) http://opensource.org/licenses/MIT ###
###      part of infinality-bundle  http://bohoomil.com      ###


XFT_SETTINGS="
Xft.antialias:  1
Xft.autohint:   0
Xft.dpi:        96
Xft.hinting:    1
Xft.hintstyle:  hintfull
Xft.lcdfilter:  lcddefault
Xft.rgba:       rgb
"

echo "$XFT_SETTINGS" | xrdb -merge > /dev/null 2>&1

### Available styles:
### 1 <> ultimate (default)
### 2 <> sharpest
### 3 <> well balanced
### 4 <> darker & smoother
### 5 <> darkest

USE_STYLE="1"

if [ "$USE_STYLE" = "1" ]; then
  export INFINALITY_FT_FILTER_PARAMS="06 22 38 22 06"
elif [ "$USE_STYLE" = "2" ]; then
  export INFINALITY_FT_FILTER_PARAMS="05 25 40 25 05"
elif [ "$USE_STYLE" = "3" ]; then
  export INFINALITY_FT_FILTER_PARAMS="08 26 32 26 08"
elif [ "$USE_STYLE" = "4" ]; then
  export INFINALITY_FT_FILTER_PARAMS="10 25 30 25 10"
elif [ "$USE_STYLE" = "5" ]; then
  export INFINALITY_FT_FILTER_PARAMS="12 24 28 24 12"
fi

export INFINALITY_FT_FRINGE_FILTER_STRENGTH="50"
export INFINALITY_FT_USE_VARIOUS_TWEAKS="true"
export INFINALITY_FT_USE_KNOWN_SETTINGS_ON_SELECTED_FONTS="true"
