# DCL
数据控制语言，用来创建数据库用户、控制数据库访问权限
## DCL——管理用户
1. 查询用户
```mysql
USE mysql;
SELECT * FROM user;
```
2. 创建用户
`CREATE USER '用户名'@'主机名' IDENTIFIED BY '密码';`
3. 修改用户密码
`ALTER USER '用户名'@'主机名' IDENTIFIED WITH mysql_native_password BY '新密码';`
4. 删除用户
`DROP USER '用户名'@'主机名';`

**注意**
- **主机名可以使用%通配**
- **这类SQL开发人员操作的比较少，主要是DBA（数据库管理员）和运维使用**
## DCL——权限控制
MySQL中定义了很多种权限，但是常用的就以下几种

| 权限                 | 说明         |
|--------------------|------------|
| ALL,ALL PRIVILEGES | 所有权限       |
| SELECT             | 查询数据       |
| INSERT             | 插入数据       |
| UPDATE             | 修改数据       |
| DELETE             | 删除数据       |
| ALTER              | 修改表        |
| DROP               | 删除数据库/表/视图 |
| CREATE             | 创建数据库/表    |

1. 查询权限
`SHOW GRANTS FOR '用户名'@'主机名';`
2. 授予权限
`GRANT 权限列表 ON 数据库名.表名 TO '用户名'@'主机名';`
3. 撤销权限
`REVOKE 权限列表 ON 数据库名.表名 FROM '用户名'@'主机名';`

**注意**
- **多个权限之间，使用逗号分隔**
- **授权时，数据库名和表名可以使用`*`进行通配，代表所有**
