# A palindromic number reads the same both ways. The largest palindrome made
# from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

stime = Time.now.to_f
largest = 0
for x in 100..999 do
  for y in x..999 do
    product = x * y
    if ((product.to_s == product.to_s.reverse) && (product > largest))
       largest = product
    end
  end
end
ftime = Time.now.to_f

puts "Found that " + largest.to_s + " is largest palindrome made from the product of two 3-digit numbers in " + (ftime - stime).to_s + " sec."
