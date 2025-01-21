\c mydb


INSERT INTO users(user_id, name, email, created_at, updated_at)
VALUES
  (1, 'Donec at arcu. Vestibulum ante', 'anec@aol.edu', '2025-05-01', '2025-09-24'),
  (2, 'urna. Nunc quis arcu vel quam', 'vamet.diam@protonmail.com', '2024-07-17', '2024-04-23'),
  (3, 'eetiam vestibulum massa rutrum magna. Cras convallis convallis', 'sgihn@aol.com', '2024-03-13', '2025-08-24'),
  (4, 'tvrrulputate, nisi sem semper erat, in consectetuer ipsum nunc', 'gsed.et@hotmail.org', '2024-03-10', '2025-07-31'),
  (5, 'tmollis non, hcursus', 'namauris@yahoo.edu', '2025-02-14', '2025-12-11'),
  (6, 'kDonec at adhrcu. Vestibulum ante', 'nec@aol.edu', '2025-05-01', '2025-08-24'),
  (7, 'kurna. Nunhdgc quis arcu vel quam', 'amet.diam@protonmail.com', '2024-07-17', '2024-02-23'),
  (8, 'Edtiam vesdhtibulum massa rutrum magna. Cras convallis convallis', 'iny@aol.com', '2024-03-13', '2025-08-24'),
  (9, 'nvulputdhgate, nisi sem semper erat, in consectetuer ipsum nunc', 'sed.et@hotmail.org', '2024-03-10', '2025-07-31'),
  (10, 'nmoldhlis non, cursus', 'mauris@yahoo.edu', '2025-03-14', '2025-12-12');



  INSERT INTO interests (interest_id, point_of_focus, created_at, updated_at)
VALUES
  (1, 'interdum libero', '2024-02-13', '2025-03-03'),
  (2, 'egestas ligula. Nullam', '2024-10-07', '2024-10-18'),
  (3, 'libero nec ligula consectetuer', '2024-11-28', '2025-08-24'),
  (4, 'volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh.', '2025-05-13', '2024-09-04'),
  (5, 'fermentum fermentum arcu. Vestibulum ante ipsum primis in', '2025-02-27', '2024-07-08'),
  (6, 'interdum libero', '2024-02-13', '2025-03-03'),
  (7, 'egestas ligula. Nullam', '2024-10-07', '2024-10-18'),
  (8, 'libero nec ligula consectetuer', '2024-11-28', '2025-08-24'),
  (9, 'volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh.', '2025-05-13', '2024-09-04'),
  (10, 'fermentum fermentum arcu. Vestibulum ante ipsum primis in', '2025-02-27', '2024-07-08');



INSERT INTO user_interests (interest_id, user_id, created_at, updated_at)
VALUES
  (1, 1, '2024-10-29', '2025-08-15'),
  (2, 2, '2024-11-18', '2024-11-24'),
  (3, 3, '2024-06-02', '2025-06-25'),
  (4, 4, '2025-02-21', '2025-09-14'),
  (5, 5, '2025-11-14', '2024-03-15'),
  (6, 1, '2024-01-29', '2027-08-16'),
  (7, 2, '2024-12-18', '2020-11-27'),
  (8, 3, '2024-07-02', '2028-06-28'),
  (9, 4, '2025-08-21', '2024-09-19'),
  (10, 5, '2025-02-14', '2026-03-20');


 INSERT INTO posts (post_id, user_id, user_interest_id, content, created_at, updated_at)
VALUES
  (1, 1, 2,'Example post 1', 'Apr 1, 2025', 'Apr 1, 2025'),
  (2, 2, 1,'Example post 2', 'Jul 20, 2025', 'Jul 20, 2025'),
  (3, 1, 2,'Example post 3', 'Dec 25, 2024', 'Dec 25, 2024'),
  (4, 1, 1,'Example post 4', 'Mar 19, 2024', 'Mar 19, 2024'),
  (5, 5, 1,'Example post 5', 'Nov 20, 2025', 'Nov 20, 2025'),
  (6, 1, 2,'Example post 6', 'Sep 2, 2025', 'Apr 1, 2025'),
  (7, 2, 1,'Example post 7', 'Nov 2, 2025', 'Jul 20, 2025'),
  (8, 1, 2,'Example post 8', 'Dec 2, 2024', 'Dec 25, 2024'),
  (9, 4, 1,'Example post 9', 'Jan 1, 2024', 'Mar 19, 2024'),
  (10, 5, 1,'Example post 10', 'Nov 20, 2025', 'Nov 20, 2025');





 INSERT INTO reactions (react_id, user_id, post_id, react, created_at, updated_at)
VALUES
  (1, 2, 1, 'good', 'Apr 2, 2025', 'Apr 15, 2024'),
  (2, 2, 1, 'good', 'Apr 1, 2025', 'Jan 11, 2026'),
  (3, 1, 2, 'thumpup', 'Jul 20, 2025', 'Sep 19, 2025'),
  (4, 5, 3, 'thumpdown', 'Mar 19, 2024', 'May 15, 2025'),
  (5, 5, 5, 'good', 'Dec 25, 2024', 'Nov 20, 2025'),
  (6, 2, 1, 'good', 'Apr 2, 2025', 'Apr 15, 2024'),
  (7, 2, 1, 'good', 'Apr 1, 2025', 'Jan 11, 2026'),
  (8, 1, 2, 'thumpup', 'Jul 20, 2025', 'Sep 19, 2025'),
  (9, 2, 3, 'thumpdown', 'Mar 19, 2024', 'May 15, 2025'),
  (10, 5, 5, 'good', 'Dec 25, 2024', 'Nov 20, 2025');



INSERT INTO comments (comment_id,user_id,post_id,comment_text,created_at,updated_at)
VALUES
  (1,1,1,'greate job','Dec 11, 2025','Dec 10, 2024'),
  (2,2,2,'wow that was nice','Jul 30, 2024','Feb 24, 2025'),
  (3,3,3,'i love that keep it up','Nov 24, 2025','Nov 12, 2025'),
  (4,4,4,'you can do it ','Feb 8, 2025','Oct 6, 2024'),
  (5,5,10,'Amen may God bless you','Dec 26, 2024','Jul 31, 2025');

INSERT INTO feedback (feedback_id,comment_id, react_id, created_at,updated_at)
VALUES
  (1,1,1,'Jan 16, 2024','May 29, 2025'),
  (2,2,2,'Nov 28, 2025','Mar 6, 2024'),
  (3,3,3,'Jan 21, 2024','Feb 25, 2024'),
  (4,4,4,'Feb 17, 2025','Oct 20, 2024'),
  (5,5,5,'Jun 30, 2024','Jun 1, 2024');




