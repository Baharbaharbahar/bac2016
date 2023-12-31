-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 27 déc. 2023 à 18:00
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bdbac2016`
--

-- --------------------------------------------------------

--
-- Structure de la table `piece`
--

CREATE TABLE `piece` (
  `idpiece` int(11) NOT NULL,
  `titre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `piece`
--

INSERT INTO `piece` (`idpiece`, `titre`) VALUES
(1, 'le tresor'),
(2, 'le peche du succes'),
(3, 'le gardien'),
(4, 'les soldats de la lune'),
(5, 'l\'eternel retour');

-- --------------------------------------------------------

--
-- Structure de la table `salle`
--

CREATE TABLE `salle` (
  `idsalle` varchar(2) NOT NULL,
  `libelle` varchar(30) NOT NULL,
  `adresse` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `salle`
--

INSERT INTO `salle` (`idsalle`, `libelle`, `adresse`) VALUES
('EA', 'espace artisto', '3,rue de damas le belvedere -tunis'),
('EN', 'l\'etoile du nord', '41,avenue farhat hached-tunis'),
('QA', 'quatrieme art', '7,avenue de paris-tunis'),
('TM', 'theatre municipal', '2,rue de grece-tunis');

-- --------------------------------------------------------

--
-- Structure de la table `sppectacle`
--

CREATE TABLE `sppectacle` (
  `idpiece` int(11) NOT NULL,
  `datespectacle` date NOT NULL,
  `idsalle` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `piece`
--
ALTER TABLE `piece`
  ADD PRIMARY KEY (`idpiece`);

--
-- Index pour la table `salle`
--
ALTER TABLE `salle`
  ADD PRIMARY KEY (`idsalle`);

--
-- Index pour la table `sppectacle`
--
ALTER TABLE `sppectacle`
  ADD PRIMARY KEY (`idpiece`,`datespectacle`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
