# Solution 1
def largest(*numbers)
  numbers.sort!
  result = numbers.pop
end

puts largest 2,4,4,34,34,3,423,42

# Solution 2
def largest(a, *numbers)
  max = a
  numbers.each do |x|
    if x > max
      max = x
    end
  end
  max
end

puts largest 3,34,3,43,43,4,34,322

# Solution 3
def largest(*numbers)
  numbers.max
end

puts largest 3,34,3,43,43,4,34,100
