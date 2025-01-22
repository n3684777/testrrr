-- ------------------------------------------------------------------------------
-- 此指令碼用於將 Pandas 的 WEB 介面資料庫升級到 2023.02.20 版本
-- 注意: 若存在更低版本且從未匯入的升級指令碼, 請按版本號從小到大依序匯入
-- ------------------------------------------------------------------------------

-- 將原 recruitment 表中的資料轉換到 party_bookings
-- 該指令碼假定你的 WEB 介面資料庫與主資料庫是同一個並且已執行主資料庫 1.1.19 的升級指令碼
-- 執行完成該指令碼後進入遊戲測試, 若一切正常可以手動移除 recruitment 表

INSERT INTO `party_bookings` (`world_name`, `account_id`, `char_id`, `char_name`, `purpose`, `assist`, `damagedealer`, `healer`, `tanker`, `minimum_level`, `maximum_level`, `comment`) SELECT `world_name`, `account_id`, `char_id`, `char_name`, `adventure_type`, `assist`, `dealer`, `healer`, `tanker`, `min_level`, `max_level`, `memo` FROM `recruitment`;
