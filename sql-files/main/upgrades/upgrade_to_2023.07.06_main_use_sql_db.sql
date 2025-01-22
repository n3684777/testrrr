-- ------------------------------------------------------------------------------
-- 此指令碼用於將 Pandas 的主資料庫升級到 2023.07.06 版本
-- 注意: 若存在更低版本且從未匯入的升級指令碼, 請按版本號從小到大依序匯入
-- 
-- 若您在 inter_athena.conf 中啟用了 use_sql_db 選項, 那麼請匯入本檔案.
-- ------------------------------------------------------------------------------

-- -----------------------------------------------
-- upgrade_20230413.sql
-- -----------------------------------------------

DROP PROCEDURE IF EXISTS UPDATE_PANDAS_MAIN_USESQLDB;

DELIMITER $$
CREATE PROCEDURE UPDATE_PANDAS_MAIN_USESQLDB()
BEGIN
	IF EXISTS (SELECT * FROM information_schema.TABLES WHERE TABLE_SCHEMA = (SELECT DATABASE ()) and TABLE_NAME = 'mob_db') THEN
		ALTER TABLE `mob_db`
			ADD COLUMN `racegroup_ep172alpha` tinyint(1) unsigned DEFAULT NULL,
			ADD COLUMN `racegroup_ep172beta` tinyint(1) unsigned DEFAULT NULL,
			ADD COLUMN `racegroup_ep172bath` tinyint(1) unsigned DEFAULT NULL
		;
	END IF;
	
	IF EXISTS (SELECT * FROM information_schema.TABLES WHERE TABLE_SCHEMA = (SELECT DATABASE ()) and TABLE_NAME = 'mob_db2') THEN
		ALTER TABLE `mob_db2`
			ADD COLUMN `racegroup_ep172alpha` tinyint(1) unsigned DEFAULT NULL,
			ADD COLUMN `racegroup_ep172beta` tinyint(1) unsigned DEFAULT NULL,
			ADD COLUMN `racegroup_ep172bath` tinyint(1) unsigned DEFAULT NULL
		;
	END IF;
	
	IF EXISTS (SELECT * FROM information_schema.TABLES WHERE TABLE_SCHEMA = (SELECT DATABASE ()) and TABLE_NAME = 'mob_db_re') THEN
		ALTER TABLE `mob_db_re`
			ADD COLUMN `racegroup_ep172alpha` tinyint(1) unsigned DEFAULT NULL,
			ADD COLUMN `racegroup_ep172beta` tinyint(1) unsigned DEFAULT NULL,
			ADD COLUMN `racegroup_ep172bath` tinyint(1) unsigned DEFAULT NULL
		;
	END IF;
	
	IF EXISTS (SELECT * FROM information_schema.TABLES WHERE TABLE_SCHEMA = (SELECT DATABASE ()) and TABLE_NAME = 'mob_db2_re') THEN
		ALTER TABLE `mob_db2_re`
			ADD COLUMN `racegroup_ep172alpha` tinyint(1) unsigned DEFAULT NULL,
			ADD COLUMN `racegroup_ep172beta` tinyint(1) unsigned DEFAULT NULL,
			ADD COLUMN `racegroup_ep172bath` tinyint(1) unsigned DEFAULT NULL
		;
	END IF;
END $$
DELIMITER ;

CALL UPDATE_PANDAS_MAIN_USESQLDB();
DROP PROCEDURE UPDATE_PANDAS_MAIN_USESQLDB;
