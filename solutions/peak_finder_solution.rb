def peak_finder(arr)
  return [] if arr.empty?

  peaks = []
  arr.each_with_index do |val, i|
    left_ok = i == 0 || val > arr[i - 1]
    right_ok = i == arr.length - 1 || val > arr[i + 1]
    peaks << i if left_ok && right_ok
  end
  peaks
end


