def my_min(arr)
  num = 0
  i = 0
  while i < arr.length
    num = arr[i] if arr.all? { |ele| arr[i] <= ele }
    i += 1
  end
  num
end

# list = [0, 3, 5, 4, -5, 10, 1, 90]
# p my_min(list)

def my_min_v2(arr)
  min_num = arr[0]
  arr.each { |ele| min_num = ele if min_num > ele }
  min_num
end

# p my_min_v2(list)

def sub_sum(arr)
  sub_arr = []
  arr.each_with_index do |ele, i|
    arr.each_with_index do |ele2, j|
      sub_arr << [ele, ele2]
    end
  end
  sub_arr
end

def sub_sum_v2(arr)
  new_arr = arr.filter { |ele| ele > 0 }
  #   result = new_arr.reduce { |c, v| c += v }
  #   return result
  new_arr.sum
end

list = [5, 3, -7]

def first_anagram?(str1)
end

# all_ans = [str1]
# temp = str1
# (str1.length - 2).times do
#   temp = temp[0] + temp[2..-1] + temp[1]                                          #str1[j..-1] + str1[j]
#   all_ans << temp
# end
# all_ans
# end

p first_anagram?("cat")
