# frozen_string_literal: true

# 7_2.rb

# class Patient
class Patient
  def initialize(last_name, age)
    @last_name = last_name
    @age = age
  end

  def puts_
    puts "Last name: #{@last_name}, Age: #{@age}"
  end
end

# class Illness, class-child
class Illness < Patient
  def initialize(last_name, age, year_dispans)
    super(last_name, age)
    @year_dispans = year_dispans
  end

  def year_next_dispans
    @year_dispans + 3
  end
end
