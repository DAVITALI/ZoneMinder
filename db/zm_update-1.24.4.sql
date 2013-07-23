--
-- This updates a 1.24.4 database to the next version
--

--
-- Create Logs table
-- TODO - defaults to MyISAM as not easy to import selected engine
--

CREATE TABLE `Logs` (
  `TimeKey` decimal(16,6) NOT NULL,
  `Component` varchar(32) NOT NULL,
  `Pid` smallint(6) DEFAULT NULL,
  `Level` tinyint(3) NOT NULL,
  `Code` char(3) NOT NULL,
  `Message` varchar(255) NOT NULL,
  `File` varchar(255) DEFAULT NULL,
  `Line` smallint(5) unsigned DEFAULT NULL,
  KEY `TimeKey` (`TimeKey`)
) ENGINE=MyISAM;

alter table Zones add column `TimeStart` smallint(2) unsigned NOT NULL default '0' after `OverloadFrames` ;
alter table Zones add column `TimeEnd`   smallint(2) unsigned NOT NULL default '23' after `TimeStart` ;
alter table ZonePresets add column `TimeStart` smallint(2) unsigned NOT NULL default '0' after `OverloadFram
alter table ZonePresets add column `TimeEnd`   smallint(2) unsigned NOT NULL default '23' after `TimeStart` 

--
-- These are optional, but we might as well do it now
--
optimize table Frames;
optimize table Events;
optimize table Filters;
optimize table Zones;
optimize table Monitors;
optimize table Stats;
