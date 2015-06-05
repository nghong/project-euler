require_relative "../largest_prime_factor"
require "minitest/autorun"

class TestLargestPrimeFactor < Minitest::Test
  
  def test_that_it_return_1_when_enter_1
    assert_equal 1, largest_prime_factor(1)
  end
  
  def test_that_it_return_17_when_enter_68
    assert_equal 17, largest_prime_factor(68)
  end
  
  def test_that_it_return_17_when_enter_17
    assert_equal 17, largest_prime_factor(17)
  end
  
end