class Wallet
  attr_reader :cents

  def initialize
    @cents = 0
    @coins = {
      penny: 1,
      nickel: 5,
      dime: 10,
      quarter: 25
    }
  end

  def <<(coin)
    @cents += @coins[coin]
  end

  def take(*coin)
    coin.each { |coin| @cents -= @coins[coin] if @cents >= @coins[coin] }
  end
end
