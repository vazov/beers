#lib/tasks/import.rake
#usage rake import:data

require 'csv'
namespace :import do
  desc "Imports from beers.csv and breweries.csv into db"
  task :data => :environment do  
    CSV.foreach('public/data/beers.csv', :headers => true) do |row|
      a = row.to_hash
      a.each {|key, value| a.delete(key) if (value.blank? or key.blank?)}
      Beer.create!(a) if is_number?(a['id'])
    end
    
    CSV.foreach('public/data/breweries.csv', :headers => true) do |row|
      a = row.to_hash
      a.each {|key, value| a.delete(key) if (value.blank? or key.blank?)}
      Brewery.create!(a) if is_number?(a['id'])
    end    
  end

  def is_number?(obj)
    obj.to_s == obj.to_i.to_s
  end
end
