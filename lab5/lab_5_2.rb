# lab_5_2.rb
# frozen_string_literal: true


def func(arr)
  negative_found = false
  increasing = true
  arr.each_index do |ind|
    next unless negative_found == false

    cur, negative_found = arr[ind].negative? ? [ind, true] : [0, negative_found]
    increasing = ind != cur ? arr[ind - 1] <= arr[ind] : increasing
  end
  increasing
end
