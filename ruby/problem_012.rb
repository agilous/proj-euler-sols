# The sequence of triangle numbers is generated by adding the natural numbers.
# So the 7th triangle number would be 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28. The
# first ten terms would be:

# 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...

# Let us list the factors of the first seven triangle numbers:

# 1: 1
# 3: 1,3
# 6: 1,2,3,6
#10: 1,2,5,10
#15: 1,3,5,15
#21: 1,3,7,21
#28: 1,2,4,7,14,28

#We can see that 28 is the first triangle number to have over five divisors.

#What is the value of the first triangle number to have over five hundred divisors?
require '../utils/factorer'

stime = Time.now.to_f

divisors = Array.new
i = 1
triangle_number = i
max_divisors = 0
factorers_table = {}
while divisors.size <= 500
  factorer = Factorer.new(factorers_table)
  divisors = factorer.factor(triangle_number)
  factorers_table = factorer.factorers_table
  i = i + 1
  triangle_number = triangle_number + i
  max_divisors = divisors.count if divisors.count > max_divisors
  puts "i = #{i}, triangle number = #{triangle_number}, # of divisors = #{divisors.count}, max divisors = #{max_divisors}"
end
ftime = Time.now.to_f

puts "The value of the first triangle number to have over five hundred divisors is #{i}."
puts "Calculated in #{(ftime - stime)} sec."
