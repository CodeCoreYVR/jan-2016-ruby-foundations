def multiply(a, *b)
  result = a
  # b is an array.
  b.each do |number|
    # result = result * number
    result *= number
  end
  result
end

print multiply(1,2,3,4,5)
print multiply(10)
