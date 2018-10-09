class Bear

  attr_reader :name, :type, :stomach

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def add_fish(fish)
    @stomach << fish
  end

  def eat_river_fish(river, fish)
    river.remove_fish(fish)
    self.add_fish(fish)
  end

end
