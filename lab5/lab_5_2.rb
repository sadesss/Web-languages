# lab_5_2.rb
# frozen_string_literal: true


def func(arr)
  negative_found = false
  increasing = true
  arr.each_index do |ind|
    next unless negative_found == false

    cur, negative_found = arr[ind].negative? ? [ind, true] : [0, negative_found]
    increasing = ind != cur ? check(arr, ind) : increasing
  end
  puts increasing
  increasing
end

def check(arr, ind)
  flag = true
  flag = false if arr[ind - 1] > arr[ind]
  flag
end
