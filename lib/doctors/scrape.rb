class Scrape
    
      @@doctor = []
    
  def self.scrape_doctor 
    html = open("https://doctor.webmd.com/results?q=&pagenumber=1&pt=40.7142,-74.0059&d=40&city=New%20York&state=NY")
    doc = Nokogiri::HTML(html)
     binding.pry
    doc.css("div.faq-title h2").map do |anchor|
       doctor = anchor.text
    doctor.each do |thething| 
     
      end 
    end 
  end 
end 

