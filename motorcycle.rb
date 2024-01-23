require "./vehicle.rb"

class Motorcycle < Vehicle

    DEFAULT_TIRE_SIZE = "110/70R17 54S"
    DEFAULT_HANDLEBAR_STYLE = "Standard"

    def initialize(plate_number, owner, color, handlebar_style = nil)
        super(plate_number, owner, color, 2)
        @handlebar_style = handlebar_style || DEFAULT_HANDLEBAR_STYLE
    end

    attr_reader :handlebar_style

    def tire_size
        get_spare_part(:tire_size) || DEFAULT_TIRE_SIZE
      end
    
    def lean(direction)
        puts "#{plate_number} leans to the #{direction}."
    end
    
    attr_accessor :engine_cc

    def accelerate(speed)
      puts "The motorcycle accelerates to #{speed} mph."
    end

end