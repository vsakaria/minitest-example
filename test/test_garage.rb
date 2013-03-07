require './lib/garage' # the class under test
require './lib/van' 
require './lib/person' 
require './lib/station' 
require './lib/bike'
require 'minitest/autorun' # the minitest itself
require 'ansi' # makes it colored
require 'turn' # improves the default output

class TestGarage < MiniTest::Unit::TestCase

  def setup
    @garage = Garage.new
    @bike = Bike.new
  end


  def test_garage_can_accept_bike
    @bike.break!
    @garage << @bike
    assert_equal 1, @garage.number_of_bikes
  end

  def test_garage_can_only_accept_broken_bikes
    @garage << @bike.break!
    @workingbike = Bike.new
    @garage << @workingbike
    assert_equal 1, @garage.number_of_bikes
    #@garage.bikes.{|bike| !bike.broken?}
  end

  def test_garage_can_release_bike
    @garage << @bike
    garage.release_bike
    refute(@garage.number_of_bikes == not nil)
  end

  def test_garage_can_only_release_fixed_bikes
    @garage << @bike.break
    garage.release_bike
    @bike == !broken?
  end
end

