class Vehicle
    attr_reader :plate_number, :color, :owner_name,  
                :tire_size, :number_of_wheels, :passenger_capacity
    
    def initialize(args)
        @plate_number           = args[:plate_number]
        @color                  = args[:color]
        @owner_name             = args[:owner_name]
        @tire_size              = args[:tire_size] || local_tire_size
        @passenger_capacity     = args[:passenger_capacity] || local_passenger_capacity
        @number_of_wheels       = args[:number_of_wheels] || local_number_of_wheels

        post_initialize(args)
    end

    def post_initialize(args)
        nil
    end

    def local_number_of_wheels
        nil
    end

    def local_tire_size
        nil
    end

    def local_passenger_capacity
        nil
    end

    def spares
        { tire_size: tire_size }.merge(local_spares)
    end

    def local_spares
        {}
    end
    
end
