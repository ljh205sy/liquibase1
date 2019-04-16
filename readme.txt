mvn clean package
mvn clean package -Psoc
# 把执行mvn clean package -Psoc, 则会把soc文件夹下的所有的文件拷贝到classpath:liquibase/的根目录下，例如:init.sql
通过插件来完成
利用这个plugin的作用，可以携带参数，把audit或者soc目录下的文件，利用copy-resources把init.sql放置在classpath目录下。




执行命令： mvn install -Psoc
### 增加依赖
<dependency>
			<groupId>org.liquibase</groupId>
			<artifactId>liquibase-core</artifactId>
		</dependency>
    
### 配置文件中加入主配置信息（application.yml中加入）
liquibase:
  enabled: true
  change-log: classpath:liquibase/changelog-master.xml
  
### 包含不同版本的配置信息
<!-- 包含所有版本的sql文件 -->
	<include file="versionChgs/changeLogs-1.0.0.sql" relativeToChangelogFile="true" />
	<include file="versionChgs/changeLogs-1.0.1.sql" relativeToChangelogFile="true" />
	<include file="init.sql" relativeToChangelogFile="true" />
    
### 根据不同的环境进行文件的复制（不同环境的配置文件选择）
	<profiles>
		<profile>
			<id>soc</id>
			<activation>
				<activeByDefault>true</activeByDefault>
			</activation>
			<properties>
				<package.environment>soc</package.environment>
			</properties>
		</profile>
		<profile>
			<id>vap</id>
			<properties>
				<package.environment>vap</package.environment>
			</properties>
		</profile>
		<profile>
			<id>audit</id>
			<properties>
				<package.environment>audit</package.environment>
			</properties>
		</profile>
	</profiles>
  
参考链接：
https://www.cnblogs.com/mahuan2/p/6909521.html
https://segmentfault.com/a/1190000016641122
