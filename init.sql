-- database 생성
CREATE DATABASE IF NOT EXISTS interplug; -- default charactet set utf8;

-- user 생성 및 권한 부여
CREATE USER IF NOT EXISTS 'dev'@'%' IDENTIFIED BY 'dev';
GRANT ALL PRIVILEGES ON interplug.* TO dev@'%';
FLUSH PRIVILEGES;
