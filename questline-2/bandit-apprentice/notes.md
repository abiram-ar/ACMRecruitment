# Bandit Wargame Notes

## Level 0
Connected using: ssh bandit0@bandit.labs.overthewire.org -p 2220
Password: bandit0

## Level 0-1 
Used "ls" to see the files and "cat readme" to get the password

## Level 1-2
Used "ls" to see the files. The file name was "-"
Used "cat ./ -" to get the password

## Level 2-3
Used "ls" to see the files
Used both ./ and double quotes to read the file and get password
cat "./--spaces in this filename--"

## Level 3-4
Used "cd inhere" to go into inhere directory
Used "ls -a" to see the files. -a shows hidden files too(files which start with .)
"cat ...Hiding-From-You" to get the password

## Level 4-5
Used "cd inhere" to go into inhere directory
Used "ls" to see all files
Used "file ./-file*" to see what kind of data is there in each file and chose the file with ASCII text
"cat ./-file07" to get password 

## Level 5-6
Used "cd inhere" to go into inhere directory
Used "ls" to see all files
Used "find . -size 1033c" to narrow down to the file with side 1033 bytes
Used " cat ./maybehere07/.file2" to get password

## Level 6-7
File was somewhere on the entire server
Used `find / -user bandit7 -group bandit6 -size 33c 2>/dev/null` to search by user, group, and size
Used "cat /var/lib/dpkg/info/bandit7.password" to get password

## Level 7-8
Password was near the word millionth in data.txt file
Used "grep millionth data.txt" to get the password

## Level 8-9
Password was the line that appears only one in the file data,txt(other lines occur multiple times)
Used "sort data.txt | uniq -u" to sort lines and find the one that appears only once(password)

## Level 9-10
Password was in data.txt appearning after several "="
Used "strings data.txt | grep =" to extract readable text and filter for lines with "="

## Level 10-11
Password was encoded in base64 text
Used "base64 -d data.txt" to decode it and get the password

## Level 11-12
Password was encoded in data.txt using ROT13
Used cat data.txt | tr 'A-Za-z' 'N-ZA-Mn-za-m' to decode it and get the password

## Level 12-13
Password was in data.txt which was a hexdump of a file compressed multiple times (gzip, bzip2, tar)
Used mktemp -d to create a workspace
Checked file type with "file"
Changed file name with correct extension using "mv" if needed
Decompressed using gzip -d, bzip2 -d, or tar -xf 
Repeated until reaching ASCII text

## Level 13-14
Was given an SSH private key (sshkey.private) instead of a password
OverTheWire blocks localhost-to-localhost logins between levels(found in HINT file).
Used "scp" to copy the key from bandit13 to laptop 
Connected to bandit14 using the external server address:
ssh -i sshkey.private bandit14@bandit.labs.overthewire.org -p 2220

## Level 14-15
Read password using "cat /etc/bandit_pass/bandit14"
Sent that password to port 30000 using "nc localhost 30000", then typed the password and Entered
