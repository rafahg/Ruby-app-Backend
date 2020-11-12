require './lib/file_manager.rb'

class DataManager
  attr_reader :data, :data_pairs, :webs, :multi_visits, :single_visits, :uniq_pairs, :single_visits_alphabetical,
              :multi_visits_alphabetical

  def initialize(log)
    @data = FileManager.new(log)
    @data_pairs = []
    @uniq_pairs = []
    @webs = []
    @multi_visits = []
    @multi_visits_alphabetical = []
    @single_visits = []
    @single_visits_alphabetical = []
  end

  def multi_data
    organize_data_in_pairs
    single_webs
    multi_counter
    unique_visits
    single_counter
    single_visits_alphabetically
    multi_visits_alphabetically
  end

  def organize_data_in_pairs
    data.file_data.map { |pair| data_pairs.push([pair]) }
    data_pairs.map! { |pair| pair[0].split(" ") }
  end
  
  def single_webs
    data_pairs.each do |web|
      webs.push(web[0]).uniq!    
    end
  end

  def multi_counter
    temp = []
    data_pairs.each { |pair| temp.push(pair[0]) }
    temp.each { |web| multi_visits.push([temp.count(web), web]) }
    return multi_visits.uniq!
  end

  def unique_visits
    data_pairs.uniq.each { |pair| uniq_pairs.push(pair[0]) }
  end

  def single_counter
    uniq_pairs.each { |web| single_visits.push([uniq_pairs.count(web), web]) }
    single_visits.uniq!.sort.reverse
  end

  def single_visits_alphabetically
    single_visits.each do |pair|
      single_visits_alphabetical.push(pair.reverse)
    end
    single_visits_alphabetical.sort!
  end

  def multi_visits_alphabetically
    multi_visits.each do |pair|
      multi_visits_alphabetical.push(pair.reverse)
    end
    multi_visits_alphabetical.sort!
      
  end

end
