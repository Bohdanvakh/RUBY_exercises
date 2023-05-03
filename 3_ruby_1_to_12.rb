def t_1__check_value_in_arr(value)
  arr = ["Red", "Green", "Blue", "White"]

  puts "Original array"
  print arr
  puts "\nCheck if '#{value}' in color array!"
  print arr.include?(value)
end

def t_2__7_in_array(arr)
  print "The array length must be 1 or more." if arr.length < 1
  puts arr.first == 7 || arr.last == 7
end

def t_3__random(arr)
  n = rand(arr.length)
  random = arr.sample(n)

  puts "Original array:"
  print arr
  puts "\n#{n} random elements from the array."
  print random
end

def t_4__check_first_and_last(arr)
  print "The array length must be 1 or more" if arr.length < 1
  puts arr.first == arr.last
end

def t_5__sum_of_array_values(arr)
  puts "Original array:"
  print arr
  puts "\nSum of the values of the above array: \n#{arr.sum}"
end

def t_6__remove_dublicates(arr)
  puts "Original array:"
  print arr
  puts "\nArray with unique elements:"
  print arr.uniq
end

def t_7__check_two_arrays(arr1, arr2)
  print "The arrays length must be 1 or more." if arr1.length < 1 || arr2.length < 1
  puts arr1.first == arr2.first || arr1.last == arr2.last
end

def t_8__remove_blank(arr)
  puts "Original array:"
  print arr
  puts "\nRemove a blank element from the above array:"
  print arr.reject(&:empty?)
end

def t_9__split_str_to_arr(str)
  puts "Original delimited string:"
  print str
  puts ""
  string_array = str.split(", ")
  str_only = []
  int_only = []

  string_array.each do |element|
    if element.to_i.to_s == element
      int_only << element
    else
      str_only << element
    end
  end
  print str_only
  puts ""
  print int_only
end

def t_10__rotated_arr(arr)
  puts "The arrays length must be 3" if arr.length != 3
  rotated_arr = arr[1], arr[2], arr[0]
  print rotated_arr
end

def t_11__reverse_order_arr(arr)
  puts "The arrays length must be 3" if arr.length != 3
  print arr.reverse
end

def t_12__max_array_value(arr)
  puts "The arrays length must be 3" if arr.length != 3
  max_value = [arr.first, arr.last].max
  new_arr = arr.map { |e| e = max_value }

  print new_arr
end
