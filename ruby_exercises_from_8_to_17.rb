def task_8___check_nums(num1, num2, num3)
  nums = [num1, num2, num3]
  nums.each do |i|
    i.between?(1, 10) ? puts(true) : puts(false)
  end
end


def task_9___check_nums_2(num1, num2, num3)
  nums = [num1, num2, num3]
  if  (nums[0].between?(1, 10) && nums[1].between?(1, 10) && nums[2].between?(1, 10)) ||
      (nums[0].between?(1, 10) && !nums[1].between?(1, 10) && !nums[2].between?(1, 10)) ||
      (!nums[0].between?(1, 10) && !nums[1].between?(1, 10) && nums[2].between?(1, 10)) ||
      (nums[0].between?(1, 10) && !nums[1].between?(1, 10) && !nums[2].between?(1, 10)) ||
      (!nums[0].between?(1, 10) && nums[1].between?(1, 10) && !nums[2].between?(1, 10)) ||
      (!nums[0].between?(1, 10) && !nums[1].between?(1, 10) && nums[2].between?(1, 10))
    puts true
  else
    puts false
  end
end


def task_10___print_doc(file)
  File.open(file, 'r') do |file|
    puts file.read
  end
end


def task_11___add_if(string)
  if string.start_with?("if")
    puts string
  else
    puts ("if " + string)
  end
end


def task_12___string_from_string(string, n)
  new_string = string[0..2] # three characters of the string
  new_string *= n # new string * n times
  puts new_string
end


def task_13___sphere_radius()
  puts "Input the radius of the circle: "
  sphere_radius = gets.to_i

  sphere_volume = 4 / 3 * Math::PI * sphere_radius ** 3
  puts "The volume of the sphere is: " + sphere_volume.to_s
end


def task_14___exchanged_characters(string)
  if string.length <= 1
    puts string
  else
    first_character = string[0]
    last_characters = string[-1]
    other_symbols = string[1..-2]

    new_word = last_characters + other_symbols + first_character
    puts new_word
  end
end


def task_15___check_integers(num_1, num_2)
  num_1 == 20 || num_2 == 20 ? print(true) : print(num_1 + num_2)
end


def task_16___max_number(num_1, num_2, num_3)
  nums = {:x => num_1, :y => num_2, :z => num_3}
  max_value = nums.values.max
  max_value_key = nums.key(max_value)

  puts(max_value_key.to_s + " = " + max_value.to_s + " is greater.")
end


def task_17___number_within(num)
  if num.between?(10, 100)
    puts "the number is within 10 - 100"
  elsif num.between?(100, 200)
    puts "the number is within 100 - 200"
  else
    puts "the number is out of range"
  end
end
