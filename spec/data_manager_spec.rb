require 'data_manager'

describe DataManager do
  context "When creating class" do
    it '@data is initialized correctly' do
      managed_data = described_class.new('webserver.log')
      managed_data.data == @data
    end
  end
end
