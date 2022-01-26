require_relative 'bike'

class DockingStation
    attr_reader :bike 
    # def initialize 
    #     @stored_bikes = []
    # end 
    def release_bike
      @bike  
      #raise "no bikes" 
    end
    def dock(bike) 
      # @stored_bikes << bike
      @bike = bike
    end
end 