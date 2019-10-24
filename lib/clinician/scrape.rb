require './lib/clinician/cli'
require 'pry'
require 'nokogiri'
require 'open-uri'
require './lib/clinician/specialty'
   
class Clinician::SCRAPE
    
      @@specialty = []
    
  def self.scrape
    doc = Nokogiri::HTML(open("https://www.fredhutch.org/en/research/patient-treatment-support/meet-our-clinicians.html"))
      @@specialty = doc.css("div.faq-title h2").map do |anchor|
       specialty = anchor.text
    end 
  end 

end 

