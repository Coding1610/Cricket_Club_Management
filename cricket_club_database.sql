SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `cricket_club_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `clubs`
--

CREATE TABLE `clubs` (
  `clubID` int(10) UNSIGNED NOT NULL,
  `club_name` varchar(30) NOT NULL,
  `president` varchar(30) DEFAULT NULL,
  `date_established` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `events_organised`
--

CREATE TABLE `events_organised` (
  `eventID` int(10) NOT NULL,
  `eventName` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `matches`
--

CREATE TABLE `matches` (
  `matchID` int(15) NOT NULL,
  `eventID` int(15) NOT NULL,
  `date_of_match` date DEFAULT NULL,
  `team_batting_first` varchar(30) DEFAULT NULL,
  `team_bowling_first` varchar(30) DEFAULT NULL,
  `man_of_the_match` varchar(30) DEFAULT NULL,
  `venue` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `playerID` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `registration_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `player_history`
--

CREATE TABLE `player_history` (
  `club_name` varchar(30) NOT NULL,
  `total_runs` int(7) NOT NULL,
  `total_wickets` int(5) NOT NULL,
  `team_leader` char(1) NOT NULL,
  `playerID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `clubID` int(10) NOT NULL,
  `formation_date` date DEFAULT NULL,
  `eventID` int(10) NOT NULL,
  `team_leaderID` int(10) NOT NULL,
  `coachID` int(10) NOT NULL,
  `coach_name` varchar(50) NOT NULL,
  `teamID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `team_playerlist`
--

CREATE TABLE `team_playerlist` (
  `teamID` int(10) NOT NULL,
  `playerID` int(10) NOT NULL,
  `player_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clubs`
--
ALTER TABLE `clubs`
  ADD PRIMARY KEY (`clubID`);

--
-- Indexes for table `events_organised`
--
ALTER TABLE `events_organised`
  ADD PRIMARY KEY (`eventID`);

--
-- Indexes for table `matches`
--
ALTER TABLE `matches`
  ADD PRIMARY KEY (`matchID`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`playerID`);

--
-- Indexes for table `player_history`
--
ALTER TABLE `player_history`
  ADD KEY `playerID` (`playerID`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`teamID`);

--
-- Indexes for table `team_playerlist`
--
ALTER TABLE `team_playerlist`
  ADD KEY `teamID` (`teamID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clubs`
--
ALTER TABLE `clubs`
  MODIFY `clubID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `playerID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `teamID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

-- /*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
-- /*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
-- /*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;