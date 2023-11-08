# frozen_string_literal: true

# класс Пациент
class Patient
  def initialize(last_name, age)
    @last_name = last_name
    @age = age
  end

  def puts_
    puts "Фамилия: #{@last_name}, Возраст: #{@age}"
  end
end

# класс Больной, класс наследник
class Illness < Patient
  def initialize(last_name, age, year_dispans)
    super(last_name, age)
    @year_dispans = year_dispans
  end

  def year_next_dispans
    @year_dispans + 3
  end
end
