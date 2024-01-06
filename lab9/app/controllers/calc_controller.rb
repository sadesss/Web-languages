# frozen_string_literal: true

# app/controllers/calc_controller.rb
class CalcController < ApplicationController
  def input; end

  def output
    num_n = params[:val].to_i
    @armstrong_numbers = find_armstrong_numbers(num_n)

    puts 'Input value:', params[:val]
    puts 'Armstrong numbers:', @armstrong_numbers.inspect

    respond_to do |format|
      format.html { render partial: 'output', locals: { armstrong_numbers: @armstrong_numbers } }
      format.json { render json: { n: num_n, armstrong_numbers: @armstrong_numbers } }
    end
  end

  private

  def armstrong?(number)
    digits = number.to_s.split('').map(&:to_i)
    num_n = digits.length
    digits.sum { |d| d**num_n } == number
  end

  def find_armstrong_numbers(num_n)
    armstrong_numbers = []
    (10**(num_n - 1)..(10**num_n - 1)).each do |num|
      armstrong_numbers << num if armstrong?(num)
    end
    armstrong_numbers
  end
end
