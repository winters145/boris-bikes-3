require_relative 'bike'

class DockingStation
    # def initialize 
    #     @stored_bikes = []
    # end 
    attr_reader :bike 
    # def bike
    #     @bike
    # end 
    def release_bike
      Bike.new    
    end
    def dock(bike) 
       # @stored_bikes << bike
    @bike = bike
    end
end 