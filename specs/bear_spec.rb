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

end
