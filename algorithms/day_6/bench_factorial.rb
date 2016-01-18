require "benchmark"

def factorial_recursive(number)
  if number == 0
    1
  else
    number * factorial_recursive(number - 1)
  end
end

Benchmark.bm do |x|
  x.report do
    1000000.times { factorial_recursive(20) }
  end
end

def factorial_loop(number)
  product = 1
  for x in 2..number
    product *= x
  end
  product
end

Benchmark.bm do |x|
  x.report do
    1000000.times { factorial_loop(20) }
  end
end
