## 1. Lemonade Change

Each lemonade costs $5. Customers queue up to buy one lemonade each by paying either $5, $10 or $20. We must give the exact change to each customer. Initially we dont have any change at hand.

# Greedy strategy

For every $5 bill, increase its the count

For every $10 bill, increase its count and decrease $5 bill count(given as change)

For every $20 bill, prefer giving $10 bill and $5 bill as change. If no $10 bill, give 3 $5 bills. $5 bills are more flexible because it can be given as change for both $10 and $20. So $5 bills are preserved for future transactions

## 2. Assign Cookies

Greed factors of children g and sizes of cookies s, we have maximize the number of content children. A child is content if a cookie j has size s[j] >= g[i]. Each child gets at most one cookie.

# Greedy strategy

Sort both the greed factors array g and cookie sizes array s in ascending order

Use two pointers (i for children, j for cookies) to iterate through both arrays

Match the smallest available cookie that satisfies the child with the smallest greed requirement

