-- ------------------------------------------------------------------------------
-- 此指令碼用於將 Pandas 的日誌資料庫升級到 2022.06.29 版本
-- 注意: 若存在更低版本且從未匯入的升級指令碼, 請按版本號從小到大依序匯入
-- ------------------------------------------------------------------------------

ALTER TABLE `picklog`
	MODIFY `type` enum('M','P','L','T','V','S','N','C','A','R','G','E','B','O','I','X','D','U','$','F','Y','Z','Q','H','J','W','0','1','2') NOT NULL default 'P'
;

UPDATE `picklog` SET `type` = '2' WHERE `type` = '1';
UPDATE `picklog` SET `type` = '1' WHERE `type` = '0';


-- 在保留 '1' 的情況下增加 '2' 
ALTER TABLE `zenylog`
	MODIFY `type` enum('T','V','P','M','S','N','D','C','A','E','I','B','K','J','X','0','1','2') NOT NULL default 'S'
;

-- 進行遷移
UPDATE `zenylog` SET `type` = '2' WHERE `type` = '1';

-- 再最終去掉 '1'
ALTER TABLE `zenylog`
	MODIFY `type` enum('T','V','P','M','S','N','D','C','A','E','I','B','K','J','X','0','2') NOT NULL default 'S'
;
