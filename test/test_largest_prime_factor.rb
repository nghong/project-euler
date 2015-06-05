require_relative "../largest_prime_factor"
require "minitest/autorun"

class TestLargestPrimeFactor < Minitest::Test
  
  def test_that_it_return_1_when_enter_number_less_or_equal_1
    assert_equal 1, largest_prime_factor(1)
    assert_equal 1, largest_prime_factor(-5)
  end
  
  def test_that_it_return_2_when_enter_power_of_2
    assert_equal 2, largest_prime_factor(2)
    assert_equal 2, largest_prime_factor(32)
    assert_equal 2, largest_prime_factor(128)
  end
  
  def test_that_it_should_work_properly
    assert_equal 13, largest_prime_factor(13)
    assert_equal 17, largest_prime_factor(17)
    assert_equal 17, largest_prime_factor(68)
  end
  
end