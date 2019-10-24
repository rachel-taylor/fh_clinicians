require './lib/clinician/scrape.rb'
require './lib/clinician/specialty'

class Clinician::CLI 
  
  def welcome
    puts "Welcome to Fred Hutchinson, here is a list of our specialties:"
     i=0 
    specialty.each do |thething| 
      i += 1
      puts i.to_s + "-" + thething 
    end 
  end 
  
  def specialty
    Clinician::SCRAPE.scrape 
  end

 end 

