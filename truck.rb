require "./vehicle.rb"

class Truck < Vehicle
  DEFAULT_TIRE_SIZE = "31x10.50R15/ C109R"
  DEFAULT_TRAILER_TYPE = "Standard"
  DEFAULT_PASSENGER_CAPACITY = 3

  attr_reader :trailer_type

  def initialize(plate_number:, owner_name:, color:, number_of_wheels: 6, passenger_count: 0, trailer_type: DEFAULT_TRAILER_TYPE)
    super(plate_number: plate_number, owner_name: owner_name, color: color, number_of_wheels: number_of_wheels)
    @trailer_type = trailer_type
    @passenger_capacity = DEFAULT_PASSENGER_CAPACITY
  end

  def tire_size
    @tire_size || DEFAULT_TIRE_SIZE
  end

  def change_trailer(new_trailer_type)
    @trailer_type = new_trailer_type
  end

  def change_passenger_count(new_passenger_count)
    @passenger_count = new_passenger_count
  end

  def spares
    { tire_size: tire_size, trailer_type: trailer_type }
  end
end

  