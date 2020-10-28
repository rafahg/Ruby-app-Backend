require './lib/data_manager.rb'

class PrintData
  attr_reader :data, :datas

  def initialize(log)
    @data = DataManager.new(log)
    @datas = data.multi_data
  end

end