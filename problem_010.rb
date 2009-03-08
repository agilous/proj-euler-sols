# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.

def is_prime(n) 
  return false if n == 1
  return true if n < 4
  return false if (n % 2) == 0 
  return true if n < 9 
  return false if (n % 3) == 0 
  r = Math.sqrt(n).floor 
  f = 5
  while (f <= r)
    return false if (n % f) == 0 
    return false if (n % (f + 2)) == 0
    f = f + 6
  end
  return true
end

stime = Time.now.to_f
sum = 0
for x in 1...2000000
  sum += x if is_prime(x)
end
ftime = Time.now.to_f

puts "The sum of all the primes below two million is #{sum}."
puts "Calculated in #{(ftime - stime)} sec."