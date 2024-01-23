class Vehicle
  attr_accessor :plate_number, :owner_name, :color, :number_of_wheels, :spare_parts

  def initialize(plate_number, owner_name, color, number_of_wheels)
    @plate_number = plate_number
    @owner_name = owner_name
    @color = color
    @number_of_wheels = number_of_wheels
    @spare_parts = []
  end

  def display_info
    puts "Plate Number: #{@plate_number}"
    puts "Owner Name: #{@owner_name}"
    puts "Color: #{@color}"
    puts "Number of Wheels: #{@number_of_wheels}"
  end
end
