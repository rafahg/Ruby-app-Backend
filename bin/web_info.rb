#!/usr/bin/env ruby
require './lib/file_manager.rb'
require './lib/display_log_data.rb'
require './lib/data_manager.rb'
 
ARGV.each do |log|
  a = PrintData.new(log)
  a.list_multi_views
  a.list_single_views
  a.list_single_views_alphabetically
  a.list_multi_views_alphabetically
end
