# frozen_string_literal: true

# _lab_5_3_main.rb

require_relative 'lab_5_3'

puts 'Введите строку слов:'
words = gets.chomp
puts 'Введите строку длин:'
lengths = gets.chomp

result = correct_string(words, lengths)
puts "Результат: #{result}"
