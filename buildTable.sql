drop database if exists novus;
create database novus;
use novus;

# Department table
drop table if exists dept;
CREATE TABLE dept (
                      id int unsigned PRIMARY KEY AUTO_INCREMENT COMMENT 'ID, 主键',
                      name varchar(10) NOT NULL UNIQUE COMMENT '部门名称',
                      create_time datetime DEFAULT NULL COMMENT '创建时间',
                      update_time datetime DEFAULT NULL COMMENT '修改时间'
) COMMENT '部门表';

INSERT INTO dept VALUES (1,'学工部','2023-09-25 09:47:40','2024-07-25 09:47:40'),
                        (2,'教研部','2023-09-25 09:47:40','2024-08-09 15:17:04'),
                        (3,'咨询部','2023-09-25 09:47:40','2024-07-30 21:26:24'),
                        (4,'就业部','2023-09-25 09:47:40','2024-07-25 09:47:40'),
                        (5,'人事部','2023-09-25 09:47:40','2024-07-25 09:47:40'),
                        (6,'行政部','2023-11-30 20:56:37','2024-07-30 20:56:37');

# Employees table
drop table if exists employees;
create table employees
(
    id          int unsigned primary key auto_increment comment 'ID, primary key',
    username    varchar(20)      not null unique comment 'Username',
    password    varchar(50) default '123456' comment 'Password',
    name        varchar(10)      not null comment 'Name',
    gender      tinyint unsigned not null comment 'Gender, 1: Male, 2: Female',
    phone       char(11)         not null unique comment 'Phone Number',
    job         tinyint unsigned comment 'Position, 1 Class Teacher, 2 Lecturer, 3 Student Affairs Director, 4 Academic Research Director, 5 Consultant',
    salary      int unsigned comment 'Salary',
    image       varchar(300) comment 'Profile Picture',
    entry_date  date comment 'Date of Joining',
    department_id     int unsigned comment 'Department ID',
    create_time datetime comment 'Creation Time',
    update_time datetime comment 'Update Time'
) comment 'Employee Table';

insert into employees values
                          (1,'shinaian','123456','施耐庵',1,'13309090001',4,15000,'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png','2000-01-01',2,'2023-10-27 16:35:33','2023-10-27 16:35:35'),
                          (2,'songjiang','123456','宋江',1,'13309090002',2,8600,'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png','2015-01-01',2,'2023-10-27 16:35:33','2023-10-27 16:35:37'),
                          (3,'lujunyi','123456','卢俊义',1,'13309090003',2,8900,'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png','2008-05-01',2,'2023-10-27 16:35:33','2023-10-27 16:35:39'),
                          (4,'wuyong','123456','吴用',1,'13309090004',2,9200,'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png','2007-01-01',2,'2023-10-27 16:35:33','2023-10-27 16:35:41'),
                          (5,'gongsunsheng','123456','公孙胜',1,'13309090005',2,9500,'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png','2012-12-05',2,'2023-10-27 16:35:33','2023-10-27 16:35:43'),
                          (6,'huosanniang','123456','扈三娘',2,'13309090006',3,6500,'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png','2013-09-05',1,'2023-10-27 16:35:33','2023-10-27 16:35:45'),
                          (7,'chaijin','123456','柴进',1,'13309090007',1,4700,'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png','2005-08-01',1,'2023-10-27 16:35:33','2023-10-27 16:35:47'),
                          (8,'likui','123456','李逵',1,'13309090008',1,4800,'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png','2014-11-09',1,'2023-10-27 16:35:33','2023-10-27 16:35:49'),
                          (9,'wusong','123456','武松',1,'13309090009',1,4900,'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png','2011-03-11',1,'2023-10-27 16:35:33','2023-10-27 16:35:51'),
                          (10,'lichong','123456','林冲',1,'13309090010',1,5000,'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png','2013-09-05',1,'2023-10-27 16:35:33','2023-10-27 16:35:53'),
                          (11,'huyanzhuo','123456','呼延灼',1,'13309090011',2,9700,'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png','2007-02-01',2,'2023-10-27 16:35:33','2023-10-27 16:35:55'),
                          (12,'xiaoliguang','123456','小李广',1,'13309090012',2,10000,'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png','2008-08-18',2,'2023-10-27 16:35:33','2023-10-27 16:35:57'),
                          (13,'yangzhi','123456','杨志',1,'13309090013',1,5300,'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png','2012-11-01',1,'2023-10-27 16:35:33','2023-10-27 16:35:59'),
                          (14,'shijin','123456','史进',1,'13309090014',2,10600,'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png','2002-08-01',2,'2023-10-27 16:35:33','2023-10-27 16:36:01'),
                          (15,'sunerniang','123456','孙二娘',2,'13309090015',2,10900,'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png','2011-05-01',2,'2023-10-27 16:35:33','2023-10-27 16:36:03'),
                          (16,'luzhishen','123456','鲁智深',1,'13309090016',2,9600,'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png','2010-01-01',2,'2023-10-27 16:35:33','2023-10-27 16:36:05'),
                          (17,'liying','12345678','李应',1,'13309090017',1,5800,'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png','2015-03-21',1,'2023-10-27 16:35:33','2023-10-27 16:36:07'),
                          (18,'shiqian','123456','时迁',1,'13309090018',2,10200,'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png','2015-01-01',2,'2023-10-27 16:35:33','2023-10-27 16:36:09'),
                          (19,'gudasao','123456','顾大嫂',2,'13309090019',2,10500,'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png','2008-01-01',2,'2023-10-27 16:35:33','2023-10-27 16:36:11'),
                          (20,'ruanxiaoer','123456','阮小二',1,'13309090020',2,10800,'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png','2018-01-01',2,'2023-10-27 16:35:33','2023-10-27 16:36:13'),
                          (21,'ruanxiaowu','123456','阮小五',1,'13309090021',5,5200,'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png','2015-01-01',3,'2023-10-27 16:35:33','2023-10-27 16:36:15'),
                          (22,'ruanxiaoqi','123456','阮小七',1,'13309090022',5,5500,'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png','2016-01-01',3,'2023-10-27 16:35:33','2023-10-27 16:36:17'),
                          (23,'ruanji','123456','阮籍',1,'13309090023',5,5800,'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png','2012-01-01',3,'2023-10-27 16:35:33','2023-10-27 16:36:19'),
                          (24,'tongwei','123456','童威',1,'13309090024',5,5000,'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png','2006-01-01',3,'2023-10-27 16:35:33','2023-10-27 16:36:21'),
                          (25,'tongmeng','123456','童猛',1,'13309090025',5,4800,'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png','2002-01-01',3,'2023-10-27 16:35:33','2023-10-27 16:36:23'),
                          (26,'yanshun','123456','燕顺',1,'13309090026',5,5400,'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png','2011-01-01',3,'2023-10-27 16:35:33','2023-10-27 16:36:25'),
                          (27,'lijun','123456','李俊',1,'13309090027',5,6600,'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png','2004-01-01',3,'2023-10-27 16:35:33','2023-10-27 16:36:27'),
                          (28,'lizhong','123456','李忠',1,'13309090028',5,5000,'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png','2007-01-01',3,'2023-10-27 16:35:33','2023-10-27 16:36:29'),
                          (29,'songqing','123456','宋清',1,'13309090029',NULL,5100,'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png','2020-01-01',NULL,'2023-10-27 16:35:33','2023-10-27 16:36:31'),
                          (30,'liyun','123456','李云',1,'13309090030',NULL,NULL,'https://dawn-itcast.oss-cn-hangzhou.aliyuncs.com/01.png','2020-03-01',NULL,'2023-10-27 16:35:33','2023-10-27 16:36:31');

drop table if exists employee_experience;
CREATE TABLE employee_experience
(
    id            INT UNSIGNED PRIMARY KEY AUTO_INCREMENT COMMENT 'ID, primary key',
    employee_id   INT UNSIGNED COMMENT 'Employee ID',
    start_date    DATE COMMENT 'Start date',
    end_date      DATE COMMENT 'End date',
    company_name  VARCHAR(50) COMMENT 'Company name',
    position_name VARCHAR(50) COMMENT 'Position'
) COMMENT 'Work experience';