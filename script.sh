#!/bin/bash

is_done="false"
until [ "$is_done" = "true" ]
do
    readarray -t my_array < <(~/repo/array_process_example/publisher.sh)
    if [[ ${my_array[@]} =~ ^(done )*done$ ]]
    then
        is_done="true"
    fi
done

declare -p my_array
echo "end of execution"
