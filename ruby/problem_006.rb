# The sum of the squares of the first ten natural numbers is,
# 1^(2) + 2^(2) + ... + 10^(2) = 385

# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)^(2) = 55^(2) = 3025

# Hence the difference between the sum of the squares of the first ten natural
# numbers and the square of the sum is 3025 − 385 = 2640.

# Find the difference between the sum of the squares of the first one hundred
# natural numbers and the square of the sum.

stime = Time.now.to_f
sum_of_squares = 0
square_of_sum = 0
for x in 1..100 do
  sum_of_squares = sum_of_squares + (x * x)
  square_of_sum = square_of_sum + x
end
difference = (square_of_sum * square_of_sum) - sum_of_squares
ftime = Time.now.to_f

puts "The difference between the sum of the squares of the first one hundred"
puts "natural numbers and the square of the sum is #{difference}."
puts "Calculated in #{(ftime - stime)} sec."