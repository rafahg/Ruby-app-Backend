
require 'geocoder'

class LocateIp
  attr_reader :result, :city, :country

  def initialize
    @result = result
    @city = city
    @country = country
  end

  def country_location(ip)
    coordinates = Geocoder.search(ip).first.coordinates
    @result = Geocoder.search(coordinates)
    @country = @result.first.country
  end

  def city_location(ip)
    coordinates = Geocoder.search(ip).first.coordinates
    @result = Geocoder.search(coordinates)
    @city = @result.first.city
  end
end


