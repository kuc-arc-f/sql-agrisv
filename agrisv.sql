-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- ホスト: localhost
-- 生成時間: 2015 年 3 月 28 日 00:02
-- サーバのバージョン: 5.5.16
-- PHP のバージョン: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- データベース: `agrisv`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `m_sv`
--

CREATE TABLE IF NOT EXISTS `m_sv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sv_name` text,
  `biko` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- テーブルの構造 `m_sv_mc`
--

CREATE TABLE IF NOT EXISTS `m_sv_mc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sv_id` int(11) DEFAULT NULL,
  `mc_id` int(11) DEFAULT NULL,
  `mc_name` text,
  `moi_num` int(11) DEFAULT NULL,
  `kai_num_1` int(11) DEFAULT NULL,
  `vnum_1` int(11) DEFAULT NULL,
  `kai_num_2` int(11) DEFAULT NULL,
  `vnum_2` int(11) DEFAULT NULL,
  `kai_num_3` int(11) DEFAULT NULL,
  `vnum_3` int(11) DEFAULT NULL,
  `kai_num_4` int(11) DEFAULT NULL,
  `vnum_4` int(11) DEFAULT NULL,
  `kai_num_5` int(11) DEFAULT NULL,
  `vnum_5` int(11) DEFAULT NULL,
  `ck_num` int(4) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- テーブルの構造 `m_user`
--

CREATE TABLE IF NOT EXISTS `m_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` text,
  `s_pass` text,
  `s_mail` text,
  `biko` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

-- --------------------------------------------------------

--
-- テーブルの構造 `t_mlogs`
--

CREATE TABLE IF NOT EXISTS `t_mlogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mc_id` int(11) DEFAULT NULL,
  `txt_log` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- テーブルの構造 `t_sv_sensor`
--

CREATE TABLE IF NOT EXISTS `t_sv_sensor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sv_id` int(11) DEFAULT NULL,
  `tr_id` int(11) DEFAULT NULL,
  `mc_id` int(11) DEFAULT NULL,
  `vnum` int(2) DEFAULT '0',
  `snum` int(11) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- テーブルの構造 `t_sv_valve`
--

CREATE TABLE IF NOT EXISTS `t_sv_valve` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sv_id` int(11) DEFAULT '0',
  `tr_id` int(11) DEFAULT '0',
  `mc_id` int(11) DEFAULT NULL,
  `vnum` int(2) DEFAULT '0',
  `k_flg` int(1) DEFAULT '0',
  `k_kbn` int(1) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- テーブルの構造 `wk_mcs`
--

CREATE TABLE IF NOT EXISTS `wk_mcs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sv_id` int(11) DEFAULT NULL,
  `mc_id` int(11) DEFAULT NULL,
  `mc_name` text,
  `moi_num` int(11) DEFAULT NULL,
  `kai_num_1` int(11) DEFAULT NULL,
  `vnum_1` int(11) DEFAULT NULL,
  `kai_num_2` int(11) DEFAULT NULL,
  `vnum_2` int(11) DEFAULT NULL,
  `kai_num_3` int(11) DEFAULT NULL,
  `vnum_3` int(11) DEFAULT NULL,
  `kai_num_4` int(11) DEFAULT NULL,
  `vnum_4` int(11) DEFAULT NULL,
  `kai_num_5` int(11) DEFAULT NULL,
  `vnum_5` int(11) DEFAULT NULL,
  `ck_num` int(4) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- テーブルの構造 `wk_sensors`
--

CREATE TABLE IF NOT EXISTS `wk_sensors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sv_id` int(11) NOT NULL,
  `tr_id` int(11) NOT NULL,
  `mc_id` int(11) DEFAULT NULL,
  `vnum` int(2) DEFAULT '0',
  `snum` int(11) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- テーブルの構造 `wk_vitems`
--

CREATE TABLE IF NOT EXISTS `wk_vitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sv_id` int(11) NOT NULL,
  `tr_id` int(11) NOT NULL,
  `mc_id` int(11) DEFAULT NULL,
  `vnum` int(2) DEFAULT '0',
  `k_flg` int(1) DEFAULT '0',
  `k_kbn` int(1) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
