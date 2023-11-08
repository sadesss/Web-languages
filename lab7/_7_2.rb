# frozen_string_literal: true

require 'minitest/autorun'
require_relative '7_2'
# класс проверки пациента-родителя
class PatientTest < Minitest::Test
  # инициализирую
  def setup
    @patient1 = Patient.new('Иванова', 18)
  end

  # проверка вывода и ошибок
  def test_puts_
    out, _err = capture_subprocess_io do
      @patient1.puts_
    end
    assert_match 'Фамилия: Иванова, Возраст: 18', out
  end

  # проверка соответсвию класса
  def test_children
    assert_kind_of Patient, @patient1
  end
end

# класс проверки больного
class IllnessTest < Minitest::Test
  # инициализация
  def setup
    @ill = Illness.new('Петров', 45, 2020)
  end

  # проерка вывода и ошибок
  def test_puts2
    output = capture_io do
      @ill.puts_
    end
    assert_equal "Фамилия: Петров, Возраст: 45\n", output.join
  end

  # проверка подсчета года диспансеризации
  def test_year_disp
    assert_equal 2023, @ill.year_next_dispans
  end

  # проверка на детей пациента
  def test_children2
    assert_kind_of Patient, @ill
  end
end
