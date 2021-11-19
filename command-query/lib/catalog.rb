class Catalog
  def initialize
    @items = []
  end

  def cheapest
    return if @items.empty?

    @items.min.name
  end

  def <<(other)
    @items << other
  end
end

class Product
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  def <=>(other)
    price <=> other.price
  end
end
