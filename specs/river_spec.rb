require("minitest/autorun")
require("minitest/rg")
require_relative("../fish")
require_relative("../river")

class RiverTest < MiniTest::Test

  def setup
    @river_clyde = River.new("Clyde")
    @fish1 = Fish.new("Alex Salmon")
  end

  def test_get_river_name
    assert_equal("Clyde", @river_clyde.name)
  end

  def test_add_fish
    @river_clyde.add_fish(@fish1)
    fish_count = @river_clyde.fishies.count
    assert_equal(1, fish_count)
  end

  def test_remove_fish
    @river_clyde.add_fish(@fish1)
    @river_clyde.remove_fish(@fish1)
    fish_count = @river_clyde.fishies.count
    assert_equal(0, fish_count)
  end

end
