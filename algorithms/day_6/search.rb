# O(n)
def sequential_search(array, number)
  array.each do |element|
    if number == element
      return true
    end
  end
  false
end

puts sequential_search([1,5,3,2,6,7,5,33,22,4], 4)
puts sequential_search([1,5,3,2,6,7,5,33,22,4], 9)
