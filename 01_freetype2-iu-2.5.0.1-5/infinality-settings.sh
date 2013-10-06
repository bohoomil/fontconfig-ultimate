### infinality environment variables for extra run-time options ###
### custom settings by bohoomil, rev. 0.4.3, for freetype2 v. 2.5.x ###
### http://bohoomil.cu.cc ###

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
### 1 <> classical (infinality default in a new context; brighter & sharper)
### 2 <> well balanced
### 3 <> darker & smoother #1
### 4 <> darker & smoother #2

USE_STYLE="1"

if [ "$USE_STYLE" = "1" ]; then
  export INFINALITY_FT_FILTER_PARAMS="06 25 44 25 06"
elif [ "$USE_STYLE" = "2" ]; then
  export INFINALITY_FT_FILTER_PARAMS="11 22 38 22 11"
elif [ "$USE_STYLE" = "3" ]; then
  export INFINALITY_FT_FILTER_PARAMS="13 25 38 25 13"
elif [ "$USE_STYLE" = "4" ]; then
  export INFINALITY_FT_FILTER_PARAMS="14 24 38 24 14"
fi

export INFINALITY_FT_GRAYSCALE_FILTER_STRENGTH="0"
export INFINALITY_FT_FRINGE_FILTER_STRENGTH="50"
export INFINALITY_FT_AUTOHINT_HORIZONTAL_STEM_DARKEN_STRENGTH="0"
export INFINALITY_FT_AUTOHINT_VERTICAL_STEM_DARKEN_STRENGTH="0"
export INFINALITY_FT_CHROMEOS_STYLE_SHARPENING_STRENGTH="0"
export INFINALITY_FT_WINDOWS_STYLE_SHARPENING_STRENGTH="15"
export INFINALITY_FT_STEM_ALIGNMENT_STRENGTH="100"
export INFINALITY_FT_STEM_FITTING_STRENGTH="100"
export INFINALITY_FT_STEM_SNAPPING_SLIDING_SCALE="100"
export INFINALITY_FT_AUTOHINT_SNAP_STEM_HEIGHT="0"
export INFINALITY_FT_AUTOHINT_INCREASE_GLYPH_HEIGHTS="false"
export INFINALITY_FT_GAMMA_CORRECTION="15 110"
export INFINALITY_FT_BRIGHTNESS="0"
export INFINALITY_FT_CONTRAST="0"
export INFINALITY_FT_USE_VARIOUS_TWEAKS="true"
export INFINALITY_FT_USE_KNOWN_SETTINGS_ON_SELECTED_FONTS="true"
export INFINALITY_FT_GLOBAL_EMBOLDEN_X_VALUE="0"
export INFINALITY_FT_GLOBAL_EMBOLDEN_Y_VALUE="0"
export INFINALITY_FT_BOLD_EMBOLDEN_X_VALUE="0"
export INFINALITY_FT_BOLD_EMBOLDEN_Y_VALUE="0"
