require "./vehicle.rb"

class Truck < Vehicle
    attr_reader :trailer_type

    def post_initialize(args)
        @trailer_type = args[:trailer_type]
    end

    def local_number_of_wheels
        6
    end

    def local_tire_size
        "31x10.50R15/ C109R"
    end

    def local_passenger_capacity
        0
    end

    def local_spares
        { trailer_type: trailer_type }
    end
end
