#!/bin/bash

export SRC_REG=39.107.40.26:5000
export DEST_REG=127.0.0.1:5000
export MAPPING_FILE=mapping.txt

for line in $(cat $MAPPING_FILE)
do
  images=(`echo $line | tr '=' ' '`)
  src=${images[0]}
  dest=${images[1]}
  src1=${src#*/}
  dest1=${dest#*/}
  echo $SRC_REG"/"$src1 $DEST_REG"/"$dest1
  oc image mirror --insecure --filter-by-os='' --keep-manifest-list $SRC_REG"/"$src1 $DEST_REG"/"$dest1
done
