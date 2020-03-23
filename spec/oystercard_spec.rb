require './lib/oystercard'


describe Oystercard do
  subject(:card) {Oystercard.new}

  it 'oystercard has a balance of 0' do
    expect(card).to have_attributes(:balance => 0)
  end

  context '#top_up' do
    it 'oystercard responds to method top_up' do
      expect(card).to respond_to :top_up
    end
  end

end
