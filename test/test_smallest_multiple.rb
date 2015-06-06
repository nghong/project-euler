require_relative "../smallest_multiple.rb"
require "minitest/autorun"

class TestSmallestMultiple < Minitest::Test
  
  def test_that_it_returns_2520_when_range_from_1_to_10
    assert_equal 2520, smallest_multiple(1, 10)
  end
  
  def test_that_it_returns_232792560_when_range_from_1_to_20
    assert_equal 232792560, smallest_multiple(1, 20)
  end
end