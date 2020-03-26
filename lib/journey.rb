class Journey

  attr_accessor :entry_station, :exit_station

  def initialize
    @entry_station
    @exit_station
  end

  def finish(station)
    @exit_station = station
    self
  end

  def fare

  end

  def complete?

  end

end
