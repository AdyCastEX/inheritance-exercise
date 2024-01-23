require "./vehicle.rb"

class Car < Vehicle
    attr_reader :nickname

    def post_initialize(args)
        @nickname = args[:nickname]
    end

    def local_tire_size
        "P215/65R17 98T"
    end

    def local_passenger_capacity
        4
    end

    def local_number_of_wheels
        4
    end
    
end
