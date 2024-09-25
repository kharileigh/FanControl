# Fan class
require '../lib/fan.rb'

# TEST SUITE : Fan
RSpec.describe Fan do

    # resets Fan instance each test
    before(:each) do
        @fan = Fan.new
    end

    # INITIALISE CORRECTLY
    it "should have a property speed" do
        expect(@fan.speed).to eq(3)
    end
    

    # GET INITIAL SPEED
    it "should return 3" do
        expect(@fan.get_speed).to eq(3)
    end


    # INCREASES SPEED
    it "should return 4" do
        @fan.increase_speed
        expect(@fan.get_speed).to eq(4)
    end


    # DECREASES SPEED
    it "should return 2" do
        @fan.decrease_speed
        expect(@fan.get_speed).to eq(2)
    end


    # MINIMUM SPEED OF 1
    it "should have minimum speed" do
        @fan.decrease_speed
        @fan.decrease_speed
        expect(@fan.get_speed).to eq(1)
    end


    # RESETS TO 3 WHEN CALLED
    it "resets speed to 3" do
        @fan.increase_speed
        @fan.reset
        expect(@fan.get_speed).to eq(3)
    end


    # POWER SAVING MODE -- on by default
    it "power saving mode on by default" do
        expect(@fan.power_saving_mode).to be true
    end 

    # POWER SAVING MODE -- function to change mode on/off
    it "changes power saving mode to off" do
        @fan.set_power_saving_mode(false)
        expect(@fan.power_saving_mode).to be false
    end 

    
    # POWER SAVING MODE -- on, max speed 5
    it "caps max speed at 5 when power saving mode is on" do
        
        # runs function 3x, speed = 6
        3.times { @fan.increase_speed }

        # speed = 5, because power saving mode on
        expect(@fan.get_speed).to eq(5)
        @fan.increase_speed
        expect(@fan.get_speed).to eq(5)
    end


    # POWER SAVING MODE -- off, max speed 8
    it "caps max speed at 8 when power saving mode is off" do

        # turn off power saving mode 
        @fan.set_power_saving_mode(false)

        # run function 5x, speed = 8
        5.times { @fan.increase_speed }
        expect(@fan.get_speed).to eq(8)

        # speed = 8, because power saving mode off
        @fan.increase_speed
        expect(@fan.get_speed).to eq(8)
    end


    # ENERGY USAGE
    # LOW -- speed < 3
    it "low energy usage when speed is below 3" do

        # decrease speed
        @fan.decrease_speed

        expect(@fan.energy_usage).to eq('low-usage')
    end
    
    # MEDIUM -- speed <= 5 
    it "medium energy usage when speed is max 5" do

        # increase speed up to 5
        2.times { @fan.increase_speed }

        expect(@fan.energy_usage).to eq('medium-usage')
    end

    # HIGH -- speed > 5
    it "high energy usage for speeds above 5" do

        # turn off power saving mode, to increase speed to 8
        @fan.power_saving_mode = false

        # increase speed up to 8
        5.times { @fan.increase_speed }

        expect(@fan.energy_usage).to eq('high-usage')
    end


        
end

