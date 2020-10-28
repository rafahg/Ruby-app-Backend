class FileManager
  attr_reader :file, :file_data
  def initialize(log)
    @file = File.open(log)
    @file_data = file.readlines.map(&:chomp)
  end
end