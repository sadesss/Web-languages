# lab_5_2.rb
# frozen_string_literal: true


def func(arr)
  negative_found = false
  increasing = true
  arr.each_index do |ind|
    next unless negative_found == false

    cur = (arr[ind]).negative? ? ind : 0
    negative_found = arr[ind].negative?
    increasing = check(arr, ind) if ind != cur
  end
  puts increasing
  increasing
end

def check(arr, ind)
  flag = true
  flag = false if arr[ind - 1] > arr[ind]
  flag
end
