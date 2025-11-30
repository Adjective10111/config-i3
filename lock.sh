#!/bin/sh

if [ -z "$1" ]; then
	exit 1;
fi
LOCK_WALLPAPER="$1"
BLANK='00000000'
BLACK='000000ff'
CLEAR='ffffff22'
DEFAULT='555555ff'
TEXT='112222ff'
WRONG='cc2222ff'
VERIFYING='2222ccff'
RADIUS=120
TEXT_FONT="Karumbi"

xkb-switch -s us

i3lock --nofork \
-i $LOCK_WALLPAPER \
\
--radius $RADIUS \
--ring-width 8.5 \
--inside-color=$BLANK        \
--ring-color=$DEFAULT        \
--line-color=$BLANK          \
--separator-color=$DEFAULT   \
--keyhl-color=$VERIFYING         \
--bshl-color=$WRONG          \
--indicator                  \
\
--insidever-color=$CLEAR     \
--ringver-color=$VERIFYING   \
--verif-color=$TEXT          \
\
--insidewrong-color=$CLEAR   \
--ringwrong-color=$WRONG     \
--wrong-color=$TEXT          \
\
--clock                      \
--time-color=$TEXT           \
--date-color=$TEXT           \
--layout-color=$TEXT         \
--time-str="%H:%M"					\
--date-str="%A, %B-%d"       \
--time-pos="ix:iy-($RADIUS*.2)"	\
--date-pos="ix:iy+($RADIUS*.25)"			\
--layout-pos="ix:iy+($RADIUS*.8)"			\
\
--timeoutline-color="$BLACK"								\
--time-font="Manjari"								\
--time-size=50											\
--date-font="$TEXT_FONT"						\
--dateoutline-color="$BLACK"								\
--dateoutline-width=.4								\
--date-size=30										\
--verif-font="$TEXT_FONT"					\
--verif-size=40										\
--wrong-font="$TEXT_FONT"						\
--wrong-size=40											\
--layout-font="Uroob"							\
--layout-size=10										\
\
--screen 1                   \
--keylayout 1                \
\
--pass-media-keys \
--pass-screen-keys \
--pass-power-keys \
--pass-volume-keys 
