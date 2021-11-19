class Werewolf
  attr_reader :name, :location

  def initialize(name, location = '')
    @name = name
    @location = location
    @human = true
    @hungry = false
  end

  def change!
    @human = !@human
    @hungry = true unless @human
  end

  def human?
    @human
  end

  def wolf?
    !@human
  end

  def hungry?
    @hungry
  end

  def consume(person)
    return if @human

    person.status = :dead
    @hungry = false
  end
end
