#!/bin/sh

if [ -z "$1" ]; then
	exit 1;
fi
LOCK_WALLPAPER="$1"

# COLOR
BLANK='00000000'
BLACK='000000ff'
CLEAR='ffffff22'
DEFAULT='555555ff'
TEXT='112222ff'
VERIFYING='2222ccff'
WRONG='cc2222ff'
# SIZE
RADIUS=120
RING_WIDTH=7
STATE_SIZE=25
TIME_SIZE=45
DATE_SIZE=20
DATE_OW=.4
LAYOUT_SIZE=14
# FONT
STATE_FONT="Lobster Two"
TIME_FONT="Lobster Two"
DATE_FONT="$TIME_FONT"
LAYOUT_FONT="Lobster Two"
# POSITIONS
TIME_POS="ix:iy-($RADIUS*.2)"
DATE_POS="ix:iy+($RADIUS*.25)"
LAYOUT_POS="ix:iy+($RADIUS*.8)"
# FORMATS
TIME_FMT="%H:%M"
DATE_FMT="%A, %B-%d"

# Make sure layout is EN_US
xkb-switch -s us

i3lock								\
--nofork							\
--indicator           \
--clock								\
--pass-media-keys			\
--pass-screen-keys		\
--pass-power-keys			\
--pass-volume-keys		\
\
--screen 1            \
--keylayout 1         \
\
-i $LOCK_WALLPAPER			\
--radius $RADIUS						 \
--ring-width $RING_WIDTH		 \
--line-color=$BLANK          \
--ring-color=$DEFAULT        \
--inside-color=$BLANK        \
--separator-color=$DEFAULT   \
--bshl-color=$WRONG          \
--keyhl-color=$VERIFYING     \
\
--ringver-color=$VERIFYING   \
--insidever-color=$CLEAR     \
--verif-color=$TEXT          \
--verif-size=$STATE_SIZE		 \
--verif-font="$STATE_FONT"	 \
\
--ringwrong-color=$WRONG     \
--insidewrong-color=$CLEAR   \
--wrong-color=$TEXT          \
--wrong-size=$STATE_SIZE		 \
--wrong-font="$STATE_FONT"	 \
\
--time-color=$TEXT						\
--time-str="$TIME_FMT"				\
--time-pos="$TIME_POS"				\
--time-size=$TIME_SIZE				\
--time-font="$TIME_FONT"			\
--timeoutline-color="$BLACK"	\
\
--date-color=$TEXT						\
--date-str="$DATE_FMT"				\
--date-pos="$DATE_POS"				\
--date-size=$DATE_SIZE				\
--date-font="$DATE_FONT"			\
--dateoutline-width=$DATE_OW	\
--dateoutline-color="$BLACK"	\
\
--layout-color=$TEXT					\
--layout-pos="$LAYOUT_POS"		\
--layout-size=$LAYOUT_SIZE		\
--layout-font="$LAYOUT_FONT"

