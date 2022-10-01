INSERT INTO users(user_id,username,email,mobile_phone,firstname,lastname,city,is_curator,record_date)
VALUES
('1','admin','vasiliy_ozerov@mail.com','+79111937483','Vasiliy','Ozerov','Moscow','true',CURRENT_TIMESTAMP),
('2','pricex','SimonWels@mail.com','+79111974384','Simon','Wels','London','false',CURRENT_TIMESTAMP),
('3','MaytheForcebewithyou','Leya.Organa@newrepublic.com','+79991916526','Leya','Organa','Alderaan','false',CURRENT_TIMESTAMP),
('4','yodajedi','magistr_yoda@oldrepublic.com','+79114326786','Yoda','Yodin','Dagoba','false',CURRENT_TIMESTAMP),
('5','herion1','Sabur03@yandex.ru','+79110983475','Sabur','Gagiev','Kazan','false',CURRENT_TIMESTAMP),
('6','pusha','Liliana_Sal@yandex.ru','+79115897438','Liliana','Salohina','SPB','false',CURRENT_TIMESTAMP),
('7','vierjohn','xen_power@mail.com','+79112232134','John','Seltic','NULL','false',CURRENT_TIMESTAMP),
('8','trakstars','Pronina@mail.ru','+79811987483','Varya','Pronina','Moscow','false',CURRENT_TIMESTAMP),
('9','vozilla','Maxxx@mail.ru','+79111047854','Max','Visikov','NULL','false',CURRENT_TIMESTAMP),
('10','Kisa007','Kisa007@mail.ru','+79112405972','Raya','Simonova','Tver','false',CURRENT_TIMESTAMP),
('11','greenball','maike.greenball.vazovsky@corp.com','+79112425872','Mike','Vazovsky','Monstertown','false',CURRENT_TIMESTAMP)
ON CONFLICT DO NOTHING;
INSERT INTO courses(course_id,coursename,tasks_count,price)
VALUES
('1','Kubernetes','70','35000'),
('2','Highload','130','75000'),
('3','Bash','15','6900'),
('4','Golang','117','55000'),
('5','Linux','102','65000'),
('6','Devops','212','75000'),
('7','Docker','45','30000'),
('8','Logs','14','7900')
ON CONFLICT DO NOTHING;
INSERT INTO users__courses(id,user_id,course_id)
VALUES
('1','1','1'),
('2','1','4'),
('3','3','2'),
('4','3','4'),
('5','2','6'),
('6','2','1'),
('7','2','2'),
('8','2','4'),
('9','5','6'),
('10','6','6')
ON CONFLICT DO NOTHING;
