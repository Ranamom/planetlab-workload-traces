#!/bin/bash

clear
OUTDIR="out"
rm -rf $OUTDIR
mkdir $OUTDIR

files=0
for DIR in `ls -d */ | grep -v $OUTDIR`; do
     i=$(( i + 1 ))   
     echo "$i - Appending traces from '$DIR' to files inside '$OUTDIR' dir..."
     for FILE in `ls $DIR`; do
          cat "$DIR$FILE" >> "$OUTDIR/$FILE"
          files=$(( files + 1 ))   
     done
done

echo ""
echo "Total existing files: $files"



