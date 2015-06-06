# coding: UTF-8

# Đây không phải là phương pháp tốt nhất nhưng là phương pháp mà mình
# tự nghĩ ra và thấy dễ hiểu nhất.

def smallest_multiple(a, b)
  tap_hop = (a..b).to_a
  tap_hop.shift if a == 1 # Loại 1 nếu 1 là phần tử đầu tiên
  
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
  
  # Lặp qua phan_tu_luy_thua_lon_nhat để loại bỏ những số là bội
  # của phần tử trong tap_hop
  # Ví dụ khi chạy code với tap_hop = (1..10).to_a, ta có
  # phan_tu_luy_thua_lon_nhat = [ 8, 9, 5, 7, 6, 10]
  # Trong đó 6 = 2 * 3 và 10 = 2 * 5 nên phải loại bỏ những số này.
  # Ở đây mình tạo một duplicate của phan_tu_luy_thua_lon_nhat
  # để tránh trường hợp khi xóa những số này gây ảnh hưởng đến index
  # của mảng.
  copy_of_phan_tu_luy_thua_lon_nhat = phan_tu_luy_thua_lon_nhat.dup
  copy_of_phan_tu_luy_thua_lon_nhat.each do |x|
    puts "x = #{x}"
    tap_hop.each do |y|
      puts "y = #{y}"
      if x % y == 0
        z = x
        puts "z = #{z}"
        z /= y while z % y == 0
        puts "z after = #{z}"
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