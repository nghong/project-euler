require_relative "../even_fibonacci_numbers"
require "minitest/autorun"

class TestEvenFibonacciNumbers < MiniTest::Test
  
  def test_that_it_return_44_when_max_value_is_100
    assert_equal 44, even_fibonacci_numbers(100)
  end
  
  def test_that_it_return_4613732_when_max_value_is_4_million
    assert_equal 4613732, even_fibonacci_numbers(4000000)
  end
  
end