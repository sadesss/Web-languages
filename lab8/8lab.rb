# frozen_string_literal: true

def armstrong?(number)
  digits = number.to_s.split('').map(&:to_i)
  num_n = digits.length
  digits.sum { |d| d**num_n } == number
end

def find_armstrong_numbers(num_n)
  armstrong_numbers = []
  (10**(num_n - 1)..(10**num_n - 1)).each do |num|
    armstrong_numbers << num if armstrong?(num)
  end
  armstrong_numbers
end

puts 'Введите количество цифр (n):'
num_n = gets.chomp.to_i

armstrong_numbers = find_armstrong_numbers(num_n)

if armstrong_numbers.empty?
  puts "Чисел Армстронга с #{num_n} цифрами не найдено."
else
  puts "Числа Армстронга с #{num_n} цифрами:"
  armstrong_numbers.each { |num| puts num }
  puts "Количество чисел Армстронга: #{armstrong_numbers.length}"
end
