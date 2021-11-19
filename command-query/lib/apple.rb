class Apple
  def initialize
    @ripe = false
    @age_weeks = 0
  end

  def ripe?
    @age_weeks > 2
  end

  def wait_a_week
    @age_weeks += 1
  end
end
