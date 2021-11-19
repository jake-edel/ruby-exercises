class Ogre
  attr_reader :name, :home, :swings, :encounter_counter

  def initialize(name, home = 'Swamp')
    @name = name
    @home = home
    @encounter_counter = 0
    @swings = 0
  end

  def encounter(other)
    @encounter_counter += 1
    other.encounter_counter += 1

    swing_at(other) if other.notices_ogre?
  end

  def swing_at(other)
    @swings += 1

    other.concious = false if @swings.even?
  end

  def apologize(other)
    other.concious = true
  end
end

class Human
  attr_reader :name
  attr_accessor :encounter_counter, :concious

  def initialize(name = 'Jane')
    @name = name
    @encounter_counter = 0
    @concious = true
  end

  def notices_ogre?
    @encounter_counter % 3 == 0
  end

  def knocked_out?
    !@concious
  end
end
