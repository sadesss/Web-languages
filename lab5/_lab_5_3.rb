# frozen_string_literal: true

# _lab_5_3.rb

require 'minitest/autorun'
require 'faker'

require_relative 'lab_5_3'

# Class for Test
class TestStringCorrection < Minitest::Test
  def test_correction
    10.times do
      test_single_correction
    end
  end

  def test_single_correction
    word_count = rand(5..10)
    words = Faker::Lorem.words(number: word_count).join(' ')
    lengths = (1..word_count).map { rand(1..10) }.join(' ')

    result = correct_string(words, lengths)
    expected = words.split.zip(lengths.split.map(&:to_i)).map { |word, length| word[0, length] }.join(' ')

    assert_equal expected, result
  end
end
