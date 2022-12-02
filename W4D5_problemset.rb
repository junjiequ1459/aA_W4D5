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

def first_anagram?(str1, str2)
  str1_perm = str1.split("").permutation.to_a
  str2_split = str2.split("")

  str1_perm.include? str2_split
end

def second_anagram?(str1, str2)
    split_arr = str2.split("")
    str1.each_char do |char|
        if split_arr.include?(char)
            split_arr.delete(char)
        else
            return false
        end
    end
    split_arr == []
end

# p second_anagram?("cat", "saw")
# p second_anagram?("elvis", "lives")
# p second_anagram?("cat", "tac")

def third_anagram?(str1, str2)
    sorted_a = str1.chars.sort 
    sorted_b = str2.chars.sort
    sorted_a == sorted_b
end

# p third_anagram?("elvis", "lives")
# p third_anagram?("cat", "tac")
# p third_anagram?("cat", "saw")

