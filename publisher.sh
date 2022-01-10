#! /bin/bash
arr=("done" "in process")
for i in {1..3}
do
    number=$RANDOM%2
    echo ${arr[$number]}
    sleep .5
done
