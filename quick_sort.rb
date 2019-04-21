class Array
  def quick_sort
    return [] if empty?

    pivot = delete_at(rand(size))
    left, right = partition(&pivot.method(:>))

    [*left.quick_sort, pivot, *right.quick_sort]
  end
end

# collection = [22, 45, 12, 8, 10, 6, 72, 81, 33, 18, 50, 14]
# p collection.quick_sort

# (1..10).partition(&:even?)