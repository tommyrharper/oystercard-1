# frozen_string_literal: true

class Oystercard
  attr_reader :balance, :journey
  CARD_LIMIT = 90
  MINIMUM_FUNDS = 1
  AMOUNT = 1

  def initialize(balance = 0)
    @balance = 0
    @journey = false
  end

  def top_up(amount)
    raise 'Over limit' if @balance + amount > CARD_LIMIT
    @balance = amount
  end

  def touch_in
    raise "insufficient balance" if @balance < MINIMUM_FUNDS
    @journey = true
  end

  def touch_out
    @journey = false
    deduct(AMOUNT)
  end

 private

  def deduct(amount)
    @balance -= amount
  end

end



