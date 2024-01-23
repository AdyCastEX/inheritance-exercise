require "./vehicle.rb"

class Truck < Vehicle

    attr_reader :trailer

    def initialize(args)
        @trailer = args[:trailer]
        super(args)
    end

    def spares
        super.merge({
            tire_size:@tire_size,
            trailer: @trailer
        })
    end

    def switchTrailer
        puts "This is the list of spare trailers: "
        puts "#{spares[:trailer]}"
    end
end
