# 2520 is the smallest number that can be divided by each of the numbers from
#1 to 10 without any remainder.

# What is the smallest number that is evenly divisible by all of the numbers
# from 1 to 20?

# Strategy: Choose an arbitrary, even "x" since the solution must be even.
#           Loop "infinitely" incrementing "x" by two on each pass.
#           Select divisors as primes or largest powers of non-primes in the range.
#           Fail quickly.

stime = Time.now.to_f
MAX = 20
x = 2520
found = false
while true do
  puts "x = #{x}"
  [5, 7, 9, 11, 13, 16, 17, 19].each { |y|
    if x % y != 0
      x = x + 2
      found = false
      break
    else
      found = true
    end
  }
  break if found
end
ftime = Time.now.to_f

puts "#{x} is the smallest number that is evenly divisible by all the numbers from 1 to #{MAX}."
puts "Calculated in #{(ftime - stime)} sec."