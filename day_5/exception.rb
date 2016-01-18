begin
  10 / 0
rescue ZeroDivisionError => e
  puts "I caught the error: #{e.message} / #{e.backtrace}"
rescue
  puts "Unknown"
end
