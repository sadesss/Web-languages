# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'lab_5_1'

# класс для проверки ошибок
class MyTest < Minitest::Test
  def test_func
    data = [[1, -0.16], [Math::PI, 0.00], [Math::PI * 0.5, -0.21], [Math::PI * 0.25, -0.12], [Math::PI / 3, -0.16]]
    data.each do |num, expected|
      value = func(num)
      assert(expected, value)
    end
  end
end
