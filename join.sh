#!/bin/bash

clear
OUTDIR="out"

rm -rf $OUTDIR
i=0
for DIR in `ls -d */`; do
   i=$(( i + 1 ))   
   if [[ i -eq 1 ]]; then
        echo "$i - Copying first dir '$DIR' to '$OUTDIR' to start joining traces..."
        cp -r "$DIR" "$OUTDIR" > /dev/null
   else 
        echo "$i - Appending traces from '$DIR' to files inside '$OUTDIR' dir..."
        for FILE in `ls $DIR`; do
            cat "$DIR$FILE" >> "$OUTDIR/$FILE"
        done
   fi
done



