require 'journey'

describe Journey do

  let(:station) { double :station, zone: 1}

  it 'has an entry station' do
    journey = Journey.new
    journey.entry_station = station
    expect(journey.entry_station).to eq station
  end

  it 'has an exit station' do
    journey = Journey.new
    journey.exit_station = station
    expect(journey.exit_station).to eq station
  end

  it 'responds to the finish method' do
    expect(subject).to respond_to :finish
  end

  it '#finish completes the journey' do

    expect(subject.finish(station)).to eq subject
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
      journey.exit_station = station
      expect(journey.entry_station).to eq nil
    end

  end

end