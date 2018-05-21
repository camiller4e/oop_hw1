require("minitest/autorun")
require("minitest/rg")

require_relative("../student")

class TestStudent < MiniTest::Test

  def test_student_name
    student = Student.new("Dragon", "G5")
    assert_equal("Dragon", student.student_name)
  end

  def test_cohort
    student = Student.new("Dragon", "G5")
    assert_equal("G5", student.cohort)
  end

  def test_set_student_name
    student = Student.new("Dragon", "G5")

    student.set_student_name("Liam")

    assert_equal("Liam", student.student_name)
  end

  def test_set_cohort
    student = Student.new("Dragon", "G5")

    student.set_cohort("G6")

    assert_equal("G6", student.cohort)
  end

  def test_student_can_talk
    student = Student.new("Dragon", "G5")
    assert_equal("I can talk", student.student_talk)
  end

  def test_student_fav_language
    student = Student.new("Dragon", "G5")
    assert_equal("I love Ruby", student.favourite_language("Ruby"))
  end

end
