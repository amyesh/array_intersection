# Returns a new array to that contains elements in the intersection of the two input arrays
# Time complexity: O(n+m) where n represents the length the smaller array, and m the larger.
# Space complexity: O(n), linear, because the additional space required is directly related to
# length "n" of the smaller array.
def intersection(array1, array2)
  if array1 == nil || array2 == nil
    return []
  end
  if array1.length < array2.length
    larger = array2
    smaller = array1
  else
    larger = array1
    smaller = array2
  end
  my_hash = Hash.new()
  smaller.each do |num|
    my_hash[num] = 1
  end
  common_elements = []
  larger.each do |num_1|
    if my_hash.include? num_1
      common_elements << num_1
    end
  end
  return common_elements
end
