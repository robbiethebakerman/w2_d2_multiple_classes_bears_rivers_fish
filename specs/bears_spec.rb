require("minitest/autorun")
require("minitest/rg")
require_relative("../fish")
require_relative("../river")
require_relative("../bears")

class BearTest < MiniTest::Test

  def setup
    @bear_yogi = Bear.new("Yogi", "Grizzly")
    @fish_mike = Fish.new("Mike the Pike")
    @fish_billy = Fish.new("Billy Seabass")
    @river_forth = River.new("Forth")
  end

  def test_get_bear_name
    assert_equal("Yogi", @bear_yogi.name)
  end

  def test_get_bear_type
    assert_equal("Grizzly", @bear_yogi.type)
  end

  def test_add_fish
    @bear_yogi.add_fish(@fish_mike)
    fish_count = @bear_yogi.stomach.count
    assert_equal(1, fish_count)
  end

  def test_eat_river_fish
    @river_forth.add_fish(@fish_mike)
    @river_forth.add_fish(@fish_billy)
    @bear_yogi.eat_river_fish(@river_forth, @fish_mike)
    river_fish_count = @river_forth.fishies.count
    bear_fish_count = @bear_yogi.stomach.count
    assert_equal(1, river_fish_count)
    assert_equal(1, bear_fish_count)
  end

end
