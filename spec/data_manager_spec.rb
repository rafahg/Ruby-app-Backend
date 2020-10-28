require 'data_manager'

describe DataManager do
  context "When creating class" do
    it '@data is initialized correctly' do
      managed_data = described_class.new('webserver.log')
      managed_data.data == @data
    end
  end
  context "Class Methods" do
    it '#organize_data_in_pairs returns @data_pairs with correct length' do
      a = DataManager.new('webserver.log')
      expect(a.organize_data_in_pairs.length).to eq 500
    end
  end
end
