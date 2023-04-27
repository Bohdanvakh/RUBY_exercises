def tasl_1___ruby_version()
  version = RUBY_VERSION
  patch_level = RUBY_PATCHLEVEL

  puts "Ruby Version: #{version}"
  puts "Ruby Version: #{patch_level}"
end

#tasl_1___ruby_version

def task_2___date_time()
  date = Time.new
  date_format = date.strftime("%d/%m/%Y %H:%M")

  puts "Current Date and Time: " + date_format
end

#task_2___date_time

def task_3___string_n_copy(string, n)
  output = ""

  n.times do |i|
    output += string * (i+1) + "\n"
  end

  puts output
end

#task_3___string_n_copy("abo", 5)

def task_4___compute_circle_parameter(radius)
  pi = Math::PI
  area = radius ** 2 * pi

  radious_value = "Input the radius of the circle: The perimeter is " + radius.to_s + "."
  area_value = "The area is " + area.to_s + "."

  #return radious_value, area_value
  puts radious_value
  puts area_value
end

#task_4___compute_circle_parameter(31.41592653)

def task_5___check_string_start(strign)
  puts strign.start_with?("if")
end

task_5___check_string_start("something")
