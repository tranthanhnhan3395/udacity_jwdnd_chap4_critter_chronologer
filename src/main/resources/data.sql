INSERT INTO customer(created_at,username,name,notes,phone_number,updated_at)
VALUES
(GETDATE(),'marygarcia','Mary W Gracia',null,'917-923-0940',null),
(GETDATE(),'kenneth123','Kenneth K Payan',null,'561-652-6640',null)
;

INSERT INTO pet(name,birth_date,owner_id,notes,type,created_at,updated_at)
VALUES
('Tucker','2018-09-23',1,null,1,GETDATE(),null),
('Olive','2020-05-30',1,null,0,GETDATE(),null),
('Cooper','2016-01-25',2,null,1,GETDATE(),null)
;

INSERT INTO employee (username,name,created_at,updated_at)
VALUES
('apenner','Amaleta Penner',GETDATE(),null),
('tbeddarda','Teddy Beddard',GETDATE(),null),
('mdanielskib','Maureene Danielski',GETDATE(),null),
('charlenel','Charlene Lynch',GETDATE(),null)
;

INSERT INTO skill(skill) VALUES
(0),
(1),
(2),
(3),
(4)
;

INSERT INTO employee_skill(employee_id,skill_id)
VALUES
(1,1),
(1,2),
(1,3),
(1,4),
(1,5),
(2,1),
(2,2),
(3,1),
(3,2),
(3,3),
(4,1),
(4,2)
;

INSERT INTO available_day (day)
VALUES
(0),
(1),
(2),
(3),
(4),
(5),
(6)
;

INSERT INTO employee_available_day (employee_id,available_day_id)
VALUES
(1,1),
(1,2),
(1,4),
(2,5),
(2,6),
(3,1),
(3,3),
(4,1),
(4,5)
;