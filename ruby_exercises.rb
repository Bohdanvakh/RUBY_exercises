def tasl_1___ruby_version()
  version = RUBY_VERSION
  patch_level = RUBY_PATCHLEVEL

  puts "Ruby Version: #{version}"
  puts "Ruby Version: #{patch_level}"
end

tasl_1___ruby_version

def task_2___date_time()
  date = Time.new
  date_format = date.strftime("%d/%m/%Y %H:%M")

  puts "Current Date and Time: " + date_format
end

task_2___date_time
