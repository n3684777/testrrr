-- ------------------------------------------------------------------------------
-- 此指令碼用於將 Pandas 的主資料庫升級到 2023.02.20 版本
-- 注意: 若存在更低版本且從未匯入的升級指令碼, 請按版本號從小到大依序匯入
-- ------------------------------------------------------------------------------

-- -----------------------------------------------
-- upgrade_20221218.sql
-- -----------------------------------------------
-- 這個指令碼使用過於複雜, 暫時不匯入

-- -----------------------------------------------
-- upgrade_20221220.sql
-- -----------------------------------------------

CREATE TABLE IF NOT EXISTS `party_bookings` (
  `world_name` varchar(32) NOT NULL,
  `account_id` int(11) unsigned NOT NULL,
  `char_id` int(11) unsigned NOT NULL,
  `char_name` varchar(30) NOT NULL,	-- Pandas modify for sync to `char` table field length
  `purpose` smallint(5) unsigned NOT NULL DEFAULT '0',
  `assist` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `damagedealer` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `healer` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `tanker` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `minimum_level` smallint(5) unsigned NOT NULL,
  `maximum_level` smallint(5) unsigned NOT NULL,
  `comment` varchar(255) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`world_name`, `account_id`, `char_id`)
) ENGINE=MyISAM;
