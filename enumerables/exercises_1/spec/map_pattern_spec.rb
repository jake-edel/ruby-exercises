RSpec.describe 'map pattern' do
  it 'capitalizes' do
    names = %w[alice bob charlie]
    capitalized_names = []
    names.each do |name|
      capitalized_names << name.capitalize
    end
    expect(capitalized_names).to eq(%w[Alice Bob Charlie])
  end

  it 'doubles' do
    numbers = [1, 2, 3, 4, 5]
    doubles = []
    numbers.each { |number| doubles << number * 2 }
    expect(doubles).to eq([2, 4, 6, 8, 10])
  end

  it 'squares' do
    numbers = [1, 2, 3, 4, 5]
    squares = []
    numbers.each { |number| squares << number * number }
    expect(squares).to eq([1, 4, 9, 16, 25])
  end

  it 'lengths' do
    names = %w[alice bob charlie david eve]
    lengths = []
    names.each { |name| lengths << name.length }
    expect(lengths).to eq([5, 3, 7, 5, 3])
  end

  it 'normalize zip codes' do
    numbers = [234, 10, 9119, 38_881]
    zip_code = []
    numbers.each do |number|
      zip_code << number.to_s.rjust(5, '0')
    end
    expect(zip_code).to eq(%w[00234 00010 09119 38881])
  end

  it 'backwards' do
    names = %w[alice bob charlie david eve]
    backwards = []
    names.each { |name| backwards << name.reverse }
    expect(backwards).to eq(%w[ecila bob eilrahc divad eve])
  end

  it 'words with no vowels' do
    words = %w[green sheep travel least boat]
    without_vowels = []
    words.each do |word|
      require 'pry-byebug'
      binding.pry
      without_vowels << word
    end
    expect(without_vowels).to  eq(%w[grn shp trvl lst bt])
  end

  it 'trims last letter' do
    animals = %w[dog cat mouse frog platypus]
    trimmed = []
    animals.each { |_animal| trimmed << animals[0..-1] }
    expect(trimmed).to eq(%w[do ca mous fro platypu])
  end
end
