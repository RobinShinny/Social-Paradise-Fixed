-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql9.serv00.com
-- Generation Time: Aug 31, 2024 at 05:18 AM
-- Server version: 8.0.39
-- PHP Version: 8.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `m5866_social`
--

-- --------------------------------------------------------

--
-- Table structure for table `Ads`
--

CREATE TABLE `Ads` (
  `ID` int NOT NULL,
  `Image` longtext NOT NULL,
  `Link` longtext NOT NULL,
  `TimeRun` longtext NOT NULL,
  `Active` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Badges`
--

CREATE TABLE `Badges` (
  `UserID` int NOT NULL,
  `ID` int NOT NULL,
  `Position` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Banner`
--

CREATE TABLE `Banner` (
  `Text` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Banner`
--

INSERT INTO `Banner` (`Text`) VALUES
('');

-- --------------------------------------------------------

--
-- Table structure for table `BlogPosts`
--

CREATE TABLE `BlogPosts` (
  `ID` int NOT NULL,
  `Title` longtext NOT NULL,
  `Body` longtext NOT NULL,
  `Poster` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Configuration`
--

CREATE TABLE `Configuration` (
  `Register` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `MaintenanceType` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Configuration`
--

INSERT INTO `Configuration` (`Register`, `MaintenanceType`) VALUES
('true', 'Lockdown');

-- --------------------------------------------------------

--
-- Table structure for table `down`
--

CREATE TABLE `down` (
  `down` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `forumtags`
--

CREATE TABLE `forumtags` (
  `id` varchar(50) NOT NULL,
  `text` varchar(50) NOT NULL,
  `color` varchar(50) NOT NULL,
  `userid` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `FRs`
--

CREATE TABLE `FRs` (
  `ID` int NOT NULL,
  `SenderID` int NOT NULL,
  `ReceiveID` int NOT NULL,
  `Active` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `GroupAllies`
--

CREATE TABLE `GroupAllies` (
  `ID` int NOT NULL,
  `GroupID` int NOT NULL,
  `OtherGroupID` int NOT NULL,
  `Status` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `GroupEnemies`
--

CREATE TABLE `GroupEnemies` (
  `ID` int NOT NULL,
  `GroupID` int NOT NULL,
  `OtherGroupID` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `GroupMembers`
--

CREATE TABLE `GroupMembers` (
  `ID` int NOT NULL,
  `GroupID` int NOT NULL,
  `UserID` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Groups`
--

CREATE TABLE `Groups` (
  `ID` int NOT NULL,
  `Name` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `Description` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `OwnerID` int NOT NULL,
  `Logo` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `LogoActive` int NOT NULL DEFAULT '0',
  `GroupMembers` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `GroupsLogo`
--

CREATE TABLE `GroupsLogo` (
  `ID` int NOT NULL,
  `GroupID` int NOT NULL,
  `Logo` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `GroupsPending`
--

CREATE TABLE `GroupsPending` (
  `ID` int NOT NULL,
  `Name` longtext NOT NULL,
  `Description` longtext NOT NULL,
  `OwnerID` int NOT NULL,
  `Logo` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `GroupWall`
--

CREATE TABLE `GroupWall` (
  `ID` int NOT NULL,
  `GroupID` int NOT NULL,
  `PosterID` int NOT NULL,
  `Message` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Inventory`
--

CREATE TABLE `Inventory` (
  `ID` int NOT NULL,
  `UserID` int NOT NULL,
  `ItemID` int NOT NULL,
  `File` longtext NOT NULL,
  `Type` longtext NOT NULL,
  `code1` longtext NOT NULL,
  `code2` longtext NOT NULL,
  `SerialNum` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `IPBans`
--

CREATE TABLE `IPBans` (
  `IP` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `IPBans`
--

INSERT INTO `IPBans` (`IP`) VALUES
('');

-- --------------------------------------------------------

--
-- Table structure for table `ItemComments`
--

CREATE TABLE `ItemComments` (
  `ID` int NOT NULL,
  `UserID` int NOT NULL,
  `ItemID` int NOT NULL,
  `Post` longtext NOT NULL,
  `time` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ItemDrafts`
--

CREATE TABLE `ItemDrafts` (
  `ID` int NOT NULL,
  `Name` longtext NOT NULL,
  `File` longtext NOT NULL,
  `Type` longtext NOT NULL,
  `Price` longtext NOT NULL,
  `CreatorID` int NOT NULL,
  `saletype` varchar(1337) NOT NULL,
  `numbersales` int NOT NULL,
  `numberstock` int NOT NULL,
  `sell` varchar(1337) NOT NULL DEFAULT 'yes',
  `Description` longtext NOT NULL,
  `CreationTime` longtext NOT NULL,
  `store` varchar(1337) NOT NULL DEFAULT 'regular',
  `timemake` longtext NOT NULL,
  `itemDeleted` int NOT NULL,
  `SalePrices` int NOT NULL,
  `NumberSold` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Items`
--

CREATE TABLE `Items` (
  `ID` int NOT NULL,
  `Name` longtext NOT NULL,
  `File` longtext NOT NULL,
  `Type` longtext NOT NULL,
  `Price` longtext NOT NULL,
  `saletype` varchar(1337) NOT NULL,
  `numbersales` int NOT NULL,
  `numberstock` int NOT NULL,
  `sell` varchar(1337) NOT NULL DEFAULT 'yes',
  `Description` longtext NOT NULL,
  `CreationTime` longtext NOT NULL,
  `store` varchar(1337) NOT NULL DEFAULT 'regular',
  `timemake` longtext NOT NULL,
  `itemDeleted` int NOT NULL DEFAULT '0',
  `SalePrices` int NOT NULL DEFAULT '0',
  `NumberSold` int NOT NULL,
  `CreatorID` int NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Logs`
--

CREATE TABLE `Logs` (
  `ID` int NOT NULL,
  `UserID` int NOT NULL,
  `Message` longtext NOT NULL,
  `Page` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Maintenance`
--

CREATE TABLE `Maintenance` (
  `Status` longtext NOT NULL,
  `MaintenanceType` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Maintenance`
--

INSERT INTO `Maintenance` (`Status`, `MaintenanceType`) VALUES
('false', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `News`
--

CREATE TABLE `News` (
  `ID` int NOT NULL,
  `Username` longtext NOT NULL,
  `Title` longtext NOT NULL,
  `body` longtext NOT NULL,
  `PosterID` int NOT NULL,
  `Viewed` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `objectlist`
--

CREATE TABLE `objectlist` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `height` varchar(50) NOT NULL,
  `width` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `objectlist`
--

INSERT INTO `objectlist` (`id`, `name`, `image`, `height`, `width`) VALUES
(1, 'Brick', 'brick.png', '30', '30'),
(2, 'UA Flag', 'uaflag.png', '149', '108');

-- --------------------------------------------------------

--
-- Table structure for table `PMs`
--

CREATE TABLE `PMs` (
  `ID` int NOT NULL,
  `SenderID` int NOT NULL,
  `ReceiveID` int NOT NULL,
  `Title` longtext NOT NULL,
  `Body` longtext NOT NULL,
  `time` int NOT NULL,
  `LookMessage` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `PurchaseLog`
--

CREATE TABLE `PurchaseLog` (
  `ID` int NOT NULL,
  `UserID` int NOT NULL,
  `Item` longtext NOT NULL,
  `TypeStore` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Referrals`
--

CREATE TABLE `Referrals` (
  `ReferredID` int NOT NULL,
  `UserID` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Replies`
--

CREATE TABLE `Replies` (
  `ID` int NOT NULL,
  `Body` longtext NOT NULL,
  `PosterID` int NOT NULL,
  `tid` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Reports`
--

CREATE TABLE `Reports` (
  `ID` int NOT NULL,
  `Message` longtext NOT NULL,
  `OffenseID` longtext NOT NULL,
  `Link` longtext NOT NULL,
  `IP` longtext NOT NULL,
  `Content` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Sales`
--

CREATE TABLE `Sales` (
  `ID` int NOT NULL,
  `UserID` int NOT NULL,
  `Amount` int NOT NULL,
  `ItemID` int NOT NULL,
  `SerialNum` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Sales`
--

INSERT INTO `Sales` (`ID`, `UserID`, `Amount`, `ItemID`, `SerialNum`) VALUES
(2684, 3325, 2147483647, 2474, 4),
(2683, 3325, 2147483647, 2475, 3),
(2682, 3324, 666666666, 2474, 5),
(2679, 3325, 2147483647, 2473, 7),
(2678, 3325, 2147483647, 2456, 4),
(2677, 3325, 2147483647, 2453, 2),
(2676, 3325, 2147483647, 2447, 4),
(2675, 3325, 2147483647, 2472, 5),
(2674, 3325, 2147483647, 2450, 4),
(2673, 3320, 350000, 2447, 2),
(2672, 3320, 30000, 2459, 1),
(2671, 3320, 100000, 2458, 1),
(2687, 3360, 25000, 2483, 5),
(2688, 3373, 90, 2542, 5),
(2689, 3373, 600, 2536, 5),
(2703, 4, 13333337, 2605, 0),
(2720, 3382, 9999999, 2629, 1),
(2697, 3385, 300000, 2590, 3),
(2701, 3427, 10000, 2590, 0),
(2707, 3426, 5000, 2612, 5),
(2708, 3402, 5000, 2612, 2),
(2712, 3414, 5000, 2613, 3),
(2719, 3408, 5000, 2582, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Staff`
--

CREATE TABLE `Staff` (
  `Username` text NOT NULL,
  `Rank` int NOT NULL,
  `Job` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Threads`
--

CREATE TABLE `Threads` (
  `ID` int NOT NULL,
  `Title` longtext NOT NULL,
  `Body` longtext NOT NULL,
  `PosterID` int NOT NULL,
  `OriginalTitle` longtext NOT NULL,
  `OriginalBody` int NOT NULL,
  `Locked` int NOT NULL DEFAULT '0',
  `Type` varchar(1337) NOT NULL DEFAULT 'regular',
  `tid` int NOT NULL,
  `bump` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tools`
--

CREATE TABLE `tools` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tools`
--

INSERT INTO `tools` (`id`, `name`, `image`) VALUES
(1, 'Build Tool', 'build.png');

-- --------------------------------------------------------

--
-- Table structure for table `Topics`
--

CREATE TABLE `Topics` (
  `ID` int NOT NULL,
  `TopicName` longtext NOT NULL,
  `TopicDescription` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `TradeDrafts`
--

CREATE TABLE `TradeDrafts` (
  `ID` int NOT NULL,
  `SenderID` int NOT NULL,
  `ReceiveID` int NOT NULL,
  `GetID1` int NOT NULL,
  `GetID2` int NOT NULL,
  `GetID3` int NOT NULL,
  `GetID4` int NOT NULL,
  `GetID5` int NOT NULL,
  `LoseID1` int NOT NULL,
  `LoseID2` int NOT NULL,
  `LoseID3` int NOT NULL,
  `LoseID4` int NOT NULL,
  `LoseID5` int NOT NULL,
  `tradeExpire` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `TradeRequests`
--

CREATE TABLE `TradeRequests` (
  `ID` int NOT NULL,
  `SendorID` int NOT NULL,
  `RecieverID` int NOT NULL,
  `Status` int NOT NULL,
  `Bux` int NOT NULL,
  `RequestedItem` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `RequestedFile` int NOT NULL,
  `Gems` int NOT NULL,
  `Discount` int NOT NULL,
  `TradeFile` int NOT NULL,
  `TradeItem` int NOT NULL,
  `Read` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UserIPs`
--

CREATE TABLE `UserIPs` (
  `ID` int NOT NULL,
  `UserID` int NOT NULL,
  `IP` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `UserIPs`
--

INSERT INTO `UserIPs` (`ID`, `UserID`, `IP`) VALUES
(1, 1, '138.201.203.78');

-- --------------------------------------------------------

--
-- Table structure for table `UserItemComments`
--

CREATE TABLE `UserItemComments` (
  `ID` int NOT NULL,
  `UserID` int NOT NULL,
  `ItemID` int NOT NULL,
  `Post` longtext NOT NULL,
  `time` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `Username` longtext NOT NULL,
  `Password` longtext NOT NULL,
  `ID` int NOT NULL,
  `Rank` int NOT NULL DEFAULT '0',
  `PowerAdmin` varchar(1337) NOT NULL DEFAULT 'false',
  `Description` varchar(20000) NOT NULL DEFAULT 'none',
  `Email` longtext NOT NULL,
  `IP` longtext NOT NULL,
  `visitTick` longtext NOT NULL,
  `expireTime` longtext NOT NULL,
  `PowerGame` varchar(1337) NOT NULL DEFAULT 'false',
  `PowerImageModerator` varchar(1337) NOT NULL DEFAULT 'false',
  `PowerForumModerator` varchar(1337) NOT NULL DEFAULT 'false',
  `PowerArtist` varchar(1337) NOT NULL DEFAULT 'false',
  `PowerMegaModerator` varchar(1337) NOT NULL DEFAULT 'false',
  `OriginalName` longtext NOT NULL,
  `Eyes` varchar(1337) NOT NULL,
  `Mouth` varchar(1337) NOT NULL,
  `Hair` varchar(1337) NOT NULL,
  `Bottom` varchar(1337) NOT NULL,
  `Top` varchar(1337) NOT NULL,
  `Hat` varchar(1337) NOT NULL,
  `Shoes` varchar(1337) NOT NULL,
  `Accessory` varchar(1337) NOT NULL,
  `forumflood` longtext NOT NULL,
  `Bux` varchar(1337) NOT NULL DEFAULT '15',
  `Rubies` varchar(1337) NOT NULL DEFAULT '10',
  `Background` longtext NOT NULL,
  `Body` varchar(1337) NOT NULL DEFAULT 'Avatar.png',
  `Ban` int NOT NULL DEFAULT '0',
  `BanType` longtext NOT NULL,
  `BanTime` longtext NOT NULL,
  `BanDescription` longtext NOT NULL,
  `BanLength` longtext NOT NULL,
  `Hash` longtext NOT NULL,
  `SuccessReferrer` int NOT NULL DEFAULT '0',
  `Premium` int NOT NULL DEFAULT '0',
  `PremiumExpire` longtext NOT NULL,
  `isTester` int NOT NULL DEFAULT '0',
  `pviews` int NOT NULL DEFAULT '0',
  `BanContent` longtext NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT '0',
  `PowerTop` varchar(1337) NOT NULL DEFAULT '0',
  `vipStart` varchar(1000) NOT NULL DEFAULT '0',
  `vipEnd` varchar(100) NOT NULL DEFAULT '0',
  `vipsubscrid` varchar(50) NOT NULL DEFAULT '0',
  `adminID` varchar(3) NOT NULL DEFAULT '0',
  `room` varchar(50) NOT NULL,
  `myroomID` varchar(250) NOT NULL,
  `myroomIMG` varchar(250) NOT NULL DEFAULT 'templates/default/background.jpg	',
  `roomaccess` varchar(3) NOT NULL DEFAULT '1',
  `roomname` varchar(32) NOT NULL,
  `roommax` varchar(4) NOT NULL DEFAULT '5',
  `roomMaxStart` varchar(100) NOT NULL DEFAULT '0',
  `roomMaxEnd` varchar(100) NOT NULL DEFAULT '0',
  `roommaxsubscrid` varchar(20) NOT NULL DEFAULT '0',
  `startX` varchar(3) NOT NULL DEFAULT '100',
  `startY` varchar(3) NOT NULL DEFAULT '180',
  `music` varchar(255) NOT NULL DEFAULT 'music/index.php',
  `avatar` varchar(1000) NOT NULL,
  `avatara` varchar(250) NOT NULL,
  `avatarb` varchar(250) NOT NULL,
  `avatarc` varchar(250) NOT NULL,
  `avatar_x` varchar(10) NOT NULL,
  `avatar_y` varchar(10) NOT NULL,
  `online_time` varchar(50) NOT NULL,
  `photo` varchar(255) NOT NULL DEFAULT 'nopic.jpg',
  `WallFlood` int NOT NULL,
  `MainGroupID` int NOT NULL,
  `userx` int NOT NULL DEFAULT '5',
  `usery` int NOT NULL DEFAULT '5',
  `gameid` int NOT NULL,
  `CommentFlood` int NOT NULL,
  `getBux` int NOT NULL,
  `ingamenum` varchar(5) NOT NULL,
  `chatid` varchar(50) NOT NULL,
  `chatstatus` varchar(50) NOT NULL,
  `ingame` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`Username`, `Password`, `ID`, `Rank`, `PowerAdmin`, `Description`, `Email`, `IP`, `visitTick`, `expireTime`, `PowerGame`, `PowerImageModerator`, `PowerForumModerator`, `PowerArtist`, `PowerMegaModerator`, `OriginalName`, `Eyes`, `Mouth`, `Hair`, `Bottom`, `Top`, `Hat`, `Shoes`, `Accessory`, `forumflood`, `Bux`, `Rubies`, `Background`, `Body`, `Ban`, `BanType`, `BanTime`, `BanDescription`, `BanLength`, `Hash`, `SuccessReferrer`, `Premium`, `PremiumExpire`, `isTester`, `pviews`, `BanContent`, `status`, `PowerTop`, `vipStart`, `vipEnd`, `vipsubscrid`, `adminID`, `room`, `myroomID`, `myroomIMG`, `roomaccess`, `roomname`, `roommax`, `roomMaxStart`, `roomMaxEnd`, `roommaxsubscrid`, `startX`, `startY`, `music`, `avatar`, `avatara`, `avatarb`, `avatarc`, `avatar_x`, `avatar_y`, `online_time`, `photo`, `WallFlood`, `MainGroupID`, `userx`, `usery`, `gameid`, `CommentFlood`, `getBux`, `ingamenum`, `chatid`, `chatstatus`, `ingame`) VALUES
('robin', '$2y$10$NdBhVnTM9eBlOCqqvOFeKuExxg/vMojD1tVa6bw4tbO/3XEB/7y52', 1, 0, 'true', 'none', 'robinkamdems@gmail.com', '138.201.203.78', '1725074276', '2024-08-30 22:17:56', 'false', 'false', 'false', 'false', 'false', '', '', '', '', '', '', '', '', '', '', '115', '10', '', 'Avatar.png', 0, '', '', '', '', '5f54a4e454b41fc5503fe727fc3859b9', 0, 0, '', 0, 0, '', '0', '0', '0', '0', '0', '0', '', '', 'templates/default/background.jpg	', '1', '', '5', '0', '0', '0', '100', '180', 'music/index.php', '', '', '', '', '', '', '', 'nopic.jpg', 0, 0, 5, 5, 0, 0, 1725160526, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `UserStore`
--

CREATE TABLE `UserStore` (
  `ID` int NOT NULL,
  `Name` longtext NOT NULL,
  `File` longtext NOT NULL,
  `Type` longtext NOT NULL,
  `Price` int NOT NULL,
  `CreatorID` int NOT NULL,
  `saletype` varchar(1337) NOT NULL DEFAULT 'regular',
  `numbersales` varchar(50) NOT NULL DEFAULT 'regular',
  `numberstock` varchar(50) NOT NULL DEFAULT 'regular',
  `sell` varchar(50) NOT NULL DEFAULT 'yes',
  `ns` varchar(100) NOT NULL DEFAULT '0',
  `active` int NOT NULL DEFAULT '0',
  `code1` longtext NOT NULL,
  `code2` longtext NOT NULL,
  `Description` longtext NOT NULL,
  `CreationTime` longtext NOT NULL,
  `store` varchar(1337) NOT NULL DEFAULT 'user',
  `itemDeleted` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Wall`
--

CREATE TABLE `Wall` (
  `ID` int NOT NULL,
  `PosterID` int NOT NULL,
  `Body` longtext NOT NULL,
  `time` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Ads`
--
ALTER TABLE `Ads`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Badges`
--
ALTER TABLE `Badges`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `BlogPosts`
--
ALTER TABLE `BlogPosts`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `FRs`
--
ALTER TABLE `FRs`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `GroupAllies`
--
ALTER TABLE `GroupAllies`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `GroupEnemies`
--
ALTER TABLE `GroupEnemies`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `GroupMembers`
--
ALTER TABLE `GroupMembers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `GroupsLogo`
--
ALTER TABLE `GroupsLogo`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `GroupsPending`
--
ALTER TABLE `GroupsPending`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `GroupWall`
--
ALTER TABLE `GroupWall`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Inventory`
--
ALTER TABLE `Inventory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ItemComments`
--
ALTER TABLE `ItemComments`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ItemDrafts`
--
ALTER TABLE `ItemDrafts`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Items`
--
ALTER TABLE `Items`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Logs`
--
ALTER TABLE `Logs`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `News`
--
ALTER TABLE `News`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `objectlist`
--
ALTER TABLE `objectlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `PMs`
--
ALTER TABLE `PMs`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `PurchaseLog`
--
ALTER TABLE `PurchaseLog`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Replies`
--
ALTER TABLE `Replies`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Reports`
--
ALTER TABLE `Reports`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Sales`
--
ALTER TABLE `Sales`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Staff`
--
ALTER TABLE `Staff`
  ADD PRIMARY KEY (`Rank`);

--
-- Indexes for table `Threads`
--
ALTER TABLE `Threads`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tools`
--
ALTER TABLE `tools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Topics`
--
ALTER TABLE `Topics`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `TradeDrafts`
--
ALTER TABLE `TradeDrafts`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `TradeRequests`
--
ALTER TABLE `TradeRequests`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `UserIPs`
--
ALTER TABLE `UserIPs`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `UserItemComments`
--
ALTER TABLE `UserItemComments`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `UserStore`
--
ALTER TABLE `UserStore`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Wall`
--
ALTER TABLE `Wall`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Ads`
--
ALTER TABLE `Ads`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Badges`
--
ALTER TABLE `Badges`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `BlogPosts`
--
ALTER TABLE `BlogPosts`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `FRs`
--
ALTER TABLE `FRs`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `GroupAllies`
--
ALTER TABLE `GroupAllies`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `GroupEnemies`
--
ALTER TABLE `GroupEnemies`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `GroupMembers`
--
ALTER TABLE `GroupMembers`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `GroupsLogo`
--
ALTER TABLE `GroupsLogo`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `GroupsPending`
--
ALTER TABLE `GroupsPending`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `GroupWall`
--
ALTER TABLE `GroupWall`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Inventory`
--
ALTER TABLE `Inventory`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ItemComments`
--
ALTER TABLE `ItemComments`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ItemDrafts`
--
ALTER TABLE `ItemDrafts`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1591;

--
-- AUTO_INCREMENT for table `Items`
--
ALTER TABLE `Items`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Logs`
--
ALTER TABLE `Logs`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `News`
--
ALTER TABLE `News`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `objectlist`
--
ALTER TABLE `objectlist`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `PMs`
--
ALTER TABLE `PMs`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `PurchaseLog`
--
ALTER TABLE `PurchaseLog`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Replies`
--
ALTER TABLE `Replies`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Reports`
--
ALTER TABLE `Reports`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `Sales`
--
ALTER TABLE `Sales`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2721;

--
-- AUTO_INCREMENT for table `Staff`
--
ALTER TABLE `Staff`
  MODIFY `Rank` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Threads`
--
ALTER TABLE `Threads`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tools`
--
ALTER TABLE `tools`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Topics`
--
ALTER TABLE `Topics`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `TradeDrafts`
--
ALTER TABLE `TradeDrafts`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `TradeRequests`
--
ALTER TABLE `TradeRequests`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `UserIPs`
--
ALTER TABLE `UserIPs`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `UserItemComments`
--
ALTER TABLE `UserItemComments`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `UserStore`
--
ALTER TABLE `UserStore`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Wall`
--
ALTER TABLE `Wall`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
