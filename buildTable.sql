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

-- 员工表
drop table if exists emp;
create table emp(
                    id int unsigned primary key auto_increment comment 'ID,主键',
                    username varchar(20) not null unique comment '用户名',
                    password varchar(50) default '123456' comment '密码',
                    name varchar(10) not null comment '姓名',
                    gender tinyint unsigned not null comment '性别, 1:男, 2:女',
                    phone char(11) not null unique comment '手机号',
                    job tinyint unsigned comment '职位, 1 班主任, 2 讲师 , 3 学工主管, 4 教研主管, 5 咨询师',
                    salary int unsigned comment '薪资',
                    image varchar(300) comment '头像',
                    entry_date date comment '入职日期',
                    dept_id int unsigned comment '部门ID',
                    create_time datetime comment '创建时间',
                    update_time datetime comment '修改时间'
) comment '员工表';

INSERT INTO emp VALUES
                    (1,'shinaian','123456','施耐庵',1,'13309090001',4,15000,'https://web-framework.oss-cn-hangzhou.aliyuncs.com/2023/1.jpg','2000-01-01',2,'2023-10-20 16:35:33','2023-11-16 16:11:26'),
                    (2,'songjiang','123456','宋江',1,'13309090002',2,8600,'https://web-framework.oss-cn-hangzhou.aliyuncs.com/2023/1.jpg','2015-01-01',2,'2023-10-20 16:35:33','2023-10-20 16:35:37'),
                    (3,'lujunyi','123456','卢俊义',1,'13309090003',2,8900,'https://web-framework.oss-cn-hangzhou.aliyuncs.com/2023/1.jpg','2008-05-01',2,'2023-10-20 16:35:33','2023-10-20 16:35:39'),
                    (4,'wuyong','123456','吴用',1,'13309090004',2,9200,'https://web-framework.oss-cn-hangzhou.aliyuncs.com/2023/1.jpg','2007-01-01',2,'2023-10-20 16:35:33','2023-10-20 16:35:41'),
                    (5,'gongsunsheng','123456','公孙胜',1,'13309090005',2,9500,'https://web-framework.oss-cn-hangzhou.aliyuncs.com/2023/1.jpg','2012-12-05',2,'2023-10-20 16:35:33','2023-10-20 16:35:43'),
                    (6,'huosanniang','123456','扈三娘',2,'13309090006',3,6500,'https://web-framework.oss-cn-hangzhou.aliyuncs.com/2023/1.jpg','2013-09-05',1,'2023-10-20 16:35:33','2023-10-20 16:35:45'),
                    (7,'chaijin','123456','柴进',1,'13309090007',1,4700,'https://web-framework.oss-cn-hangzhou.aliyuncs.com/2023/1.jpg','2005-08-01',1,'2023-10-20 16:35:33','2023-10-20 16:35:47'),
                    (8,'likui','123456','李逵',1,'13309090008',1,4800,'https://web-framework.oss-cn-hangzhou.aliyuncs.com/2023/1.jpg','2014-11-09',1,'2023-10-20 16:35:33','2023-10-20 16:35:49'),
                    (9,'wusong','123456','武松',1,'13309090009',1,4900,'https://web-framework.oss-cn-hangzhou.aliyuncs.com/2023/1.jpg','2011-03-11',1,'2023-10-20 16:35:33','2023-10-20 16:35:51'),
                    (10,'linchong','123456','林冲',1,'13309090010',1,5000,'https://web-framework.oss-cn-hangzhou.aliyuncs.com/2023/1.jpg','2013-09-05',1,'2023-10-20 16:35:33','2023-10-20 16:35:53'),
                    (11,'huyanzhuo','123456','呼延灼',1,'13309090011',2,9700,'https://web-framework.oss-cn-hangzhou.aliyuncs.com/2023/1.jpg','2007-02-01',2,'2023-10-20 16:35:33','2023-10-20 16:35:55'),
                    (12,'xiaoliguang','123456','小李广',1,'13309090012',2,10000,'https://web-framework.oss-cn-hangzhou.aliyuncs.com/2023/1.jpg','2008-08-18',2,'2023-10-20 16:35:33','2023-10-20 16:35:57'),
                    (13,'yangzhi','123456','杨志',1,'13309090013',1,5300,'https://web-framework.oss-cn-hangzhou.aliyuncs.com/2023/1.jpg','2012-11-01',1,'2023-10-20 16:35:33','2023-10-20 16:35:59'),
                    (14,'shijin','123456','史进',1,'13309090014',2,10600,'https://web-framework.oss-cn-hangzhou.aliyuncs.com/2023/1.jpg','2002-08-01',2,'2023-10-20 16:35:33','2023-10-20 16:36:01'),
                    (15,'sunerniang','123456','孙二娘',2,'13309090015',2,10900,'https://web-framework.oss-cn-hangzhou.aliyuncs.com/2023/1.jpg','2011-05-01',2,'2023-10-20 16:35:33','2023-10-20 16:36:03'),
                    (16,'luzhishen','123456','鲁智深',1,'13309090016',2,9600,'https://web-framework.oss-cn-hangzhou.aliyuncs.com/2023/1.jpg','2010-01-01',2,'2023-10-20 16:35:33','2023-10-20 16:36:05'),
                    (17,'liying','12345678','李应',1,'13309090017',1,5800,'https://web-framework.oss-cn-hangzhou.aliyuncs.com/2023/1.jpg','2015-03-21',1,'2023-10-20 16:35:33','2023-10-20 16:36:07'),
                    (18,'shiqian','123456','时迁',1,'13309090018',2,10200,'https://web-framework.oss-cn-hangzhou.aliyuncs.com/2023/1.jpg','2015-01-01',2,'2023-10-20 16:35:33','2023-10-20 16:36:09'),
                    (19,'gudasao','123456','顾大嫂',2,'13309090019',2,10500,'https://web-framework.oss-cn-hangzhou.aliyuncs.com/2023/1.jpg','2008-01-01',2,'2023-10-20 16:35:33','2023-10-20 16:36:11'),
                    (20,'ruanxiaoer','123456','阮小二',1,'13309090020',2,10800,'https://web-framework.oss-cn-hangzhou.aliyuncs.com/2023/1.jpg','2018-01-01',2,'2023-10-20 16:35:33','2023-10-20 16:36:13'),
                    (21,'ruanxiaowu','123456','阮小五',1,'13309090021',5,5200,'https://web-framework.oss-cn-hangzhou.aliyuncs.com/2023/1.jpg','2015-01-01',3,'2023-10-20 16:35:33','2023-10-20 16:36:15'),
                    (22,'ruanxiaoqi','123456','阮小七',1,'13309090022',5,5500,'https://web-framework.oss-cn-hangzhou.aliyuncs.com/2023/1.jpg','2016-01-01',3,'2023-10-20 16:35:33','2023-10-20 16:36:17'),
                    (23,'ruanji','123456','阮籍',1,'13309090023',5,5800,'https://web-framework.oss-cn-hangzhou.aliyuncs.com/2023/1.jpg','2012-01-01',3,'2023-10-20 16:35:33','2023-10-20 16:36:19'),
                    (24,'tongwei','123456','童威',1,'13309090024',5,5000,'https://web-framework.oss-cn-hangzhou.aliyuncs.com/2023/1.jpg','2006-01-01',3,'2023-10-20 16:35:33','2023-10-20 16:36:21'),
                    (25,'tongmeng','123456','童猛',1,'13309090025',5,4800,'https://web-framework.oss-cn-hangzhou.aliyuncs.com/2023/1.jpg','2002-01-01',3,'2023-10-20 16:35:33','2023-10-20 16:36:23'),
                    (26,'yanshun','123456','燕顺',1,'13309090026',5,5400,'https://web-framework.oss-cn-hangzhou.aliyuncs.com/2023/1.jpg','2011-01-01',3,'2023-10-20 16:35:33','2023-11-08 22:12:46'),
                    (27,'lijun','123456','李俊',1,'13309090027',2,6600,'https://web-framework.oss-cn-hangzhou.aliyuncs.com/2023/1.jpg','2004-01-01',2,'2023-10-20 16:35:33','2023-11-16 17:56:59'),
                    (28,'lizhong','123456','李忠',1,'13309090028',5,5000,'https://web-framework.oss-cn-hangzhou.aliyuncs.com/2023/1.jpg','2007-01-01',3,'2023-10-20 16:35:33','2023-11-17 16:34:22'),
                    (30,'liyun','123456','李云',1,'13309090030',NULL,NULL,'https://web-framework.oss-cn-hangzhou.aliyuncs.com/2023/1.jpg','2020-03-01',NULL,'2023-10-20 16:35:33','2023-10-20 16:36:31'),
                    (36,'linghuchong','123456','令狐冲',1,'18809091212',2,6800,'https://web-framework.oss-cn-hangzhou.aliyuncs.com/2023/1.jpg','2023-10-19',2,'2023-10-20 20:44:54','2023-11-09 09:41:04');

-- 员工工作经历信息
drop table if exists emp_expr;
create table emp_expr(
                         id int unsigned primary key auto_increment comment 'ID, 主键',
                         emp_id int unsigned comment '员工ID',
                         begin date comment '开始时间',
                         end  date comment '结束时间',
                         company varchar(50) comment '公司名称',
                         job varchar(50) comment '职位'
)comment '工作经历';


# 生成员工工作经历信息
DELIMITER //
drop procedure if exists insert_emp_expr;
create procedure insert_emp_expr(in start int, in end int)
begin
    declare i int default start;
    declare emp_id int;
    declare begin_date date;
    declare end_date date;
    declare company varchar(50);
    declare job varchar(50);
    while i <= end do
        set emp_id = i;
        set begin_date = date_add('2023-01-01', interval floor(rand() * 100) day);
        set end_date = date_add(begin_date, interval floor(rand() * 100) day);
        set company = concat('公司', floor(rand() * 100));
        set job = concat('职位', floor(rand() * 100));
        insert into emp_expr(emp_id, begin, end, company, job) values(emp_id, begin_date, end_date, company, job);
        set i = i + 1;
    end while;
end //
delimiter ;

call insert_emp_expr(1, 20);

select case e.job
              when 1 then '班主任'
              when 2 then '讲师'
              when 3 then '学工主管'
              when 4 then '教研主管'
              when 5 then '咨询师'
              else '其他'
         end as job,
       count(0)
from emp as e
group by e.job;