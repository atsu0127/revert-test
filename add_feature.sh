#!/bin/bash
FEATURE=$1
COMMITS=$2
git sw -c ${FEATURE}
touch ${FEATURE}.txt
for i in $(seq 1 1 $2);
do
  echo "from ${FEATURE}-${i}" >> ${FEATURE}.txt
  git add .
  git cm -m "add ${FEATURE}-${i}"
done
git push origin ${FEATURE}
