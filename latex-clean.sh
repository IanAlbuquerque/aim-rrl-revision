#!/bin/sh

arg=${1:-.}
exts="aux bcf run.xml dvi bbl blg brf idx ilg ind lof log lol lot out toc synctex.gz"

if [ -d $arg ]; then
    for ext in $exts; do
         rm -f $arg/*.$ext
    done
else
    for ext in $exts; do
         rm -f $arg.$ext
    done
fi
