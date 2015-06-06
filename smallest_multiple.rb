# coding: UTF-8

# Đây không phải là phương pháp tốt nhất nhưng là phương pháp mà mình
# tự nghĩ ra và thấy dễ hiểu nhất.
# Theo mình suy nghĩ thì để tìm được bội chung nhỏ nhất của một dãy số
# thì phải loại bỏ những số mà lũy thừa lớn nhất của nó xuất hiện trong
# tập hợp.
# VD: Cho dãy số 1, 2, 3, 4, 5
# Ở đây ta loại bỏ 2 vì 2 đã xuất hiện trong 4: 4 = 2*2
# Tương tự ta cũng loại bỏ những số là bội của những số có trong tập hợp
# VD: Cho dãy số 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
# Ta loại bỏ 6 và 10 vì 6 = 2*3 và 10 = 2*5
# Khi áp dụng hai phép loại này vào dãy số thì tích của những số còn lại
# cũng chính là bội số nhỏ nhất.

def smallest_multiple(a, b)
  tap_hop = (a..b).to_a
  tap_hop.shift if a == 1 # Loại 1 nếu 1 là phần tử đầu tiên
  
  # Sử dụng phép loại thứ nhất
  
  phan_tu_da_xuat_hien = [] # Mảng chứa những số lũy thừa
  phan_tu_luy_thua_lon_nhat = [] # Chứa những số lũy thừa lớn nhất
  tap_hop.each do |x|
    # Di chuyển đến phần tử tiếp theo trong tập hợp nếu như nó có mặt
    # trong mảng phan_tu_da_xuat_hien
    next if phan_tu_da_xuat_hien.find_index(x) 
    
    i = 1 # Khởi tạo số mũ của x^i
    # Tìm lũy thừa lớn nhất của số trong tap_hop có giá trị nằm trong
    # tập hợp
    while true
      if x**i > b
        # Khi x^i vượt khỏi giới hạn tap_hop thì thêm giá trị x^(i-1)
        # vào phan_tu_luy_thua_lon_nhat
        phan_tu_luy_thua_lon_nhat.push(x**(i-1))
        break
      end
      # Thêm x^i vào phan_tu_da_xuat_hien để tiết kiệm số lần lặp
      phan_tu_da_xuat_hien.push(x**i)
      i += 1
    end
  end
  
  # Sử dụng phép loại thứ hai
  
  copy_of_phan_tu_luy_thua_lon_nhat = phan_tu_luy_thua_lon_nhat.dup
  copy_of_phan_tu_luy_thua_lon_nhat.each do |x|
    tap_hop.each do |y|
      if x % y == 0 # Chỉ thực hiện khi x là bội của y
        z = x
        z /= y while z % y == 0 # Chia cho y đến khi nào không chia được nữa
        # Loại phần tử nếu như kết quả cuối cùng không phải 1
        phan_tu_luy_thua_lon_nhat.delete(x) if z != 1
        break
      end
    end
  end

  multiple = 1
  phan_tu_luy_thua_lon_nhat.each do |x|
    multiple *= x
  end

  multiple
end