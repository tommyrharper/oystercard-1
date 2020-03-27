require_relative 'journey.rb'

class Oystercard
  attr_reader :balance, :entry_station, :journeys
  CARD_LIMIT = 90
  MINIMUM_FUNDS = 1
  AMOUNT = 1

  def initialize(balance = 0)
    @balance = 0
    @entry_station 
    @journeys = []
    @journey = Journey.new
  end

  def top_up(amount)
    raise 'Over limit' if @balance + amount > CARD_LIMIT
    @balance = amount
  end

  def touch_in(station)
    raise "insufficient balance" if @balance < MINIMUM_FUNDS
    #@entry_station = station
    #save_start_journey(station)
    # new code starts here:

    if @journey.entry_station != nil && @journey.exit_station == nil
      @journey.finish("didn't touch out")
      @journeys << @journey
      @journey = Journey.new
      @journey.entry_station = station
    else
      @journey = Journey.new
      @journey.entry_station = station
    end
  end

  def touch_out(station)
    deduct(AMOUNT)
    #@entry_station = nil
    #@journey[:exit] = station
    # new code starts here:
    #@journey.exit_station = station

    @journey.finish(station)
    @journeys << @journey
    #@journey = nil
    station

  end

  #def in_journey?
    #entry_station == nil ? false : true
  #end

 private

  def deduct(amount)
    @balance -= amount
  end

  #def save_start_journey(station)
  #  @journey = Hash.new
  #  @journey[:entry] = station
  #  @journeys.push(@journey)
  #end
  
end

#When your tests are all green, refactor to remove the in_journey variable.
#Rewrite the in_journey? method to infer its status based on whether or not there is an entry station



