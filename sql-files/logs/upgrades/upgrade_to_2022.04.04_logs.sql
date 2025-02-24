﻿-- ------------------------------------------------------------------------------
-- 此指令碼用於將 Pandas 的日誌資料庫升級到 2022.04.04 版本
-- 注意: 若存在更低版本且從未匯入的升級指令碼, 請按版本號從小到大依序匯入
-- ------------------------------------------------------------------------------

-- -----------------------------------------------
-- 在 picklog 中額外新增個 1 型別
-- -----------------------------------------------

ALTER TABLE `picklog`
	MODIFY `type` enum('M','P','L','T','V','S','N','C','A','R','G','E','B','O','I','X','D','U','$','F','Y','Z','Q','H','J','W','0','1') NOT NULL default 'P'
;

-- -----------------------------------------------
-- 在 zenylog 中額外新增個 1 型別
-- -----------------------------------------------

ALTER TABLE `zenylog`
	MODIFY `type` enum('T','V','P','M','S','N','D','C','A','E','I','B','K','J','X','1') NOT NULL default 'S'
;
