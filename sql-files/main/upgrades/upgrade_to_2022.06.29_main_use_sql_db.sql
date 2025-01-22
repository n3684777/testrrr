-- ------------------------------------------------------------------------------
-- 此指令碼用於將 Pandas 的主資料庫升級到 2022.06.29 版本
-- 注意: 若存在更低版本且從未匯入的升級指令碼, 請按版本號從小到大依序匯入
-- 
-- 若您在 inter_athena.conf 中啟用了 use_sql_db 選項, 那麼請匯入本檔案.
-- ------------------------------------------------------------------------------

-- -----------------------------------------------
-- 熊貓模擬器自定義修改
-- -----------------------------------------------

DROP PROCEDURE IF EXISTS UPDATE_PANDAS_MAIN_USESQLDB;

DELIMITER $$
CREATE PROCEDURE UPDATE_PANDAS_MAIN_USESQLDB()
BEGIN
	IF EXISTS (SELECT * FROM information_schema.TABLES WHERE TABLE_SCHEMA = (SELECT DATABASE ()) and TABLE_NAME = 'item_db_re') THEN
		ALTER TABLE `item_db_re`
			ADD COLUMN `job_spirit_handler` tinyint(1) unsigned DEFAULT NULL AFTER `job_soullinker`;
	END IF;
	
	IF EXISTS (SELECT * FROM information_schema.TABLES WHERE TABLE_SCHEMA = (SELECT DATABASE ()) and TABLE_NAME = 'item_db2_re') THEN
		ALTER TABLE `item_db2_re`
			ADD COLUMN `job_spirit_handler` tinyint(1) unsigned DEFAULT NULL AFTER `job_soullinker`;
	END IF;
END $$
DELIMITER ;

CALL UPDATE_PANDAS_MAIN_USESQLDB();
DROP PROCEDURE UPDATE_PANDAS_MAIN_USESQLDB;
