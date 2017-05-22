class Student

  def initialize  (input_student_name, input_cohort, input_favourite_language)
    @student_name = input_student_name 
    @cohort = input_cohort
    @favourite_language = input_favourite_language
  end

  def get_student_name()
    return @student_name
  end

  def get_student_cohort()
    return @cohort
  end

  def set_student_name(name)
    @student_name = name
  end

  def set_student_cohort(new_cohort)
    @cohort = new_cohort
  end

  def speech_return()
    return "I can talk"
  end

  def get_favourite_language()
    return @favourite_language
  end

  def say_favourite_language()
    return "I love #{@favourite_language}!"
  end

end