require "./vehicle.rb"

class Motorcycle < Vehicle
    attr_reader :handlebar
    
    def post_initialize(args)
        @handlebar = args[:handlebar]
    end

    def stand(lower)
        if lower
            puts "Motorcycle's stand lowered"
        else
            puts "Motorcycle's stand raised"
        end
    end
    
    def local_number_of_wheels
        2
    end

    def local_tire_size
        "120/70R17"
    end

    def local_passenger_capacity
        2
    end

    def local_spares
        { handlebar: handlebar }
    end
end