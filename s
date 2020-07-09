#!/bin/bash

# slibs v0.1
# https://github.com/Spinebelt/slibs

stream_name=$1
stream_platform=$2
stream_quality=$3

default_platform='twitch.tv'

pwd=$(pwd)
dirname=$(dirname "$0")

# List of platforms with their domainless names for ease of use.

: << 'END'
TODO:
Make an array containing all supported platform names ["twitch", "youtube", "ripxer", etc]. Loop through this array 
and do something when it does not match the user input. 

For example: The quality parameter "./s streamname 720p" would not match any platforms in the array and will instead 
be passed to $3, where it will be recognized as a Quality setting. In a case where this would also not be recognized 
as a Quality setting, you can safely tell the user to check for spelling. 
END

if [[ $stream_platform = "" ]]; then
stream_platform=$default_platform
elif [[ $stream_platform = "twitch" ]]; then
stream_platform="twitch.tv"
elif [[ $stream_platform = "mixer" ]]; then
stream_platform="mixer.com"
elif [[ $stream_platform = "vimeo" ]]; then
stream_platform="vimeo.com"
fi

# Default quality settings are set to "best".

if [[ $stream_quality = "" ]]; then
stream_quality="best"
fi

# Change certain settings and "save" them (rewrite certain lines in file using sed).

if [[ $stream_name = "--configure" ]]; then
echo "[1] Change default platform."
echo -n "Select option: "
read configure_input
if [[ $configure_input = "1" ]]; then
echo -n "Change current platform '$default_platform' to "
read default_platform_new
if [[ $default_platform_new != "" ]]; then
sed -ie "s/default_platform='$default_platform'/default_platform='$default_platform_new'/g" $pwd/$dirname/s
echo "The default platform has been changed to ${default_platform_new}."
else
echo "The default platform has not been changed."
fi
fi
exit
fi

# Give help

if [[ $stream_name = "--help" ]]; then
echo "WIP"
exit
fi

# Down where above comes together

: << 'END'
TODO:
Make the source directory (default "env_streamlink") also configurable with "--configure".
END

strm() { source ~/env_streamlink/bin/activate; streamlink $stream_platform/$stream_name $stream_quality; }

# Give user confirmation on what is happening

echo "Looking for channel '$stream_name' on '$stream_platform' with '$stream_quality' quality settings."

strm;

# Place the visited stream_name in a file

: << 'END'
TODO:
Give the user the ability to turn this off using "--configure".
END

echo $stream_name >> shist

echo "Stream ended or closed by user and '$stream_name' added to the stream history list."

# Resources used
# https://stackoverflow.com/a/59916
# https://stackoverflow.com/questions/947897/block-comments-in-a-shell-script/19409316
