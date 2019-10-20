class fh_clinicians::clinician_list
  attr_accessor :name, :phone, :email 
  
  @@all = []
  
  def initialize(name,phone,email)
    @name = name
    @phone = phone
    @email = email 
    @@ all << self 
  end 
  
  def self.all
    @@all 
  end 
  
end 