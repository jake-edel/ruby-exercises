class Clearance
  def initialize
    @items = []
  end

  def best_deal
    return nil if @items.empty?

    @items.max_by { |item| item.price_data[:percentage] }.name
  end

  def <<(other)
    @items << other
  end
end

class Item
  attr_reader :name, :price_data

  def initialize(name, price_data)
    @name = name
    @price_data = price_data
    price_data[:percentage] = price_data[:discount].to_f / price_data[:price].to_f
  end
end
