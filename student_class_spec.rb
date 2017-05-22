require( 'minitest/autorun')
require( 'minitest/rg')
require_relative( 'student_class')

class TestStudent < MiniTest::Test

  def setup()
    @student = Student.new("Chris", 2, "Ruby")
    @student_two = Student.new("Jane", 1, "Python")
    @student_three = Student.new("Sean", 3, "Java")
  end

  def test_student_name()
    assert_equal("Chris", @student.get_student_name())
    assert_equal("Jane", @student_two.get_student_name())
    assert_equal("Sean", @student_three.get_student_name())
  end

  def test_student_cohort()
    assert_equal(2, @student.get_student_cohort())
    assert_equal(1, @student_two.get_student_cohort())
    assert_equal(3, @student_three.get_student_cohort())
  end

  def test_update_name()
    @student.set_student_name("Christina")
    assert_equal("Christina", @student.get_student_name())
  end

  def test_update_cohort()
    @student.set_student_cohort(1)
    assert_equal(1, @student.get_student_cohort())
  end

  def test_speech_return()
    assert_equal("I can talk", @student.speech_return())
    assert_equal("I can talk", @student_two.speech_return())
    assert_equal("I can talk", @student_three.speech_return())
  end

  def test_favourite_language()
    assert_equal("Ruby", @student.get_favourite_language())
    assert_equal("Python", @student_two.get_favourite_language())
    assert_equal("Java", @student_three.get_favourite_language())
  end

  def test_say_favourite_language()
    assert_equal("I love Ruby!", @student.say_favourite_language())
    assert_equal("I love Python!", @student_two.say_favourite_language())
    assert_equal("I love Java!", @student_three.say_favourite_language())
  end




end
