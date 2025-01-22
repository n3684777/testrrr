-- ------------------------------------------------------------------------------
-- 此指令碼用於將 Pandas 的主資料庫升級到 2022.05.15 版本
-- 注意: 若存在更低版本且從未匯入的升級指令碼, 請按版本號從小到大依序匯入
-- ------------------------------------------------------------------------------

-- -----------------------------------------------
-- upgrade_20220311.sql
-- -----------------------------------------------

-- Reset the following quests to match official Rockridge quests
DELETE FROM `quest` WHERE `quest_id` = 1321;
DELETE FROM `quest` WHERE `quest_id` = 1322;
DELETE FROM `quest` WHERE `quest_id` = 1323;
DELETE FROM `quest` WHERE `quest_id` = 1324;
DELETE FROM `quest` WHERE `quest_id` = 1325;
DELETE FROM `quest` WHERE `quest_id` = 1326;
DELETE FROM `quest` WHERE `quest_id` = 1327;
DELETE FROM `quest` WHERE `quest_id` = 1328;
DELETE FROM `quest` WHERE `quest_id` = 1329;
DELETE FROM `quest` WHERE `quest_id` = 1330;

-- -----------------------------------------------
-- upgrade_20220328.sql
-- -----------------------------------------------

-- Reset Nameless Island and Geoborg Family Curse quests which were using custom IDs that have been overtaken
DELETE FROM `quest` WHERE `quest_id` >= 17000 AND `quest_id` <= 17017;
DELETE FROM `quest` WHERE `quest_id` >= 18030 AND `quest_id` <= 18052;
