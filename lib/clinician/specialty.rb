require './lib/clinician/scrape'
require './lib/clinician/version'

class Clinician::SPECIALTY
  attr_accessor :specialty
  
  @@all = []
  
  def initialize(specialty)
    @specialty = specialty
  end 
  
  def self.all
    @@all 
  end 
  
end 