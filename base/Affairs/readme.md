# Affairs

事务

## 事务简介

**事务**是一组操作的集合，它是一组不可分割的工作单位，事务会把所有操作作为一个整体一起向系统提交或撤销操作请求，即这些操作**要么同时成功，要么同时失败**

**默认MySQL的事务是自动提交的，也就是说，当执行一条DML语句，MySQL会立即隐式的提交事务**

## 事务操作

- 查看/设置事务提交方式

```mysql
SELECT @@autocommit;
set @@autocommit = 0;
```

- 开启事务
  `START TRANSACTION 或 BEGIN;`
- 提交事务
  `COMMIT;`
- 回滚事务
  `ROLLBACK;`

## 事务四大特性

- 原子性（*A*tomicity）：事务是不可分割的最小操作单元，要么全部成功，要么全部失败
- 一致性（*C*onsistency）：事务完成时，必须使所有的数据都保持一致状态
- 隔离性（*I*solation）：数据库系统提供的隔离机制，保证事务在不受外部并发操作影响的独立环境下运行
- 持久性（*D*urability）：事务一旦提交或回滚，他对数据库中的数据的改变就是永久的

## 并发事务问题

| 问题    | 描述                                                    |
|-------|-------------------------------------------------------|
| 脏读    | 一个事务读到另一个事务还没有提交的数据                                   |
| 不可重复读 | 一个事务先后读取同一条记录，但两次读取的数据不同，称之为不可重复读                     |
| 幻读    | 一个事务按照条件查询数据时，没有对应的数据行，但是在插入数据时，又发现这行数据已经存在，好像出现了”幻影“ |

## 事务隔离级别
- 隔离级别中可能出现的问题：

| 隔离级别                | 脏读  | 不可重复读 | 幻读  |
|---------------------|-----|-------|-----|
| Read uncommitted    | √   | √     | √   |
| Read committed      | ×   | √     | √   |
| Repeatable Read（默认） | ×   | ×     | √   |
| Serializable        | ×   | ×     | ×   |
- 查看事务隔离级别
`SELECT @@TRANSACTION_ISOLATION;`
- 设置事务隔离级别
`SET [SESSION | GLOBAL] TRANSACTION ISOLATION LEVEL {READ UNCOMMITTED | READ COMMITTED | REPEATABLE READ | SERIALIZABLE};`

**注意：事务隔离级别越高，数据越安全，但是性能越低**

## 本节使用的代码
```mysql
/*----------------------事务操作-------------------------*/
/*数据准备*/
create table account
(
    id    int auto_increment primary key comment '主键ID',
    name  varchar(10) comment '姓名',
    money int comment '余额'
) comment '账户表';

insert into account(id, name, money)
values (null, '张三', 2000),
       (null, '李四', 2000);


/*恢复数据*/
update account
set money = 2000
where name in ('张三', '李四');



select @@autocommit;
set @@autocommit = 0;/*设置为手动提交*/


/*转账操作*/
/*1.查询张三账户余额*/
select money
from account
where name = '张三';

/*2.将张三账户余额-1000*/
update account
set money = money - 1000
where name = '张三';

# 程序抛出异常...

/*3.将李四账户余额+1000*/
update account
set money = money + 1000
where name = '李四';

/*提交事务*/
commit;

/*回滚事务*/
rollback;



/*方式二*/
/*转账操作*/
/*开启事务*/
start transaction ;

/*1.查询张三账户余额*/
select money
from account
where name = '张三';

/*2.将张三账户余额-1000*/
update account
set money = money - 1000
where name = '张三';

# 程序抛出异常...

/*3.将李四账户余额+1000*/
update account
set money = money + 1000
where name = '李四';

/*提交事务*/
commit;

/*回滚事务*/
rollback;



/*查看事务的隔离级别*/
select @@transaction_isolation;
/*修改事务的隔离级别为repeatable read*/
set session transaction isolation level repeatable read ;
```

















