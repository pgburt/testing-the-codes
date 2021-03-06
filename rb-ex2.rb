# https://projecteuler.net/problem=2

# Each new term in the Fibonacci sequence is generated by adding the previous two terms. 
# By starting with 1 and 2, the first 10 terms will be:
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

max = 4 * 10**6
set = [1, 2]
sum = 2

until set[0] + set[1] > max
  nextFib = set[0] + set[1]
  set.push nextFib
  set.shift
  if nextFib % 2 == 0
    sum += nextFib
  end
end 

puts "SUM OF EVEN FIBONACCI NUMBERS LESS THAN 4 MIL IS #{sum}"