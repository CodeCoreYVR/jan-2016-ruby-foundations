my_array = (1..6_000).to_a

def sum(array)
  total = 0
  array.each do |num|
    total = total + num
  end
  total
end

puts sum(my_array)

def sum(array)
  if array.empty?
    0
  else
    # array[0] + sum(array[1..-1])
    array[0] + sum(array[1..(array.length - 1)])
  end
end

puts sum(my_array)
