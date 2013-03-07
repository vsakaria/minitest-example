class Van

  def initialize
    @bikes = []
  end

  def <<(bike) 
    @bikes << bike
  end

  def release_bike
    @bikes.pop
  end

  def number_of_bikes
    @bikes.length
  end

  def broken_bikes
    @bikes.select{|bike| bike.broken?}
  end

  def working_bikes
    @bikes.select{|bike| !bike.broken?}
  end
end
