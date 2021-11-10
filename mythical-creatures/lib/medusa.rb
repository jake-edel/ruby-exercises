class Medusa
  attr_reader :name, :statues

  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(person)
    @statues.shift.petrified = false if @statues.size >= 3

    person.petrified = true
    @statues << person
  end
end

class Person
  attr_reader :name
  attr_writer :petrified

  def initialize(name)
    @name = name
    @petrified = false
  end

  def stoned?
    @petrified
  end
end
