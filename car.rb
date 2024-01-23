require "./vehicle.rb"

class Car < Vehicle
  attr_accessor :tire_size, :passenger_capacity, :nickname

  def initialize(plate_number, owner_name, color, nickname = nil)
    super(plate_number, owner_name, color, 4)
    @tire_size = "P215/65R17 98T"
    @passenger_capacity = 4
    @nickname = nickname
  end

  def display_info
    super
    puts "Tire Size: #{@tire_size}"
    puts "Passenger Capacity: #{@passenger_capacity}"
    puts "Nickname: #{@nickname}" if @nickname
  end
end
