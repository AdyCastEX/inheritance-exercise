require "./vehicle.rb"

class Car < Vehicle
    attr_reader :nickname,

    def initialize(args)
        @nickname = args[:nickname]
        super(args)
    end

    def spares
        super.merge({
            tire_size: @tire_size || "P215/65R17 98T",
            nickname: @nickname
        })
    end
end
