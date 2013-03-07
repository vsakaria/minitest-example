require './lib/person' # the class under test
require './lib/station' 
require './lib/bike'
require 'minitest/autorun' # the minitest itself
require 'ansi' # makes it colored
require 'turn' # improves the default output

class TestPerson < MiniTest::Unit::TestCase

  def setup
    @person = Person.new
    @station = Station.new
    # @bike = Bike.new
  end

  def test_person_can_take_bike
    @station.receive_bike(Bike.new)
    @person.take_bike(@station)
    assert_equal 0, @station.number_of_bikes
  end

  def test_person_can_return_bike
    @person.has_bike?    
    @person.return_bike(@station)
    assert_equal 1, @station.number_of_bikes
  end

  def test_person_has_bike 
    @station.receive_bike(Bike.new)
    @person.take_bike(@station)
    assert(@person.has_bike?)
  end
end