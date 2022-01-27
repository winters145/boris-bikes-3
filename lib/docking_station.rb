require_relative 'bike'

class DockingStation

    attr_reader :bike 

    def initialize 
      @stored_bikes = []
    end 

    def release_bike 
      raise "no bikes" if @stored_bikes.empty? 
      @stored_bikes.last
    end

    def dock(bike) 
      raise "station full" if !@stored_bikes.empty?
      @stored_bikes << bike
      @bike = bike
    end

end 