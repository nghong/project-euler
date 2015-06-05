# Sum of multiples of 3 and 5 below range

def sum_of_multiples_of_3_and_5(range)
  sum = 0
  for i in 1..range-1
    if i % 3 == 0 || i % 5 == 0
      sum += i
    end
  end
  sum
end
