# lab_5_1.rb
# frozen_string_literal: true

def func(num)
  res = (1 - Math.sqrt(1 + Math.sin(num).abs)) / (2 + Math.cos(num)**2)
  format('%.2f', res)
end
