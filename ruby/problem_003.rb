# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

# Implementing the "Trial Division" method of integer factorization.
stime = Time.now.to_f
n = lpf = 600851475143
possible_factor = 2
while (possible_factor ^ 2 <= lpf) do
  if (lpf % possible_factor == 0)
    lpf = lpf / possible_factor
  else
    possible_factor += 1
  end
end
ftime = Time.now.to_f
puts "Calculated that " + lpf.to_s + " is the largest prime factor of " + n.to_s + " in " + (ftime - stime).to_s + " seconds"
