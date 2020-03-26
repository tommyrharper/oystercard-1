require 'journey'

describe Journey do

  it 'has an entry station' do
    journey = Journey.new
    journey.entry_station = "Bank"
    expect(journey.entry_station).to eq "Bank"
  end

  it 'has an exit station' do
    journey = Journey.new
    journey.exit_station = "Bow"
    expect(journey.exit_station).to eq "Bow"
  end

  it 'responds to the finish method' do
    expect(subject).to respond_to :finish
  end

  it 'responds to the fare method' do
    expect(subject).to respond_to :fare
  end

  it 'responds to the compelete method' do
    expect(subject).to respond_to :complete?
  end

  context "user doesn't #touch_in" do

    it "it doesn't have an entry_station" do
      journey = Journey.new
      journey.exit_station = "Bow"
      expect(journey.entry_station).to eq nil
    end

  end

end