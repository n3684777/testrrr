-- ------------------------------------------------------------------------------
-- 此指令碼用於將 Pandas 的 WEB 介面資料庫升級到 2022.10.06 版本
-- 注意: 若存在更低版本且從未匯入的升級指令碼, 請按版本號從小到大依序匯入
-- ------------------------------------------------------------------------------

ALTER TABLE `guild_emblems`
	DROP PRIMARY KEY,
	ADD PRIMARY KEY (`world_name`, `guild_id`);

ALTER TABLE `user_configs`
	DROP PRIMARY KEY,
	ADD PRIMARY KEY (`world_name`, `account_id`);

ALTER TABLE `char_configs`
	DROP PRIMARY KEY,
	ADD PRIMARY KEY (`world_name`, `account_id`, `char_id`);

ALTER TABLE `merchant_configs`
	DROP PRIMARY KEY,
	ADD PRIMARY KEY (`world_name`, `account_id`, `char_id`, `store_type`);
