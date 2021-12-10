CREATE DATABASE IF NOT EXISTS `eulzi` DEFAULT CHARACTER SET utf8mb4;

USE `eulzi`;

CREATE TABLE IF NOT EXISTS `member` (
    `uid` int NOT NULL AUTO_INCREMENT COMMENT '사용자 ID',
    `alias` VARCHAR(20) NOT NULL COMMENT '사용자 별칭',
    PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `member` (`alias`) VALUES ('Test'),('모던'),('벨소리'),('Line');

CREATE USER IF NOT EXISTS 'eulzi'@'%' IDENTIFIED BY 'eulzi';
CREATE USER IF NOT EXISTS 'eulzi'@'localhost' IDENTIFIED BY 'eulzi';
GRANT ALL PRIVILEGES ON eulzi.* TO 'eulzi'@'%';
GRANT ALL PRIVILEGES ON eulzi.* TO 'eulzi'@'localhost';
FLUSH PRIVILEGES;
