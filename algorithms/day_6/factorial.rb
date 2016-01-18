def factorial(number)
  if number == 0
    1
  else
    number * factorial(number - 1)
  end
end

puts factorial(0)
puts factorial(5)
puts factorial(10)
