class Cookie
  attr_accessor :flour

  def initialize(sugar_amount, flour_amount)
    @sugar = sugar_amount
    @flour = flour_amount
    puts "creating a cookie with #{sugar_amount}g of sugar."
  end


  # This is called a GETTER or accessor method
  def sugar
    @sugar
  end

  # This is called a SETTER method
  def sugar=(new_amount)
    @sugar = new_amount
  end



  def self.info
    "I'm the Cookie class!"
  end

  def details
    puts "This cookie has #{@sugar}g of sugar"
  end

  def bake_n_eat
    bake
    eat
  end

  def eat
    "Delicious!"
  end

  private

  def bake
    "Baking the cookie!"
  end
end
