class Centaur
  attr_reader :name, :breed

  def initialize(name, breed)
    @name = name
    @breed = breed
    @standing = true
    @fatigue = 0
    @sick = false
  end

  def shoot
    return disagree if @fatigue > 2 || !@standing

    @fatigue += 1
    'Twang!!!'
  end

  def run
    return disagree if @fatigue > 2 || !@standing

    @fatigue += 1
    'Clop clop clop clop!'
  end

  def cranky?
    @fatigue > 2
  end

  def disagree
    'NO!'
  end

  def standing?
    @standing
  end

  def sleep
    return disagree if @standing

    @fatigue = 0
  end

  def lay_down
    @standing = false
  end

  def laying?
    !@standing
  end

  def sick?
    @sick
  end

  def stand_up
    @standing = true
  end

  def drink_potion
    return unless @standing

    @sick = true if @fatigue == 0
    @fatigue = 0
  end
end
