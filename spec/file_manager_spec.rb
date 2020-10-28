require 'file_manager.rb'

describe FileManager do
  context 'When creating class' do 
    it '@file is initialized correctly' do
      request = described_class.new('webserver.log')
      request.file == @file
    end
  end
end