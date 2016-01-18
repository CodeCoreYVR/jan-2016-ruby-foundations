def my_method
  puts "Hello World"
  my_method
end

# will throw `stack level too deep` exception. (aka StackOverFlow)
my_method
