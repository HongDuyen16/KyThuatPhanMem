# Báo cáo Tuần 6: Xây dựng giao diện trang "Liên hệ"

## 1. Mục tiêu

* Xây dựng và hoàn thiện giao diện trang **"Liên hệ"**, nơi người dùng có thể:

  * Xem địa chỉ, giờ làm việc, số điện thoại.
  * Tương tác với bản đồ nhúng (Google Maps).
  * Gửi thông tin/yêu cầu qua form liên hệ.

## 2. Phân tích nội dung trang "Liên hệ"

| Thành phần            | Mô tả                                                                   |
| --------------------- | ----------------------------------------------------------------------- |
| **Thông tin liên hệ** | Bao gồm địa chỉ, số điện thoại, email, giờ làm việc                     |
| **Hình ảnh minh họa** | Các hình ảnh đại diện của các cơ sở (bệnh viện, phòng khám)             |
| **Google Maps**       | Nhúng bản đồ hiển thị vị trí của 2 địa điểm                             |
| **Form liên hệ**      | Trường nhập Họ tên, Email, Số điện thoại, Nội dung cần hỗ trợ + nút Gửi |

## 3. Các thành phần trong giao diện

* **Header:** Tái sử dụng giao diện header đã thiết kế của các trang trước (Về chúng tôi, Chuyên khoa...)
* **Banner:** Hình ảnh nền minh họa kèm caption: "Kết nối với chúng tôi"
* **Thông tin liên hệ:**

  * 2 khối: Bệnh viện Hạnh Phúc và Phòng khám Hạnh Phúc
  * Hiển thị icon (địa chỉ, điện thoại, thời gian) bằng Font Awesome
* **Google Maps:**

  * Nhúng iframe từ Google Maps tương ứng 2 địa chỉ cụ thể:

    * Estalla Place, TP. Thủ Đức
    * 18 Đại lộ Bình Dương, Thuận An
* **Form liên hệ:**

  * 4 trường: Họ tên, Email, Điện thoại, Nội dung
  * Button: **Gửi yêu cầu**
  * Thiết kế nhỏ gọn, rõ ràng

## 4. Kết quả và định hướng tuần tiếp theo

* **Kết quả đạt được:**

  * Trang "Liên hệ" đã hoàn chỉnh giao diện, thông tin rõ ràng
  * Bản đồ được nhúng chuẩn, tích hợp chuyển đổi vị trí
  * Form liên hệ hiển thị đẹp, dễ nhập liệu, sẵn sàng cho backend

* **Định hướng Tuần 7:**

  * Tích hợp backend cho form liên hệ, lưu trữ dữ liệu gửi từ người dùng
  * Xử lý backend cho trang đặt lịch hẹn
  * Kiểm tra toàn bộ quy trình gửi - nhận thông tin
