https://www.cnblogs.com/mahuan2/p/6909521.html
https://segmentfault.com/a/1190000016641122

mvn clean package
mvn clean package -Psoc
# 把执行mvn clean package -Psoc, 则会把soc文件夹下的所有的文件拷贝到class的根目录下，例如:init.sql
通过插件来完成

利用这个plugin的作用，可以携带参数，把audit或者soc目录下的文件，利用copy-resources把init.sql放置在classpath目录下。


# 存储过程创建
http://www.liquibase.org/documentation/changes/create_procedure.html
For LiquiBase to create procedure You need to use xml create procedure, it will resolve Your problem. 
Also compile it and check if there is no error.

