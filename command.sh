#!/usr/bin/env bash
numberOfArgument=$#
if [ ${numberOfArgument} -eq 3 ]; then
    program=$1
    personalFile=$2
    numberIteration=$3
    counter=1
    while [ ${counter} -le ${numberIteration} ];
    do
        ./${program} ${personalFile} ${counter}
        ((counter++))
    done
# quick launch
elif [ ${numberOfArgument} -eq 1 ]; then
    program=$1
    personalFile="test.csv"
    numberIteration=50
    counter=1
    while [ ${counter} -le ${numberIteration} ]
    do
        ./${program} ${personalFile} ${counter}
        ((counter++))
    done
fi
echo "Done."