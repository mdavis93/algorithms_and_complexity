def bubble_sort(collection)
  n = collection.length
  loop do
    swapped = false
    (n - 1).times do |i|
      next unless collection[i] > collection[i + 1]
      tmp = collection[i]
      collection[i] = collection[i + 1]
      collection[i + 1] = tmp
      swapped = true
    end
    break unless swapped
  end

  collection
end
