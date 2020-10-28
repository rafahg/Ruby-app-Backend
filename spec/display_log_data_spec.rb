require 'display_log_data.rb'

describe PrintData do 
  context 'When creating class' do
    it '@data is initialized correctly' do
      a = PrintData.new('webserver.log')
      expect(a.datas).not_to be_empty
      expect(a.datas.length).to be 6 
    end
  end
end