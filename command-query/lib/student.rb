class Student
  def initialize
    @grade = 1
  end

  def study
    @grade += 1 if @grade < 3

    @grade = 2 if @grade < 1
  end

  def slack_off
    @grade -= 1 if @grade > -2

    @grade = 2 if @grade > 1
  end

  def grade
    return 'A' if @grade > 2
    return 'F' if @grade < 0

    case @grade
    when 2
      'B'
    when 1
      'C'
    when 0
      'D'
    end
  end
end
