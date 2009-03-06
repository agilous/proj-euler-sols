# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see
# that the 6^(th) prime is 13.

# What is the 10001^(st) prime number?

stime = Time.now.to_f
PRIME_POSITION = 10001
prime_count = 5
primes = [2, 3, 5, 7, 11]
possible_prime = 13
while prime_count < PRIME_POSITION
  still_possible = true
  for x in 3..(possible_prime - 2)
    if possible_prime % x == 0
      still_possible = false
      break
    end
    x += 2
  end
  if still_possible
    primes << possible_prime
    prime_count += 1
  end
  possible_prime += 2
end
ftime = Time.now.to_f

puts "The #{PRIME_POSITION}st prime number is #{primes.last}."
puts "Calculated in #{(ftime - stime)} sec."