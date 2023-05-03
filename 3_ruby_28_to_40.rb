def t_28__number_frequency(arr)
  puts "Original array:"
  print arr
  num_frequency = arr.inject(Hash.new(0)) do |h, e|
    h[e] += 1
    h
  end
  puts "\nFrequency of numbers:"
  print num_frequency
end

def t_29__identical_items(arr)
  puts "Original array:"
  print arr
  puts "\nIf all items are identical?"

  print arr.all? { |e| e == arr[0] }
end

def t_30__array_specified_str(arr, str)
  puts "Original array:"
  print arr
  puts "\nSearch items start with '#{str}':"
  print arr = arr.grep(/^#{str}/)
end

def t_31__array_reverse(arr)
  puts "Original array:"
  print arr
  puts "\nReverse array:"

  arr.reverse_each {|e| puts e }
end

def t_32__first_three_from_arr(arr)
  puts "Original array:"
  print arr
  puts "\nFirst 3 elements:"
  print arr.take(3)
end

def t_33__arr_by_length(arr)
  puts "Original array:"
  print arr
  puts "\nSorted array of strings by length"
  print arr.sort_by(&:length)
end

def t_34__compress_array(arr)
  array_0s = arr.count(0)
  arr.delete(0)
  arr.fill(-1, arr.length..((arr.length-1)+array_0s))
  print arr
end

def t_35__convers_negative_to_positive(arr)
  print arr.sort_by(&:to_i)
end

def t_36__count_num(arr, num)
  puts arr.count(num)
end

def t_37__swap_columns(arr, col1, col2)
  arr[col1], arr[col2] = arr[col2], arr[col1]
  print arr
end

def t_38__show_repeated_values(arr)
  return print("Array should be 10 characters long") if arr.length != 10
  print arr
  puts ''
  print arr.select { |value| arr.count(value) > 1 }.uniq
end

def t_39__smallest_nonpaired_num(arr)
  return print("Array should be 10 characters long") if arr.length != 10
  print arr
  puts ''
  odd_nums = arr.select { | item | item.odd? }
  puts odd_nums.min
end

def t_40__rotate_arr(arr, k, shift_left = false)
  if shift_left
    k.times do
      arr.push(arr.shift)
    end
  else
    k.times do
      arr.unshift(arr.pop)
    end
  end
  print arr
end
