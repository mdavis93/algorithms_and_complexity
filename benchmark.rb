require 'benchmark'
require_relative 'quick_sort'
require_relative 'heap_sort'
require_relative 'bucket_sort'

numbers = []
(1..100).each do |n|
  numbers << n
end

50.times do
  numbers.delete(numbers.sample())
end

puts "Benchmarking 'Quick Sort', 'Heap Sort', and 'Bucket Sort' against collection of #{numbers.length} numbers."

Benchmark.bm do |x|
  x.report('quick_sort') { numbers.quick_sort }
  x.report('heap_sort') { heap_sort(numbers) }
  x.report('bucket_sort') { bucketsort(numbers) }
end
puts ''

# quick_sort    0.000138)
# heap_sort    0.000048)
# bucket_sort    0.000141)


# http://i65.tinypic.com/s12dea.jpg