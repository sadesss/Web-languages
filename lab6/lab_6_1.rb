# frozen_string_literal: true

# lab_6_1.rb
def calc(epsilon, cur = 1.0, _prev = 0.0)
  return cur if (cur - 1.618033989).abs <= epsilon

  calc(epsilon, 1.0 + 1.0 / cur, cur)
end
