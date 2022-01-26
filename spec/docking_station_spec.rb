require "docking_station"

describe DockingStation do 
    describe "#release_bike" do
    # it "should respond to release_bike" do
    #     docking_station = DockingStation.new
    #     expect(docking_station).to respond_to(:release_bike)
    # end
    it { expect(DockingStation.new).to respond_to(:release_bike) }
  end
    
    describe "#get_bike" do
    it 'releases working bikes' do
      bike = DockingStation.new.release_bike
      expect(bike).to be_working
    end
  end
end 

# a) gets a bike, and then b) expects the bike to be working
