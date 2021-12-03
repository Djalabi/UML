-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 03 déc. 2021 à 12:36
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `cuisine`
--

-- --------------------------------------------------------

--
-- Structure de la table `ingredients`
--

CREATE TABLE `ingredients` (
  `id` int(11) NOT NULL,
  `nom` varchar(25) NOT NULL,
  `description` varchar(30) NOT NULL,
  `duree_preparation` varchar(10) NOT NULL,
  `duree_cuisson` varchar(10) NOT NULL,
  `nombre_parts` int(15) NOT NULL,
  `niveau_difficulte` varchar(15) NOT NULL,
  `nombre_calorie` int(15) NOT NULL,
  `type_ingredient` varchar(30) NOT NULL,
  `forme_de_stockage` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `ingredients`
--

INSERT INTO `ingredients` (`id`, `nom`, `description`, `duree_preparation`, `duree_cuisson`, `nombre_parts`, `niveau_difficulte`, `nombre_calorie`, `type_ingredient`, `forme_de_stockage`) VALUES
(1, 'daraba', 'layouk', '2h', '1h', 10, 'moyen', 1, 'legume', 'emballage de 1k'),
(2, 'karkandji', 'akhadar', '1h30', '1h', 25, 'moyen', 2, 'legume', 'emballage par g'),
(3, 'charmoute', 'laham yabisse', '1h', '30min', 5, 'facile', 0, 'laham', 'emballage'),
(4, 'pomme de terre', 'dourdoume', '30min', '15min', 14, 'facile', 24, 'tubercule', 'seule'),
(5, 'igname', 'dourdoumé', '2h', '1h30', 23, 'moyen', 17, 'tubercule', 'seule'),
(6, 'angara', 'amar', '20min', '10min', 14, 'facile', 2, 'hamate', 'emballage'),
(7, 'gingambre', 'dourdoumé', '1h', '30min', 23, 'facile', 43, 'har', 'kebès'),
(8, 'salade', 'akhadar', '7min', '5min', 5, 'facile', 5, 'amuse guele', 'dans le frigo'),
(9, 'djirdjir', 'akhadar', '5min', '2min', 50, 'facile', 30, 'fruit', 'dans le frigo'),
(10, 'tamatime', 'dourdoumé', '15min', '10min', 35, 'facile', 1, 'tubercule', 'seule seule');

-- --------------------------------------------------------

--
-- Structure de la table `lieu_de_stockage`
--

CREATE TABLE `lieu_de_stockage` (
  `id` int(11) DEFAULT NULL,
  `lieu_stockage` varchar(30) NOT NULL,
  `rangement` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `recettes`
--

CREATE TABLE `recettes` (
  `id` int(11) DEFAULT NULL,
  `nombre_recettes` varchar(20) NOT NULL,
  `quantite_ingredient` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
