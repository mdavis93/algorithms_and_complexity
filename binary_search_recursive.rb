alphabet = []

('A'..'Z').each do |n|
  alphabet << n
end

def find_letter(collection, n, low=0, high=collection.length)
  mid = (low + high) / 2

  if collection[mid] > n
    find_letter(collection, n, low, mid-1)
  elsif collection[mid] < n
    find_letter(collection, n, mid+1, high)
  else
    mid
  end
end

find_letter(alphabet, 'A')