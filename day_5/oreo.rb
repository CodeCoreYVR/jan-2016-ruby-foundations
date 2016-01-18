require "./cookie.rb"

# Oreo inherits from Cookie
# Oreo is the child class or subclass
# Cookie is the parent class or superclass
class Oreo < Cookie
  attr_accessor :filling_type

  # This overrides (redefined) the `eat` method
  # for the Oreo objects
  def eat
    puts "Eating the oreo cookie~~"
    # this calls the `eat` method in the super class
    super
  end
end
