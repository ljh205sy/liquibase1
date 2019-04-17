--liquibase formatted sql
--changeset liujinhui:20190414-001 labels:test
CREATE TABLE `discover_entity` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL COMMENT '姓名',
  `last_update_time` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '时间类型',
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='搜索表'; 



--changeset liujinhui:20190416-002
CREATE TABLE IF NOT EXISTS `tb_conf` (
  `conf_id` VARCHAR(255) NOT NULL,
  `conf_enable` BIT(1) DEFAULT NULL,
  `conf_value` TEXT,
  `conf_time` DATETIME DEFAULT NULL,
  `status_update` BIT(1) DEFAULT NULL,
  PRIMARY KEY (`conf_id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;
--rollback drop table tb_conf;


--changeset liujinhui:20190413-001 runOnChange:true endDelimiter:#
DROP PROCEDURE IF EXISTS sayHelloWorld;
#
CREATE PROCEDURE sayHelloWorld()
BEGIN
    SELECT 'Hello World From a MySql Database!';
END
#

--changeset liujinhui:20190413-002 runOnChange:true endDelimiter:#
DROP FUNCTION IF EXISTS `getChildLst`
#
CREATE FUNCTION  `getChildLst`(rootId INT)
    RETURNS VARCHAR(4000)
     BEGIN
      DECLARE sTemp VARCHAR(4000);
     DECLARE sTempChd VARCHAR(4000);
   
     SET sTemp = '$';
      SET sTempChd =CAST(rootId AS CHAR);
   
      WHILE sTempChd IS NOT NULL DO
        SET sTemp = CONCAT(sTemp,',',sTempChd);
         SELECT GROUP_CONCAT(guid) INTO sTempChd FROM regionmanager WHERE FIND_IN_SET(upid,sTempChd)>0;
       END WHILE;
      RETURN sTemp;
    END
#    


