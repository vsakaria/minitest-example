class Person

  def initialize
    @bike = nil
  end

  def has_bike?
     @bike
  end

  def take_bike_from(station)
    unless has_bike? do |foundbike|
        foundbike = @station.bikes.find(first) 
        @bike = station.release_bike(foundbike) 
      end  
    end
  end

  def return_bike(station)
    @bike = station<<(bike)
  end
end