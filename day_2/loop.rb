# loop will create an infinite loop so you must have a `break`
# statement somewhere inside.
loop do
  print "Give me a name (type quit to exit): "
  name = gets.chomp
  break if name == "quit"
  puts "Hello #{name}"
end
