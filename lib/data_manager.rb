require './lib/file_manager.rb'

class DataManager
  attr_reader :data, :data_pairs, :webs, :multi_visits

  def initialize(log)
    @data = FileManager.new(log)
    @data_pairs = []
    @webs = []
    @multi_visits = []
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

  def multi_counter
    temp = []
    data_pairs.each {|pair| temp.push(pair[0])}
    temp.each { |web| multi_visits.push([temp.count(web), web])}
    return multi_visits.uniq!
  end
  

  a = DataManager.new('webserver.log')
  a.organize_data_in_pairs
  a.single_webs
  p a.webs
end
