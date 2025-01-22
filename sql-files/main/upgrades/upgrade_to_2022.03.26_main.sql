-- ------------------------------------------------------------------------------
-- 此指令碼用於將 Pandas 的主資料庫升級到 2022.03.26 版本
-- 注意: 若存在更低版本且從未匯入的升級指令碼, 請按版本號從小到大依序匯入
-- ------------------------------------------------------------------------------

-- -----------------------------------------------
-- 露天商店擴充系統
-- -----------------------------------------------

ALTER TABLE `vendings`
	ADD COLUMN `vending_currency` int(10) unsigned NOT NULL DEFAULT '0' AFTER `sit`;
ALTER TABLE `buyingstores`
	ADD COLUMN `vending_currency` int(10) unsigned NOT NULL DEFAULT '0' AFTER `sit`;
