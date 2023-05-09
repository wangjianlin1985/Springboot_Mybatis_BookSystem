# Springboot_Mybatis_BookSystem
基于Springboot+mybatis图书管理系统设计毕业源码案例设计

## 功能说明：
  用户角色包含以下功能：借阅管理,图书检索,查看借还记录,查看图书详情,还书管理,登录页面等功能。
  管理员角色包含以下功能：借书管理,图书信息管理,图书分类管理,用户管理,角色管理,还书管理,登录页面等功能。
  用了技术框架： HTML+CSS+JavaScript+java+jsp+Spring+mybatis+Springboot

## 管理员：admin/123456
## 用户： user/123456

ps:有人反映说借书的时候，找用户和图书找不到，站长哭了呀~用户输入的是用户编号，比如：155479343253065，图书输入的是图书编号，比如：3
删除用户的时候，删除失败不是因为程序bug，而是用户借的书没有还，所以存在外键关联所以就删除不了了，大家可以先创建用户，在删除。

运行环境:jdk1.8/jdk1.9
IDE环境： Eclipse,Myeclipse,IDEA都可以
tomcat环境： Tomcat8.x/9.x
