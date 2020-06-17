#!/bin/bash

strm() { source ~/env_streamlink/bin/activate; streamlink twitch.tv/$1 $2;}

strm $1 $2;

echo $1 >> shist
