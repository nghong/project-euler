def even_fibonacci_numbers(max_value)
  previous_number = 1
  current_number  = 2
  sum             = 0
  while current_number < max_value
    if current_number % 2 == 0
      sum += current_number
    end
    next_number     = previous_number + current_number
    previous_number = current_number
    current_number  = next_number
  end
  sum
end
