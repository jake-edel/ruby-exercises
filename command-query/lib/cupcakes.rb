class Cupcakes
  def initialize
    @sweetest = nil
    @cupcakes = []
  end

  def <<(other)
    @cupcakes << other
  end

  def sweetest
    return nil if @cupcakes.empty?

    @cupcakes.max_by { |cupcake| cupcake.sugar }
  end
end
