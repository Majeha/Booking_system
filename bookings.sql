/* Creating Tables */
CREATE TABLE Staff
(
StaffID int NOT NULL,
FirstName varchar(30),
LastName varchar (30),
UserName varchar (30),
pwd varchar (10),
accesslvl int,
PRIMARY KEY (StaffID)
);
CREATE TABLE Customers
(
CusID int NOT NULL,
FirstName varchar(30),
LastName varchar (30),
UserName varchar (30),
pwd varchar (10),
Email varchar(50),
Phone varchar (15),
PRIMARY KEY (CusID)
);
CREATE TABLE Services
(
ServID int NOT NULL,
Services varchar(20),
PRIMARY KEY (ServID)
);
CREATE TABLE Reservation
(
ResID int NOT NULL,
CusID int,
ServID int,
StaffID int,
resDate date,
arrDate date,
arrTime time,
depDate date,
depTime time,
PRIMARY KEY (ResID),
FOREIGN KEY (CusID) REFERENCES Customers (CusID),
FOREIGN KEY (ServID) REFERENCES Services (ServID),
FOREIGN KEY (StaffID) REFERENCES Staff (StaffID)
);

