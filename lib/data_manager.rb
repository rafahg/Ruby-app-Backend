class DataManager
  attr_reader :data

  def initialize(log)
    @data = FileManager.new(log)
  end
end