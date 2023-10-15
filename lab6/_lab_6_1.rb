# _lab_6_1.rb
# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'lab_6_1'

# класс для проверки ошибок
class MyTest < Minitest::Test
  def test_func
    data = [[1e-3, 1.6176470588235294], [1e-4, 1.6179775280898876], [1e-5, 1.6180257510729614]]
    data.each do |arr, expected|
      value = calc(arr)
      assert_equal(expected, value)
    end
  end
end
