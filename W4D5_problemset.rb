def my_min(arr)
  num = 0
  i = 0
  while i < arr.length
    num = arr[i] if arr.all? { |ele| arr[i] <= ele }
    i += 1
  end
  num
end

list = [0, 3, 5, 4, -5, 10, 1, 90]
p my_min(list)
