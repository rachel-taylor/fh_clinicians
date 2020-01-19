class Cli  
  
  def welcome
    puts "Welcome To The Doctor Finder!"
     get_doctor
    end
  
  #Puts the name of the two 5 doctors, and their information
  def get_doctor
    puts "Which Doctor would you like more information about?"
    Scrape.scrape_doctor
  end 
  
end 
