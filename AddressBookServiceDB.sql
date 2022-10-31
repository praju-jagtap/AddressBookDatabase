-------------UC1------------

CREATE DATABASE ADDRESS_BOOK_SERVICE;
USE ADDRESS_BOOK_SERVICE;

--------------UC2-CREATING TABLE--------

CREATE TABLE ADDRESS_BOOK_SERVICE
(
FirstName char(25),
LastName char(25),
City char(25),
StateName char(25),
Zip int,
Phone varchar(25),
Email varchar(25)
);
 SELECT * FROM ADDRESS_BOOK_SERVICE;

 ------------UC3-INSERT CONTACT IN ADDRESSBOOK---------

INSERT INTO ADDRESS_BOOK_SERVICE VALUES('Prajakta','Jagtap','pune','Maharashtra','412109','8459568784','jagtap12@gmail.com');
INSERT INTO ADDRESS_BOOK_SERVICE VALUES('Sanket','Khairnar','Mumbai','Maharashtra','560085','4546453355','sanketkhair@gmail.com');
INSERT INTO ADDRESS_BOOK_SERVICE VALUES('Sayali','Pagar','Pune','Maharashtra','8375','7637847844','sayali44@gmail.com');
INSERT INTO ADDRESS_BOOK_SERVICE VALUES('snehal','saner','nashik','Maharashtra','574895','0938490773','snaehal@gmail.com');
INSERT INTO ADDRESS_BOOK_SERVICE VALUES('Priyanka','sonawane','hyderabad','Telangana','455454','0939984903','priyanka@gmail.com');
SELECT * FROM ADDRESS_BOOK_SERVICE;

----------------UC4-Editing Details Using Name-------------

UPDATE ADDRESS_BOOK_SERVICE SET StateName= 'Mumbai',Zip='123456',Phone='7002285211',Email='sayalip12@gmail.com' WHERE FirstName='Sayali';
SELECT * FROM ADDRESS_BOOK_SERVICE;