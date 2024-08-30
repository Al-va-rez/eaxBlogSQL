-- Insert values into USERS table
INSERT INTO Users (UserID, Username, FirstName, LastName, DateOfBirth, Password, DateRegistered) VALUES
(1, 'glinforth0', 'Godfree', 'Linforth', '4/12/2004', 'ecdcsgyamUKOFKX4440#!', '8/22/2022'),
(2, 'gwistance1', 'Giulio', 'Wistance', '5/21/2003', 'getoumiocYSFWPM6397@#', '5/30/2024'),
(3, 'apudsey2', 'Alica', 'Pudsey', '5/26/2000', 'eideubppiYXTDUL5232=)', '7/5/2021'),
(4, 'vollcott3', 'Verine', 'Ollcott', '10/9/2003', 'yzhqukkepUBYSLA2394@@', '6/9/2022'),
(5, 'hdalziel4', 'Hana', 'Dalziel', '5/13/2001', 'xxpfyilvyBYESBR4444.~', '10/28/2023'),
(6, 'mmylechreest5', 'Moe', 'Mylechreest', '2/21/2003', 'efurdwkicOSBJJH8470>&', '8/2/2022'),
(7, 'tcamelia6', 'Tonye', 'Camelia', '5/17/2000', 'hbohetsaaNMWETC6466%', '4/14/2023'),
(8, 'ubushell7', 'Udall', 'Bushell', '6/14/2002', 'esnjcdvxhJZUXVL5352.', '5/19/2023'),
(9, 'tolrenshaw8', 'Tommie', 'Olrenshaw', '5/10/2001', 'eudmbritoVNDPNY0047?(', '1/20/2022'),
(10, 'cpaling9', 'Correy', 'Paling', '7/3/2004', 'vfqfownzjODCRTX0662@!', '4/19/2021'),
(11, 'amessenta', 'Aleda', 'Messent', '6/13/2000', 'otobndnjsGWUSYJ5310''#', '6/11/2024'),
(12, 'brivelonb', 'Bailey', 'Rivelon', '3/26/2003', 'ejwojtsvoVGHZCS3097''%', '8/21/2021'),
(13, 'mpoteburyc', 'Modestine', 'Potebury', '6/8/2002', 'wdtgoyhfzFAMIWJ0163$/', '8/9/2023'),
(14, 'ngiraudouxd', 'Nicolas', 'Giraudoux', '12/15/2004', 'awcyllkkhRBHXSP0946\/', '7/27/2020'),
(15, 'tscougale', 'Tedman', 'Scougal', '2/15/2003', 'zboxdlojqIHPSFS9552@}', '2/28/2023'),
(16, 'epetruskaf', 'Ethelyn', 'Petruska', '3/5/2000', 'cmhjidtsjGAIHXK1707&=', '8/1/2021'),
(17, 'efetherstonhaughg', 'Ellsworth', 'Fetherstonhaugh', '1/14/2002', 'aadjecxjgTWQLVD8009_(', '8/13/2021'),
(18, 'kcalbreathh', 'Karlie', 'Calbreath', '4/19/2004', 'abgnipswfRALHYV8270?@', '8/14/2021'),
(19, 'vramiroi', 'Virgie', 'Ramiro', '3/6/2002', 'hvtrqufxjRMREGX4284!!', '11/4/2023'),
(20, 'pespadatej', 'Penn', 'Espadate', '9/25/2001', 'uteoanfopMCRWAE2004.<', '2/18/2021'),
(21, 'ekitchinghank', 'Evey', 'Kitchinghan', '7/26/2004', 'kfgchqtaoPFEFWH6888*#', '2/4/2023'),
(22, 'smanonl', 'Stirling', 'Manon', '12/19/2002', 'axngmzfxlEITDPH6852`_', '4/8/2022'),
(23, 'mhardingm', 'Mic', 'Harding', '9/3/2000', 'frzcqhoeeDDFNRT6589@.', '4/10/2022'),
(24, 'dantonowiczn', 'Denver', 'Antonowicz', '2/26/2000', 'qkiflvpmjHOEVXN0538@*', '6/1/2024'),
(25, 'alyptratto', 'Alica', 'Lyptratt', '1/29/2003', 'lbelfbdpyMFPGNA1634|&', '8/2/2020'),
(26, 'tallibonep', 'Taber', 'Allibone', '5/12/2003', 'gwcdygxlaYAVWRJ5103=&', '3/6/2020'),
(27, 'fplaiceq', 'Farica', 'Plaice', '1/6/2004', 'jvmdzavlvESXEPR3976|#', '4/4/2023'),
(28, 'sthorndycraftr', 'Sabine', 'Thorndycraft', '10/22/2003', 'janwwtwclTBRVDO8412>&', '7/31/2023'),
(29, 'bneys', 'Bertrand', 'Ney', '11/23/2003', 'qnqjpldjgGPLPJS8733"~', '10/22/2023'),
(30, 'msandesont', 'Marji', 'Sandeson', '9/16/2002', 'unexjgmwvWSBYTS0055?`', '11/29/2023');


-- Insert values into FRIENDS table
-- Null values are given to 'DateAdded' column when friend request is not accepted
INSERT INTO Friends (FriendID, FriendWhoAdded, FriendBeingAdded, IsAccepted, DateAdded) VALUES
(1, 2, 11, false, NULL),
(2, 6, 27, false, NULL),
(3, 19, 25, false, NULL),
(4, 12, 17, false, NULL),
(5, 19, 19, true, '5/9/2024'),
(6, 3, 13, true, '12/1/2020'),
(7, 18, 9, false, NULL),
(8, 21, 25, false, NULL),
(9, 19, 27, true, '7/9/2024'),
(10, 17, 21, true, '11/4/2021'),
(11, 13, 10, false, NULL),
(12, 10, 19, true, '12/29/2023'),
(13, 7, 29, true, '11/19/2023'),
(14, 29, 23, true, '11/15/2022'),
(15, 16, 21, true, '5/24/2023');


-- Insert values into GROUPS table
INSERT INTO Groups (GroupID, GroupName, CreatedBy, DateAdded) VALUES
(1, 'McLaughlin, Glover and Stanton', 14, '2/8/2024'),
(2, 'Wilderman-Bogisich', 8, '7/22/2020'),
(3, 'Spencer-Boyer', 19, '3/5/2022'),
(4, 'Reichert-Lubowitz', 12, '8/28/2020'),
(5, 'Hermiston-Paucek', 29, '5/17/2024'),
(6, 'Von, Kohler and Thompson', 5, '6/30/2022'),
(7, 'Frami, Haley and Kautzer', 12, '9/13/2021'),
(8, 'Upton LLC', 11, '3/1/2020'),
(9, 'McKenzie and Sons', 24, '1/23/2020'),
(10, 'Beatty-Considine', 1, '4/4/2023');


-- Insert values into POSTS table
-- 'IsPublic' and 'IsOnlyForFriends' cannot both have true values
INSERT INTO Posts (PostID, PostDescription, PostedBy, GroupID, IsPublic, IsOnlyForFriends, DatePosted) VALUES
(1, 'Sharing some behind-the-scenes footage!', 25, 8, true, false, '2/21/2023'),
(2, 'Excited to share this news with you all!', 15, 2, false, true, '11/6/2023'),
(3, 'Join me for a virtual workout session!', 25, 8, true, false, '7/14/2024'),
(4, 'Discussing the impact of technology on society.', 25, 7, true, false, '3/24/2023'),
(5, 'Reflecting on gratitude and positivity.', 22, 9, false, true, '7/3/2022'),
(6, 'Let''s support small businesses together!', 23, 1, false, true, '8/29/2024'),
(7, 'Throwback to a fun day at the beach!', 5, 10, true, false, '1/28/2021'),
(8, 'Let''s support small businesses together!', 13, 3, true, false, '4/5/2023'),
(9, 'Just posted a new blog entry!', 10, 10, false, true, '7/10/2024'),
(10, 'Reflecting on gratitude and positivity.', 30, 7, false, true, '5/30/2020'),
(11, 'Sharing some delicious recipes with you!', 27, 4, true, false, '4/2/2023'),
(12, 'Join the conversation on this important topic!', 16, 8, false, true, '4/29/2021'),
(13, 'Throwback to a fun day at the beach!', 21, 4, true, false, '5/31/2020'),
(14, 'Throwback to a fun day at the beach!', 18, 9, true, false, '12/13/2022'),
(15, 'Join me for a virtual workout session!', 24, 6, false, true, '3/28/2020'),
(16, 'Sharing tips for staying productive and organized!', 16, 4, false, true, '10/28/2020'),
(17, 'Sharing some delicious recipes with you!', 29, 10, false, true, '7/27/2021'),
(18, 'Can''t wait for you to see this project!', 17, 9, true, false, '6/10/2023'),
(19, 'Sharing tips for staying productive and organized!', 8, 1, true, false, '4/23/2022'),
(20, 'New video alert - don''t miss it!', 16, 7, false, true, '2/10/2021');


-- Insert values into GROUP MEMBERSHIP REQUESTS table
-- Null values are given to 'DateAccepted' column when join request is not accepted
INSERT INTO GroupMembershipRequests (GroupMemberShipRequestsID, GroupID, GroupMemberUserID, IsGroupMemberShipAccepted, DateAccepted) VALUES
(1, 3, 7, true, '6/23/2022'),
(2, 3, 1, true, '4/30/2020'),
(3, 5, 3, true, '1/11/2021'),
(4, 2, 2, false, NULL),
(5, 5, 9, false, NULL),
(6, 1, 6, true, '4/22/2021'),
(7, 10, 7, false, NULL),
(8, 10, 1, false, NULL),
(9, 5, 2, true, '4/20/2022'),
(10, 1, 6, false, NULL);
