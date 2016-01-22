# O(1) algorithm > Constant Time regardless of input size
def method_1(array)
  array.size + 1
end

puts method_1([1,2,3])
puts method_1([1,2,3,4,5,6,7])

# O(n) > Increase the input by x increases the number of operation by x
def method_2(array)
  array.each do |element|
    puts element
  end
end

puts method_2([1,2,3])
puts method_2([1,2,3,4,5,6,7])
