# frozen_string_literal: true

# lab_6_2.rb

# основной класс
class Continue
  include Enumerable

  def initialize
    @q = 1.0
  end

  def each
    loop do
      yield @q
      @q = 1.0 + 1.0 / @q
    end
  end
end

def calc(epsilon)
  cf = Continue.new
  results = []

  cf.each do |q|
    results << q
    break if (q - 1.618033989).abs <= epsilon
  end

  results.last
end
