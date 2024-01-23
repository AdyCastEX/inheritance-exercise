class Vehicle
    attr_reader :vehicle_type, :plate_number, :owner_name,:tire_size

    def initialize(args)
        @vehicle_type = args[:vehicle_type]
        @plate_number = args[:plate_number]
        @owner_name = args[:owner_name]
        @tire_size = args[:tire_size]
    end

    def spares
        if @vehicle_type.downcase == "car"
            {
                n_wheels: 4,
                tire_size: @tire_size,
                passenger_capacity: 4,
            }
        elsif @vehicle_type.downcase == "bus"
            {
                n_wheels: 4,
                tire_size: @tire_size,
                passenger_capacity: 100,
            }

        elsif @vehicle_type.downcase == "truck"
            {
                n_wheels: 6,
                tire_size: "31x10.50R15/ C109R",
                passenger_capacity: 0,
            }
        else {}
        end
    
    end
end
