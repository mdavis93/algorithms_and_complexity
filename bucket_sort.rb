require_relative 'insertion_sort'

def bucketsort(collection)
  no_of_buckets = collection.length
  buckets = Array.new(no_of_buckets){Array.new}
  divider = no_of_buckets/2
  final_buckets = []

  collection.each do |x|
    bucket_number = (x/divider).floor
    buckets[bucket_number] << x
  end

  buckets.each do |array|
    final_buckets << insertion_sort(array) unless array.empty?
  end
  final_buckets.flatten
end