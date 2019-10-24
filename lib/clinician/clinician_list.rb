class Clinician::CLINICIAN_LIST
  attr_accessor :name, :phone, :email, :specialty
  
  @@all = []
  
  def initialize(specialty,name,phone,email)
    @name = name
    @phone = phone
    @email = email 
    @specialty = specialty
  end 
  
  def self.all
    @@all 
  end 
  
end 