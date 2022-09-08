cat [file] | awk -F: '{print $1,$2,$3}'
    cuts file by field (delimiter marked by -F)
    
awk -F: '{print $1}'
awk 'BEGIN {FS=":"} {print $1}
awk '{print $2}'
awk '{print $0}'


# Print line number 12 of file.txt
awk 'NR==12' file.txt

# Print first field for each record in file.txt
awk '{print $1}' file.txt

Print only lines that match regex in file.txt
awk '/regex/' file.txt

# Print only lines that do not match regex in file.txt
awk '!/regex/' file.txt

# Print any line where field 2 is equal to "foo" in file.txt
awk '$2 == "foo"' file.txt

# Print lines where field 2 is NOT equal to "foo" in file.txt
awk '$2 != "foo"' file.txt

# Print line if field 1 matches regex in file.txt
awk '$1 ~ /regex/' file.txt

# Print line if field 1 does NOT match regex in file.txt
awk '$1 !~ /regex/' file.txt

# Print lines with more than 80 characters in file.txt
awk 'length > 80' file.txt
