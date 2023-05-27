CREATE TABLE info(username VARCHAR(200), password VARCHAR(500), name VARCHAR(100), prof INT, street VARCHAR(100), city VARCHAR(50), phone VARCHAR(32), PRIMARY KEY(username));

--CREATE TABLE members(username VARCHAR(200), plan VARCHAR(100), trainor VARCHAR(200), FOREIGN KEY(username) references info(username), PRIMARY KEY(username), FOREIGN KEY(trainor) references info(username));

CREATE TABLE plans(name VARCHAR(100),exercise VARCHAR(100), reps VARCHAR(100), sets VARCHAR(100), PRIMARY KEY(name));
insert into plans( name, exercise ,reps, sets) values('gym offer 1','push up','30 times','3');
insert into plans( name, exercise ,reps, sets) values('gym offer 2','push up','30 times','3');
insert into plans( name, exercise ,reps, sets) values('gym offer 3','push up','30 times','3');
-- insert into plans(exercise , reps, sets) values('push up','30 times','3') WHERE name = 'compact body build-40k';


CREATE TABLE receps(username VARCHAR(200), PRIMARY KEY(username), FOREIGN KEY(username) references info(username));

CREATE TABLE trainors(username VARCHAR(200), PRIMARY KEY(username), FOREIGN KEY(username) references info(username));

CREATE TABLE members(username VARCHAR(200), plan VARCHAR(100), trainor VARCHAR(200), PRIMARY KEY(username), FOREIGN KEY(username) references info(username), FOREIGN KEY(plan) references plans(name), FOREIGN KEY(trainor) references trainors(username));

ALTER TABLE info ADD time TIMESTAMP DEFAULT CURRENT_TIMESTAMP;--done for all tables

INSERT INTO info(username, password, name, prof, street, city, phone) 
VALUES('nahidhasan', '0123', 'Rah', 1, 'Mirpur', 'Dhaka', 01620753043);--admin's password is eswar@259522

CREATE TABLE progress(username VARCHAR(200), date DATE, daily_result VARCHAR(200), time TIMESTAMP DEFAULT CURRENT_TIMESTAMP, PRIMARY KEY(username, date), FOREIGN KEY(username) references members(username));

INSERT INTO info(username, password, street, city, phone, name, prof)
 VALUES('nahidhasan', '0123', 
 	'Mirpur', 'Dhaka', '01620753043', '', 1);