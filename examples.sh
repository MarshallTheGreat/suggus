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


'''Activity:
    Using ONLY the awk command, write a BASH one-liner script that extracts ONLY the names of all the system and user accounts that are not UIDs 0-3.'''
    
awk -F: '($3 >= 4){print $0}' $HOME/passwd | awk -F: '($NF == "/bin/bash"){print $1}' > $HOME/SED/names.txt

'''Activity:
    Find all dmesg kernel messages that contain CPU or BIOS (uppercase) in the string, but not usable or reserved (case-insensitive)
    Print only the msg itself, omitting the bracketed numerical expressions ie: [1.132775]'''
   
dmesg | egrep "CPU|BIOS" | egrep -iv "usable|reserved" | cut -d] -f2-

'''Activity:
    Write a Bash script using "Command Substitution" to replace all passwords, using openssl, from the file $HOME/PASS/shadow.txt with the MD5 encrypted 
    password: Password1234, with salt: bad4u'''
 
HASH=$(openssl passwd -1 -salt bad4u Password1234)
awk -F: -v h=$HASH 'BEGIN{OFS=":"}{$2=h;print}' $HOME/PASS/shadow.txt
 
'''Activity:
    Using ONLY sed, write all lines from $HOME/passwd into $HOME/PASS/passwd.txt that do not end with either /bin/sh or /bin/false.'''
    
sed '/\/bin\/false/d;/\/bin\/sh/d' $HOME/passwd > $HOME/PASS/passwd.txt

'''Activity:
    Using find, find all files under the $HOME directory with a .bin extension ONLY.
    Once the file(s) and their path(s) have been found, remove the file name from the absolute path output.'''
 
find $HOME -type f -iname "*.bin" -printf "%h\n" | sort -u


