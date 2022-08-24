def merge_sort(array)
  if array.length == 1
    array
  else
    # Divides array in half
    left = array.slice(0, array.length / 2)
    right = array - left
    # Apply merge to each half of the array
    left = merge_sort(left)
    right = merge_sort(right)
    new_array = []
    while !left.empty? && !right.empty?
      new_array << if left[0] <= right[0]
                     left.shift
                   else
                     right.shift
                   end
    end
    new_array + left + right
  end
end

array = [8, 7, 6, 5, 4, 2, 1, 3]
p merge_sort(array)
