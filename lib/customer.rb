class Customer
  
  attr_accessor :name, :age 
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
  
  # def new_meal_20_percent(waiter, total)
  #   tip = total * 0.2
  #   Meal.new(waiter, self, total, tip)
  # end
  
   def best_tipper
    best_tipped_meal = meals.max do |meal_a, meal_b|
      meal_a.tip <=> meal_b.tip
    end
  
    best_tipped_meal.customer
  end

end