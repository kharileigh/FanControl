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

end

