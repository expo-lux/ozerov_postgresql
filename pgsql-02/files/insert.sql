INSERT INTO users(username,email,mobile_phone,firstname,lastname,city,is_curator,record_date)
VALUES
('admin','vasiliy_ozerov@mail.com','+79111937483','Vasiliy','Ozerov','Moscow','true',CURRENT_TIMESTAMP),
('pricex','SimonWels@mail.com','+79111974384','Simon','Wels','London','false',CURRENT_TIMESTAMP),
('MaytheForcebewithyou','Leya.Organa@newrepublic.com','+79991916526','Leya','Organa','Alderaan','false',CURRENT_TIMESTAMP),
('yodajedi','magistr_yoda@oldrepublic.com','+79114326786','Yoda','Yodin','Dagoba','false',CURRENT_TIMESTAMP),
('herion1','Sabur03@yandex.ru','+79110983475','Sabur','Gagiev','Kazan','false',CURRENT_TIMESTAMP),
('pusha','Liliana_Sal@yandex.ru','+79115897438','Liliana','Salohina','SPB','false',CURRENT_TIMESTAMP),
('vierjohn','xen_power@mail.com','+79112232134','John','Seltic','NULL','false',CURRENT_TIMESTAMP),
('trakstars','Pronina@mail.ru','+79811987483','Varya','Pronina','Moscow','false',CURRENT_TIMESTAMP),
('vozilla','Maxxx@mail.ru','+79111047854','Max','Visikov','NULL','false',CURRENT_TIMESTAMP),
('Kisa007','Kisa007@mail.ru','+79112405972','Raya','Simonova','Tver','false',CURRENT_TIMESTAMP),
('greenball','maike.greenball.vazovsky@corp.com','+79112425872','Mike','Vazovsky','Monstertown','false',CURRENT_TIMESTAMP)
ON CONFLICT DO NOTHING;
INSERT INTO courses(coursename,tasks_count,price)
VALUES
('Kubernetes','70','35000'),
('Highload','130','75000'),
('Bash','15','6900'),
('Golang','117','55000'),
('Linux','102','65000'),
('Devops','212','75000'),
('Docker','45','30000'),
('Logs','14','7900')
ON CONFLICT DO NOTHING;
INSERT INTO users__courses(user_id,course_id)
VALUES
('1','1'),
('1','4'),
('3','2'),
('3','4'),
('2','6'),
('2','1'),
('2','2'),
('2','4'),
('5','6'),
('6','6')
ON CONFLICT DO NOTHING;
