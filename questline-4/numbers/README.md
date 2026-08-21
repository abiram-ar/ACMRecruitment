## Palindrome Number

# Check if an integer is palindrome

Negative numbers can't be palindrome so return false if x<0
Convert number to string and to index it like array
Use 2 pointers , one starting from left (first character) and other from right(last character)
Compare s[left] and s[right], if its not same the number is not palindrome
Else both pointers move inwards


## Integer to Roman

# Convert an integer (1 to 3999) into its Roman numeral

Make a list of value-symbol pairs (largest to smallest)
For each pair , repeatedly append its symbol to result and subtract its value from the number . Continue till the value still fits
Move to next smaller pair once the current value no longer fits. Continue till number is 0