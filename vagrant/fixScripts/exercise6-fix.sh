#!/bin/bash
if [ "$#" -ne 2 ]; then
    echo "Please provide at least 2 arguments. Last argument is the destination folder on the remote server"
    exit 1
fi

if [ $HOSTNAME == server1 ]; then
	remote=server2
	else
	remote=server1
fi

dest_dir=${@: -1}
array=( "$@" )
	unset "array[${#array[@]}-1]"
	for i in "${array[@]}"; do
		scp $i vagrant@$remote:/$dest_dir
		files_size=$(wc -c "$i" | awk '{print $1}')
		let "total_copy_size += $files_size"
	done
	echo $total_copy_size
