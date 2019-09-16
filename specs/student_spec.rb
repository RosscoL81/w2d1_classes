require("minitest/autorun")
require("minitest/rg")
require_relative("../student")

class TestStudent < MiniTest::Test

  def test_get_student_name
    student = Student.new("Ross L", "E34", "Ruby")
    assert_equal("Ross L", student.get_student_name())
  end

  def test_get_cohort
    student = Student.new("Ross L", "E34", "Ruby")
    assert_equal("E34", student.get_cohort())
  end

  def test_set_student_name
    student = Student.new("Ross L", "E34", "Ruby")
    student.set_student_name("Hayden")
    assert_equal("Hayden", student.get_student_name())
  end

  def test_set_cohort
    student = Student.new("Ross L", "E34", "Ruby")
    student.set_cohort("E33")
    assert_equal("E33", student.get_cohort())
  end

  def test_can_talk
    student = Student.new("Ross L", "E34", "Ruby")
    assert_equal("I can talk.", student.can_talk())
  end

  def test_get_language
    student = Student.new("Ross L", "E34", "Ruby")
    assert_equal("I love Ruby!", student.get_language())
  end

end
