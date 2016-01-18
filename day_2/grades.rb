puts "What grade did you get on the exam?"

grade = gets.chomp.to_f

if grade > 90
  puts "A"
elsif grade > 80
  puts "B"
elsif grade > 70
  puts "C"
elsif grade > 50
  puts "D"
else
  puts "F"
end
