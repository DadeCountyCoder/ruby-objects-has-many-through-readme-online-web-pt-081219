class Waiter
  attr_accessor :name, :years_experience
  
    def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end
  
  def self.all
    @@all
  end  

end