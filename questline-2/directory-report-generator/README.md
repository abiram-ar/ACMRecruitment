## DIRECTORY REPORT GENERATOR

# What it reports

- Total number of files
- Total number of executable files
- Largest file
- Most recently modified file
- Number of hidden files

# Commands

- 'find' to search and filter files
- 'sort -rn' and 'head -1' to identify largest and most recently modified files
- `-printf '%T@ %p\n'` to get file modification timestamps for sorting
- 'date' to timestamp report