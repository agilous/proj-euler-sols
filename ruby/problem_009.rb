# A Pythagorean triplet is a set of three natural numbers, a < b < c, for
# which,

#                          a^(2) + b^(2) = c^(2)

# For example, 3^(2) + 4^(2) = 9 + 16 = 25 = 5^(2).

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

stime = Time.now.to_f
answer = 0
found = false
for a in 1..999
  for b in 1..999
    for c in 1..999
      if (a + b + c == 1000)
        if (((a * a) + (b * b)) == (c * c))
          puts "a = #{a}, b = #{b}, c = #{c}"
          answer = a * b * c
          found = true
        end
      end
    end
    break if found
  end
  break if found
end
ftime = Time.now.to_f

puts "The product is #{answer}."
puts "Calculated in #{(ftime - stime)} sec."