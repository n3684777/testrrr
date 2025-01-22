-- ------------------------------------------------------------------------------
-- 此指令碼用於將 Pandas 的主資料庫升級到 2022.03.26 版本
-- 注意: 若存在更低版本且從未匯入的升級指令碼, 請按版本號從小到大依序匯入
-- 
-- 若您在 inter_athena.conf 中啟用了 use_sql_db 選項, 那麼請匯入本檔案.
-- ------------------------------------------------------------------------------

-- -----------------------------------------------
-- upgrade_20220224.sql
-- -----------------------------------------------

ALTER TABLE `mob_db`
	ADD COLUMN `racegroup_malangdo` tinyint unsigned DEFAULT NULL
;
ALTER TABLE `mob_db2`
	ADD COLUMN `racegroup_malangdo` tinyint unsigned DEFAULT NULL
;
ALTER TABLE `mob_db_re`
	ADD COLUMN `racegroup_malangdo` tinyint unsigned DEFAULT NULL
;
ALTER TABLE `mob_db2_re`
	ADD COLUMN `racegroup_malangdo` tinyint unsigned DEFAULT NULL
;
