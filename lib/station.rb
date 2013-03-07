class Station

  DEFAULT_CAPACITY = 10

  def initialize(options = {})
    @bikes = []
    @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
  end
  
  def receive_bike(bike)
    raise "Station full" if at_capacity?
    @bikes << bike
  end  

  def at_capacity?
    number_of_bikes == @capacity
  end

  def bikes
    @bikes
  end

  def number_of_bikes
    @bikes.length
  end

  def release_bike(bike)
    @bikes.pop
  end

  def broken_bikes
    @bikes.select{|bike| bike.broken? }
  end 

  def working_bikes
    @bikes.select{|bike| !bike.broken? }
  end 
end
