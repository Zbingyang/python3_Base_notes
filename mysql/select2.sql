-- 建表
DROP DATABASE IF EXISTS HRS;
CREATE DATABASE HRS DEFAULT CHARSET utf8 COLLATE utf8_general_ci;

USE HRS;

CREATE TABLE TbDept 
( 
dno INT NOT NULL COMMENT '部门编号', 
dname VARCHAR ( 10 ) NOT NULL COMMENT '部门名称', 
dloc VARCHAR ( 20 ) NOT NULL COMMENT '部门所在地'
);

ALTER TABLE TbDept ADD CONSTRAINT Pk_Dept PRIMARY KEY ( dno );

INSERT INTO TbDept ( dno, dname, dloc )
VALUES
	( 10, '会计部', '北京' ),
	( 20, '研发部', '成都' ),
	( 30, '销售部', '重庆' ),
	( 40, '运维部', '深圳' );

CREATE TABLE TbEmp 
(
eno INT NOT NULL COMMENT '员工编号',
ename VARCHAR ( 20 ) NOT NULL COMMENT '员工姓名',
job VARCHAR ( 10 ) NOT NULL COMMENT '职位',
mgr INT COMMENT '直接主管编号',
sal INT NOT NULL COMMENT '月薪',
comm INT COMMENT '月补贴',
dno INT NOT NULL COMMENT '所属部门编号' 
);

ALTER TABLE TbEmp ADD CONSTRAINT Pk_Emp_Eno PRIMARY KEY ( eno );
ALTER TABLE TbEmp ADD CONSTRAINT Fk_Emp_Dno FOREIGN KEY ( dno ) REFERENCES TbDept ( dno );

INSERT INTO TbEmp ( eno, ename, job, mgr, sal, comm, dno )
VALUES
	( 7800, '张三丰', '总裁', NULL, 9000, 1800, 20 ),
	( 2056, '乔峰', '分析师', 7800, 5000, 2000, 20 ),
	( 3088, '李莫愁', '设计师', 2056, 3500, NULL, 20 ),
	( 3211, '张无忌', '程序员', 2056, 3200, NULL, 20 ),
	( 3233, '丘处机', '程序员', 2056, 3400, 800, 20 ),
	( 3251, '张翠山', '程序员', 2056, 4000, NULL, 20 ),
	( 5566, '宋远桥', '会计师', 7800, 4000, 1500, 10 ),
	( 5234, '郭靖', '出纳', 5566, 2000, 200, 10 ),
	( 3344, '黄蓉', '销售主管', 7800, 3000, 2500, 30 ),
	( 1359, '胡一刀', '销售员', 3344, 1800, NULL, 30 ),
	( 4466, '苗人凤', '销售员', 3344, 2500, NULL, 30 ),
	( 3244, '欧阳锋', '程序员', 3088, 3200, NULL, 20 ),
	( 3577, '杨过', '会计', 5566, 2200, NULL, 10 ),
	( 3588, '朱九真', '会计', 5566, 2500, NULL, 10 );
	
	
	
	
	-- 查询月薪最高的员工姓名和工资
	select ename,max(sal) from tbemp;

-- 查询员工的姓名和年薪((月薪+补贴)*13)
select ename,((sal+IFNULL(comm,0))* 13) as 年薪 from tbemp;

-- 查询有员工的部门编号和人数
select tbdept.dno,count(tbemp.dno) from tbdept,tbemp where tbdept.dno=tbemp.dno GROUP BY tbdept.dno;
-- 查询所有部门的名称和人数
select dname,count(tbemp.dno) from tbdept,tbemp where tbdept.dno=tbemp.dno group by dname;
-- 查询薪资最高的员工(Boss除外)的姓名和工资
select ename,max(sal) from tbemp where tbemp.ename<>'胡一刀' and tbemp.sal<>9000; 

-- 查询薪水超过平均薪水的员工的姓名和工资
select ename,sal from tbemp where sal>=(select avg(sal) from tbemp);

-- 查询薪水超过其所在部门平均薪水的员工的姓名、部门编号和工资

select avg(sal),tbdept.dno from tbemp,tbdept where tbdept.dno=tbemp.dno group by tbemp.dno;


select tbdept.dno,ename,sal from tbdept,tbemp where tbdept.dno in (select dno from tbdept) and tbdept.dno=tbemp.dno;

-- 查询部门中薪水最高的人姓名、工资和所在部门名称
select max(sal),ename,dname from tbdept,tbemp where tbdept.dno=tbemp.dno group by dname;

-- 查询主管的姓名和职位
select ename,job from tbemp where job like '%主管%';

-- 查询薪资排名4~6名的员工姓名和工资
select 
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
