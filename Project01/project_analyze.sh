#!/bin/bash
echo "write the directory"
read WDIR
cd "$WDIR"
echo "For FIXME log, Enter 1"
echo "For File Type Count, Enter 2"
echo "For Find Tag, Enter 3"

echo "write the argument number you want to test"
read test



feature2(){
	if [ -f "fixme.log" ] ; then
		rm fixme.log
	fi
	touch fixme.log
	for item in ./**
	do
		fileName=$(tail -1 $item)
		if [ -f $item ] ; then
			if [[ $fileName == *"#FIXME"* ]] ; then
				echo "$item" >> fixme.log
			fi
		fi
	done
}

feature5(){
	echo "Enter the extension"
	read exnsn
	i=0
	for item in ./**
	do
		if [[ $item == *.$exnsn	]] ; then
			i=$((i+1))
		fi
	done
	echo "The number of .$exnsn files are $i"
}

feature6(){
	echo "Enter a tag"
	read tag
	file=$(find ../ -type f -name "*.py")
	if [ -f $tag.log ] ; then
		rm $tag.log
	fi
	touch "$tag.log"
	echo "$( grep -E '^#' $file | grep -w $tag)" >> $tag.log
}


if [ "$test" -eq 1 ] ; then
	feature2
fi
if [ "$test" -eq 2 ] ; then
	feature5
fi

if [ "$test" -eq 3 ] ; then
	feature6
fi
echo "finished"


