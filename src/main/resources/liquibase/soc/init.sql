--liquibase formatted sql
--changeset liujinhui:3 labels:initsql
INSERT INTO `tb_conf` (`conf_id`, `conf_enable`, `conf_value`, `conf_time`, `status_update`) VALUES('maxlength',FALSE,'0','2017-10-16 16:56:21',FALSE);
INSERT INTO `tb_conf` (`conf_id`, `conf_enable`, `conf_value`, `conf_time`, `status_update`) VALUES('minlength',FALSE,'0','2017-10-16 16:56:21',FALSE);
INSERT INTO `tb_conf` (`conf_id`, `conf_enable`, `conf_value`, `conf_time`, `status_update`) VALUES('numbers',FALSE,'0','2017-10-16 16:56:21',FALSE);
INSERT INTO `tb_conf` (`conf_id`, `conf_enable`, `conf_value`, `conf_time`, `status_update`) VALUES('specialchart',FALSE,'0','2017-10-16 16:56:21',FALSE);
INSERT INTO `tb_conf` (`conf_id`, `conf_enable`, `conf_value`, `conf_time`, `status_update`) VALUES('uppercase',FALSE,'0','2017-10-16 16:56:21',FALSE);
INSERT INTO `tb_conf` (`conf_id`, `conf_enable`, `conf_value`, `conf_time`, `status_update`) VALUES('checktimeset',FALSE,'0','2017-10-16 16:56:21',FALSE);
INSERT INTO `tb_conf` (`conf_id`, `conf_enable`, `conf_value`, `conf_time`, `status_update`) VALUES('expiretime', TRUE, '7', '2019-04-02 13:58:12', TRUE);
INSERT INTO `tb_conf` (`conf_id`, `conf_enable`, `conf_value`, `conf_time`, `status_update`) VALUES('maxfailnumber', TRUE, '5', '2019-03-26 19:08:02', TRUE);
alter table tb_conf add index tb_conf_index_name (conf_id);


--changeset liujinhui:5 dbms:mysql
drop index tb_conf_index_name on tb_conf ;