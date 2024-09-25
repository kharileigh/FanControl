class Fan
    attr_reader :speed
    
    def initialize
        @speed = 3
    end

    def get_speed
        return @speed
    end

    def increase_speed
        return @speed += 1
    end

    # ADD MIN SPEED
    def decrease_speed
        return @speed -= 1 if @speed > 1
    end

end