CREATE DATABASE online_libary;
USE online_libary ;

-- BÀI 01 : 
CREATE TABLE Reader (
reader_id  INT AUTO_INCREMENT PRIMARY KEY,
reader_name VARCHAR(100) NOT NULL,
phone VARCHAR(15) UNIQUE,
register_date DATE DEFAULT (CURRENT_DATE)
);

CREATE TABLE Book (
book_id INT AUTO_INCREMENT PRIMARY KEY,
book_tite VARCHAR(150) NOT NULL,
author VARCHAR(100),
publish_year INT CHECK(publish_year >= 100 )
);

CREATE TABLE Borrow(
reader_id INT ,
book_id INT ,
borrow_date DATE DEFAULT(CURRENT_DATE),
return_date DATE
);

-- BÀI 02 : 
ALTER TABLE Reader 
add email VARCHAR(100) UNIQUE;
ALTER TABLE Book 
modify author VARCHAR(150);
ALTER TABLE Borrow 
add check (return_date >= borrow_date);

-- BÀI 03 : 

INSERT INTO Reader (reader_id, reader_name, phone, email, register_date)
VALUES ('1', 'Nguyễn Văn An', '0901234567', 'an.nguyen@gmail.com', '2024-09-01'),
('2', 'Trần Thị Bình ', '0912345678', 'binh.tran@gmail.com', '2024-09-05'),
('3', 'Lê Minh Châu', '0923456789', 'chau.le@gmail.com', '2024-09-10');

INSERT INTO Book (book_id, book_tite, author, publish_year)
VALUES ('101', 'Lập trình C cơ bản ', 'Nguyễn Văn A', '2018'),
('102', 'Cơ sở dữ liệu ', 'Trần Thị B', '2020'),
('103', 'Lập trình Java', 'Lê Minh C', '2019'),
('104', 'Hệ quản trị MySQL', 'Phạm Văn D', '2021');

INSERT INTO Borrow (reader_id, book_id, borrow_date, return_date)
VALUES ('1', '101', '2024-09-15', 'NULL'),
('1', '102', '2024-09-15', '2024-09-25'),
('2', '103', '2024-09-18', 'NULL');

update Borrow
set return_date ='2024-10-01'
where reader_id=1;

update Book
set publish_year=2023
where publish_year>=2021;

delete from Borrow
where borrow_date < '2024-09-18';

select *from Reader;
select *from Book;
select *from Borrow;








