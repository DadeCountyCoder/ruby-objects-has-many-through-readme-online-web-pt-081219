class Customer
  
  attr_accessor :name, :age, :customer
  @@all=[]
  def initialize(name,age)
    @name=name
    @age=age
    @@all<<self
  end 
   
   
  def self.all
    @@all
  end
  
  def new_meal(waiter, total, tip=0)
    Meal.new(waiter, self, total, tip)
  end
  
  # def Customer(age,name)
  #   Customer.new(age,name)
  #   @@all=[]
  # end  
  
  
  #returns an Array of Meal instances associated with this customer
  def meals
    Meal.all.select do |meal|
      meal.customer == self
    end
  end
  
  #can be meals.map 
  def waiters
    meals.collect do |meal|
      meal.waiter
    end
  end
  
  def new_meal
    meal.
  
  
  
  # def new_meal_20_percent(waiter, total)
  #   tip = total * 0.2
  #   Meal.new(waiter, self, total, tip)
  # end
  
  # def self.oldest_customer
  #   oldest_age = 0
  #   oldest_customer = nil
  #   self.all.each do |customer|
  #     if customer.age > oldest_age
  #       oldest_age = customer.age
  #       oldest_customer = customer
  #     end
  #   end
  #   oldest_customer
  # end

end