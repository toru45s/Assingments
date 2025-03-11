INSERT INTO students (name) VALUES 
  ('John Doe'), 
  ('Alice Smith'), 
  ('Bob Smith'), 
  ('Charlie Brown'), 
  ('Dora Brown'), 
  ('Eve White'), 
  ('Frank Black'), 
  ('Grace Black'), 
  ('Hank Green'), 
  ('Ivy Green');

INSERT INTO instructors(name, email) VALUES 
  ('Reza', 'reza@cctb.com'), 
  ('Washington', 'washington@cctb.com'), 
  ('Henry', 'henry@cctb.com'), 
  ('Jivesh', 'jivesh@cctb.com'), 
  ('Paul', 'paul@cctb.com'), 
  ('Jhon', 'jhon@cctb.com'),
  ('Pedro', 'pedro@cctb.com'),
  ('George', 'george@cctb.com'),
  ('Ryan', 'ryan@cctb.com'),
  ('Susan', 'susan@cctb.com');

insert into courses (instructor_id,title,category) values
  (1,'Introduction programming','Tech'),
  (2,'Introduction Bussiness','Bussiness'),
  (1,'Introduction CSS','Tech'),
  (3,'Arts I','Arts'),
  (3,'Arts II','Arts'),
  (4,'programming I','Tech'),
  (1,'Data modeling','Tech');

insert into reviews (student_id, course_id, rating, comment, review_date) values
  (1,1,5.0, 'The course is amazing good.', '2025-03-11'),
  (2,2,4.0, 'The course is good.', '2025-03-11'),
  (3,3,3.0, 'The course is OK.', '2025-03-11'),
  (4,4,2.0, 'The course sucks', '2025-03-11'),
  (5,5,1.0, 'The course is terrible.', '2025-03-11'),
  (6,6,3.0, 'The course is nice', '2025-03-11'),
  (7,7,1.0, 'I will never enroll this course.', '2025-03-11'),
  (8,1,4.5, 'Awesome', '2025-03-11'),
  (9,2,5.0, 'Amazing', '2025-03-11'),
  (10,3,2.5, 'Frustrating', '2025-03-11');
