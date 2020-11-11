require './lib/file_manager.rb'
require './lib/geo_location.rb'

class DataManager
  attr_reader :data, :data_pairs, :webs, :multi_visits, :single_visits, :uniq_pairs, :location, :ips,
 :countries, :contries_count
  
  def initialize(log)
    @location = LocateIp.new
    @data = FileManager.new(log)
    @data_pairs = []
    @uniq_pairs = []
    @webs = []
    @ips = []
    @multi_visits = []
    @single_visits = []
    @countries = []
    @countries_count = []
    end

  def organize_data_in_pairs
    data.file_data.map { |pair| data_pairs.push([pair]) }
    data_pairs.map! { |pair| pair[0].split(" ") }
  end
  
  def single_webs
    data_pairs.each do |web|
      webs.push(web[0]).uniq!    
    end
  end

  def single_ips
    data_pairs.each do |ip|
      ips.push(ip[1]).uniq!
    end
  end

  def countries_visit_count
    ips.each do |ip|
     @countries.push(location.country_location(ip))
    end
   # @countries.each do |country|
   # @contries_count.push([country, @countries.count(country)])
   # end
  end

  def multi_counter
    temp = []
    data_pairs.each { |pair| temp.push(pair[0]) }
    temp.each { |web| multi_visits.push([temp.count(web), web]) }
    return multi_visits.uniq!
  end

  def unique_visits
    data_pairs.uniq.each { |pair| uniq_pairs.push(pair[0]) }
  end

  def single_counter
    uniq_pairs.each { |web| single_visits.push([uniq_pairs.count(web), web]) }
    single_visits.uniq!.sort.reverse
  end

  def multi_data
    organize_data_in_pairs
    single_webs
    single_ips
    countries
    multi_counter
    unique_visits
    single_counter
  end

end
