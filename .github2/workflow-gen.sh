#!/bin/bash

FILELIST="manuals\/manual-retro-cover.pdf manuals\/manual-retro.pdf boxes\/retro-box.jpg"

for FILEID in $FILELIST; do
    sed "s/FILEID/$FILEID/g" .github2/workflow-tmpl.yml > .github/workflows/FILE-${FILEID//\\\//_}.yml
done
