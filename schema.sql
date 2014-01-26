--
-- balcony - Online Portal for Hackerspaces
--
-- Copyright (c) 2014, Iain R. Learmonth and contributors.
-- All rights reserved.
--
-- See LICENSE for details of redistribution terms and disclaimer.
--

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `balcony`
--

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE IF NOT EXISTS `member` (
  `memberNumber` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Unique member number',
  `username` varchar(60) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Username for member on balcony',
  `title` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Member''s title',
  `firstname` varchar(60) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Member''s first name',
  `lastname` varchar(60) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Member''s last name',
  `postnominals` varchar(60) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Member''s post-nominals',
  `irc` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Member''s IRC handle',
  `twitter` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Member''s twitter handle',
  `lastfm` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Member''s last.fm username',
  `wiki` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Member''s wiki username',
  `streetAddress` varchar(120) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Member''s postal address: Street Address',
  `locality` varchar(60) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Member''s postal address: Locality',
  `region` varchar(60) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Member''s postal address: Region',
  `postalCode` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Member''s postal address: Postal Code',
  `countryName` varchar(60) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Member''s postal address: Country',
  `dateJoined` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Member''s start date',
  `dateTerminated` timestamp NULL DEFAULT NULL COMMENT 'Member''s membership termination date',
  `status` enum('non-member','member','suspended','director','treasurer') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Member''s membership status',
  `notes` longtext COLLATE utf8_unicode_ci COMMENT 'Administrative notes',
  PRIMARY KEY (`memberNumber`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
