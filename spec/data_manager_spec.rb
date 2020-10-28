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
    it '#organize_data_in_pairs returns @data_pairs with 2 elements in it.' do
      a = DataManager.new('webserver.log')
      expect(a.organize_data_in_pairs[0].length).to eq 2
    end
    it '#data_pairs first element is as expected' do 
      a = DataManager.new('webserver.log')
      a.organize_data_in_pairs
      expect(a.data_pairs[0][0]).to eq '/help_page/1'
    end
    it '#data_pairs second element is as expected' do
      a = DataManager.new('webserver.log')
      a.organize_data_in_pairs
      expect(a.data_pairs[0][1]).to eq '126.318.035.038'
    end
    it '#single_webs return the list of uniq webs in @webs' do
      a = DataManager.new('webserver.log')
      a.organize_data_in_pairs
      a.single_webs
      expect(a.webs.length).to eq 6
    end
  end
end
