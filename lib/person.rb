class Person

  def initialize
    @bike
  end

  def has_bike?
    not @bike == nil
  end

  def take_bike(station)
    @bike = station.release_bike(@bike)
  end

  def return_bike(station)
    @bike = station.receive_bike(@bike)
  end


end