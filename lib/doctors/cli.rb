class Cli  
  
  def welcome
    puts "Welcome to Fred Hutchinson, here is a list of our specialties:"
     Doctor::SCRAPE.scrape
    # i=0 
    # specialty.each do |thething| 
    #   i += 1
    #   puts i.to_s + "-" + thething 
    end 
  end 
  
  # def specialty
  #   Clinician::SCRAPE.scrape 
  # end

# end 

