def task_29___java_appears(str)
  if str[0, 4] == "Java"
    str_without_java = str[4..-1]
    puts str_without_java
  else
    puts str
  end
end


def task_30___string_two_characters(string)
  if string.length > 1
    if string[0] == "p" and string[1] == "s"
      new_string = string[0..1]

      puts new_string
    else
      puts ""
    end
  else
    puts ""
  end
end


def task_31___check_int_nearest_10(num_1, num_2)
  if num_1 == num_2
    print 0
  # elsif (10 - num_1).abs == (10 - num_2).abs
  #   print 0
  elsif (10 - num_1).abs < (10 - num_2).abs
    print num_1
  else
    print num_2
  end
end


def task_32___nums_in_range(num_1, num_2)
  if (10..20).include?(num_1) && (10..20).include?(num_2)
    print(true)
  elsif (20..30).include?(num_1) && (20..30).include?(num_2)
    print(true)
  else
    print(false)
  end
end


def task_33___max_num_in_range(num_1, num_2)
  max_value = [num_1, num_2].max
  (20..30).include?(max_value) ? puts(max_value) : puts(0)
end


def task_34___count_nums(*nums)
  count = nums.count(5)
  puts count
end


def task_35___check_two_nums(num_1, num_2)
  print "Should be integer and greater than 0" if num_1 < 0 || num_2 < 0 || !num1.is_a?(Integer) || !num2.is_a?(Integer)

  last_digit_num_1 = num_1 % 10
  last_digit_num_2 = num_2 % 10

  if last_digit_num_1 == last_digit_num_2
    puts true
  end
end


def task_36___sequence_of_nums(*nums)
  if nums.include?(10) && nums.include?(20) && nums.include?(30)
    if nums.index(10) && nums.index(20) && nums.index(30)
      if nums.index(10) + 1 == nums.index(20) && nums.index(20) + 1 == nums.index(30)
        puts true
      else
        puts false
      end
    else
      puts false
    end
  else
    puts false
  end
end
