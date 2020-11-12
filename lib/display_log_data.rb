require './lib/data_manager.rb'

class PrintData 
  attr_accessor :data, :datas, :webs, :single_visits, :multi_visits,
                :multi_visits_alphabetical, :single_visits_alphabetical
  
  def initialize(log)
    @data = DataManager.new(log)
    @datas = data.multi_data
    @webs = data.webs
    @single_visits = data.single_visits.sort.reverse
    @multi_visits = data.multi_visits.sort.reverse
    @single_visits_alphabetical = data.single_visits_alphabetical
    @multi_visits_alphabetical = data.multi_visits_alphabetical
  end

  def list_multi_views
    puts "               File log App. V.1.0.0"
    puts "               Greetings, Professor Falken."
    puts "_______________________________________________________"
    puts " "
    puts "List of Webs and number of visits, ordered High to Low."
    puts "_______________________________________________________"
    puts " "
    multi_visits.each do |pair|
      puts "          web: #{pair[1].ljust(14)} visits: #{pair[0]}"
    end
  end
  
  def list_single_views
    puts "______________________________________________________________"
    puts " "
    puts "List of Webs and number of single visits, ordered High to Low."
    puts "______________________________________________________________"
    puts " "
    single_visits.each do |pair|
      puts "          web: #{pair[1].ljust(14)} Unique views: #{pair[0]}"
    end
  end

  def list_single_views_alphabetically
    puts "________________________________________________________________"
    puts " "
    puts "List of Webs and number of single visits, in Alphabetical order."
    puts "________________________________________________________________"
    puts " "
    single_visits_alphabetical.each do |pair|
      puts "          web: #{pair[0].ljust(14)} Unique views: #{pair[1]}"
    end
  end

  def list_multi_views_alphabetically
    puts "__________________________________________________________"
    puts " "
    puts "List of Webs and number of visits, in Alphabetical order."
    puts "__________________________________________________________"
    puts " "
    multi_visits_alphabetical.each do |pair|
      puts "          web: #{pair[0].ljust(14)} visits: #{pair[1]}"
    end
  end

end
