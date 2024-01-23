require "./vehicle.rb"

class Bus < Vehicle
    DEFAULT_TIRE_SIZE = "15/80R22.5"
    DEFAULT_PASSENGER_COUNT = 0
  
    attr_reader :passenger_count
  
    def initialize(plate_number:, owner_name:, color:, number_of_wheels: 4, tire_size: "standard", passenger_capacity: 100, passenger_count: DEFAULT_PASSENGER_COUNT)
      super(plate_number: plate_number, owner_name: owner_name, color: color, number_of_wheels: number_of_wheels, tire_size: tire_size, passenger_capacity: passenger_capacity)
      @passenger_count = passenger_count
    end
  
    def tire_size
      @tire_size || DEFAULT_TIRE_SIZE
    end
  
    def spares
      { tire_size: tire_size }
    end
  
    def load_passengers(num_passengers)
      raise ArgumentError, "Exceeds passenger capacity" if num_passengers > (passenger_capacity - passenger_count)
  
      @passenger_count += num_passengers if num_passengers.positive?
    end
  
    def unload_passengers(num_passengers)
      raise ArgumentError, "Exceeds current passenger count" if num_passengers > passenger_count
  
      @passenger_count -= num_passengers if num_passengers.positive?
    end
 end
  