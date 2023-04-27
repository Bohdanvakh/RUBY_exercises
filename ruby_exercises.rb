def tasl_1___ruby_version()
  version = RUBY_VERSION
  patch_level = RUBY_PATCHLEVEL

  puts "Ruby Version: #{version}"
  puts "Ruby Version: #{patch_level}"
end

def task_2___date_time()
  date = Time.new
  date_format = date.strftime("%d/%m/%Y %H:%M")

  puts "Current Date and Time: " + date_format
end

def task_3___string_n_copy(string, n)
  output = ""

  n.times do |i|
    output += string * (i+1) + "\n"
  end

  puts output
end

def task_4___compute_circle_parameter()

  puts "Input the radius of the circle:"
  radius = gets.to_i

  pi = Math::PI
  area = radius ** 2 * pi
  perimeter = 2 * pi * radius

  perimeter_value = "The perimeter is " + perimeter.to_s + "."
  area_value = "The area is " + area.to_s + "."

  #return radious_value, area_value
  puts perimeter_value
  puts area_value
end

def task_5___check_string_start(strign)
  puts strign.start_with?("if")
end

def task_6___full_name()
  puts "Input your first name:"
  first_name = gets.chomp

  puts "Input your last name:"
  last_name = gets.chomp

  print("Hello #{last_name} #{first_name}")
end
