# frozen_string_literal: true

require_relative 'lab_6_3'

# через lambda-выражение
f = ->(num_x) { num_x + Math.cos(num_x) }
result_lambda = trap(-1, 4, &f)
puts "Результат с lambda-выражением: #{format('%.4f', result_lambda)}"

# через блок
result_block = trap(-1, 4) { |num_x| num_x + Math.cos(num_x) }
puts "Результат с блоком: #{format('%.4f', result_block)}"
