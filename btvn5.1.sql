DROP TABLE IF EXISTS students;

CREATE TABLE students (
    student_id VARCHAR(20) PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    birth_year INT NOT NULL,
    gender ENUM('Nam', 'Nu') NOT NULL,
    email VARCHAR(100),
    score DECIMAL(4,2)
);

INSERT INTO students (student_id, full_name, birth_year, gender, email, score) VALUES
('S001', 'Nguyen Van Anh', 2000, 'Nam', 'anh001@gmail.com', 8.5),
('S002', 'Tran Thi Bich', 1999, 'Nu', NULL, 7.2),
('S003', 'Le Hoang Nam', 2001, 'Nam', 'nam003@gmail.com', 9.1),
('S004', 'Pham Minh Anh', 1998, 'Nu', NULL, 6.8),
('S005', 'Do Tuan Kiet', 2000, 'Nam', 'kiet005@gmail.com', 5.9),
('S006', 'Hoang Thi Lan', 1997, 'Nu', 'lan006@gmail.com', 8.0),
('S007', 'Vo Quoc Bao', 2002, 'Nam', NULL, 7.7),
('S008', 'Nguyen Thi Anh Thu', 2001, 'Nu', 'anhthu008@gmail.com', 9.4),
('S009', 'Pham Gia Huy', 1999, 'Nam', 'huy009@gmail.com', 4.5),
('S010', 'Bui Thanh An', 2000, 'Nu', NULL, 6.3);

select * from students;

select student_id,
upper(full_name) as full_name
from students;

select full_name,
2026-birth_year as age
from students;

select 
full_name,
round() as ĐIỂM_TRUNG_BÌNH
from students;

select* from students;

SELECT 
    COUNT(*) AS total_students,
    MAX(score) AS highest_score,
    MIN(score) AS lowest_score
FROM students;
