RSpec.describe 'max and min by pattern' do
  it 'test 1'  do
    numbers = [1, 100, 1000, 100_000_000]
    greatest = numbers[0]
    numbers.each do |number|
      greatest = number if number > greatest
    end
    expect(greatest).to eq(100_000_000)
  end

  it 'test 2' do
    magnitudes = {
      ones: 1,
      hundreds: 100,
      thousands: 1000,
      millions: 1_000_000
    }
    greatest = magnitudes[magnitudes.keys[0]]
    magnitudes.each do |_name, value|
      greatest = value if value > greatest
    end
    expect(greatest).to eq(1_000_000)
  end

  it 'test 3' do
    meals = %w[banana nuts salad steak cake]
    shortest_word = meals[0]
    meals.each do |meal|
      shortest_word = meal if meal.length < shortest_word.length
    end

    expect(shortest_word).to eq('nuts')
  end

  it 'test 4' do
    meals = {
      breakfast: 'banana',
      snack: 'nuts',
      lunch: 'salad',
      dinner: 'steak',
      dessert: 'cake'
    }
    shortest_word = meals[meals.keys.first]
    meals.each do |_meal, dish|
      shortest_word = dish if dish.length < shortest_word.length
    end

    expect(shortest_word).to eq('nuts')
  end

  it 'test 5' do
    stats = [3001, 431, 1695, 0.27601, 0.340]
    most_digits = stats[0]
    stats.each do |num|
      most_digits = num if num.to_s.length > most_digits.to_s.length
    end
    expect(most_digits).to eq(0.27601)
  end

  it 'test 6' do
    stats = {
      games_played: 3001,
      home_runs: 431,
      rbi: 1695,
      batting_average: 0.27601,
      on_base_percentage: 0.340
    }
    most_digits = stats[stats.values.first]
    stats.each do |_stat, value|
      most_digits = value if value.to_s.length > most_digits.to_s.length
    end

    expect(most_digits).to eq(0.27601)
  end

  it 'test 7' do
    ages = [39, 45, 29, 24, 50]
    oldest = ages.first
    ages.each do |age|
      oldest = age if age > oldest
    end

    expect(oldest).to eq(50)
  end

  it 'test 8' do
    ages = {
      abdi: 39,
      hassan: 45,
      ladonna: 29,
      margaret: 24,
      miguel: 50
    }
    oldest = {}
    oldest_age = ages.values.first
    ages.each do |name, age|
      next unless age > oldest_age

      oldest_age = age
      oldest = {}
      oldest[:name] = name.to_s
      oldest[:age] = age
    end
    oldest.to_h
    expected = { name: 'miguel', age: 50 }
    expect(oldest).to eq(expected)
  end

  it 'test 9' do
    programmers = [%w[katrina sandi jim aaron desi], %w[abby jon susan]]
    fewest_programmers = []
    programmer_count = programmers.first.size
    programmers.each do |lang|
      fewest_programmers = lang if lang.count < programmer_count
    end

    expect(fewest_programmers).to eq(%w[abby jon susan])
  end

  it 'test 10' do
    programmers = { ruby: %w[katrina sandi jim aaron desi], java: %w[abby jon susan] }
    programmer_count = programmers.values.first.count
    fewest_programmers = ''
    programmers.each do |lang, people|
      fewest_programmers = lang if people.size < programmer_count
    end

    expect(fewest_programmers).to eq(:java)
  end
end
