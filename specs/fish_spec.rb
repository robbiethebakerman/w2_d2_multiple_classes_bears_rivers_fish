require("minitest/autorun")
require("minitest/rg")
require_relative("../fish")

class FishTest < MiniTest::Test

  def setup
    @fish_mack = Fish.new("Mack")
  end

  def test_get_fish_name
     assert_equal("Mack", @fish_mack.name)
  end

end
