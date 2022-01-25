require "docking_station"
describe DockingStation do 
    describe "#release_bike" do
    # it "should respond to release_bike" do
    #     docking_station = DockingStation.new
    #     expect(docking_station).to respond_to(:release_bike)
    # end
    it { expect(DockingStation.new).to respond_to(:release_bike) }
  end
end 