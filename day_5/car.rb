class Car
  def initialize(model, type, capacity)
    # parallel assignment:
    # @model, @type, @capaicity = model, type, capaicity
    @model    = model
    @type     = type
    @capacity = capacity
  end

  def drive
    ignite_engine
    puts "Go!!"
  end

  def stop
    puts "Break!"
  end

  def park
    max_speed
    puts "Reversing.."
  end

  def self.ultimate_speed
    max_speed + 50
  end

  private

  def self.max_speed
    200
  end

  def pump_gas
    puts "Slurb"
  end

  def ignite_engine
    puts "Boom Boom!"
  end
end
