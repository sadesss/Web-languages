# frozen_string_literal: true

# lab_5_2_main.rb
require_relative 'lab_5_2'
puts 'Введите последовательность'
sequence = gets.split(' ').map(&:to_i)
result = func(sequence)
puts "Результат: #{result}"
