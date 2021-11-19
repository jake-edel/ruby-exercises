class Children
  def initialize
    @children = []
  end

  def <<(child)
    @children.push(child)
  end

  def eldest
    return nil if @children.empty?

    oldest = @children[0]
    @children.each do |child|
      oldest = child if child.age > oldest.age
    end
    oldest
  end
  # children.max do |a, b|
  #   a.age <=> b.age
  # end
end

class Child
  attr_reader :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end
end
