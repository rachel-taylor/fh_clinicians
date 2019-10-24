   require './lib/clinician/cli'
   require 'pry'
   require 'nokogiri'
   require 'open-uri'
   require './lib/clinician/specialty'
   require './lib/clinician/clinician_list'
   
  class Clinician::SCRAPE
    
      @@specialty = []
    
   def self.scrape
     doc = Nokogiri::HTML(open("https://www.fredhutch.org/en/research/patient-treatment-support/meet-our-clinicians.html"))
      @@specialty = doc.css("div.faq-title h2").map do |anchor|
       specialty = anchor.text
      end 
  end 
  # puts SPECIALTY << self.scrape
  
#   def display
#   puts "#{@self[0]}"
#   puts "#{@self.scrape[1]} "
#   puts "#{@self.scrape[2]} "
# end
  
end 

# div.fh-component-faq div.faq-header div.faq-title h2

# name = anchor.css("h3").text
#         puts name 
#       phone_number = anchor.css("contact-card--phone").text
#         puts phone_number
#       email = anchor.css("contact-card--email").text
#         puts email 

# puts "My menu:"
# array.each_with_index do |data, index|
#   puts "#{index + 1}: #{data}
# end