def heap_sort(array)
  n = array.length
  a = [nil] + array

  (n / 2).downto(1) { |i| heapify(a, i, n) }

  while n > 1
    a[1], a[n] = a[n], a[1]
    n -= 1
    heapify(a, 1, n)
  end
  a.drop(1)
end

def heapify(array, parent, limit)
  root = array[parent]
  while (child = 2 * parent) <= limit
    child += 1 if child < limit && array[child] < array[child + 1]
    break if root >= array[child]
    array[parent] = array[child]
    parent = child
  end
  array[parent] = root
end