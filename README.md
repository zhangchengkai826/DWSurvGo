## 安装

```
服务器必须安装由 JAVA 1.6+、MySQL、Apache Tomcat 构成的环境
```

```
因为DWSurvey是基于JAVA WEB实现，所以安装与一般的JAVA WEB程序无异，配置好数据库地址就可以正常使用:

mvn verify -f "DWSurvey\pom.xml"
把DWSurvey\target\diaowen.war复制到tomcat得webapps目录下
```

### 配置说明、数据初始化

```
先在您mysql导入/src/main/resources/conf/sql/目录下的dwsurvey.sql数据库脚本文件
```

配置文件地址

```
conf/application.properties

#database settings
jdbc.url=jdbc:mysql://localhost:3306/dwsurvey?useUnicode=true&characterEncoding=utf8
jdbc.username=root
jdbc.password=123456,.

分别修改```jdbc.url、jdbc.username、jdbc.password```
```

### 启动访问

配置完成后，启动服务在浏览器中输入如`localhost:8080/diaowen`相应的地址看到登录页面，表示已经安装成功。

初始账号：`service@diaowen.net` 密码：`123456`