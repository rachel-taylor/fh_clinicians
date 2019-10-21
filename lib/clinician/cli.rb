require './lib/clinician/scrape.rb'
require './lib/clinician/clinician_list'
require './lib/clinician/specialty'

class Clinician::CLI 
  
  def welcome
    puts "Welcome to the Fred Hutchinson Clinician tool, which specialty are you seeking?"
    puts specialty
  end 
  
  def specialty
    # scraper = Clinician::SCRAPE.new()
    # scraper.scrape  
    Clinician::SCRAPE.scrape 
  end 
  
  
  
 end 

