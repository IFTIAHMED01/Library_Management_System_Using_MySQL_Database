CREATE TABLE IF NOT EXISTS Books(
    Book_ID INT PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    Author VARCHAR(255) NOT NULL,
    Genre VARCHAR(255),
    ISBN VARCHAR(255),
    Publisher VARCHAR(255),
    Num_of_Copies VARCHAR(255)
);

INSERT INTO Books
VALUES ('1','Harry Potter','Eric Chen','Mystery','123@45','Van Doom','2'),
('2','Fifty Shades of Gray','Jamie Dornan','Erotic','453@32','Anastasia Steele','4'),
('3','Fight Club','Yu Who','Action','123@98','Young Dornar','1'),
('4','Blood','Akhter Khan','Suspense','231@90','Beguma Islam','2'),
('5','Game Changer','Young Chae','Drama','123@80','Long Chai','9');

SELECT * FROM Books;

CREATE TABLE IF NOT EXISTS Members(
    Borrower_ID INT Auto_Increment PRIMARY KEY,
    Borrower_Name VARCHAR(255),
    Borrower_Age VARCHAR(255),
    Borrower_Gender VARCHAR(255),
    Membership_Type VARCHAR(255),
    Duration_Kept VARCHAR(255),
    FINE VARCHAR(255),
    FOREIGN KEY(Book_ID)
    REFERENCES Books(Book_ID)
);

INSERT INTO Members(Borrower_Name,Borrower_Age,Borrower_Gender,Membership_Type,Duration_Kept,FINE)
VALUES('John','22','MALE','Full-Time','2Hr','$2000'),
('Eru','31','FEMALE','Part-Time','1Hr','$0'),
('Jessica','29','FEMALE','Full-Time','4Hr','$2500'),
('Tahmosin','27','MALE','Part-Time','0.5Hr','$0'),
('Eric','35','MALE','Full-Time','3Hr','$2100');

SELECT * FROM Members;

SELECT Books.Title, Books.Author,Members.Borrower_Name,Members.Membership_Type
FROM Books 
JOIN Members
ON Books.Book_ID = Members.Borrower_ID
WHERE Members.FINE > 2000;

SELECT Books.Title, Books.Author
FROM Books
WHERE Books.Num_of_Copies > 3;

SELECT Members.Borrower_Name,Members.Membership_Type
FROM Members
WHERE Members.FINE > 2000;