class Pirate
  attr_reader :name, :job

  def initialize(name, job = 'Scallywag')
    @name = name
    @job = job
    @heinous_acts = 0
    @booty = 0
  end

  def commit_heinous_act
    @heinous_acts += 1
  end

  def cursed?
    @heinous_acts >= 3
  end

  def booty_count
    @booty
  end

  def rob_ship
    @booty += 1
  end
end
