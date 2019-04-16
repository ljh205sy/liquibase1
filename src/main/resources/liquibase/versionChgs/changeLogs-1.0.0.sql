--liquibase formatted sql
--changeset liujinhui:1 labels:初始化建表语句
CREATE TABLE IF NOT EXISTS `tb_conf` (
  `conf_id` VARCHAR(255) NOT NULL,
  `conf_enable` BIT(1) DEFAULT NULL,
  `conf_value` TEXT,
  `conf_time` DATETIME DEFAULT NULL,
  `status_update` BIT(1) DEFAULT NULL,
  PRIMARY KEY (`conf_id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;
--rollback drop table tb_conf;

--changeset liujinhui:2 labels:初始化数据
INSERT INTO tb_conf SET conf_id="THREE_POWER_ON",conf_enable=TRUE, conf_value='0', conf_time=NOW(), status_update=TRUE ON DUPLICATE KEY UPDATE conf_value='0';


--changeset liujinhui:3 labels:"test"
CREATE TABLE `discover_entity` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL COMMENT '姓名',
  `last_update_time` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '时间类型',
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='搜索表'; 