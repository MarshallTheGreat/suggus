'''AIT NOTES'''

'''Activity:
    Using the find command, list all files in $HOME/1123 that end in .txt.'''
    
find -type f -name "*.txt"

'''Activity:
    Copy all files in the $HOME/1123 directory that end in ".txt", and omit files containg a tilde "~" character, to directory $HOME/CUT.'''

mkdir CUT
find -type f -name "*.txt" ! -name '*~*' -exec cp {} $HOME/CUT \;

'''Activity:
    Using the find command, find all empty files/directories in directory /var and print out ONLY the filename (not absolute path), and the inode number,
    separated by newlines.'''

find /var/ -empty -printf "%i %f\n" 2>/dev/null

'''Activity:
  Using the find command, find all files on the system with inode 4026532575 and print only the filename to the screen, not the absolute path to the file,
  separating each filename with a newline."'''
  
find / -inum 4026532575 -printf "%f\n"

'''Activity:
   Using only the ls -l and cut Commands, write a BASH script that shows all filenames with extensions ie: 1.txt, etc., but no directories, in $HOME/CUT.
   Write those to a text file called names in $HOME/CUT directory. Omit the names filename from your output.'''

ls -l $HOME/CUT | cut -d. -f1-2 -s | cut -d: -f2- | cut -d' ' -f2- > $HOME/CUT/names
