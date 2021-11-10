RSpec.describe 'all pattern' do
  it 'test 1' do
    account_balances = [0, 0, 0, 0, 0, 0, 0]
    all_zeros = true
    account_balances.each do |balance|
      all_zeros = false unless balance.zero?
    end
    expect(all_zeros).to be true
  end

  it 'test 2' do
    account_balances = {
      checking: 0,
      saving: 0,
      retirement_401k: 0,
      retirement_ira: 0
    }
    all_zeros = true
    account_balances.each do |_account, balance|
      all_zeros = false unless balance.zero?
    end
    expect(all_zeros).to be true
  end

  it 'test 3' do
    words = %w[love hate fire bird call]
    all_four_letters = true
    words.each do |word|
      all_four_letters = false if word.length != 4
    end
    expect(all_four_letters).to be true
  end

  it 'test 4' do
    words = {
      one: 'love',
      two: 'hate',
      three: 'fire',
      four: 'bird',
      five: 'call'
    }
    all_four_letters = true
    words.each do |_position, word|
      all_four_letters = false if word.length != 4
    end
    expect(all_four_letters).to be true
  end

  it 'test 5' do
    statuses = %i[busy busy busy]
    all_busy = true
    statuses.each do |status|
      all_busy = false if status != :busy
    end

    expect(all_busy).to be true
  end

  it 'test 6' do
    friend_status = {
      'Megan' => :busy,
      'Sarah' => :busy,
      'Duncan' => :busy
    }
    all_busy = true
    friend_status.each do |_name, status|
      all_busy = false if status != :busy
    end

    expect(all_busy).to be true
  end

  it 'test 7' do
    zip_codes = [94_381, 831, 50_009, 36_232, 8992, 89_999, 11_110]
    all_five_digits = true
    zip_codes.each do |zip|
      all_five_digits = false if zip.to_s.length != 5
    end
    expect(all_five_digits).to be false
  end

  it 'test 8' do
    zip_codes = {
      'Megan' => 94_381,
      'Sarah' => 831,
      'Duncan' => 50_009,
      'Raymart' => 36_232,
      'Alec' => 89_092,
      'Cameron' => 89_999,
      'Joshua' => 11_110
    }
    all_five_digits = true
    zip_codes.each do |_name, zip|
      all_five_digits = false if zip.to_s.length != 5
    end
    expect(all_five_digits).to be false
  end

  it 'test 9' do
    snacks = ['GARLIC PLANTAINS', 'SNICKERDOODLES', 'Pretzels']
    all_caps = true
    snacks.each do |snack|
      all_caps = false if snack != snack.upcase
    end
    expect(all_caps).to be false
  end

  it 'test 10' do
    snacks = {
      savory: 'GARLIC PLANTAINS',
      sweet: 'SNICKERDOODLES',
      salty: 'Pretzels'
    }
    all_caps = true
    snacks.each do |_flavor, name|
      all_caps = false if name != name.upcase
    end

    expect(all_caps).to be false
  end
end
