# Moduels as namespaces
module Computer
  class Apple

  end
end

module Fruit
  class Apple

  end
end

mac  = Computer::Apple.new
gala = Fruit::Apple.new

# Modules as mixins
# Module naming convention is the same as class naming convention
# Modules can't be instantiated
module HelperMethods
  def name_display
    name.squeeze(" ").capitalize
  end
end

class Car
  attr_accessor :name
  # include will bring all the methods from the module to this class as
  # instance mehtods
  include HelperMethods
end

class User
  attr_accessor :name
  include HelperMethods
end
