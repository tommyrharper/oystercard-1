require './lib/oystercard'

describe Oystercard do
  it 'oystercard has a balance of 0' do
    expect(Oystercard.new).to have_attributes(:balance => 0)
  end
end

