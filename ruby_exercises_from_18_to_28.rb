def task_18___sum_of_integers(num_1, num_2)
  if num_1 == num_2
    double_sum = (num_1 + num_2) * 2
    puts double_sum
  else
    sum = num_1 + num_2
    puts sum
  end
end


def task_19___print()
  str = "Ruby Basic Exercises"
  9.times do
    puts str
  end
end


def task_20___strign_front_and_back(strign)
  last_character = strign[-1]
  new_string = last_character + strign + last_character

  puts new_string
end


def task_21___print_nums()
  (34..41).each { |n| puts n }
end


def task_22___print_even_nums()
  (1..10).each do |n|
    puts n if n.even?
  end
end


def task_23___print_odd_nums()
  num = 10
  while num > 0
    puts num if num.odd?
    num -= 1
  end
end


def task_24___print_array()
  sample_array = ["Ruby", 2.3, Time.now]

  sample_array.each do |e|
    puts e
  end
end


def task_25___nums_last_digit(num_1, num_2)
  if num_1 > 0 && num_2 > 0
    if num_1 % 10 == num_2 % 10
      puts true
    end
  else
    print "Numbers can't be negative"
  end
end


def task_26___total_marks()
  subjects = {
    :Literature => 74,
    :Science => 89,
    :Math =>91
  }
  total_marks = subjects.values.sum

  puts "Total Marks: " + total_marks.to_s
end


def task_27___specified_character(character)
  20.times do
    print character
  end
end


def task_28___leap_year(year)
  if year % 400 == 0
    puts year.to_s + " is leap year"
  elsif year % 100 == 0
    puts year.to_s + " is not leap year"
  elsif year % 4 == 0
    puts year.to_s + " is leap year"
  else
    puts year.to_s + " is not leap year"
  end
end
