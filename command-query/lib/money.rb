class Money
  attr_reader :amount

  def initialize
    @amount = 0
  end

  def earn(int)
    @amount += int
  end
end
