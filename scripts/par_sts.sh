#!/usr/bin/env bash

for file in $1/STS.input.*
do
    n=`basename $file`
    cat $file | nice -n1 python src/fourlang/similarity.py $3 > $2/$n.out 2> $2/$n.log &
done
