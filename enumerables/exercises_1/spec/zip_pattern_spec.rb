RSpec.describe 'zip pattern' do
  it 'speed interview pairs' do
    list1 = %w[Alice Bob Charlie]
    list2 = %w[Xenia Yves Zach]
    pairs = []
    list1.length.times do |i|
      pairs << [list1[i], list2[i]]
    end
    expect(pairs).to eq([%w[Alice Xenia], %w[Bob Yves], %w[Charlie Zach]])
  end

  it 'menu' do
    list1 = ['NY Strip Steak', 'Lamb Stew', 'Grilled Salmon']
    list2 = [29, 23, 26]
    prices = []
    list1.length.times do |i|
      prices << [list1[i], list2[i]]
    end
    expect(prices).to eq([['NY Strip Steak', 29], ['Lamb Stew', 23], ['Grilled Salmon', 26]])
  end

  it 'lottery tickets' do
    list1 = %w[Alice Bob Charlie]
    list2 = [298, 166, 237]
    tickets = []
    list1.length.times do |i|
      tickets << [list1[i], list2[i]]
    end
    expect(tickets).to eq([['Alice', 298], ['Bob', 166], ['Charlie', 237]])
  end

  it 'equivalent dna sequences' do
    strand1 = %w[G A T T A C A]
    strand2 = %w[G A T G A C A]
    pairs = []
    strand1.length.times do |i|
      pairs << [strand1[i], strand2[i]]
    end
    expect(pairs).to eq([%w[G G], %w[A A], %w[T T], %w[T G], %w[A A], %w[C C], %w[A A]])
  end

  it 'solitaire' do
    list1 = %w[Ace 6 10 Queen]
    list2 = %i[clubs diamonds hearts spades]
    cards = []
    # require 'pry-byebug'
    # binding.pry

    list1.length.times do |i|
      cards << [list1[i], list2[i]]
    end

    expect(cards).to eq([['Ace', :clubs], ['6', :diamonds], ['10', :hearts], ['Queen', :spades]])
  end

  it 'colors' do
    list1 = %w[shoes tie umbrella]
    list2 = %w[red pink black]
    fashion = []
    list1.length.times do |i|
      fashion << [list1[i], list2[i]]
    end
    expect(fashion).to eq([%w[shoes red], %w[tie pink], %w[umbrella black]])
  end
end
