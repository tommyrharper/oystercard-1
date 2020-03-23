class Oystercard

  attr_reader :balance
  CARD_LIMIT = 90

  def initialize(balance = 0)
    @balance = balance
  end

  def top_up(amount)
    fail 'Over limit #{LIMIT_VALUE}' if @balance + amount > CARD_LIMIT
    @balance = amount
  end

  def deduct(amount)
    @balance -= amount 
  end
end
