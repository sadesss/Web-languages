# frozen_string_literal: true

# lab_6_3.rb
def trap(num_a, num_b, &block)
  num_n = 1e+4
  num_h = (num_b - num_a).to_f / num_n
  sum = 0.5 * (block.call(num_a) + block.call(num_b))

  (1...(num_n - 1)).each do |num_i|
    num_x = num_a + num_i * num_h
    sum += block.call(num_x)
  end

  sum *= num_h
end
