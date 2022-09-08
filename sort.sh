# To sort a file:
sort <file>

# To sort a file by keeping only unique:
sort -u <file>

# To sort a file and reverse the result:
sort -r <file>

# To sort a file randomly:
sort -R <file>

# Sort a file in ascending order:
sort path/to/file

# Sort a file in descending order:
sort --reverse path/to/file

# Sort a file in case-insensitive way:
sort --ignore-case path/to/file

# Sort a file using numeric rather than alphabetic order:
sort --numeric-sort path/to/file

# Sort `/etc/passwd` by the 3rd field of each line numerically, using ":" as a field separator:
sort --field-separator=: --key=3n /etc/passwd

# Sort a file preserving only unique lines:
sort --unique path/to/file

# Sort a file, printing the output to the specified output file (can be used to sort a file in-place):
sort --output=path/to/file path/to/file

'''
sort                sorts content according to position on the ASCII table
sort -n             sorts content numerically
sort -u             sorts content uniqely
sort -nr            sorts content numerically reversed
'''
