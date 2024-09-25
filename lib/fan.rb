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

    # ADD MAX SPEED
    # if power saving mode ? ON = 5 : OFF = 8
    # increase speed ONLY if less than max speed
    def increase_speed
        max_speed = @power_saving_mode ? 5 : 8
        return @speed += 1 if @speed < max_speed
    end

    # ADD MIN SPEED
    def decrease_speed
        return @speed -= 1 if @speed > 1
    end

    # RESET TO INITIAL SPEED
    def reset
        @speed = 3
    end

    # ENERGY USAGE
    # low : speed < 3
    # medium : speed <= 5
    # high : speed > 5
    def energy_usage
        if @speed < 3
            'low-usage'
        elsif @speed <= 5
            'medium-usage'
        else
            'high-usage'
        end
    end
            
end