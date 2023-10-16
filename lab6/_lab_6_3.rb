# _lab_6_3.rb
# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'lab_6_3'

# класс для проверки ошибок
class MyTest < Minitest::Test
  def test_lambda_tan
    f = ->(num_x) { Math.tan(num_x + 1) / (num_x + 1) }
    res12 = trap(1, 2, &f)
    assert_equal(format('%.4f', res12).to_c, -0.3769)
  end

  def test_block_tan
    res22 = trap(1, 2) { |num_x| Math.tan(num_x + 1) / (num_x + 1) }
    assert_equal(format('%.4f', res22).to_c, -0.3769)
  end

  def test_lambda_cos
    f = ->(num_x) { num_x + Math.cos(num_x) }
    res11 = trap(-1, 4, &f)
    assert_equal(format('%.4f', res11).to_c, 7.5847)
  end

  def test_block_cos
    res21 = trap(-1, 4) { |num_x| num_x + Math.cos(num_x) }
    assert_equal(format('%.4f', res21).to_c, 7.5847)
  end
end
