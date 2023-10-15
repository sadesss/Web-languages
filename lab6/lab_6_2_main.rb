# frozen_string_literal: true

# lab_6_2_main.rb
require_relative 'lab_6_2'

epsilon1 = 1e-3
epsilon2 = 1e-4

result1 = calc(epsilon1)
result2 = calc(epsilon2)

puts "Результат с точностью #{epsilon1}: #{result1}"
puts "Результат с точностью #{epsilon2}: #{result2}"
