-- 创建表主键（primary key）
-- 学生的学号是
create table tb_student(
stuid int not null,
stuname varchar(10) not null,
stusex bit default 1,
stubirth date,
primary key (stuid)
);

-- 删除 drop TABLE school if exists;

-- 修改表
alter table tb_student add column stuaddr varchar(100);
-- 删除列
alter table tb_student drop column stubirth;

-- 插入学生记录
insert into tb_student values(1001,'罗昊',1,'四川成都');
insert into tb_student(stuid,stuname) values(1002,'王大锤');
insert into tb_student values
(1003,'百元房',default,null),
(1004,'白洁',0,'湖北武汉'),
(1005,'狄仁杰',1,'陕西大同'),
(1006,'武则天',0,'四川广元'),
(1007,'冷面',1,'广东东莞');

-- 删除学生记录
delete from tb_student where stuid=1007;

-- 更新学生记录
update tb_student set stuaddr='四川成都' where stuid=1003;
update tb_student set stuname='王小锤',stusex=0 where stuid=1002;


-- 查询
select * from tb_student;

-- 投影（差指定的内容）
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

-- 在学生表中去插入stucollege,studean,stutel,stuurl
update tb_student set stucollege='四川大学',studean='骆昊',stutel='13101002345',stuurl='www.sichuandaxue.net' where stuid=1001;
update tb_student set stucollege='电子科技大学',studean='韩杰',stutel='15283995527',stuurl='www.dianzikejidaxue.com' where stuid=1002;
update tb_student set stucollege='西南民族大学',studean='志红勋',stutel='13300986677',stuurl='www.beijingkejidaxue.cn' where stuid=1003;
update tb_student set stucollege='北京科技大学',studean='北科大',stutel='15550345555',stuurl='www.beijingkejidaxue.cn' where stuid=1004;
update tb_student set stucollege='武汉大学',studean='武大',stutel='13378903456',stuurl='www.wuhandaxue.net' where stuid=1005;
update tb_student set stucollege='攀枝花大学',studean='攀大',stutel='13145678902',stuurl='www.panzhihuadaxue.net' where stuid=1006;
update tb_student set stucollege='清华大学',studean='清大',stutel='13881253456',stuurl='www.qinghuadaxue.net' where stuid=1007;
update tb_student set stucollege='北京大学',studean='北大',stutel='13345678901',stuurl='www.beijingdaxue.net' where stuid=1008;

-- 创建一张课程表（课程的标号，课程的名称，任课教师的名字，学分）
-- 给课程表录入数据至少八条

create table tb_curriculum(
curid int not null,
curname varchar(100) default 'python',
curteacher varchar(100) not null,
curscore int not null,
primary key(curid)
);

-- insert into 插入8个课程表记录
insert into tb_curriculum values
(1001,default,'范世罗',69),
(1002,'html','于婷',70),
(1003,'mysql','骆昊',75),
(1004,'redis','骆昊',80),
(1005,'mongondb','骆昊',85),
(1006,'php','韩杰',90),
(1007,'flask','王大锤',95),
(1008,'django','周天',100);
-- 学生表和课程表是否有关系，如果有是什么关系。
-- 外键约束？ 预习
-- 关系型数据库设计表的设计元素（范式理论）


















