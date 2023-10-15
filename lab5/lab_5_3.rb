# frozen_string_literal: true

# lab_5_3.rb

# Разбиваем строку слов  и чисел на массивы, затем zipом объединяем массивы.
# По парам корректируем слова, проходясь по словам и длинам в соотв с условием. Объединяем все обратно в строку.

def correct_string(words, lengths)
  words_array = words.split(' ')
  lengths_array = lengths.split(' ').map(&:to_i)
  corrected_words = words_array.zip(lengths_array).map do |word, length|
    if word.length > length
      word[0, length]
    else
      word
    end
  end

  corrected_words.join(' ')
end
