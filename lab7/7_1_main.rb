# frozen_string_literal: true

# 7_1_main.rb

require_relative '7_1'

file_f = File.open('F.txt', 'r')
file_g = File.open('G.txt', 'a')

work(file_f, file_g)
