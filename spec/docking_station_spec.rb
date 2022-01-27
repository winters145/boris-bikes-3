require "docking_station"
describe DockingStation do 
    describe "#release_bike" do
      it "should respond to release_bike" do
        bike = Bike.new
        subject.dock(bike)
        expect(subject.release_bike).to eq bike
        #it { expect(subject).to respond_to(:release_bike) }
      end
    
      it "should give an error when no bikes are available to release" do 
        expect { subject.release_bike }.to raise_error("no bikes")
      end      
    end
    
    describe "#get_bike" do
      it 'releases working bikes' do
        bike = Bike.new
        expect(bike).to be_working
      end
    end

    describe "#dock" do 
      it "docks a bike at a station" do 
        bike = Bike.new
        subject.dock(bike)
        expect(subject.bike).to eq bike
      end
      it "should give an error when bike is added to full docking station" do 
        expect { (DockingStation::DEFAULT_CAPACITY+1).times { subject.dock Bike.new } }.to raise_error("station full")
      end  
    end

    describe "#bike" do 
      it 'docking station responds to bike' do
        expect(subject).to respond_to(:bike)
      end 
    end  

    describe "#initialize" do
      it "should allow a different capacity to be set" do
        station = DockingStation.new(30)
        expect(station.capacity).to eq 30
      end
      it "should return the default capacity if no capacity argument set" do
        station = DockingStation.new
        expect(station.capacity).to eq DockingStation::DEFAULT_CAPACITY
      end
    end
end

# a) gets a bike, and then b) expects the bike to be working
