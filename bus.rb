require "./vehicle.rb"

class Bus < Vehicle
    attr_accessor :passenger_count

    def post_initialize(args)
        @passenger_count = args[:passenger_count] || 0
    end

    def load(n)
        raise ArgumentError if n > self.passenger_capacity
        self.passenger_count += n
    end

    def unload(n)
        raise ArgumentError if n > self.passenger_count
        self.passenger_count -= n
    end

    def local_number_of_wheels
        4
    end

    def local_tire_size
        "15/80R22.5"
    end

    def local_passenger_capacity
        100
    end

end
