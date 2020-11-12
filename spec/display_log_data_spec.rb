require 'display_log_data.rb'

describe PrintData do
  context 'when creating class' do
    it '@data is initialized correctly' do
      a = PrintData.new('webserver.log')
      expect(a.datas).not_to be_empty
      expect(a.datas.length).to be 6
    end
  end
  context 'Class Methods do' do
    it '#list_multi_views displays correcly' do
      a = PrintData.new('webserver.log')
      expect { a.list_multi_views }.to output.to_stdout
      expect { a.list_multi_views }.to_not output.to_stderr
    end
    it '#list_single_views displays correcly' do
      a = PrintData.new('webserver.log')
      expect { a.list_single_views }.to output.to_stdout
      expect { a.list_single_views }.to_not output.to_stderr
    end
    it '#list_single_views_alphabetically displays correcly' do
      a = PrintData.new('webserver.log')
      expect { a.list_single_views_alphabetically }.to output.to_stdout
      expect { a.list_single_views_alphabetically }.to_not output.to_stderr
    end

    it '#list_single_views displays correcly' do
      a = PrintData.new('webserver.log')
      expect { a.list_multi_views_alphabetically }.to output.to_stdout
      expect { a.list_multi_views_alphabetically }.to_not output.to_stderr
    end
  end
end
