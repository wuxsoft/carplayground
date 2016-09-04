require 'test/unit'

require_relative './car'
class TestCarPlayground < Test::Unit::TestCase
  def test_car_move
    car = Car.new
    assert(car.position= "5 5")
    assert(car.position= "1 2 N")
    assert(car.position= "LMLMLMLMM")
    assert(car.position= "3 3 E")
    assert(car.position= "MMRMMRMRRM")
    assert(car.run)
  end
end
