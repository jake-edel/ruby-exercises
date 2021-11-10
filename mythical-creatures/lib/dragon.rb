class Dragon
  attr_reader :name, :color, :rider, :hungry

  def initialize(name, color, rider)
    @name = name
    @rider = rider
    @color = color
    @hungry = true
    @meals = 0
  end

  def hungry?
    @hungry
  end

  def eat
    @meals += 1
    @hungry = false if @meals >= 3
  end
end
