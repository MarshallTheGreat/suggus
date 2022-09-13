1. Create a script that will perform the following actions:
  - Replace every instance of 'cat' in "infile" with 'dog'
  - Replace every instance of 'Navy' in "infile" with 'Army'
  - Write the output to the file specified by the variable 'outfile'
  
function q1() {
  infile = $1
  outfile = $2
 ** sed -e "s/cat/dog/g" -e "s/Navy/Army/g" $infile >> $outfile  **
}

2. Create a script that will print to standard output all usernames from the /etc/passwd file

function q1() {
 ** cut --d':' -f1 /etc/passwd **
}

3. Create a script that will perform the following actions:
  - Print to standard output all usernames from the file path specified by the parameter 
      'filename' sorted ascending numerically by user ID
  - The file will be in the format of /etc/passwd
  
function q1() {
  filename = $1
 ** sort -n -t: -k3 $filename | cut -d':' -f1 **
}
 
 4. Create a script that will perform the following:
  - Print to standard output the total number of files in the directory 'dirname'
  - IF the directory doesnt exist print 'Invalid Directory'
  
function q1() {    
    dirname = $1
 ** ls -A $dirname | wc -l || echo 'Invalid Directory' **
    
}    

6. Create a script that will perform the following:
  - Create a newfile specified by the name newfile
  - Set the modified date to the value specified in 'filedate' and time to '1730'
  
function q1() {
   newfile = $1
   filedate = $2
 ** touch -t ${filedate}1730 $newfile **
 }
 
8. Copy all lines from the file specified by src variable to the file specified by dst
    variable which Do Not contain the text specified by the match variable
    
 function q1() {
    src = $1
    dst = $2
    match = $3
    cat $src | grep -v $match > $dst
 }
 
 
 
