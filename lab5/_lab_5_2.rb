# _lab_5_2.rb
# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'lab_5_2'

# класс для проверки ошибок
class MyTest < Minitest::Test
  def test_func
    data = [[[1, 2, 3, 4, -5], true], [[1, -5, 6], true], [[1, 2, 4, 3, -5, 6], false], [[1, 2, 3, -5, 6, 2, -8], true]]
    data.each do |arr, expected|
      value = func(arr)
      assert_equal(expected, value)
    end
  end
end
