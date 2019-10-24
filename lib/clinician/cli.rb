require './lib/clinician/scrape.rb'
require './lib/clinician/clinician_list'
require './lib/clinician/specialty'

class Clinician::CLI 
  
  def welcome
    puts "Welcome to Fred Hutchinson, here are our specialties"
     i=0 
    specialty.each do |thething| 
      i += 1
      puts i.to_s + "-" + thething 
      # puts i
    end 
  end 
  
  def specialty
  #    scraper = Clinician::SCRAPE.new()
    # scraper.scrape  
    Clinician::SCRAPE.scrape 
    # Clinician::SCRAPE.specialty
  end 
  
  
  
 end 

