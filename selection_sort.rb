def selection_sort(collection)
  length = collection.length
  (0..length - 2).each do |i|
    min_index = i
    ((i + 1)...length).each do |j|
      min_index = j if collection[j] < collection[min_index]
    end

    tmp                   = collection[i]
    collection[i]         = collection[min_index]
    collection[min_index] = tmp
  end
  collection
end
