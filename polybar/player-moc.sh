#!/bin/sh

SONG=$(mocp -Q %song)

if [ "$(mocp -Q %state)" == "PLAY" ];then
    if [ -n "$SONG" ]; then
	    echo " $SONG / $(mocp -Q %album) - $(mocp -Q %artist)"
    else
        basename " $(mocp -Q %file)"
    fi
elif [ "$(mocp -Q %state)" == "PAUSE" ];then
    if [ -n "$SONG" ]; then
	    echo " $SONG / $(mocp -Q %album) - $(mocp -Q %artist)"
    else
        basename " $(mocp -Q %file)"
    fi
else
    echo ""
fi

