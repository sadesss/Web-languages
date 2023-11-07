class ArmsController < ApplicationController
  def input;
  end

  def armstrong?(number)
    digits = number.to_s.split('').map(&:to_i)
    num_n = digits.length
    digits.sum { |d| d**num_n } == number
  end


  def output
    num_n = params[:val].to_i
    @armstrong_numbers = []
    (10**(num_n - 1)..(10**num_n - 1)).each do |num|
      @armstrong_numbers << num if armstrong?(num)
      end
    end
    @armstrong_numbers      
  end 

