class Wizard
  attr_reader :name

  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @mana = 3
  end

  def bearded?
    @bearded
  end

  def incantation(string)
    "sudo #{string}"
  end

  def rested?
    @mana > 0
  end

  def cast
    @mana -= 1
    'MAGIC MISSLE!'
  end

end
