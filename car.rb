require "./vehicle.rb"

class Car < Vehicle
    DEFAULT_TIRE_SIZE = "P215/65R17 98T"
    DEFAULT_PASSENGER_CAPACITY = 4
  
    attr_reader :nickname, :passenger_capacity
  
    def initialize(plate_number:, owner_name:, color:, number_of_wheels: 4, nickname: nil, passenger_capacity: DEFAULT_PASSENGER_CAPACITY)
      super(plate_number: plate_number, owner_name: owner_name, color: color, number_of_wheels: number_of_wheels)
      @nickname = nickname
      @passenger_capacity = passenger_capacity
    end
  
    def tire_size
      @tire_size || DEFAULT_TIRE_SIZE
    end
  
    def spares
      { tire_size: tire_size }
    end
end