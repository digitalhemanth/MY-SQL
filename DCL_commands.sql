GRANT
REVOKE

CREATE USER 'hem'@'localhost' IDENTIFIED BY '123';
GRANT ALL PRIVILEGES ON explainjava.* TO 'hem'@'localhost';
FLUSH PRIVILEGES;

 REVOKE ALL PRIVILEGES ON student* FROM 'hem'@'localhost';

