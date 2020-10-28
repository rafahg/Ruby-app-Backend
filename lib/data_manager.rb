require './lib/file_manager.rb'

class DataManager
  attr_reader :data, :data_pairs, :webs

  def initialize(log)
    @data = FileManager.new(log)
    @data_pairs = []
    @webs = []
  end

  def organize_data_in_pairs
    data.file_data.map { |pair| data_pairs.push([pair])}
    data_pairs.map! { |pair| pair[0].split(" ") }
  end
  
  def single_webs
    data_pairs.each do |web|
      webs.push(web[0]).uniq!    
    end
  end
  
  a = DataManager.new('webserver.log')
  a.organize_data_in_pairs
  a.single_webs
  p a.webs
end