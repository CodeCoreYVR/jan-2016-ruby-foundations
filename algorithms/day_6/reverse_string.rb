# Solution 1 (print the string)
def reverse(string)
  if string == ""
    return
  else
    print string[-1]
    reverse(string[0..-2])
  end
end

puts reverse ""
puts reverse "b"
puts reverse "abc"
puts reverse "hello world"

def reverse(string)
  if string.empty?
    ""
  else
    string[-1] + reverse(string[0...-1])
  end
end

puts reverse ""
puts reverse "b"
puts reverse "abc"
puts reverse "hello world"
