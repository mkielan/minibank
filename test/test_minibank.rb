require './test/minitest_helper'

class TestMinibank < MiniTest::Unit::TestCase
  def test_that_it_has_a_version_number
    refute_nil ::Minibank::VERSION
  end
end
