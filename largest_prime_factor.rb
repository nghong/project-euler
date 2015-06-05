# coding: UTF-8

# Lấy ý tưởng từ một bài trên Stack Overflow để tìm ước số nguyên tố lớn nhất.
#
# Cho số chia lúc đầu là 2, chia đến khi nào không còn chia được nữa thì tăng
# số chia lên rồi cứ thế tiếp tục. Như thế ta có thể tìm ra tất cả các ước của
# số bị chia. Ước lớn nhất cũng chính là số nguyên tố lớn nhất (o.O)
#
# VD: cho số 68
# Chia cho 2 => 34, 17
# Nâng số chia lên 3, 4, 5.... cho đến khi tìm được ước của 17
# Do 17 là số nguyên tố nên chỉ có thể chia hết cho 17
# Vậy ước số nguyên tố lớn nhất của 68 là 17
#
# Trường hợp xấu nhất của thuật toán này là khi số cho ban đầu là một số 
# nguyên tố. Như thế phải lặp n lần để tìm ra ước số nguyên tố lớn nhất. 
# Trường hợp này có thể giải quyết bằng cách kiểm tra sqrt(n), nếu số chia
# lớn hơn sqrt(n) thì xem như ước số nguyên tố lớn nhất chính là n.

def largest_prime_factor(number)
  return 1 if number <= 1
  uoc = 2
  while number > 1
    number /= uoc while number % uoc == 0
    uoc = uoc + 1
    return number if uoc*uoc > number && number > 1
  end
  uoc    
end