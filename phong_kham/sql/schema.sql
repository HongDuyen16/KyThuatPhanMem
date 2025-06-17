
-- Bảng thông tin bác sĩ
CREATE TABLE IF NOT EXISTS bacsi (
    id TEXT PRIMARY KEY,
    name TEXT NOT NULL,
    specialization TEXT NOT NULL,
    description TEXT,
    image TEXT
);

-- Bảng lịch hẹn
CREATE TABLE IF NOT EXISTS lichhen (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    ten TEXT NOT NULL,
    phone TEXT NOT NULL,
    datetime TEXT NOT NULL,
    bacsi_id TEXT NOT NULL,
    FOREIGN KEY (bacsi_id) REFERENCES bacsi(id)
);

-- Bảng tài khoản quản trị
CREATE TABLE IF NOT EXISTS admin (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    username TEXT NOT NULL UNIQUE,
    password_hash TEXT NOT NULL
);
