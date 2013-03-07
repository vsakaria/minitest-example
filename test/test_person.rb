require './lib/person' # the class under test
require './lib/station' 
require './lib/bike'
require 'minitest/autorun' # the minitest itself
require 'ansi' # makes it colored
require 'turn' # improves the default output

class TestPerson < MiniTest::Unit::TestCase

  def setup
    @person = Person.new
  end

  def test_person_can_take_bike #from station
    #station releases bike to person without bike
    #@bikes at station goes down by 1

    assert_equal
  end

  def test_person_can_return_bike

  end

  def test_person_has_bike 
     @person.take_bike
     assert(@person.has_bike)
  end
   #has bike == true

end