#!/bin/bash

FILE_NAME="counter"

count=0

for i in {51..51}
do
  git checkout -b "branch-$i" > /dev/null 2>&1
  for j in {1..20000}
  do
    count=$(expr $count  + 1)
    echo $count > $FILE_NAME
    git add $FILE_NAME > /dev/null 2>&1
    git commit -m "Counter moved to $count" > /dev/null 2>&1
  done
  echo "Generated $count commits"
done
