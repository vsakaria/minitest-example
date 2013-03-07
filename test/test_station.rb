require './lib/station' # the class under test
require './lib/bike'
require 'minitest/autorun' # the minitest itself
require 'ansi' # makes it colored
require 'turn' # improves the default output

class TestStation < MiniTest::Unit::TestCase

  def setup
    @station = Station.new
  end

  def test_station_is_empty_after_creation
    assert_equal 0, @station.number_of_bikes
  end

  def test_station_can_receive_bike    
    @station.receive_bike(Bike.new)
    assert_equal 1, @station.number_of_bikes     
  end

  def test_station_can_release_bike
    @station.receive_bike(Bike.new)  	
    assert_equal 1,  @station.number_of_bikes
  	bike = @station.release_bike(bike)
  	assert_equal 0,  @station.number_of_bikes
    assert_instance_of Bike, bike
  end

  def test_station_cannot_receive_extra_bikes
    @station = Station.new(:capacity => 20)
    assert_raises(RuntimeError) {
      21.times {
        @station.receive_bike(Bike.new)
      }
    }
  end

  def test_station_returns_bike_broken
    bike = Bike.new
    bike.break!
    @station.receive_bike(bike)
    @station.receive_bike(Bike.new)
    #This @bikes instance var exist only in the test class, so we are testing something within the test class not the station class
    assert_equal 1, @station.broken_bikes.length 
  end

  def test_station_returns_working_bikes
    bike = Bike.new
    bike.break!
    @station.receive_bike(bike)
    @station.receive_bike(Bike.new)
    assert_equal 1, @station.working_bikes.length 
  end
end