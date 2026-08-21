## Valid Palindrome

# Given a string, determine if it is a palindrome after converting all uppercase letters to lowercase and removing all non-alphanumeric characters

Use 2 pointers, left from the start of the string and right from the end
Before comparing, skip left forward and right backward past any non-alphanumeric characters (.isalnum())
Compare s[left] and s[right] after converting both to lower case (.lower()). If itz nit same, then itz not palindrome
Else, move both pointers inwards



## Zigzag Conversion

# Given a string and a number of rows, arrange the characters in a zigzag pattern across that many rows, then read the result row by row

If the rows is just 1, theres no zigzag and the original string is unchanged
Make a list of empty strings to collect characters as they are placed
Select each input character from the string, keep track of current row and direction(up and down)
Append each character to current row string and check if the row is uppermost or lowermost row- if so , then flip the direction
After going through all characters, join everything in the row