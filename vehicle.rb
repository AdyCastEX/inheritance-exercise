class Vehicle
    attr_reader :plate_number, :owner_name, :color, :number_of_wheels, :tire_size, :passenger_capacity
  
    def initialize(plate_number:, owner_name:, color:, number_of_wheels:, tire_size: "default", passenger_capacity: 0)
      @plate_number = plate_number
      @owner_name = owner_name
      @color = color
      @number_of_wheels = number_of_wheels
      @tire_size = tire_size
      @passenger_capacity = passenger_capacity
    end
  
    def spares
      { tire_size: tire_size }
    end
end
  