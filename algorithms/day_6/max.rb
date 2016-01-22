require "benchmark"

def loop_max(array)
  max = 0
  array.each do |element|
    if element > max
      max = element
    end
  end
  max
end

def sam_recursion(arr, max = 0)
  if arr.length == 0
    max
  elsif arr.last > max
    max = arr.pop
    sam_recursion(arr, max)
  else
    sam_recursion(arr[0..-2], max)
  end
end

def kaia_recursive(array)
  if array.size == 1
    array[0]
  else
    if array[0] < array[-1]
      kaia_recursive(array[1..-1])
    elsif array[0] > array[-1]
      kaia_recursive(array[0..-2])
    end
  end
end

Benchmark.bm do |x|
  x.report do
    puts "EACH"
    1_000_000.times {
      array = [1,2,4,65,3,3,2,23,23,2,23,2,2,2,3]
      loop_max(array)
    }
  end
end

Benchmark.bm do |x|
  x.report do
    puts "SAM"
    1_000_000.times {
      array = [1,2,4,65,3,3,2,23,23,2,23,2,2,2,3]
      sam_recursion(array)
    }
  end
end


Benchmark.bm do |x|
  x.report do
    puts "KAIA"
    1_000_000.times {
      array = [1,2,4,65,3,3,2,23,23,2,23,2,2,2,3]
      kaia_recursive(array)
    }
  end
end
