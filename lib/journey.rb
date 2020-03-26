class Journey

  attr_reader :entry_station, :exit_station

  def initialize
    @entry_station
    @exit_station
  end

  def start(station)
    @entry_station = station
  end

  def end(station)
    @exit_station = station 
  end

end
