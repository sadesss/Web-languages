# frozen_string_literal: true

# 7_1.rb

def work(file_f, file_g)
  file_f.each_line do |line|
    file_g.puts " #{line}"
  end

  puts 'Well done!'
end
