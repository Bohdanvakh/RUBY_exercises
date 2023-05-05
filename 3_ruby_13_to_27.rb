def t_13__array_concatenate(arr)
  print arr.flatten
end

def t_14__array_has_3or5(arr)
  print arr.count(3) == 2 || arr.count(5) == 2
end

def t_15__max_odd_value(arr)
  puts arr.reject(&:even?).map(&:to_i).max
end

def t_16__new_array(arr)
  print arr.first(3)
end

def t_17__even_int_number(arr)
  puts arr.count(&:even?)
end

def t_18__large_small_difference(arr)
  puts arr.max - arr.min
end

def t_19__compute_average_values(arr)
  arr.delete(arr.min)
  arr.delete(arr.max)
  print arr.sum / arr.length
end

def t_20__sum_except_17(arr)
  sum = 0
  i = 0

  while i < arr.length
    arr[i] == 17 ? i = i+1 : sum = sum+arr[i]
    i += 1
  end
  puts sum
end

def t_21__sum_every_third_elem(arr)
  puts arr.sum { |e| e % 3 == 0 }
end

def t_22__check_3_or_5(arr)
  puts arr.all? { |e| e == 3|| e == 5 }
end

def t_23__value_everywhere(arr, value)
  (0..arr.length-2).each do |i|
    if arr[i] != value || arr[i+1] != value
      return false
    end
  end
  return true
end

def t_24__next_num(arr)
  print "Array doesn't contain neither 3 nor 5 element." if arr.count(3) == 0 && arr.count(5) == 0

  has_33 = false
  has_55 = false

  arr.each_cons(2) do |a, b|
    has_33 = a == 3 && b == 3
    has_55 = a == 5 && b == 5
  end

  print has_33 ^ has_55
end

def t_25__next_or_separated(arr)
  print "Array doesn't contain 6" if arr.count(6) == 0

  arr.each_cons(3) do |a, b, c|
    return arr.count(6) == 2
  end
end

def t_26__three_somewhere_later(arr)
  print "Array doesn't contain neither 2 nor 3 element." if arr.count(2) == 0 && arr.count(3) == 0

  puts arr.find_index(2) < arr.find_index(3)
end

def t_27__array_to_hash(arr)
  hash = {}

  arr.each do |value| hash[value] = nil end

  puts "Original array:"
  print arr
  puts "\nIndex Hash:"
  print hash
end
