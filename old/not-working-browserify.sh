#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
export NODE_MODULES="$(realpath "$DIR/node_modules"):./"

lsFile="$1"
[ $lsFile ] || { echo "Filename is required."; exit 5; }
jsFile="__tmp_${lsFile%.ls}.js"

cleanup(){
    echo "Cleaning up $jsFile"
    rm $jsFile
}
trap cleanup EXIT

browserify="./node_modules/browserify/bin/cmd.js"
$browserify -t browserify-livescript --extension "ls" --debug $lsFile -o $jsFile
echo "Please go to chrome://inspect/#devices"
node --enable-source-maps --inspect-brk $jsFile
