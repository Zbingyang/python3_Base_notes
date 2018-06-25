### mysql基础笔记

#### 应用程序会涉及大量的持久化操作

```
持久化：把数据长久的保存起来的过程(把数据从内存转移到能够长久保存数据的存储介质

）

实现数据持久化的操作：

1.文件的操作---open（）---->read/write

2序列化操作---pickle/dumps/dump /load/loads ---依赖于文件的操作

3.使用数据库：保存数据和管理数据；

关系型数据库、非关系型数据库

关系型数据库：

1. 理论基础：关系代数和集合论
2. 用二维表组织数据：
   行--记录/数据
   列--字段 field/属性
   3.自己的编程语言--SQL--结构化查询语言 Structured Query Language
   4.产品:大型   Orical / DB2  中小型：SQL Server / MYSQL   嵌入式数据库：SQLite

mysql客户端工具:navicate /sqlyog /Toad

```

### Linux配置mysql

```
1.启动：systemctl start mysqld

	2.停止：systemctl stop mysqld

	3.重启：system restart mysqld

	4.清除登录密码特权: flush privileges;

	5.修改密码: alter user 'root'@'localhost' identified by '123456';

	6.查看数据库: sh0w databases;

	7.查看表：show tables;

	8.绑定服务器的内网ip

	bind-address=172.16.110.63 在/etc/my.cnf文件下，在mysqld的行下边去

绑定内网地址。
	
```

### mysql操作

### -- SOL(结构化查询语言)

### --DDL-数据定义语言 - create / drop/ alter

```
1.判断数据库是否已经存在

drop database if exists school;

2.创建数据库

create database school;

3.切换数据

use school;

4.创建表

create table 表明(

stuid int not null ,

stuname varchar(10) not null,

stusex bit default 1,

stubirth date,

primary kry(stuid)

);

5. 添加字段列
alter table school add column stuaddr varchar(100);
alter table school add column stutel varchar(100);

6. 删除字段列
alter table school drop column stubirth;

```

### --DML-数据操作语言- update/insert into/delete

```
* insert into 不能与where语句连用
insert into tb_student values(1001,'罗昊',1,'四川成都');
insert into tb_student(stuid,stuname) values(1002,'王大锤');
insert into tb_student values
(1003,'百元房',default,null),
(1004,'白洁',0,'湖北武汉'),
(1005,'狄仁杰',1,'陕西大同'),
(1006,'武则天',0,'四川广元'),
(1007,'冷面',1,'广东东莞');
* update 在已有数据记录的情况下，在空列中设置新值
-- 在学生表中去插入stucollege,studean,stutel,stuurl
update tb_student set stucollege='四川大学',studean='骆昊',stutel='13101002345',stuurl='www.sichuandaxue.net' where stuid=1001;
update tb_student set stucollege='电子科技大学',studean='韩杰',stutel='15283995527',stuurl='www.dianzikejidaxue.com' where stuid=1002;
update tb_student set stucollege='西南民族大学',studean='志红勋',stutel='13300986677',stuurl='www.beijingkejidaxue.cn' where stuid=1003;
update tb_student set stucollege='北京科技大学',studean='北科大',stutel='15550345555',stuurl='www.beijingkejidaxue.cn' where stuid=1004;
update tb_student set stucollege='武汉大学',studean='武大',stutel='13378903456',stuurl='www.wuhandaxue.net' where stuid=1005;
update tb_student set stucollege='攀枝花大学',studean='攀大',stutel='13145678902',stuurl='www.panzhihuadaxue.net' where stuid=1006;
update tb_student set stucollege='清华大学',studean='清大',stutel='13881253456',stuurl='www.qinghuadaxue.net' where stuid=1007;
update tb_student set stucollege='北京大学',studean='北大',stutel='13345678901',stuurl='www.beijingdaxue.net' where stuid=1008;
* delete
-- 删除学生记录
delete from tb_student where stuid=1007;
```

### --DQL-数据查询语言-select

```
-- 查询
select * from tb_student;

-- 投影（查指定的内容）
select stuname,stusex from tb_student;
-- 别名
select stuname as 姓名,stusex as 性别 from tb_student;
select stuname as 姓名,if(stusex,'男','女') as 性别 from tb_student;
-- 筛选（查询指定的行）
select stuname as 姓名 from tb_student where stusex=1;
select stuname as 姓名 from tb_student where stusex=0;

-- 查询学号是基数的学生的学号和姓名
select stuid as 学号,stuname from tb_student where stuid%2<>0;
-- 查询学号是1003,1005,1006的女生的名字
select stuname as 姓名 from tb_student where stuid in(1003,1005,1006) and stusex=0;
-- 查询学号是1003,1005,1006的学生或者满足女学生的条件
select stuname as 姓名 from tb_student where stuid in(1003,1005,1006) or stusex=0;

-- 家庭住址为空的学生
select stuname as 姓名,stuid as 学号 from tb_student where stuaddr is not null;
-- 家庭住址不为空的学生
select stuname as 姓名,stuid as 学号 from tb_student where stuaddr is null;

-- 学号在1003,1005的学生
select stuid,stuname from tb_student where stuid between 1003 and 1005;

-- where stubirth netween '1990-1-1' and '2010-12-31'

-- 模糊查询
select stuid,stuname from tb_student where stuname like '王%'; 
select stuid,stuname from tb_student where stuname like '王_'; 
select stuid,stuname from tb_student where stuname like '王__'; 
select stuid,stuname from tb_student where stuname like '%王%'; 
select stuid,stuname from tb_student where stuname like '%王%' or like '李%';
select stuid,stuname from tb_student where stuname regexp '^李|王.*';
-- 排序 小到大顺序(asc) 大到小（desc） 
select stuid,stuname from tb_student order by stuid desc;
select stuid,stuname from tb_student order by stusex asc,stuid desc;

-- 给学生表加上所在学院的信息（学院名称，院长是谁，联系电话，学院网站地址url）
alter table tb_student add column stucollege varchar(100);
alter table tb_student add column studean varchar(100);
alter table tb_student add column stutel varchar(100);
alter table tb_student add column stuurl varchar(100);
```



### --DCL-数据库控制语言