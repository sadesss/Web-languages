# frozen_string_literal: true

require 'minitest/autorun'
require_relative '7_1'

# some class
class TestFiles < Minitest::Test
  def write_lines
    File.open('F.txt', 'w') { |file| file.puts 'строка1' }
    File.open('G.txt', 'w') { |file| file.puts 'начальная строка' }
  end

  def test_copy
    file_f = File.open('F.txt', 'r')
    file_g = File.open('G.txt', 'a')

    work(file_f, file_g)
    lines = File.readlines('G.txt').map(&:chomp)
    assert_equal ['начальная строка строка1'], lines
  end
end
