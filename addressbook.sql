--UC1_Create database
create database AddressBookServiceDB;
use AddressBookServiceDB;
--UC2_Create table
create table AddressBook(FirstName varchar(16),LastName varchar(16),Address varchar(24),
City varchar(16),State varchar(16),ZipCode int,PhoneNumber varchar(16),Email varchar(24));
SELECT * FROM AddressBook;
--UC3_Insert new contacts to addressbook(INSERT)
Insert into AddressBook(FirstName,LastName,Address,City,State,ZipCode,PhoneNumber,Email)VALUES
('CHARU','V','near ku','wrngl','TS',506164,8663536262,'charu@gmail'),
('Ramesh','Mada','Near xyz','chennai','Tamilnadu','600005','8426376242','rameshmada@gmail.com'),
('chocky','varma','near ku','hanmkonda','telangana','506164','6386254258','chocky@gmail.com');
--UC4_Edit exist contact by name(UPDATE)
UPDATE AddressBook SET State='TS' where FirstName='Ramesh';
--UC5_Delete person using name(DELETE)
Delete FROM AddressBook WHERE FirstName='Ramesh';
--UC6_Retrive belongs to city or state
SELECT * FROM AddressBook WHERE State='TS';
--UC7_Size of addressbook by city and state(COUNT)
SELECT COUNT(City) FROM AddressBook GROUP BY City;
SELECT COUNT(State) FROM AddressBook GROUP BY State;
--UC8_Retrieve entries sorted alphabetically by Person’s name for given city
INSERT INTO AddressBook(FirstName,LastName,Address,City,State,ZipCode,PhoneNumber,Email)VALUES 
('Raju','S','near ku','chennai','tamilnadu',500006,'7653833536','raju@gmail.com'),
('Ketan','L','near bs','chennai','tamilnadu',500006,'8735664224','ketan@gmail.com'),
('Nitya','P','near ks','chennai','tamilnadu',500006,'7733400300','nitya@gmail.com');
SELECT * FROM AddressBook WHERE City = 'chennai' ORDER BY FirstName ASC;

SELECT * FROM AddressBook;

--UC9_Identify each addressbook with name and type
ALTER TABLE AddressBook ADD BookNames varchar(8);
ALTER TABLE AddressBook ADD PersonType varchar(16);
SELECT * FROM AddressBook;
UPDATE AddressBook SET BookNames='book1' WHERE City = 'chennai';
UPDATE AddressBook SET BookNames='book2' WHERE City = 'wrngl';
UPDATE AddressBook SET BookNames='book3' WHERE City = 'hanmkonda';

UPDATE AddressBook SET PersonType='family' WHERE BookNames = 'book1';
UPDATE AddressBook SET PersonType='friends' WHERE BookNames = 'book2';
UPDATE AddressBook SET PersonType='proffession' WHERE BookNames = 'book3';
--UC10_get number of persons by type(COUNT)
SELECT COUNT(PersonType) FROM AddressBook GROUP BY PersonType;
--UC11_add person to friend and family(INSERT)
INSERT INTO AddressBook(FirstName,LastName,Address,City,State,ZipCode,PhoneNumber,Email)VALUES('Sharu','S','near mgroad','warangal','Telangana',506164,'8623563653','sharu@gmail.com');
SELECT * FROM AddressBook WHERE PersonType = 'friends';
--UC12_ER diagram and normalisation
ALTER TABLE AddressBook DROP COLUMN PersonType;
--UC13_Check queries
SELECT * FROM AddressBook WHERE State='TS';
SELECT COUNT(City) FROM AddressBook GROUP BY City;
INSERT INTO AddressBook(FirstName,LastName,Address,City,State,ZipCode,PhoneNumber,Email)VALUES 
('Raju','S','near ku','chennai','tamilnadu',500006,'7653833536','raju@gmail.com'),
('Ketan','L','near bs','chennai','tamilnadu',500006,'8735664224','ketan@gmail.com'),
('Nitya','P','near ks','chennai','tamilnadu',500006,'7733400300','nitya@gmail.com');
SELECT * FROM AddressBook WHERE City = 'chennai' ORDER BY FirstName ASC;
SELECT COUNT(PersonType) FROM AddressBook GROUP BY PersonType;

create table Book(FirstName varchar(16),LastName varchar(16),Address varchar(24),
City varchar(16),State varchar(16),ZipCode int,PhoneNumber varchar(16),Email varchar(24));
SELECT * FROM Book; 
Insert into Book(FirstName,LastName,Address,City,State,ZipCode,PhoneNumber,Email)VALUES
('CHARU','V','near ku','wrngl','TS',506164,8663536262,'charu@gmail'),
('Ramesh','Mada','Near xyz','chennai','Tamilnadu','600005','8426376242','rameshmada@gmail.com'),
('chocky','varma','near ku','hanmkonda','telangana','506164','6386254258','chocky@gmail.com');
create table BookDetails(FirstName varchar(16),LastName varchar(16),Address varchar(24),
City varchar(16),State varchar(16),ZipCode int,PhoneNumber varchar(16),Email varchar(24));
SELECT * FROM BookDetails;
Insert into BookDetails(FirstName,LastName,Address,City,State,ZipCode,PhoneNumber,Email)VALUES
('CHARU','V','near ku','wrngl','TS',506164,8663536262,'charu@gmail'),
('Ramesh','Mada','Near xyz','chennai','Tamilnadu','600005','8426376242','rameshmada@gmail.com'),
('chocky','varma','near ku','hanmkonda','telangana','506164','6386254258','chocky@gmail.com');