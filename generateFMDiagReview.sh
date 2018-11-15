#!/bin/bash      
dir=$1
#echo $1

for filePath in $(find $dir -name '*.prod' -type f ); do             
	path=$filePath
	#filename=$(basename "$filePath" | sed 's!.*/!!')
	#filename="${filename%.*}"         
	dire=$(dirname $(dirname "${path}"))
	filename=$(basename " $(dirname "${path}")")
	for m in 1; do
		for t in 2 4; do
			echo java -jar PFMDiagReview.jar "FMDiag " "PFMDiag " $dire""/"$filename".xml" " $path" "$m" "$t""
		done 
	done
done
