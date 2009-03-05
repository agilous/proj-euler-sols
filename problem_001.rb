# If we list all the natural numbers below 10 that are multiples of 3 or 5, we
# get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

start1 = Time.now.to_f
total = 0
for x in 1..999 do
  if ((x % 3 == 0) || (x % 5 == 0))
    total = total + x
  end
end
end1 = Time.now.to_f
puts total.to_s + " computed in " + (end1 - start1).to_s + " sec."

start2 = Time.now.to_f
total = 0
number = 3
index = 0
values = [2, 1, 3, 1, 2, 3, 3]
while number < 1000 do
  total = total + number
  number = number + values[(index % 7)]
  index += 1
end
end2 = Time.now.to_f
puts total.to_s + " computed in " + (end2 - start2).to_s + " sec."

start3 = Time.now.to_f
total = (1..999).inject(0) do |sum, val|
  val % 3 == 0 || val % 5 == 0 ? val + sum : sum
end
end3 = Time.now.to_f
puts total.to_s + " computed in " + (end3 - start3).to_s + " sec."
