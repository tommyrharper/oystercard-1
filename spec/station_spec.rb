require 'station'

describe Station do

  let(:station) { Station.new("waterloo", 2) }

  it 'can tell me which zone it is in' do
    expect(station.zone).to eq 2
  end

  it 'can tell me what its name is' do
    expect(station.name).to eq "waterloo"
  end

end