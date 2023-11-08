# frozen_string_literal: true

def work(file_f, file_g)
  file_f.each_line do |line|
    file_g.puts " #{line}"
  end

  puts 'Готово! Строки из файла F были скопированы в файл G с добавленными пробелами.'
end
