# frozen_string_literal: true

class Oystercard
  attr_reader :balance, :entry_station
  CARD_LIMIT = 90
  MINIMUM_FUNDS = 1
  AMOUNT = 1

  def initialize(balance = 0)
    @balance = 0
    @entry_station
  end

  def top_up(amount)
    raise 'Over limit' if @balance + amount > CARD_LIMIT
    @balance = amount
  end

  def touch_in(station)
    raise "insufficient balance" if @balance < MINIMUM_FUNDS
    @entry_station = station
  end

  def touch_out
    deduct(AMOUNT)
    @entry_station = nil
  end

  def in_journey?
    entry_station == nil ? false : true
  end

 private

  def deduct(amount)
    @balance -= amount
  end
  
end

#When your tests are all green, refactor to remove the in_journey variable.
#Rewrite the in_journey? method to infer its status based on whether or not there is an entry station



