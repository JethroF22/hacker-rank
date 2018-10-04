def rotLeft(a, d)
  arr_len = a.length
  rotated_arr = Array.new(arr_len)
  a.each_with_index do |elem, i|
    new_index = i - d
    rotated_arr[new_index] = elem
  end
  print rotated_arr
end