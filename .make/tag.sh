#!/bin/bash

DATESTR=$(date -I)
NEWTAG="${DATESTR//-/}"
if git rev-parse $NEWTAG >/dev/null 2>&1; then
    echo "[ERROR] Tag $NEWTAG already exists."
else
    echo "[INFO] Creating new tag $NEWTAG"
    git tag "$NEWTAG"
    echo "[INFO] Pushing new tag to origin"
    git push origin "$NEWTAG"
fi