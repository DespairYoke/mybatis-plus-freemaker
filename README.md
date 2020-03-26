# mybatis-plus-freemaker
mybatis-plus加freemaker生成自定义模板

### 使用说明
1. 修改数据库连接
```java
    dsc.setUrl("jdbc:mysql://localhost:3306/school?useUnicode=true&useSSL=false&characterEncoding=utf8");
    // dsc.setSchemaName("public");
    dsc.setDriverName("com.mysql.jdbc.Driver");
    dsc.setUsername("root");
    dsc.setPassword("adminadmin");
```
2. 修改想要生成的包名
```java
     PackageConfig pc = new PackageConfig();
        pc.setModuleName(null);
        pc.setParent("com.example.demo");
```