require_relative "../sum_of_multiples_of_3_and_5"
require "minitest/autorun"

class TestSumOfMultiplesOfThreeAndFive < MiniTest::Test
  
  def test_that_it_return_23_when_range_is_10
    assert_equal 23, sum_of_multiples_of_3_and_5(10)
  end
  
  def test_that_it_return_233168_when_range_is_1000
    assert_equal 233168, sum_of_multiples_of_3_and_5(1000)
  end
  
end