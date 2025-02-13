drop table books;
CREATE TABLE Books(ISBN VARCHAR(30) not null unique,Book_title VARCHAR(70),Category VARCHAR(20) not null,Rental_Price DOUBLE,status text,Author varchar(40),Publisher varchar(30));
INSERT INTO Books (ISBN,Book_title,Category,Rental_Price,Status,Author,Publisher) VALUES 
('978-0-09-957807-9','A Game of Thrones','Fantasy',7.5,"Yes","George R.R Martin","Bantam"),
('978-0-14-044930-3','The Histories','History',5.5,"Yes","Herodotus","Penguin Classics"),
('978-0-14-118776-1','One Hundred Years of Solitude','Fiction',6.5,"Yes","Gabriel Garcia Marquez","Penguin Books"),
('978-0-141-44171-6','Jane Eyre','Classic',4,"No","Charlotte Bronte","Penguin Classics"),
('978-0-19-280551-1','The Guns of August','History',7,"Yes","Barbara W. Tuchman","Oxford University Press"),
('978-0-307-37840-1','The Alchemist','Fiction','2.5','Yes','Paulo Coelho','HarperOne'),
('978-0-307-58837-1','Sapiens: A Brief History of Humankind','History','8','No','Yuval Noah Harari','Harper Perennial'),
('978-0-330-25864-8','Animal Farm','Classic','5.5','Yes','George Orwell','Penguin Books'),
('978-0-375-41398-8','The Diary of a Young Girl','History','6.5','Yes','Anne Frank','Bantam'),
('978-0-393-05081-8','A Peoples History of the United States','History','9','Yes','Howard Zinn','Harper Perennial'),
('978-0-393-91257-8','Guns, Germs, and Steel: The Fates of Human Societies','History','7','Yes','Jared Diamond','W. W. Norton & Company'),
('978-0-525-47535-5','The Great Gatsby','Classic','8','Yes','F. Scott Fitzgerald','Scribner'),
('978-0-553-29698-2','The Catcher in the Rye','Classic','7','Yes','J.D. Salinger','Little, Brown and Company'),
('978-0-679-76489-8','Harry Potter and the Sorcerers Stone','Fantasy','7','Yes','J.K. Rowling','Scholastic'),
('978-0-7432-4722-4','The Da Vinci Code','Mystery','8','Yes','Dan Brown','Doubleday'),
('978-0-7432-7357-1','1491: New Revelations of the Americas Before Columbus','History','6.5','No','Charles C. Mann','Vintage Books');
select*from books;

drop table customers;
create table customers(Customer_Id varchar(10) not null unique,Customer_name varchar(30) not null,Customer_address varchar(40),Reg_date DATE);
INSERT INTO CUSTOMERS VALUES 
(Customer_Id,Customer_name,Customer_address,Reg_date),
('C101','Alice Johnson','123 Main St',"2021-05-05"),
('C102','Bob Smith','456 Elm St',"2021-06-20"),
('C103','Carol Davis','789 Oak St',"2021-07-10"),
('C104','Dave Wilson','567 Pine St',"2021-08-05"),
('C105','Eve Brown','890 Maple St',"2021-09-25"),
('C106','Frank Thomas','234 Cedar St',"2021-10-15"),
('C107','Grace Taylor','345 Walnut St',"2021-11-20"),
('C108','Henry Anderson','456 Brich St',"2021-12-10"),
('C109','Ivy Martinerz','567 Oak St',"2022-01-05"),
('C110','Jack Wilson','678 Pine St',"2022-02-25"),
('C111', 'John Smith', '123 Maple Street, Cityville', "2023-01-15"),
('C112', 'Emily Johnson', '456 Oak Avenue, Townsburg', "2023-02-20"),
('C113', 'Michael Brown', '789 Pine Road, Villagetown', "2023-03-10"),
('C114', 'Sarah Davis', '234 Elm Lane, Hamletville', "2023-04-05"),
('C115','David Wilson', '567 Cedar Drive, Metropolis', "2023-05-12"),
('C116', 'Jessica Lee', '890 Birch Court, Riverside', "2023-06-25"),
('C117', 'Robert Taylor', '345 Willow Street, Seaside', "2023-07-18"),
('C118', 'Amanda Martinez', '678 Spruce Boulevard, Lakeside',"2023-08-30"),
('C119', 'Christopher Anderson', '901 Redwood Circle, Mountainview',"2023-09-14"),
('C120', 'Rachel Thompson', '543 Magnolia Way, Harbortown',"2023-10-07");
select*from customers;

drop table branch;
create table Branch(Branch_no varchar(10) not null unique,Manager_id varchar(10) not null unique,Branch_address varchar(30),Contact_no bigint);
INSERT INTO Branch VALUES 
(Branch_no,Manager_id,Branch_address,Contact_no),
('B001','M101','123 Main St',919099988676),
('B002','M102','456 Elm St',919099988677),
('B003','M103','789 Oak St',919099988678),
('B004','M104','567 Pine St',919099988679),
('B005','M105','890 Maple St',919099988680),
('B006','M006', '890 Birch Court',919876543215),
('B007', 'M007', '345 Willow Street',919876543216),
('B008', 'M008', '678 Spruce Boulevard',919876543217),
('B009', 'M009', '901 Redwood Circle',919876543218),
('B010', 'M010', '543 Magnolia Way',919876543219);
select*from branch;

drop table employee;
create table Employee(Emp_id varchar(10) not null unique,Emp_name varchar(30) not null,Position text,Salary int,Branch_no varchar(10));
INSERT INTO Employee VALUES 
(Emp_id,Emp_name,Position,Salary,Branch_no),
('E101','John Doe','Manager',60000,"B001"),
('E102','Jane Smith','Clerk',45000,"B001"),
('E103','Mike Johnson','Librarian',55000,"B007"),
('E104','Emily Davis','Assistant',40000,"B001"),
('E105','Sarah Brown','Assistant',42000,"B002"),
('E106','Michelle Ramirez','Assistant',43000,"B003"),
('E107','Michal Thompson','Manager',62000,"B002"),
('E108','Jessica Taylor','Clerk',46000,"B007"),
('E109','Daniel Anderson','Librarian',57000,"B002"),
('E110','Laura Martinez','Assistant',41000,"B004"),
('E111','Christoper Lee','Manager',65000,"B003");
select*from employee;

drop table issue_status;
create table Issue_status(Issue_Id varchar(10) not null unique,Issued_cust varchar(10) not null,Issued_book_name varchar(100),Issue_date date not null,Isbn_book varchar(30));
INSERT INTO Issue_status VALUES 
(Issue_Id,Issued_cust,Issued_book_name,Issue_date,Isbn_book),
('IS101','C101','The Catcher in the Rye',"2023-05-01",978-0-553-29698-2),
('IS102','C102','The Da Vinci Code',"2023-05-02",978-0-7432-4722-4),
('IS103','C103','1491: New Revelations of the Americas Before Columbus',"2023-05-03",978-0-7432-7357-1),
('IS104','C104','Sapiens: A Brief History of Humankind',"2023-05-04",978-0-307-58837-1),
('IS105','C105','The Diary of a Young Girl',"2023-05-05",978-0-375-41398-8),
('IS108','C108','The Histories',"2023-06-09",978-0-14-044930-3),
('IS110','C110','A Game of Thrones',"2023-06-10",978-0-09-957807-9);
select*from issue_status;

drop table return_status;
create table Return_status(Return_id varchar(10) not null unique,Return_cust varchar(10) not null,Return_book_name varchar(30),Return_date date,isbn_book2 varchar(30));
INSERT INTO Return_status VALUES 
(Return_id,Return_cust,Return_book_name,Return_date,isbn_book2),
('RS101','C101','The Catcher in the Rye',"2023-06-06",978-0-553-29698-2),
('RS102','C102','The Da Vinci Code',"2023-06-07",978-0-7432-4722-4),
('RS103','C105','The Diary of a Young Girl',"2023-06-08",978-0-375-41398-8),
('RS104','C108','The Histories',"2023-06-09",978-0-14-044930-3),
('RS105','C110','A Game of Thrones',"2023-06-10",978-0-09-957807-9);
select*from return_status;
#QUERIES 
SELECT * FROM books WHERE Author = 'Dan Brown';
SELECT book_title,category,author FROM books WHERE Category = 'History';
SELECT * FROM books WHERE Rental_Price <5;
SELECT Category, COUNT(*) AS Book_Count FROM books GROUP BY Category;
SELECT * FROM books ORDER BY Rental_Price DESC LIMIT 1;
INSERT INTO books(ISBN, Book_title, Category, Rental_Price, Status, Author, Publisher) VALUES ('978-1-23-456789-0', 'New Book', 'Science Fiction', 6.5, 'Yes', 'Author Name', 'Publisher Name');
UPDATE books SET Status = 'No' WHERE ISBN = '978-0-307-37840-1';
SELECT Category, MAX(Rental_Price) AS Max_Price FROM Books GROUP BY Category;
SELECT C.Customer_name, R.return_book_name, R.Return_date
FROM Customers C
right JOIN return_status R ON C.Customer_Id = R.Return_cust;
SELECT E.Emp_name, E.Position, B.Branch_address, B.Contact_no
FROM Employee E
INNER JOIN Branch B ON E.Branch_no = B.Branch_no;
