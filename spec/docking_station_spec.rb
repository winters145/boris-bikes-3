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
    
    describe "#release_bike" do
      it "releases working bikes" do
        bike = Bike.new
        expect(bike.working?(true)).to eq true
      end
      it "releases only working bikes, even after a broken one returned" do
        working_bike = Bike.new
        broken_bike = Bike.new
        subject.return_bike(working_bike)
        subject.return_bike(broken_bike,false) # return a broken bike using false parameter
        expect(subject.release_bike).to eq working_bike
        # above - as we return the last added bike, this would be the broken bike if it were added to the array
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
      it "docking station responds to bike" do
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

    describe "#return_bike" do
      it "should allow a bike to be labelled as broken when returned" do
        broken_bike = Bike.new
        subject.return_bike(broken_bike, false)
        expect(broken_bike.working?(false)).to eq false 
      end
      it "should allow both broken and working bikes to be returned" do
        working_bike = Bike.new
        broken_bike = Bike.new
        expect(subject.return_bike(working_bike)).to be_truthy
        expect(subject.return_bike(broken_bike,false)).to be_truthy
      end
    end
end

# a) gets a bike, and then b) expects the bike to be working
