def task_37___return_11(num_1, num_2)
  if (num_1 == 11 && num_2 == 11) || (num_1 != 11 && num_2 != 11)
    print ("nums != 11")
  elsif (num_1 == 11 || num_2 == 11) || (num_1 + num_2 == 11) || (num_1 - num_2 == 11)
    print 11
  end
end


def task_38___more_than_20(num_1, num_2, num_3)
  if (num_1 - num_2).abs >= 20 || (num_1 - num_3).abs >= 20 || (num_2 - num_3).abs >= 20
    print true
  else
    print false
  end
end


def task_39___two_int_check(num_1, num_2)
  if num_1 == num_2
    print 0
  elsif num_1 % 5 == num_2 % 5
    print [num_1, num_2].min
  else
    print [num_1, num_2].max
  end
end


def task_40___two_int_digit_check?(num_1, num_2)
  if (10..99).include?(num_1) && (10..99).include?(num_2)
    num_1str = num_1.to_s
    num_2str = num_2.to_s
    fount_num = false

    num_1str.each_char do |digit1|
      if num_2str.include?(digit1)
        fount_num = true
      end
    end
    puts fount_num
  else
    print "nums should be between 10 and 99"
  end
end


def task_41___nums_x_y_z(x, y, z)
  if (y - z) < 3
    puts false
  elsif (x - y).abs <= 1 && (x - z).abs >= 3 || (x - z).abs <= 1 && (x - y).abs >= 3
    puts true
  end
end


def task_42___rabbit_turtle()
  puts "Введіть відстань між містами (км):"
  distance = gets.chomp.to_f
  puts "Яка швидкість зайця? (км/год)"
  rabbit_s = gets.chomp.to_f
  puts "Яка швидкість черепахи? (км/год)"
  turtle_s = gets.chomp.to_f

  time = distance / (rabbit_s  + turtle_s)
  rabbit_distance = rabbit_s * time
  turtle_distance = turtle_s * time

  b_city_distance = distance - rabbit_distance # від відстані віднімаємо відстань що пробіг заєць від міста А
  puts "Заєць та черепаха зустрінуться на відстані #{b_city_distance} км від міста B"
end


def task_43___fly_and_bicyclist()
  puts "Введіть відстань між містами (км):"
  distance = gets.chomp.to_f
  puts "Яка швидкість велосипедиста? (км/год)"
  bicyclist_s = gets.chomp.to_f
  puts "Яка швидкість мухи? (км/год)"
  fly_s = gets.chomp.to_f

  time = distance / bicyclist_s
  fly_distance = fly_s * time

  puts "Муха налітає #{fly_distance} кілометрів за час, коли велосипедисть доїде до міста В"
end


def task_44___next_day_date()
  require "date"

  today = Date.today
  tomorrow = today + 1

  puts "Сьогоднішня дата: #{today}"
  puts "Завтрашня дата: #{tomorrow}"
end
