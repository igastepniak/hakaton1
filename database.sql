
	n SQL Dump
-- version 3.3.7deb7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 27, 2013 at 06:22 PM
-- Server version: 5.1.66
-- PHP Version: 5.3.3-7+squeeze15

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hakaton1`
--

-- --------------------------------------------------------

--
-- Table structure for table `memes`
--

CREATE TABLE IF NOT EXISTS `memes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` text NOT NULL,
  `meme_text` text NOT NULL,
  `template_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `template_id` (`template_id`),
  KEY `template_id_2` (`template_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `memes`
--

INSERT INTO `memes` (`id`, `link`, `meme_text`, `template_id`) VALUES
(1, 'http://cdn.memegenerator.net/instances/400x/36728521.jpg', 'isi lectures are too mainstream', 1),
(2, 'http://cdn.memegenerator.net/instances/400x/36728483.jpg', 'i code in scala', 1),
(3, 'http://cdn.memegenerator.net/instances/400x/36728650.jpg', 'have you heard that hackathon ends tomorrow', 2),
(4, 'http://cdn.memegenerator.net/instances/400x/36729867.jpg', 'isi project? better go for a beer', 3);

-- --------------------------------------------------------

--
-- Table structure for table `mtemplates`
--

CREATE TABLE IF NOT EXISTS `mtemplates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `filename` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `mtemplates`
--

INSERT INTO `mtemplates` (`id`, `name`, `filename`) VALUES
(1, 'Hipster Kitty', 'hipster-kitty.jpg'),
(2, 'Slowpoke', 'Slowpoke.jpg'),
(3, 'Lazy College Senior', 'Lazy-College-Senior.jpg');
