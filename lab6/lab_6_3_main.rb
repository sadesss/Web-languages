# frozen_string_literal: true

require_relative 'lab_6_3'

# через lambda-выражение
f = ->(num_x) { num_x + Math.cos(num_x) }
result_lambda1 = trap(-1, 4, &f)
puts "Результат первого интеграла с lambda-выражением: #{format('%.4f', result_lambda1)}"

f = ->(num_x) { Math.tan(num_x + 1) / (num_x + 1) }
result_lambda2 = trap(1, 2, &f)
puts "Результат второго интеграла с lambda-выражением: #{format('%.4f', result_lambda2)}"

# через блок
result_block1 = trap(-1, 4) { |num_x| num_x + Math.cos(num_x) }
puts "Результат первого интеграла с блоком: #{format('%.4f', result_block1)}"

result_block2 = trap(1, 2) { |num_x| Math.tan(num_x + 1) / (num_x + 1) }
puts "Результат второго интеграла с блоком: #{format('%.4f', result_block2)}"
