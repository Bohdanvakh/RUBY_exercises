def task_45___employee_salary(category, experience)
  case category
  when 1
    salary = 3000
  when 2
    salary = 2000
  when 3
    salary = 1000
  else
    "Неправильна категорія"
  end

  case experience
  when 0..2
    bonus = 0
  when 2..4
    bonus = 0.1
  when 5..9
    bonus = 0.2
  else
    bonus = 0.3
  end

  employee_salary = salary + salary * bonus
  tax = employee_salary * 0.15
  employee_salary -= tax

  puts employee_salary
end


def task_46___4number_int()
  puts "Введіть чотиризначне число"
  number = gets.chomp.to_i

  # додаємо числа
  sum = number.digits.sum
  puts sum

  #перевіряємо на наявність однакових цифр
  is_dublicate = number.digits.uniq.length != 4
  if is_dublicate
    puts "В числі є однакові цифри"
  else
    puts "В числі немає однакових чисел"
  end

  #перевіряємо суму чисел
  first_two_sum = number.digits[0..1].sum
  last_two_sum = number.digits[2..-1].sum

  if first_two_sum == last_two_sum
    puts "Сума першої та другої пар цифр рівна"
  else
    puts "Сума першої та другої пар цифр нерівна"
  end
end


def task_47___parking()
  puts "Час заїзду на стоянку:"
  time_in = gets.chomp
  puts "Час виїзду на стоянку:"
  time_out = gets.chomp
  puts "Вартість години стоянки:"
  price_for_hour = gets.to_i

  total_price = 0

  hours_started, minutes_started = time_in.split(':').map(&:to_i)
  hours_finished, minutes_finished = time_out.split(':').map(&:to_i)

  total_hours = hours_finished.to_i - hours_started.to_i
  add_minutes = minutes_finished.to_i - minutes_started.to_i
  total_price = total_hours * price_for_hour

  if add_minutes > 10
    total_price += price_for_hour
  end

  puts "Час заїзду: #{time_in}"
  puts "Час виїзду: #{time_out}"
  puts "Ціна за годину паркування - #{price_for_hour}$"
  puts "Повна вартість паркування - #{total_price}$"
end
