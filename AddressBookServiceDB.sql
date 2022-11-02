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

---------------UC5-Deleating a person using Name------------

DELETE FROM ADDRESS_BOOK_SERVICE WHERE FirstName= 'snehal';
SELECT * FROM ADDRESS_BOOK_SERVICE;

---------------UC6-Retrieving Data by City or State----------

Select * from ADDRESS_BOOK_SERVICE WHERE City='Mumbai';
Select * from ADDRESS_BOOK_SERVICE WHERE StateName='Maharashtra';

------------UC7-Size of Address book by City or State------------

Select COUNT(City) as City_Count FROM ADDRESS_BOOK_SERVICE;
Select COUNT(StateName) as State_Count FROM ADDRESS_BOOK_SERVICE;

------------UC8-Sorting data Alphabetically by person name------------

SELECT * FROM ADDRESS_BOOK_SERVICE ORDER BY(FirstName);

-----------UC9-Ability to identify each Address Book with name and Type---------

alter table ADDRESS_BOOK_SERVICE  add AddressBook_Name varchar(30),AddressBook_Type varchar(30);
update ADDRESS_BOOK_SERVICE set AddressBook_Name = 'Family address book', AddressBook_Type = 'Family' where FirstName='Prajakta';
update ADDRESS_BOOK_SERVICE set AddressBook_Name = 'Friends address book', AddressBook_Type = 'Friends' where FirstName='Sanket';
select * from ADDRESS_BOOK_SERVICE;

----------UC10-Ability to get number of contact persons using count type----------

select count(AddressBook_Type) from ADDRESS_BOOK_SERVICE where AddressBook_Type = 'Family';

----------UC11-Ability to add person to both Friend and Family---------------------

INSERT INTO ADDRESS_BOOK_SERVICE VALUES('Komal','Patil','Pune','Maharashtra','412109','8457843456','komalp@gmail.com','Friends address book','Friends');
INSERT INTO ADDRESS_BOOK_SERVICE VALUES('Pallavi','Khaire','Mumbai','Maharashtra','560085','4546455678','pallu@gmail.com','Family address book','Family');
select * from ADDRESS_BOOK_SERVICE;