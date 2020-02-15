# CS 1XA3 Project01 - <MyMacId>

## Usage
Execute this script from project root with:
chmod +x CS1XA3/Project01/project_analyze.sh
./CS1XA3/Project01/project_analyze arg1 arg2 ...
With possible arguments
arg1: Defines the Directory that the user wants to work in
arg2: Defines the Feature that the user wants to initiate
      Enter 1 for FIXME log
      Enter 2 for File Type COunt
      Enter 3 for Find Tag

## Feature 01 - FIXME Log

Description: Finds every file in the repo that has the word #FIXME in the last line
             Creates a new file fixme.log and enters the names of all files satisfying the consition in the file

Execution: Execute this feature by entering 1 as the second argument

Reference: some code was taken from [[https://git-scm.com/book/en/v2/Git-Tools-Searching]]

## Feature 02 - File Type Count

Description: Uses the Read prompt to read an extension (ex: py, txt, sh etc.) from the user
             and searches the repo for files ending with the same extension and counts the number
             of files. It then echoes the number of files

Execution: Exectute this feature by entering 2 as the second argument and the extension as the third argument

Reference: Some code was taken from [[https://askubuntu.com/questions/385528/how-to-increment-a-variable-in-bash]]

## Feature 03 - Find Tag

Description: Uses the Read prompt to read a tag from the user and search all files with a .py 
             extension and finds the files with a comment starting with a # as the first character 
             of the line and the tag in the same line. Then it enters the name of the file into a new
             file named as the "tag.log" where the tag is the same tag entered by the user

Execution: Execute this feature by entering 3 as the second argument and then enter the tag as the third argument

Reference: some code was taken from [[https://www.howtoforge.com/tutorial/linux-grep-command/]] and [[https:www.mac1xa3.ca]]

## Custom Feature SomeFeature

##Custom Feature 01 -  Replacing a given word with another

Description: Uses the read prompt twice to take two words from the user. The program reads all the .txt files for the first 
             word and replaces all occurences of the old word with the new word. It does not change the rest of the words.

##Custom Feature 02 - Displaying the number of occurences of a given line by the user in a file of any extension

Description: The user enters file extensions of his choice which are searched for a line entered by the user using the read
             prompt. The bash script displays all occurences of the file in the files to search for repeated occurences of a line.
