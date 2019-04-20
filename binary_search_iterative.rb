alphabet = []

('A'..'Z').each do |n|
  alphabet << n
end

def find_letter(collection, n)
  low = 0
  high = collection.length - 1

  while low <= high
    mid = (low + high) / 2

    if collection[mid] > n
      high = mid - 1
    elsif collection[mid] < n
      low = mid + 1
    else
      return mid
    end
  end
end

find_letter(alphabet, 'H')