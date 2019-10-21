   require './lib/clinician/cli'
   require 'pry'
   require 'nokogiri'
   require 'open-uri'
   require './lib/clinician/specialty'
   require './lib/clinician/clinician_list'
   
  class Clinician::SCRAPE
    
   def self.scrape
     doc = Nokogiri::HTML(open("https://www.fredhutch.org/en/research/patient-treatment-support/meet-our-clinicians.html"))
     puts doc 
     specialty = doc.css("h2").each do |anchor|
      name = anchor.css("h3").text
        puts name 
      phone_number = anchor.css("contact-card--phone").text
        puts phone_number
      email = anchor.css("contact-card--email").text
        puts email 
       
      # Clinician::specialty.new(name, phone_number, email)
      end 
  end 
end 