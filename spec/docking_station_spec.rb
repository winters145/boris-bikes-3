require "docking_station"

describe DockingStation do 
    describe "#release_bike" do
    it "should respond to release_bike" do
    #     docking_station = DockingStation.new
    #     expect(docking_station).to respond_to(:release_bike)
    # end
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to eq bike
    #it { expect(subject).to respond_to(:release_bike) }
    #it { expect { raise "no bikes" }.to raise_error("no bikes") } 
  end
end
    
    describe "#get_bike" do
    it 'releases working bikes' do
      bike = Bike.new
      expect(bike).to be_working
    end
  end

  describe "#dock" do 
  it 'docks a bike at a station' do 
    # station = DockingStation.new
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike  
  end
end
describe "#bike" do 
it 'docking station responds to bike' do
    station = DockingStation.new 
    expect(station).to respond_to(:bike)
    end 
    end  
end

# a) gets a bike, and then b) expects the bike to be working
