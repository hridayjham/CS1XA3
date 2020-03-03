#!/bin/bash
echo "write the directory"
read WDIR
cd "$WDIR"
echo "For FIXME log, Enter 1"
echo "For File Type Count, Enter 2"
echo "For Find Tag, Enter 3"
echo "For File Size List, Enter 4"
echo "For Backup and Delete/Restore, Enter 5"
echo "For Checkout Latest Merge, Enter 6"
echo "For Custom Feature 1, Enter 7"
echo "For Custom Feature 2, Enter 8"
echo "write the argument number you want to test"
read test



feature2(){
	if [ -f "fixme.log" ] ; then
		rm fixme.log
	fi
	touch fixme.log
	for item in ./**
	do
		if [ -f $item ] ; then
			fileName=$(tail -1 $item)
			if [ -f $item ] ; then
				if [[ $fileName == *"#FIXME"* ]] ; then
					echo "$item" >> fixme.log
				fi
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

feature3(){
	if [ -f listofmerges.txt ] ; then
		rm listofmerges.txt
	fi
	touch listofmerges.txt
	git log --all --oneline | grep -i "merge" >> listofmerges.txt
	merge=$(awk '{print $1; exit}' listofmerges.txt)
	rm listofmerges.txt
	git checkout $merge
}

feature4(){
	if [ -s sizefolder ] ; then
                rm -r sizefolder
        fi
        mkdir sizefolder
	for item in ./**
	do
		if [ -f $item ] ; then
			cp $item sizefolder
		fi
		if [ -d $item ] ; then
			if [[ $item != sizefolder ]] ; then
				cd $item
				for xyz in ./**
				do
					cp $xyz ../sizefolder
				done
				cd ..
			fi
		fi
	done
	cd sizefolder
	clear
	ls -S -lh | awk '{print $5, $9}'
	cd ..
	rm -r sizefolder
}

feature8(){
	echo "Chose whether to Backup or Restore"
	read tag
	if [ $tag == "Backup" ] ; then
		if [ -d "backup" ] ; then
                	rm -r backup
        	fi
        	mkdir backup
		touch ./backup/restore.log
		for item in ./**
		do
			if [[ $item == *.tmp ]] ; then
                        	cp $item ./backup
				f=$(cd $(dirname "$item") && pwd -P)/$(basename "$item")
				echo "$f" >> ./backup/restore.log
				rm $item
  	      		fi
		done
	fi
	if [ $tag == "Restore" ] ; then
		
		if [ -f ./backup/restore.log ] ; then
			cd backup
			for item in ./**
			do
				if [[ $item == *.tmp ]] ; then
					address=$(head -n 1 restore.log)
					cp $item $address
					sed -i '1d' restore.log
				fi
			done
			cd ..
		else
			echo "Error. File doesnt exist"
		fi
	fi
}
customfeature1(){
	echo "Enter the word you want to replace"
	read word1
	echo "Enter the new word"
	read word2
	for item in ./**
	do
		if [[ $item == *.txt ]] ; then
			sed -i s/$word1/$word2/g $item
		fi
	done
}

customfeature2(){
	echo "Write the extension of the type of files you wanna search the line for(eg. txt, py)"
	read tag
	echo "write the string of characters for which you want to search repeated occurences"
	read line
	clear
	i=0
	for item in ./**
	do
		if [[ $item == *.$tag ]] ; then
			counter=$(grep -o -i $line $item | wc -l)
			#clear
			echo $item :
			echo $counter
			i=$((i+$counter))
		fi
	done
	echo "Total Occurences: "
	echo $i
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
if [ "$test" -eq 4 ] ; then
        feature4
fi
if [ "$test" -eq 5 ] ; then
        feature8
fi
if [ "$test" -eq 6 ] ; then
	feature3
fi
if [ "$test" -eq 7 ] ; then
	customfeature1
fi
if [ "$test" -eq 8 ] ; then
        customfeature2
fi
echo "finished"


