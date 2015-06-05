require_relative "../largest_palindrome"
require "minitest/autorun"

class TestLargestPalindrome < Minitest::Test
  
  def test_that_9009_is_largest_palindrome_made_from_product_of_two_2digit_numbers
    assert_equal 9009, largest_palindrome(10, 99)
  end
  
  def test_that_906609_is_largest_palindrome_made_from_product_of_two_3digit_numbers
    assert_equal 906609, largest_palindrome(100, 999)
  end
  
end