require 'journey'

describe Journey do

  it 'has an entry station' do
    journey = Journey.new
    journey.start("Bank")
    expect(journey.entry_station).to eq "Bank"
  end

  it 'has an exit station' do
    journey = Journey.new
    journey.end("Bow")
    expect(journey.exit_station).to eq "Bow"
  end

  context "user doesn't #touch_in" do

    it "it doesn't have an entry_station" do
      journey = Journey.new
      journey.end("Bow")
      expect(journey.entry_station).to eq nil
    end

  end

end