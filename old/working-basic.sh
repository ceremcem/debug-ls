#!/bin/bash

src=$1
[[ -z $src ]] && { echo "First parameter is the .ls file"; exit 1; }
tmp="${src}.js"
[[ -f $tmp ]] && { echo "ERROR: Tmp file exists: $tmp"; exit 2; }
cleanup(){
    echo "Cleaning up temporary file ($tmp)"
    rm $tmp
}
trap cleanup EXIT
lsc --compile --map embedded --bare --print $src > $tmp
echo "Go to chrome://inspect/#devices"
node --enable-source-maps --inspect-brk $tmp
