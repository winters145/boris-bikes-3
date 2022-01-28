require_relative 'bike'

class DockingStation

  DEFAULT_CAPACITY = 20
  attr_reader :bike
  attr_accessor :capacity

    def initialize(capacity = DEFAULT_CAPACITY)
      @stored_bikes = []
      @capacity = capacity
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

    def return_bike(bike, working = true)
      if working
        dock(bike)
      else
        return "broken bike returned but not docked"
      end
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