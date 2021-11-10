class Unicorn
  attr_reader :name, :color

  def initialize(name, color = 'silver')
    @name = name
    @color = color
  end

  def say(string)
    symbol = '**;*'
    "#{symbol} #{string} #{symbol}"
  end

  def silver?
    @color == 'silver'
  end
end
