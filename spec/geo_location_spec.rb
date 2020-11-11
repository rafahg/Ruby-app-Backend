require 'geo_location.rb'

describe LocateIp do
  context 'Method' do
    it 'location ip should return a correct country' do
      ip = '212.73.32.0' # ip from spain
      expect(subject.location(ip)).to eq 'Spain'
      expect(subject.city).to eq 'Rojales'
    end
  end
end