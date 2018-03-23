require('minitest/autorun')
require_relative('../fish.rb')
require_relative('../river.rb')

class TestRiver < Minitest::Test

  def setup
    @fish1 = Fish.new("Chani")
    @fish2 = Fish.new("Jessica")
    @fish3 = Fish.new("Stacy")
    @river = River.new([@fish1,@fish2,@fish3])
  end

  def test_river_count
    assert_equal(3, @river.number_of_fishes)
  end

  def test_can_get_fish
    fish = @river.get_fish
    assert_equal(@fish3.name, fish.name)
  end

end
