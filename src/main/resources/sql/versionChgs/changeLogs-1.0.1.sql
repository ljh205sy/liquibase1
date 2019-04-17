--liquibase formatted sql
--changeset liujinhui:3 labels:"初始化数据2"
INSERT INTO `tb_conf` (`conf_id`, `conf_enable`, `conf_value`, `conf_time`, `status_update`) VALUES('lowercase',FALSE,'0','2017-10-16 16:56:21',FALSE);


