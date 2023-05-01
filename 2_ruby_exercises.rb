require 'numbers_and_words'

def t_1__string_statistics()
  puts "Your string: "
  str = gets.chomp

  puts "Number of characters: #{str.length}"
  puts "Number of letters: #{(str.scan(/[a-zA-Z]/).size)}"
  puts "Number of lowercase letters: #{(str.scan(/[a-z]/).size)}"
  puts "Number of uppercase letters: #{(str.scan(/[A-Z]/).size)}"
  puts "Number of numbers: #{(str.scan(/[0-9]/).size)}"
  puts "Number of punctuation marks: #{(str.scan(/[[:punct:]]/).size)}"
  puts "Number of spaces: #{(str.count(" "))}"
end

def t_2__uppercase_and_remove()
  puts "Your string: "
  str = gets.chomp
  puts "Your number: "
  n = gets.chomp.to_i

  result = str.each_char.each_slice(n).map do |slice|
    slice.each_with_index.map { |char, i| i == n-1 ? char.upcase : char }.join
  end.join

  last_uppercase_index = result.rindex(/[A-Z]/)
  return puts (result = result[0..last_uppercase_index-1]) if last_uppercase_index
end

def t_3__change_word()
  text = "Заданий текст, для прикладу пошуку та заміни заданої фрази"

  puts "Введіть слово/фразу для перевірки та заміни фрази: "
  your_phrase = gets.chomp

  if text.include?(your_phrase)
    puts "Ця фраза існує, ви можете замінити її"
    puts "Введіть нову фразу: "
    new_phrase = gets.chomp
    puts text.gsub(your_phrase, new_phrase)
  else
    puts "Такого в реченні немає :(("
  end
end

def t_4__array_of_words(arr, index, str, delete = false)

  if delete
    arr.delete_at(index)
  else
    arr.insert(index, str)
  end

  print arr
end
#array = ["one", "two", "three"]
#t_4__array_of_words(array, 3, "four")

def t_5__check_parentheses(exp)
  stack = []
  opening_parentheses = ['(', '[', '{']
  closing_parentheses = [')', ']', '}']
  parentheses_pairs = { ')' => '(', ']' => '[', '}' => '{' }

  exp.each_char do |char|
    if opening_parentheses.include?(char)
      stack.push(char)
    elsif closing_parentheses.include?(char)
      if stack.empty? || stack.pop != parentheses_pairs[char]
        puts false
      end
    end
  end

  puts stack.empty?
end

def t_6__calculator()
  puts "Введіть вираз: "
  exp = gets.chomp

  unless exp.match?(/^[0-9+\-*\/\(\)\s]+$/)
    puts "Вираз введено некоректно"
  end

  puts eval(exp)
end

# не зовсім впевнений що правильно зрозумів завдання
# Написати функцію, що перетворює дробове або ціле число в рядок.
def t_7__int_to_string(int)
  puts int.to_s
end

def t_8__string_to_int(str)
  begin
    Integer(str)
    puts str
  rescue ArgumentError
    begin
      Float(str)
      puts str
    rescue ArgumentError
      puts "Input is not a valid number."
    end
  end
end

# we can use "numbers_and_words" gem
def t_9__number_to_string()
  puts "Enter a number between 1 and 1000000:"
  number = gets.chomp.to_i
  if number.between?(1, 1000000)
    puts number_in_words = number.to_words
  else
    puts "invalid number"
  end
end

t_9__number_to_string()

def t_10__is_palindrome(str)
  str = str.downcase.gsub(/\s+/, "")
  str == str.reverse ? puts("рядок є паліндромом") : puts("рядок не є паліндромом")
end

def t_11__word_repetition()
  puts "Enter a sentence:"
  str = gets.chomp
  puts "Enter a word:"
  word = gets.chomp

  puts str.downcase.scan(word).count
end
