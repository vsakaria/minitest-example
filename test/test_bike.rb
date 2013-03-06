require './lib/bike'
require 'minitest/autorun'
require 'ansi'
require 'turn'

class TestBike < MiniTest::Unit::TestCase

  def test_bike_can_be_broken
    bike = Bike.new
    refute bike.broken?
    bike.break!
    assert bike.broken?
  end

end