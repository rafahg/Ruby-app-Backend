require './lib/file_manager.rb'

class DataManager
  attr_reader :data, :data_pairs

  def initialize(log)
    @data = FileManager.new(log)
    @data_pairs = []
  end

  def organize_data_in_pairs
    data.file_data.map { |pair| data_pairs.push([pair])}
    data_pairs.map! { |pair| pair[0].split(" ") }
  end
  

end