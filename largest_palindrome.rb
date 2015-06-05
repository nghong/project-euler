# coding: UTF-8

class Integer
  def palindrome?
    return true if self.to_s == self.to_s.reverse
    false
  end
end

def largest_palindrome(a, b)
  largest_palind = 0
  c = a
  while a <= b
    while c <= b
      product = a*c
      largest_palind = product if product.palindrome? && largest_palind < product
      c += 1
    end
    a += 1
    c = a
  end
  largest_palind
end