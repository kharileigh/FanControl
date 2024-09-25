class Fan
    attr_reader :speed
    
    def initialize(speed)
        @speed = speed
    end

    def get_speed
        return @speed
    end

    def increase_speed
        return @speed + 1
    end

    def decrease_speed
        return @speed - 1
    end

end