require "./vehicle.rb"

class Bus < Vehicle
  attr_accessor :tire_size, :passenger_capacity

  def initialize(plate_number, owner_name, color)
    super(plate_number, owner_name, color, 4)
    @tire_size = "15/80R22.5"
    @passenger_capacity = 30
  end

  def load_passengers(count)
    @passenger_capacity += count
    @passenger_capacity = @passenger_capacity > 100 ? 100 : count
  end

  def unload_passengers(count)
    @passenger_capacity -= count
    @passenger_capacity = 0 if @passenger_capacity.negative?
  end

  def display_info
    super
    puts "Tire Size: #{@tire_size}"
    puts "Passenger Capacity: #{@passenger_capacity}"
  end
end
