# 🗓️ Tuần 7: Xử lý dữ liệu người dùng với JSON

## 🎯 Mục tiêu
- Xây dựng chức năng xử lý dữ liệu cho hai form:
  - Form **Liên hệ**
  - Form **Đặt lịch hẹn**
- Lưu dữ liệu từ form vào các file `.json` trên máy.
- Sử dụng MySQL.
- Đảm bảo quá trình thu thập và ghi dữ liệu diễn ra chính xác, có thể kiểm tra và tái sử dụng sau.

---

## 🛠️ Phân tích & Triển khai

### 1. Cấu trúc form
- Hai form được tạo bằng **HTML** cơ bản:
  - Dùng thẻ `<form>` với method `"POST"` và action `"save_contact.php"` hoặc `"save_appointment.php"`.
  - Mỗi input có thuộc tính `name=""` để truyền dữ liệu.

### 2. Lưu dữ liệu bằng JSON
- Dữ liệu từ form sẽ được lấy thông qua JavaScript hoặc gửi đến một file xử lý.
- Cách làm đơn giản:
  - File xử lý sẽ mở file `.json` hiện có.
  - Thêm dữ liệu mới vào mảng.
  - Ghi đè trở lại bằng `file_put_contents()`.

### 3. Ví dụ cấu trúc file `appointments.json`
```json
[
  {
    "name": "Nguyễn Văn A",
    "email": "a@example.com",
    "phone": "0123456789",
    "hospital_type": "Bệnh viện",
    "department": "Phụ sản",
    "dob": "1990-01-01",
    "appointment_datetime": "2025-06-17T09:00",
    "created_at": "2025-06-15 14:30:22"
  }
]

