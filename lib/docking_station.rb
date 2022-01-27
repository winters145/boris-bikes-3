require_relative 'bike'

class DockingStation

  DEFAULT_CAPACITY = 20
  attr_reader :bike 

    def initialize
      @stored_bikes = []
    end 

    def release_bike 
      raise "no bikes" if empty?
      @stored_bikes.last
    end

    def dock(bike)
      raise "station full" if full?
      @stored_bikes << bike
      @bike = bike
    end

    private

    def full?
      if @stored_bikes.count < DEFAULT_CAPACITY
        false
      else
        true
     end
    end
    
    def empty?
      if @stored_bikes.empty?
        true
      else
        false
      end
    end
end 