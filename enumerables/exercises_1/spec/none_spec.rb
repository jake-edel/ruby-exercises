RSpec.describe 'none' do
  it 'none are broken' do
    things = %w[functional working works fixed good]
    none_broken = things.none? do |thing|
      thing == 'broken'
    end
    expect(none_broken).to eq(true)
  end

  it 'double negative' do
    numbers = [9, 3, 3, 7, 6, -5, 1]
    not_none_negative = numbers.none? do |number|
      number.negative?
    end
    expect(not_none_negative).to eq(false)
  end

  it 'none are negative' do
    numbers = [9, 3, 1, 8, 3, 3, 5]
    none_negative = numbers.none? { |number| number.negative? }
    expect(none_negative).to eq(true)
  end

  it 'none shall pass' do
    critters = %w[elf hobbit dwarf wizard human]
    none_shall_pass = critters.none? { |critter| critter == 'shall pass' }
    expect(none_shall_pass).to eq(true)
  end

  it 'one or more shall pass' do
    phrases = ['go', 'left', 'can cross', 'shall pass', 'must stay', 'tarried']
    none_shall_pass = phrases.none? { |phrase| phrase == 'shall pass' }
    expect(none_shall_pass).to eq(false)
  end

  it 'none even' do
    numbers = [3, 9, 15, 21, 19]
    none_even = numbers.none? { |num| num.even? }
    expect(none_even).to eq(true)
  end
end
