require('minitest/autorun')
require_relative('../bear.rb')
require_relative('../fish.rb')
require_relative('../river.rb')

class TestBear < Minitest::Test

  def setup
    @bear = Bear.new("Rolo","Polar")
    @fish1 = Fish.new("Chani")
    @fish2 = Fish.new("Jessica")
    @fish3 = Fish.new("Stacy")
    @river = River.new([@fish1,@fish2,@fish3])
  end

  def test_bear_name
    assert_equal("Rolo", @bear.name)
  end

  def test_bear_type
    assert_equal("Polar", @bear.type)
  end

  def test_food_starts_empty
    assert_equal(0,@bear.food_count)
  end

  def test_bear_can_take_fish_from_river
    @bear.take_fish_from_river(@river)
    assert_equal(1,@bear.food_count)
    assert_equal(2,@river.number_of_fishes)
  end

  def test_bear_cant_take_fish_from_empty_river
    river = River.new([])
    @bear.take_fish_from_river(river)
    assert_equal(0,@bear.food_count)
    assert_equal(0,river.number_of_fishes)
  end

end
