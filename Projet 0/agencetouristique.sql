-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 02 déc. 2021 à 15:05
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
-- Base de données : `agencetouristique`
--

-- --------------------------------------------------------

--
-- Structure de la table `chauffeur`
--

CREATE TABLE `chauffeur` (
  `ID` int(11) NOT NULL,
  `Nom` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `chauffeur`
--

INSERT INTO `chauffeur` (`ID`, `Nom`) VALUES
(1, 'Tahir Mahamat'),
(2, 'Ahmat Oumar'),
(3, 'Abdallah Khalid'),
(4, 'Nassir Ali'),
(5, 'Moctar Ahmat'),
(6, 'Cendrillon Bekas'),
(7, 'Fouba Elvice'),
(8, 'Modeste Modestine'),
(9, 'Abakar Hissein'),
(10, 'Hassane Tahir');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `ID` int(11) NOT NULL,
  `Nom` varchar(150) NOT NULL,
  `Nationalite` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`ID`, `Nom`, `Nationalite`, `Email`) VALUES
(1, 'Hisseine Hassane', 'Tchadienne', 'hisseine125@gmail.com'),
(2, 'Djalabi Mahamat', 'Tchadienne', 'djalabi.mahamat@yahoo.com'),
(3, 'Kouloum Bazzare', 'dombossien', 'goola@set.do'),
(4, 'Oumar Ali', 'Tchadienne', 'oumaralitori@gmail.com'),
(5, 'Clotilde Nadjinan', 'Tchadienne', 'clotildenadjinan@gmail.com'),
(6, 'Guillaume Mbaitelsem', 'Tchadienne', 'guillaume12@gmail.com'),
(7, 'Abakar Mahamat', 'Tchadienne', 'abakarmht@gmail.com'),
(8, 'Roneliam Sonia', 'Tchadienne', 'soniaronel@yahoo.com'),
(9, 'Kevin Mogota', 'Tchadienne', 'kevmogota@gmail.com'),
(10, 'Mariam Mahamat', 'Tchadienne', 'mariammht@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `compagnie transport`
--

CREATE TABLE `compagnie transport` (
  `ID` int(11) NOT NULL,
  `Nom` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `compagnie transport`
--

INSERT INTO `compagnie transport` (`ID`, `Nom`) VALUES
(1, 'Maria Airlines'),
(2, 'Tchadia'),
(3, 'Hassania'),
(4, 'Rapid Transport'),
(5, 'Cloclo Transport'),
(6, 'Royal'),
(7, 'Djalabia Airlines'),
(8, 'Makwiya Airlines'),
(9, 'Libre Transport'),
(10, 'Tchad Transport');

-- --------------------------------------------------------

--
-- Structure de la table `destination`
--

CREATE TABLE `destination` (
  `ID` int(11) NOT NULL,
  `pays` varchar(150) NOT NULL,
  `ville` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `destination`
--

INSERT INTO `destination` (`ID`, `pays`, `ville`) VALUES
(1, 'Tchad', 'BET'),
(2, 'Tchad', 'Guéra'),
(3, 'Tchad', 'Lac Tchad'),
(4, 'Sénegal', 'Dakar'),
(5, 'Tchad', 'N\'Djaména'),
(6, 'Sénégal', 'Ile de Gorée'),
(7, 'Cameroun', 'Douala'),
(8, 'Cameroun', 'Maroua'),
(9, 'Cameroun', 'Garoua'),
(10, 'Egypte', 'Le Caire');

-- --------------------------------------------------------

--
-- Structure de la table `facture`
--

CREATE TABLE `facture` (
  `ID` int(11) NOT NULL,
  `Designation` varchar(150) NOT NULL,
  `Quantite` int(11) NOT NULL,
  `prix unitaire` int(11) NOT NULL,
  `prix total` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `facture`
--

INSERT INTO `facture` (`ID`, `Designation`, `Quantite`, `prix unitaire`, `prix total`, `total`) VALUES
(1, 'Billet d\'avion aller-retour ', 1, 1348000, 1348000, 1506000),
(2, 'Ticket N\'Djam-BET', 10, 25000, 250000, 268000),
(3, 'Ticket BET-N\'djam', 12, 25000, 300000, 342000),
(4, 'Billet Maroua-Guéra', 3, 700000, 2100000, 2320000),
(5, 'Billet Guéra-Maroua', 7000000, 3, 2100000, 2320000),
(6, 'Ticket Lac TD- Guéra', 5, 32000, 160000, 174000),
(7, 'Ticket Ile G- N\'Djam', 2, 1000000, 2000000, 218000),
(8, 'Ticket Ile G- N\'Djam', 2, 1000000, 2000000, 2180000),
(9, 'Ticket Ile G- N\'Djam', 2, 1000000, 2000000, 2180000),
(10, 'Ticket Ile G- N\'Djam', 5, 1000000, 5000000, 5275000);

-- --------------------------------------------------------

--
-- Structure de la table `guide`
--

CREATE TABLE `guide` (
  `ID` int(11) NOT NULL,
  `Nom` varchar(150) NOT NULL,
  `specialite` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `hotel`
--

CREATE TABLE `hotel` (
  `ID` int(11) NOT NULL,
  `Libelle` varchar(150) NOT NULL,
  `caracteristique` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `hotel`
--

INSERT INTO `hotel` (`ID`, `Libelle`, `caracteristique`) VALUES
(1, 'RAsisson Blue', '4 étoiles'),
(2, 'Ibis', '3 étoiles'),
(3, 'Chez Wou', '3 étoiles'),
(4, 'le Chari', '2 étoile'),
(5, 'Sherabelle', '2 étoile'),
(6, 'Ledger Plaza', '3 étoiles'),
(7, 'La Ganzou', '2 étoile'),
(8, 'Toumai Palace', '3 étoiles'),
(9, 'Le Meridien', '2 étoile'),
(10, 'TGV palace', '2 étoiles');

-- --------------------------------------------------------

--
-- Structure de la table `itineraire`
--

CREATE TABLE `itineraire` (
  `ID` int(11) NOT NULL,
  `Libelle` varchar(150) NOT NULL,
  `caracteristique` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `itineraire`
--

INSERT INTO `itineraire` (`ID`, `Libelle`, `caracteristique`) VALUES
(1, 'BET-N\'DJAMENA', 'Transport terrestre'),
(2, 'Maroua- N\'djaména', 'Transport aérien'),
(3, 'N\'djaména-Dakar', 'Transport aérien'),
(4, 'Douala-Guéra', 'Transport aérien'),
(5, 'Douala-Lac Tchad', 'Transport aérien'),
(6, 'Ile de Gorée-Dakar', 'Transport Maritime'),
(7, 'Dakar-Douala', 'Transport aérien'),
(8, 'Guéra-Lac Tchad', 'Transport terrestre'),
(9, 'Dakar-BET', 'Transport aérien'),
(10, 'N\'djaména- BET', 'Transport terrestre');

-- --------------------------------------------------------

--
-- Structure de la table `moyen transport`
--

CREATE TABLE `moyen transport` (
  `ID` int(11) NOT NULL,
  `Nom` varchar(150) NOT NULL,
  `type` varchar(150) NOT NULL,
  `capacite` int(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `moyen transport`
--

INSERT INTO `moyen transport` (`ID`, `Nom`, `type`, `capacite`) VALUES
(0, 'BUS 001', 'terrestre', 100),
(0, 'Tchadia', 'aérien', 500);

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `ID` int(11) NOT NULL,
  `date_reservation` date NOT NULL,
  `duree_sejour` date NOT NULL,
  `heure_reservation` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `reservation`
--

INSERT INTO `reservation` (`ID`, `date_reservation`, `duree_sejour`, `heure_reservation`) VALUES
(1, '0001-02-21', '0000-00-00', '12:13:56'),
(2, '0002-04-21', '0000-00-00', '15:16:17'),
(3, '0003-08-21', '0000-00-00', '11:23:06'),
(4, '2012-12-21', '0000-00-00', '08:27:45'),
(5, '0003-09-21', '0000-00-00', '13:23:24'),
(6, '0000-00-00', '0000-00-00', '10:19:00'),
(7, '0000-00-00', '0000-00-00', '14:19:10'),
(8, '2016-04-21', '0000-00-00', '09:45:28'),
(9, '2019-01-21', '0000-00-00', '12:20:22'),
(10, '2010-02-21', '0000-00-00', '13:30:22');

-- --------------------------------------------------------

--
-- Structure de la table `sitetoristiq`
--

CREATE TABLE `sitetoristiq` (
  `ID` int(11) NOT NULL,
  `Libelle` varchar(150) NOT NULL,
  `Zone` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `sitetoristiq`
--

INSERT INTO `sitetoristiq` (`ID`, `Libelle`, `Zone`) VALUES
(1, 'TTAM', ''),
(2, 'TT Tchad', ''),
(3, 'Societe Transport', ''),
(4, 'Transport SARL', ''),
(5, 'Maria Transport', ''),
(6, 'Transport-transit', ''),
(7, 'ADEA Transport', ''),
(8, 'TAOE', ''),
(9, 'QTAM', ''),
(10, 'STAT', '');

-- --------------------------------------------------------

--
-- Structure de la table `vehicule`
--

CREATE TABLE `vehicule` (
  `immatricule` varchar(150) NOT NULL,
  `type` varchar(150) NOT NULL,
  `capacite` varchar(150) NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `vehicule`
--

INSERT INTO `vehicule` (`immatricule`, `type`, `capacite`, `ID`) VALUES
('12N4267', 'BUS', '100', 1),
('12F3637', 'BUS ', '100', 2),
('13G4637', 'BUS', '100', 3),
('15U9764', 'BUS', '100', 4),
('15H3647', 'mini-BUS', '70', 5),
('12J09U72', 'mini-BUS', '70', 6),
('10O08275', 'BUS', '100', 7),
('87J4658', 'BUS', '100', 8),
('28N1672', 'BUS', '100', 9),
('29B1829', 'mini-BUS', '70', 10);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `chauffeur`
--
ALTER TABLE `chauffeur`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `compagnie transport`
--
ALTER TABLE `compagnie transport`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `destination`
--
ALTER TABLE `destination`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `facture`
--
ALTER TABLE `facture`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `guide`
--
ALTER TABLE `guide`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `itineraire`
--
ALTER TABLE `itineraire`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `sitetoristiq`
--
ALTER TABLE `sitetoristiq`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `vehicule`
--
ALTER TABLE `vehicule`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `chauffeur`
--
ALTER TABLE `chauffeur`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `compagnie transport`
--
ALTER TABLE `compagnie transport`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `destination`
--
ALTER TABLE `destination`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `facture`
--
ALTER TABLE `facture`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `itineraire`
--
ALTER TABLE `itineraire`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `sitetoristiq`
--
ALTER TABLE `sitetoristiq`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
