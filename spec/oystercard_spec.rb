require './lib/oystercard'


describe Oystercard do
  subject(:card) {Oystercard.new}

  it 'oystercard has a balance of 0' do
    expect(card).to have_attributes(:balance => 0)
  end

  context '#top_up' do
    it 'oystercard responds to method top_up' do
      expect(card).to respond_to(:top_up).with(1).argument
    end
  end

    it 'can top up the balance' do
      expect{ subject.top_up 1 }.to change{ subject.balance }.by 1
    end

    it '#top_up fails if over balance' do
      expect{ card.top_up(95) }.to raise_error 'Over limit #{LIMIT_VALUE}'
    end



context '#deduct' do
  it 'oystercard responds to method deduct' do
    expect(card).to respond_to(:deduct).with(1).argument
  end

  it 'can top up the balance' do
    subject.top_up(20)
    expect{ subject.deduct(1) }.to change{ subject.balance }.by (-1)
    # what about if it goes under 0
  end
end

  end
