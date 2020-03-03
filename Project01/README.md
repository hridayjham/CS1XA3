# CS 1XA3 Project01 - <jhamh>

## Usage

Execute this script from project root with:

chmod +x CS1XA3/Project01/project_analyze.sh
./CS1XA3/Project01/project_analyze arg1 arg2 ...
With possible arguments

arg1: Defines the Directory that the user wants to work in

arg2: Defines the Feature that the user wants to initiate
      
      Enter 1 for FIXME log
      Enter 2 for File Type Count
      Enter 3 for Find Tag
      Enter 4 for File Size List
      Enter 5 for Backup and Delete/Restore
      Enter 6 for Checkout Latest Merge
      Enter 7 for Custom Feature 1
      Enter 8 for Custom Feature 2

## Feature 01 - FIXME Log

Description: Finds every file in the repo that has the word #FIXME in the last line
             Creates a new file fixme.log and enters the names of all files satisfying the consition in the file

Execution: Execute this feature by entering 1 as the second argument

Reference: some code was taken from [[https://git-scm.com/book/en/v2/Git-Tools-Searching]]

## Feature 02 - File Type Count

Description: Uses the Read prompt to read an extension (ex: py, txt, sh etc.) from the user
             and searches the repo for files ending with the same extension and counts the number
             of files. It then echoes the number of files

Execution: Execute this feature by entering 2 as the second argument and the extension as the third argument

Reference: Some code was taken from [[https://askubuntu.com/questions/385528/how-to-increment-a-variable-in-bash]]

## Feature 03 - Find Tag

Description: Uses the Read prompt to read a tag from the user and search all files with a .py
             extension and finds the files with a comment starting with a # as the first character
             of the line and the tag in the same line. Then it enters the name of the file into a new
             file named as the "tag.log" where the tag is the same tag entered by the user

Execution: Execute this feature by entering 3 as the second argument and then enter the tag as the third argument

Reference: some code was taken from [[https://www.howtoforge.com/tutorial/linux-grep-command/]] and [[https:www.mac1xa3.ca]]

## Feature 04 - File Size List

Description: List all files in the repo (just files not directories) and their sizes in a human readable format

Execution: Execute this feature by entering 4 as the second argument

Reference: Some code was taken from [[https://www.unix.com/shell-programming-and-scripting/157579-how-display-file-name-its-size.html]]

## Feature 05 - Backup and Delete/Restore
          
Description: 1. If the user selects Backup:

             * Makes an empty directory, backup and creates a copy of all .tmp files 
               in it
             * Creates a restore.log in backup which store the original addresses of 
               all files

2. If the user selects Restore:
             
            * Restores the files to their original locations using the adresses in
              restore.log
               
Execution: Execute this feature by entering 5 as the second argument and Backup or Restore as the
           third argument

Reference: Some code was taken from [[https://stackoverflow.com/questions/5265702/how-to-get-full-path-of-a-file]]

## Feature 06 - Checkout Latest Merge

Description: Checks out the lates commit with the word merge in the commit message, going into the detached head state

Execution: Execute this feature by entering 6 as the second argument

Reference: Some code was taken from [[https://askubuntu.com/questions/673793/getting-first-word-of-file]]




## Custom Feature SomeFeature

## Custom Feature 01 -  Replacing a given word with another

Description: Uses the read prompt twice to take two words from the user. The program reads all the .txt files for the first
             word and replaces all occurrences of the old word with the new word. It does not change the rest of the words.

Execution: Execute this feature by entering 7 as the second argument

Enter the word to be replaced as the third argument

Enter the new word as the fourth argument

Reference: Some Code was taken from [[https://askubuntu.com/questions/673793/getting-first-word-of-file]]

## Custom Feature 02 - Counting Words

Description: The user enters file extensions of his choice(eg. txt, py) which are searched for a word entered by the user using the read
             prompt. The bash script counts all occurrences of the word in the files to search for repeated occurrences of the word.
The number of occurrences in each file are then displayed

Execution: Enter 8 as the second argument

Enter the extension of the files to be searched as the third argument

enter the word to be searched as the fourth argument

Reference: Some Code was taken from [[https://unix.stackexchange.com/questions/398413/counting-occurrences-of-word-in-text-file]]

