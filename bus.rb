require "./vehicle.rb"

class Bus < Vehicle

    def initialize(args)
        @number_of_passengers = 0
        super(args)
    end

    def spares
        super.merge({
            tire_size: @tire_size || "15/80R22.5",
        })
    end

    def default_number_of_wheels
    
    end


    def loading(count)
        return "Bus is full" if @number_of_passengers == @passenger_capacity
        @number_of_passengers += count
    end
    def unloading(count)
        return "No passenger to unload" if @number_of_passengers <= 0
        @number_of_passengers = @number_of_passengers - count < 0 ? 0 : @number_of_passengers - count
    end
end
