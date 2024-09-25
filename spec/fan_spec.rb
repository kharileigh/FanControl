# Fan class
require '../lib/fan.rb'

# TEST SUITE : Fan
RSpec.describe Fan do

    # instance to be tested
    let(:fan) { Fan.new(3)}

    # test it initialises correctly
    describe "initialize" do
        it "should have a property speed" do
            expect(fan.speed).to eq(3)
        end
    end

    # test gets intial speed
    describe "get_speed" do
        it "should return 3" do
            expect(fan.get_speed).to eq(3)
        end
    end

    # test increases speed
    describe "increase_speed" do
        it "should return 4" do
            expect(fan.increase_speed).to eq(4)
        end
    end

    # test descreases speed
    describe "decrease_speed" do
        it "should return 2" do
            expect(fan.decrease_speed).to eq(2)
        end
    end

end

