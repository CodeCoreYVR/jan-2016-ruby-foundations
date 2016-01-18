# Solution 1
# we want to write a recursive method that prints each number in the array
# multiplied by itself. The array can contain other arrays
def multiply(array)
  # case when the array is empty > we do nothing
  if array.empty?
    return # we just return here
  # Case when the first element is a number > we dispaly it multiplied by itselfs
  elsif !array[0].is_a? Array
    puts array[0] * array[0]
    multiply(array[1..-1])
  # Case when the first element is an Array > call the method
  else
    multiply(array[0])
    multiply(array[1..-1])
  end
end

multiply([1,2,3])
multiply([1,2,[6,7]])
multiply([1,2,[6,7], [5,6]])
multiply([1,2,[6,[7,8]]])

# Solution 2
def multiply(array)
  if array.empty?
    return
  else
    array.each do |element|
      if element.is_a? Array
        multiply(element)
      else
        puts element * element
      end
    end
  end
end

multiply([1,2,3])
puts ">>>>"
multiply([1,2,[6,7]])
puts ">>>>"
multiply([1,2,[6,[7,8]]])
