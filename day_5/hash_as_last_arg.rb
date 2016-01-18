def my_method(hash)
  puts hash[:a]
end

my_method a: 1, b: 2
# same as doing
my_method({a: 1, b: 2})
