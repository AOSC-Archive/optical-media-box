#!/bin/bash

### Initialize
FilePath=$1
BaseName=$(basename $FilePath)
TYPE_SLASH=${FilePath/$BaseName/}

### Temp working dir
mkdir -p _dist/tex-tmp _dist/$TYPE_SLASH

### Debug info
# echo "FilePath=$FilePath"
# echo "BaseName=$BaseName"
# echo "TYPE_SLASH=$TYPE_SLASH"

### Build PDF
xelatex -output-directory=_dist/tex-tmp $FilePath

### Move to the right place
mv _dist/tex-tmp/*.pdf _dist/$TYPE_SLASH
