-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  ven. 28 juin 2019 à 16:49
-- Version du serveur :  5.7.24-log
-- Version de PHP :  7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `superheroes`
--

-- --------------------------------------------------------

--
-- Structure de la table `intro`
--

CREATE TABLE `intro` (
  `id` int(3) NOT NULL,
  `name` varchar(256) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `intro`
--

INSERT INTO `intro` (`id`, `name`, `content`) VALUES
(1, 'welcome', 'lorem kndvds kd kfjdsklfjd  dflkdjfkdjfkd kdjfkjdkf djfkd kfjdklfjk dfjdkfjdkljfqmpsdc;x,cxlwkls clslckslm csdsdsd');

-- --------------------------------------------------------

--
-- Structure de la table `stanlee`
--

CREATE TABLE `stanlee` (
  `id` int(3) NOT NULL,
  `name` varchar(256) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `stanlee`
--

INSERT INTO `stanlee` (`id`, `name`, `content`) VALUES
(1, 'chapter1', 'Stanley Lieber, dit Stan Lee, né le 28 décembre 1922 à New York et mort le 12 novembre 2018 à Los Angeles, est un scénariste américain et éditeur de comics.');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `intro`
--
ALTER TABLE `intro`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `stanlee`
--
ALTER TABLE `stanlee`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `intro`
--
ALTER TABLE `intro`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `stanlee`
--
ALTER TABLE `stanlee`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
