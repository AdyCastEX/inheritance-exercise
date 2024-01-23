require "./vehicle.rb"

class Truck < Vehicle
  attr_accessor :num_wheels, :tire_size, :trailer_type

  def initialize(plate_number, owner_name, color)
    super(plate_number, owner_name, color, 6)
    @tire_size = "31x10.50R15/C109R"
    @trailer_type = []
  end

  def switch_trailer_type(new_type)
    @trailer_type << new_type
  end

  def display_info
    super
    puts "Tire Size: #{@tire_size}"
    puts "Trailer Type: #{@trailer_type.join(', ')}"
  end
end
