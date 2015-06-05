# coding: UTF-8

class Integer
  def palindrome?
    return true if self.to_s == self.to_s.reverse
    false
  end
end

def largest_palindrome(a, b) # From a to b
  largest_palind = 0
  d = b
  while a <= d
    c = b
    while d <= c
      product = d*c
      break if product <= largest_palind
      largest_palind = product if product.palindrome? && largest_palind < product
      c -= 1
    end
    d -= 1
  end
  largest_palind
end