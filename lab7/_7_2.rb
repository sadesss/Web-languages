# frozen_string_literal: true

# _7_2.rb

require 'minitest/autorun'
require_relative '7_2'
# parent patient verification class
class PatientTest < Minitest::Test
  # initialize
  def setup
    @patient1 = Patient.new('Ivanova', 18)
  end

  # checking output and errors
  def test_puts_
    out, _err = capture_subprocess_io do
      @patient1.puts_
    end
    assert_match 'Last name: Ivanova, Age: 18', out
  end

  # checking the compliance of the class
  def test_children
    assert_kind_of Patient, @patient1
  end
end

# patient verification class
class IllnessTest < Minitest::Test
  def setup
    @ill = Illness.new('Petrov', 45, 2020)
  end

  # checking output and errors
  def test_puts2
    output = capture_io do
      @ill.puts_
    end
    assert_equal "Last name: Petrov, Age: 45\n", output.join
  end

  # checking  the year of dispans
  def test_year_disp
    assert_equal 2023, @ill.year_next_dispans
  end

  # checking on the class Patient's children
  def test_children2
    assert_kind_of Patient, @ill
  end
end
