print "Give me a number: "

number = gets.chomp.to_f

# this is an inline conditional
puts "The number is large" if number > 20
# This is equivalent to:
if number > 20
  puts "The number is large"
end

puts "The number is large" unless number <= 20
# This is equivalent to:
unless number <= 20
  puts "The number is large"
end
