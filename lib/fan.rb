class Fan
    attr_accessor :speed, :power_saving_mode
    
    # PROPERTIES SET WHEN INITIALISED
    def initialize
        @speed = 3
        @power_saving_mode = true
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

    # RESET TO INITIAL SPEED
    def reset
        @speed = 3
    end

end