   require 'clinician/cli'
   require 'pry'
   
  class fh_clinicians::scrape
    
   def self.scrape
     doc = Nokogiri::HTML(open("https://www.fredhutch.org/en/research/patient-treatment-support/meet-our-clinicians.html"))
     specialty = doc.css("faq-title").each do |anchor|
       name = anchor.css("h3").text,
       phone_number = anchor.css("contact-card--phone").text,
       email = anchor.css ("contact-card--email").text
       
      fh_clinicians::specialty.new(name, phone_number, email)
   
    end 
  end 
end 