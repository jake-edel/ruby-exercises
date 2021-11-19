class Direwolf
  attr_reader :name, :home, :size, :starks_to_protect

  def initialize(name, home = 'Beyond the Wall', size = 'Massive')
    @name = name
    @home = home
    @size = size
    @starks_to_protect = []
    @hunting = true
  end

  def protects(other)
    return unless @home == other.location && @starks_to_protect.count < 2

    @starks_to_protect << other
    # p @starks_to_protect
    other.safe = true
    @hunting = false
  end

  def hunts_white_walkers?
    @hunting
  end

  def leaves(other)
    other.safe = false

    @starks_to_protect.delete_at(@starks_to_protect.index(other))
  end
end

class Stark
  attr_reader :name, :location, :house_words
  attr_accessor :safe

  def initialize(name, location = 'Winterfell')
    @name = name
    @location = location
    @safe = false
    @house_words = 'Winter is Coming'
  end

  def safe?
    @safe
  end
end
