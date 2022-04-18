# ViewStoredProcedureTrigger 
视图/存储过程/触发器
## View
视图

- 介绍
视图（View）是一种虚拟存在的表。视图中的数据并不在数据库中实际存在，行和列数据来自定义视图的查询中使用的表，并且是在使用视图时动态生成的

通俗的将，视图只保存了查询的SQL逻辑，不保存查询结果，所以我们在创建视图的时候，主要的工作就落在创建这条SQL查询语句上

- 创建
`CREATE [OP REPLACE] VIEW 视图名称[(列名列表)] AS SELECT语句 [WITH[CASCADED | LOCAL] CHECK OPTION];`
- 查询
  - 查看创建视图语句：`SHOW CREATE VIEW 视图名称;`
  - 查看视图数据：`SELECT * FROM 视图名称 ...;`
- 修改视图
  - 方式一：`CREATE [OR REPLACE] VIEW 视图名称[(列名列表)] AS SELECT语句 [WITH [CASCADED | LOCAL] CHECK OPTION];`
  - 方式二：`ALTER VIEW 视图名称[(列名列表)] AS SELECT语句 [WITH [CASCADED | LOCAL] CHECK OPTION];`
- 修改：`DROP VIEW [IF EXISTS] 视图名称 [,视图名称] ...;`
- 视图的检查选项

当使用`WITH CHECK OPTION`子句创建视图时，MySQL会通过视图检查正在更改的每个行，例如：插入、更新、删除，以使其符合视图的定义。
MySQL允许基于另一个视图创建视图，它还会检查依赖视图中的规则以保持一致性。为了确定检查的范围，mysql提供了两个选项：
`CASCADED`和`LOCAL`，默认值为`CASCADED`

## 存储过程
- 创建
```mysql
CREATE PROCEDURE 存储过程名称([参数列表])
BEGIN
    SQL语句
END;    
```
- 调用
`CALL 名称([参数]);`
- 查看
  - 查询指定数据库的存储过程及状态信息
`SELECT * FROM INFORMATION_SCHEMA.ROUTINES WHERE ROUTINE_SCHEMA = 'xxx';`
  - 查询某个存储过程的定义
`SHOW CREATE PROCEDURE 存储过程名称;`
- 删除
`DOP POCEDURE [IF EXISTS] 存储过程名称;`
## 存储函数
## 触发器