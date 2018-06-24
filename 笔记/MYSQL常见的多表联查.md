# MYSQL常见的多表联查

##### 表之间的关系：1对1\1对多\多对多

##### 1、嵌套查询：一个查询的结果是另外sql查询的条件

```
如：查询stu表中年龄最大的是谁？

mysql> select * from stu where age=(select max(age) from stu);

mysql> selecy * from stu where age in(select max(age) from stu); --子查询结果是多条时使用in查询


```

|  id  |   name   | age  | sex  | classid  |
| :--: | :------: | :--: | :--: | :------: |
|  14  | zhangsan |  33  |  w   | python01 |

##### 2、where关联查询

```
已知：员工personnel表和部门department表，其中员工表中的did字段为部门表id主键关联。

查询所有员工信息，并显示所属部门名称

要求：显示字段：员工id 部门 姓名

mysql> select p.id,d.name,p.name from personnelp,department d where p.did = d.id;
```


|  1   | 人事部 | 张三 |
| :--: | :----: | :--: |
|  2   | 市场部 | 李四 |
|  3   | 技术部 | 王五 |

##### 3、连接join查询

```
左联：left jion
右联：right join
内联：inner join

已知如下表所示，商品类别信息表(具有两层类别关系，通过pid表示，0表示一类级别)

mysql> select * from type:
```

| id   | name   | pid  | sex  |
| ---- | ------ | ---- | ---- |
| 1    | 服装   | 0    | w    |
| 2shu | 数码   | 0    | w    |
| 3    | 男装   | 0    | w    |
| 4    | 手机   | 2    | w    |
| 5    | 相机   | 2    | w    |
| 6    | 电脑   | 2    | w    |
| 7    | 女装   | 5    | n    |
| 8    | 童装   | 5    | n    |
| 9    | 食品   | 5    | n    |
| 10   | 零食   | 7    | n    |
| 11   | 特产   | 7    | n    |
| 12   | 休闲装 | 7    | w    |

| field | type              | null | key  | default | extra |
| ----- | ----------------- | ---- | ---- | ------- | ----- |
| id    | int(10) unsigned  | no   | pri  |         |       |
| name  | varcha(16)        | no   | null |         |       |
| pid   | int(10)  unsigned | yes  | numm |         |       |

```
mysql>	desc	type:
```

##### ---统计每一个一级类别下都有多少个子类别

```
mysql> select t1.id,t1.name,count(t2.id) from type t1,type t2 where t1.pid=0 and tt1.id=t2.pid group by t1.id;
```

| id   | name | count(t2.id) |
| ---- | ---- | ------------ |
| 1    | 服装 | 4            |
| 2    | 数码 | 3            |
| 3    | 食品 | 2            |

# mysql的其他操作

##### 1、mysql的表复制

```
复制表结构
mysql> creat table 目标表明 like 元表明;

复制表数据
mysql> insert into 目标表名 select * from 原表名;
```

##### 2、*数据表的索引

```
创建索引
CREAT INDEX index_name ON table_name (column_list)

CREAT UNIQUE INDEX index_name ON table_name (column_list)

删除索引
DROP INDEX index_name ON table_name
```

##### 3、mysql视图

```
创建视图
mysql> creat view v_t1 as select * from t1 where id>4 and id<ll;

QUERY OK,0rows affected (0.00 sec)

view视图的帮助信息
mysql> view
ALTEER VIEW
CREAT VIEW
DROP VIEW

查看视图
mysql> show ttables

删除视图
mysql>drop view v_tl;
```

##### 4、mysql的事物处理

```
关闭自动提交功能
mysql> set autocommit=0;

从表t1中删除一条记录
mysql> delete from t1 where id=11;

此时做一个p1还原点：
mysql> savepoint p1;

再次从表t1中删除一条记录
mysql> delete from t1 where id=10;

再次做一个p2的还原点
mysql> savepoint p2;

此时恢复到p1的还原点，当然后边的p2这些还原点自动会失效
mysql> roolback to p1;

退回到最原始的还原点；
mysql> roolback;
回滚

mysql> commit
事物提交

开启自动提交(关闭手动事务)
mysql> set autocommit=1;

```

