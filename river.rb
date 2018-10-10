class River

  attr_reader :name, :fishies

  def initialize(name)
    @name = name
    @fishies = []
  end

  def add_fish(fish)
    @fishies << fish
  end

  def remove_fish(fish)
    @fishies.delete(fish)
  end

  def count_fish()
    return @fishies.length()
  end

end
