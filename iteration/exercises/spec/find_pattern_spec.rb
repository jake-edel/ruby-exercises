RSpec.describe 'find pattern' do
  it 'test 1' do
    ages = [39, 45, 29, 24, 50]
    younger_than_thirty = nil
    ages.each do |age|
      if age < 30
        younger_than_thirty = age
        break
      end
    end
    expect(younger_than_thirty).to eq(29)
  end

  it 'test 2' do
    ages = {
      abdi: 39,
      hassan: 45,
      ladonna: 29,
      margaret: 24,
      miguel: 50
    }
    younger_than_thirty = nil
    ages.each do |name, age|
      if age < 30
        younger_than_thirty = name
        break
      end
    end
    expect(younger_than_thirty).to eq(:ladonna)
  end

  it 'test 3' do
    ages = [39, 45, 29, 24, 50]
    older_than_fifty = nil
    ages.each do |age|
      return age if age > 50
    end

    expect(older_than_fifty).to be_nil
  end

  it 'test 4' do
    ages = {
      abdi: 39,
      hassan: 45,
      ladonna: 29,
      margaret: 24,
      miguel: 50
    }
    older_than_fifty = nil
    ages.each do |name, _age|
      return name if ages[name] > 50
    end

    expect(older_than_fifty).to be_nil
  end

  it 'test 5' do
    ages = [39, 45, 29, 24, 50]
    multiple_of_three = nil
    ages.each do |age|
      multiple_of_three = age
      break if age % 3 == 0
    end

    expect(multiple_of_three).to eq(39)
  end

  it 'test 6' do
    ages = {
      abdi: 39,
      hassan: 45,
      ladonna: 29,
      margaret: 24,
      miguel: 50
    }
    multiple_of_three = nil
    ages.each do |name, age|
      if age % 3 == 0
        multiple_of_three = name
        break
      end
    end
    expect(multiple_of_three).to eq(:abdi)
  end

  it 'test 7' do
    people = ['Willie', 'Carmen Sandiego', 'Bryan', 'Faith', 'Zac']
    carmen = ''
    people.each do |person|
      carmen = person if person == 'Carmen Sandiego'
    end
    expect(carmen).to eq('Carmen Sandiego')
  end

  it 'test 8' do
    places = {
      Bangkok: 'Willie',
      Santa_Fe: 'Carmen Sandiego',
      Rome: 'Bryan',
      Munich: 'Faith',
      Mogudishu: 'Zac'
    }
    where_is_carmen_sandiego = ''
    places.each do |place|
      if place[1] == 'Carmen Sandiego'
        where_is_carmen_sandiego = place[0]
        break
      end
    end
    expect(where_is_carmen_sandiego).to eq(:Santa_Fe)
  end

  it 'test 9' do
    numbers = [3, 7, 13, 11, 10, 2, 17]
    even = 0
    numbers.each do |num|
      if num.even?
        even = num
        break
      end
    end
    expect(even).to eq(10)
  end

  it 'test 10' do
    purchases = {
      'shoes' => :paid,
      'backpack' => :paid,
      'books' => :pending,
      'posters' => :paid,
      'food' => :pending
    }
    pending = ''
    purchases.each do |purchase, status|
      if status == :pending
        pending = purchase.to_sym
        break
      end
    end

    expect(pending).to eq(:books)
  end

  it 'test 11' do
    purchases = {
      'shoes' => :paid,
      'backpack' => :paid,
      'books' => :pending,
      'posters' => :paid,
      'food' => :pending
    }
    starts_with_b = ''
    purchases.each do |purchase|
      if purchase[0].start_with?('b')
        starts_with_b = purchase[0]
        break
      end
    end

    expect(starts_with_b).to eq('backpack')
  end
end
