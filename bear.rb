class Bear
  attr_accessor :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @food = []
  end

  def food_count
    @food.size
  end

end
