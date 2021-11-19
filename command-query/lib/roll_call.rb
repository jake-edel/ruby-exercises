class RollCall
  def initialize
    @students = []
  end

  def <<(name)
    @students.push(name)
  end

  def longest_name
    return nil if @students.empty?

    @longest = @students.max { |name1, name2| name1.size <=> name2.size }

    @longest
  end
end
