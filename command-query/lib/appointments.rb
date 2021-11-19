class Appointments
  attr_writer :times

  def initialize
    @times = []
  end

  def earliest
    return nil if @times.empty?

    @times.min
  end

  def at(time)
    @times << time
  end
end
