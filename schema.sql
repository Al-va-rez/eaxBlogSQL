CREATE TABLE Users (
  UserID INT AUTO_INCREMENT PRIMARY KEY,
  Username VARCHAR(50),
  FirstName VARCHAR(50),
  LastName VARCHAR(50),
  DateOfBirth DATE,
  Password VARCHAR(50),
  DateRegistered DATE
);

CREATE TABLE Friends (
  FriendID INT AUTO_INCREMENT PRIMARY KEY,
  FriendWhoAdded INT,
  FriendBeingAdded INT,
  IsAccepted VARCHAR(50),
  DateAdded DATE
);

CREATE TABLE Groups (
  GroupID INT AUTO_INCREMENT PRIMARY KEY,
  GroupName VARCHAR(50),
  CreatedBy INT,
  DateCreated DATE
);

CREATE TABLE Posts (
  PostID INT AUTO_INCREMENT PRIMARY KEY,
  PostDescription VARCHAR(50),
  PostedBy INT,
  GroupID INT,
  IsPublic VARCHAR(50),
  IsOnlyForFriends VARCHAR(50),
  DatePosted DATE
);

CREATE TABLE GroupMembershipRequests (
  GroupMemberShipRequestsID INT,
  GroupID INT,
  GroupMemberUserID INT,
  IsGroupMemberShipAccepted VARCHAR(50),
  DateAccepted DATE
);