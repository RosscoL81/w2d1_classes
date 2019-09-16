class Student

  def initialize(input_student_name, input_cohort, input_language)
    @student_name = input_student_name
    @cohort = input_cohort
    @language = input_language
  end

  def get_student_name
    return @student_name
  end

  def get_cohort
    return @cohort
  end

  def set_student_name(new_name)
    @student_name = new_name
  end

  def set_cohort(new_cohort)
    @cohort = new_cohort
  end

  def can_talk()
    return "I can talk."
  end

  def get_language
    return "I love #{@language}!"
  end

end
