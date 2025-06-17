-- Tạo cơ sở dữ liệu nếu nó chưa tồn tại
-- Hoặc sử dụng cơ sở dữ liệu hiện có nếu bạn đã tạo thủ công (ví dụ: phongkham_db)
CREATE DATABASE IF NOT EXISTS phongkham_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- Sử dụng cơ sở dữ liệu vừa tạo (hoặc cơ sở dữ liệu hiện có)
USE phongkham_db;

-- Xóa bảng 'lich_hen' nếu nó đã tồn tại để tránh lỗi khi tạo lại
DROP TABLE IF EXISTS lich_hen;

-- Tạo bảng 'lich_hen' để lưu thông tin đặt lịch
CREATE TABLE lich_hen (
    id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY, -- ID duy nhất, tự động tăng, không dấu
    ho_ten VARCHAR(255) NOT NULL,                  -- Họ và Tên khách hàng (bắt buộc)
    loai_bv_pk VARCHAR(50) NOT NULL,               -- Bệnh viện hay Phòng khám (bắt buộc)
    email VARCHAR(255) NOT NULL,                   -- Email khách hàng (bắt buộc)
    chuyen_khoa VARCHAR(100) NOT NULL,             -- Chuyên khoa hẹn khám (bắt buộc)
    so_dien_thoai VARCHAR(20) NOT NULL,            -- Số điện thoại (bắt buộc)
    thong_tin_bo_sung TEXT,                        -- Thông tin bổ sung (có thể để trống)
    dia_chi VARCHAR(255),                          -- Địa chỉ (có thể để trống)
    ngay_sinh DATE,                                -- Ngày sinh (có thể để trống)
    gioi_tinh VARCHAR(10),                         -- Giới tính (có thể để trống)
    thoi_gian_hen DATETIME NOT NULL,               -- Ngày và giờ hẹn (bắt buộc)
    thoi_gian_dang_ky DATETIME NOT NULL            -- Thời gian form được gửi (tự động điền)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- Ghi chú:
-- INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY: Cột ID duy nhất, tự động tăng.
-- VARCHAR(length): Kiểu chuỗi với độ dài tối đa.
-- TEXT: Kiểu chuỗi dài, không giới hạn độ dài cụ thể.
-- DATE: Kiểu ngày (YYYY-MM-DD).
-- DATETIME: Kiểu ngày và giờ (YYYY-MM-DD HH:MM:SS).
-- NOT NULL: Cột không được phép để trống.
-- CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci: Đảm bảo hỗ trợ đầy đủ tiếng Việt và các ký tự đặc biệt.
