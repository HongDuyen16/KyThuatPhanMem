# Báo cáo Tuần 4: Xây dựng giao diện trang "Bác sĩ"

## 1. Mục tiêu

* Thiết kế và xây dựng giao diện trang **"Bác sĩ"** để giới thiệu đội ngũ chuyên môn của phòng khám.
* Tập trung việc thể hiện rõ ràng các thông tin cơ bản: hình ảnh, họ tên, chuyển khoa, học vị và kinh nghiệm.
* Mỗi bác sĩ đều có nút "**Tìm hiểu thêm**", khi nhấn vào sẽ hiển thị thông tin chi tiết của từng bác sĩ tương ứng.
* Sử dụng **HTML, CSS thuần** giữ phong cách đồng nhất với các trang trước.

## 2. Phân tích nội dung trang "Bác sĩ"

| Thành phần            | Nội dung                                                                                          |
| --------------------- | ------------------------------------------------------------------------------------------------- |
| **Banner**            | Thể hiện đội ngũ bác sĩ kèm theo thông tin cơ bản                                                 |
| **Thẻ bác sĩ**        | Bao gồm: Ảnh đại diện, tên, chuyên khoa                                                           |
| **Nút tìm hiểu thêm** | Hiển thị popup hoặc redirect đến trang chi tiết: tên, chuyên môn, học vị, kinh nghiệm, thành tích |

## 3. Cấu trúc giao diện

* **Header**: Dùng chung từ các trang trước (navbar, logo, menu).
* **Banner giới thiệu**: Dùng hình ảnh đội ngũ bác sĩ đang tư vấn cho bệnh nhân, thêm caption ngắn để truyền thông.
* **Danh sách bác sĩ**:

  * Chia dạng **grid 3 cột** hoặc linh hoạt với `flex-wrap` / `grid`.
  * Mỗi **card bác sĩ** gồm: ảnh, tên, chuyên khoa, kinh nghiệm ngắn, nút "Xem thêm".
  * Dạng chi tiết sử dụng popup/modal hoặc link dẫn đến trang chi tiết.

## 4. Kết quả đạt được

* Hoàn chỉnh giao diện và nội dung trang **"Bác sĩ"**.
* Thiết kế đồng bộ với layout chung, giao diện hiện đại, tự động responsive, tối ưu hình ảnh, icon.
* Dễ dàng bổ sung thêm bác sĩ mới vào danh sách.
* Tăng độ uy tín, chuyên nghiệp của phòng khám trong mắt người dùng.

## 5. Định hướng tuần 5

* Bắt đầu thiết kế giao diện **trang "Gói khám"**.
* Truyền tải đầy đủ thông tin về dịch vụ, combo, chi phí để người dùng dễ dàng lựa chọn gói phù hợp.
* Chuẩn bị không gian giao diện cho danh sách gói khám, đặt lịch nhanh cho từng gói.
