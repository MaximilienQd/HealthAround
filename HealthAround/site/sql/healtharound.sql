-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 23, 2023 at 09:03 AM
-- Server version: 5.6.38
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `healtharound`
--

-- --------------------------------------------------------

--
-- Table structure for table `Capteur`
--

CREATE TABLE `Capteur` (
  `idCapteur` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `idPersonne` int(11) NOT NULL,
  `idSeuil` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Communiquer`
--

CREATE TABLE `Communiquer` (
  `idCommuniquer` int(11) NOT NULL,
  `idAdministrateur` int(11) NOT NULL,
  `idUtilisateur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Date`
--

CREATE TABLE `Date` (
  `idDate` int(11) NOT NULL,
  `jour` date NOT NULL,
  `heure` time NOT NULL,
  `idCapteur` int(11) NOT NULL,
  `idMesure` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Envoyer`
--

CREATE TABLE `Envoyer` (
  `idEnvoyer` int(11) NOT NULL,
  `idPersonne` int(11) NOT NULL,
  `idMessage` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Mesure`
--

CREATE TABLE `Mesure` (
  `idMesure` int(11) NOT NULL,
  `données` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Personne`
--

CREATE TABLE `Personne` (
  `idPersonne` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Personne`
--

INSERT INTO `Personne` (`idPersonne`, `nom`, `prenom`, `email`, `mdp`) VALUES
(1, 'jj', 'ja', 'ja@gmail.com', '123'),
(2, 'solomon', 'jennifer', 'sj@gmail.com', '3333');

-- --------------------------------------------------------

--
-- Table structure for table `Quest_rep`
--

CREATE TABLE `Quest_rep` (
  `idMessage` int(11) NOT NULL,
  `objet` varchar(100) NOT NULL,
  `texte` text NOT NULL,
  `date_heure` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Recevoir`
--

CREATE TABLE `Recevoir` (
  `idRecevoir` int(11) NOT NULL,
  `idPersonne` int(11) NOT NULL,
  `idMessage` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Seuil`
--

CREATE TABLE `Seuil` (
  `idSeuil` int(11) NOT NULL,
  `valeur` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Capteur`
--
ALTER TABLE `Capteur`
  ADD PRIMARY KEY (`idCapteur`);

--
-- Indexes for table `Communiquer`
--
ALTER TABLE `Communiquer`
  ADD PRIMARY KEY (`idCommuniquer`);

--
-- Indexes for table `Date`
--
ALTER TABLE `Date`
  ADD PRIMARY KEY (`idDate`);

--
-- Indexes for table `Envoyer`
--
ALTER TABLE `Envoyer`
  ADD PRIMARY KEY (`idEnvoyer`);

--
-- Indexes for table `Mesure`
--
ALTER TABLE `Mesure`
  ADD PRIMARY KEY (`idMesure`);

--
-- Indexes for table `Personne`
--
ALTER TABLE `Personne`
  ADD PRIMARY KEY (`idPersonne`);

--
-- Indexes for table `Quest_rep`
--
ALTER TABLE `Quest_rep`
  ADD PRIMARY KEY (`idMessage`);

--
-- Indexes for table `Recevoir`
--
ALTER TABLE `Recevoir`
  ADD PRIMARY KEY (`idRecevoir`);

--
-- Indexes for table `Seuil`
--
ALTER TABLE `Seuil`
  ADD PRIMARY KEY (`idSeuil`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Capteur`
--
ALTER TABLE `Capteur`
  MODIFY `idCapteur` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Communiquer`
--
ALTER TABLE `Communiquer`
  MODIFY `idCommuniquer` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Date`
--
ALTER TABLE `Date`
  MODIFY `idDate` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Envoyer`
--
ALTER TABLE `Envoyer`
  MODIFY `idEnvoyer` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Mesure`
--
ALTER TABLE `Mesure`
  MODIFY `idMesure` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Personne`
--
ALTER TABLE `Personne`
  MODIFY `idPersonne` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Quest_rep`
--
ALTER TABLE `Quest_rep`
  MODIFY `idMessage` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Recevoir`
--
ALTER TABLE `Recevoir`
  MODIFY `idRecevoir` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Seuil`
--
ALTER TABLE `Seuil`
  MODIFY `idSeuil` int(11) NOT NULL AUTO_INCREMENT;
