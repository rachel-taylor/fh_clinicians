require './lib/clinician/scrape.rb'

class Clinician::CLI 
  
  def welcome
    puts "Welcome to the Fred Hutchinson Clinician tool, which specialty are you seeking?"
  end 
  
  def speciatly_list
    puts "Enter the number of the specialty you'd like to see:"
  end 
 # scrape the thing into new array (specialty = []) end 
 end 

# scraper = fh_clinicians::scrape.new()
# scraper.scrape