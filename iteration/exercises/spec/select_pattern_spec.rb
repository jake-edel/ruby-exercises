RSpec.describe 'select pattern' do
  it 'test 1' do
    numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    evens = []
    numbers.each do |number|
      evens << number if number.even?
    end
    expect(evens).to eq([2, 4, 6, 8, 10])
  end

  it 'test 2' do
    numbers = {
      one: 1,
      two: 2,
      three: 3,
      four: 4,
      five: 5
    }
    evens = {}
    numbers.each do |name, number|
      evens[name] = number if number.even?
    end

    expected = {
      two: 2,
      four: 4
    }
    expect(evens).to eq(expected)
  end

  it 'test 3' do
    rainbow = %w[red orange yellow green blue indigo violet]
    greater_than_four = []
    rainbow.each do |color|
      greater_than_four << color if color.length > 4
    end

    expect(greater_than_four).to eq(%w[orange yellow green indigo violet])
  end

  it 'test 4' do
    rainbow = {
      first: 'red',
      second: 'orange',
      third: 'yellow',
      fourth: 'green',
      fifth: 'blue',
      sixth: 'indigo',
      seventh: 'violet'
    }
    greater_than_four = {}
    rainbow.each do |position, color|
      greater_than_four[position] = color if color.length > 4
    end

    expected = {
      second: 'orange',
      third: 'yellow',
      fourth: 'green',
      sixth: 'indigo',
      seventh: 'violet'
    }
    expect(greater_than_four).to eq(expected)
  end

  it 'test 5' do
    furniture = ['dining table', 'bed', 'coffee table', 'deck chairs']
    words_with_c = []
    furniture.each do |obj|
      words_with_c << obj if obj.include?('c')
    end
    expect(words_with_c).to eq(['coffee table', 'deck chairs'])
  end

  it 'test 6' do
    furniture = {
      dining_room: 'dining table',
      bedroom: 'bed',
      living_room: 'coffee table',
      patio: 'deck chairs'
    }
    words_with_c = {}
    furniture.each do |obj, name|
      words_with_c[obj] = name if name.include?('c')
    end
    expected = {
      living_room: 'coffee table',
      patio: 'deck chairs'
    }
    expect(words_with_c).to eq(expected)
  end

  it 'test 7' do
    meals = ['chips and salsa', 'chicken alfredo', 'banana pudding']
    two_words = []
    meals.each do |meal|
      two_words << meal if meal.split(' ').size == 2
    end
    expect(two_words).to eq(['chicken alfredo', 'banana pudding'])
  end

  it 'test 8' do
    meal = {
      appetizer: 'chips and salsa',
      entre: 'chicken alfredo',
      dessert: 'banana pudding'
    }
    two_words = {}
    meal.each do |course, name|
      two_words[course] = name if name.split(' ').size == 2
    end

    expected = {
      entre: 'chicken alfredo',
      dessert: 'banana pudding'
    }
    expect(two_words).to eq(expected)
  end

  it 'test 9' do
    prices = [3, 1.4, 3.5, 2, 4.9, 9.1, 8.0]
    floats = []
    prices.each do |price|
      floats << price if price.instance_of?(Float)
    end
    expect(floats).to eq([1.4, 3.5, 4.9, 9.1, 8.0])
  end

  it 'test 10' do
    items = {
      tv: 3,
      toaster: 1.4,
      basketball: 3.5,
      bucket: 2,
      lint_roller: 4.9,
      sack_o_potatoes: 9.1,
      tonka_truck: 8.0
    }
    floats = {}
    items.each do |item, price|
      floats[item] = price if price.instance_of?(Float)
    end

    expected = {
      toaster: 1.4,
      basketball: 3.5,
      lint_roller: 4.9,
      sack_o_potatoes: 9.1,
      tonka_truck: 8.0
    }
    expect(floats).to eq(expected)
  end
end
