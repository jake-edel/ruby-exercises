class Student
  def initialize
    @grade_index = 2
    @grades = %w[F D C B A]
  end

  def study
    @grade_index += 1 unless @grade_index >= @grades.size - 1

    @grade_index = 3 if @grade_index < 2
  end

  def slack_off
    @grade_index -= 1 unless @grade_index.zero?
  end

  def grade
    @grades[@grade_index]
  end
end
