-- 1. Users born between 2000 and 2004
SELECT
	ROW_NUMBER() OVER (ORDER BY UserID) AS row_num,
	UserID,
	Username,
	FirstName,
	LastName,
	DateOfBirth
FROM
	Users
WHERE
	DateOfBirth BETWEEN '2000-1-1' AND '2004-12-31';


-- 2. Posts made by User 4
SELECT
	ROW_NUMBER() OVER (ORDER BY PostID) AS row_num,
	PostID,
	PostDescription,
	DatePosted
FROM
	Posts p1
JOIN Users u1 ON
	p1.PostedBy = u1.UserID
WHERE
	u1.UserID = 4;


-- 3. All existing group names
SELECT
	ROW_NUMBER() OVER (ORDER BY GroupID) AS row_num,
	GroupName
FROM
	Groups;


-- 4. Membership requests made by User 2
SELECT
	ROW_NUMBER() OVER (ORDER BY memReq.GroupMemberShipRequestsID) AS row_num,
	memReq.GroupMemberShipRequestsID AS User2_Request_ID,
	memReq.GroupID AS Group_To_Join_ID,
	g1.GroupName AS Group_To_Join_Name
FROM
	GroupMembershipRequests memReq
JOIN Groups g1 ON
	memReq.GroupID = g1.GroupID
JOIN Users u1 ON
	memReq.GroupMemberUserID = u1.UserID
WHERE
	u1.UserID = 2;


-- 5. Friends of User 2
SELECT
	ROW_NUMBER() OVER (ORDER BY FriendID) AS row_num,
	
	FriendWhoAdded AS Friend_Who_Added_ID,
	u1.Username AS Friend_Who_Added_Username,
	
	FriendBeingAdded AS Friend_Being_Added_ID,
	u2.Username AS Friend_Being_Added_Username
FROM
	Friends f1
JOIN Users u1 ON
	f1.FriendWhoAdded = u1.UserID
JOIN Users u2 ON
	f1.FriendBeingAdded = u2.UserID
WHERE
	(u1.UserID = 2 OR u2.UserID = 2) AND f1.IsAccepted =1;


-- 6. Users that received friend request from User 1, accepted or not
SELECT
	ROW_NUMBER() OVER (ORDER BY FriendBeingAdded) AS row_num,
	
	FriendBeingAdded AS Friend_Of_User1_ID,
	u2.Username AS Friend_Of_User1_Username,
    
	IsAccepted
FROM
	Friends f1
JOIN Users u1 ON
	f1.FriendWhoAdded = u1.UserID
JOIN Users u2 ON
	f1.FriendBeingAdded = u2.UserID
WHERE
	u1.UserID = 1;


-- 7. Posts visible only to group 2
SELECT
	ROW_NUMBER() OVER (ORDER BY PostID) AS row_num,
	PostID,
	PostDescription,
	u1.Username AS Posted_By,
	DatePosted
FROM
	Posts p1
JOIN Groups g1 ON
	p1.GroupID = g1.GroupID
JOIN Users u1 ON
	p1.PostedBy = u1.UserID
WHERE
	g1.GroupID = 2;


-- 8. Membership requests for group 2 that are not yet accepted
SELECT
	ROW_NUMBER() OVER (ORDER BY GroupMemberShipRequestsID) AS row_num,
	GroupMemberShipRequestsID,
    
	GroupMemberUserID AS User_Requesting_ID,
	u1.Username AS User_Requesting_Username
FROM
	GroupMembershipRequests r1
JOIN Groups g1 ON
	r1.GroupID = g1.GroupID
JOIN Users u1 ON
	r1.GroupMemberUserID = u1.UserID
WHERE
	g1.GroupID = 2 AND IsGroupMemberShipAccepted = 0;