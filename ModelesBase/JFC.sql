-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mar. 08 mars 2022 à 11:27
-- Version du serveur :  8.0.28-0ubuntu0.20.04.3
-- Version de PHP : 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `JFC`
--

-- --------------------------------------------------------

--
-- Structure de la table `AppartenirStarter`
--

CREATE TABLE `AppartenirStarter` (
  `Id` int NOT NULL,
  `NomStarter` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `Attaque`
--

CREATE TABLE `Attaque` (
  `Nom` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Nom de l''attaque',
  `NomAnglais` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'nom anglais de l''attaque',
  `Couleur` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Couleur de l''attaque',
  `Description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Description de l''attaque si elle existe'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `Booster`
--

CREATE TABLE `Booster` (
  `Nom` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Nom du Booster',
  `Image` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Image du Bosster',
  `NomSet` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Nom du Set auquel le booster appartient'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `Carte`
--

CREATE TABLE `Carte` (
  `Id` int NOT NULL COMMENT 'Id dans la base de  la carte',
  `Numero` int NOT NULL COMMENT 'Numero de la carte',
  `Rarete` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Rarete de la carte',
  `NomSet` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Nom du set auquel la carte appartient',
  `NomIllustrateur` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Nom de l''illustrateur de la carte'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `Figurine`
--

CREATE TABLE `Figurine` (
  `Id` int NOT NULL COMMENT 'Id dans la base de la figurine',
  `Numero` int NOT NULL COMMENT 'Numero de lafigurine',
  `Nom` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Nom de la figurine',
  `Type` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Type de la figurine',
  `PM` int NOT NULL COMMENT 'Point de mouvements de la figurine',
  `TypePoke` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Type du pokemon ',
  `Rarete` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Rarete de la figurine',
  `Variante` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Variente de la figurine',
  `Image` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Image de la figurine',
  `NomSet` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Nom du set auquel appartient la figurine',
  `NomSculpteur` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Nom du sculpteur de la figurine',
  `NomTalent` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Nom du talent si présent'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `Illustrateur`
--

CREATE TABLE `Illustrateur` (
  `Nom` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Nom de l''illustrateur'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `PossederAttaque`
--

CREATE TABLE `PossederAttaque` (
  `Id` int NOT NULL,
  `NomAttaque` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Probabilite` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `Sculpteur`
--

CREATE TABLE `Sculpteur` (
  `Nom` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `SetFigurines`
--

CREATE TABLE `SetFigurines` (
  `Nom` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Nom du Set',
  `NomAnglais` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Nom anglais du set',
  `Image` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Image du Set'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `Starter`
--

CREATE TABLE `Starter` (
  `Nom` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Nom du Starter',
  `Type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Type du Starter',
  `NomSet` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Nom du Set auquel le starter appartient'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `Talent`
--

CREATE TABLE `Talent` (
  `Nom` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Description` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `AppartenirStarter`
--
ALTER TABLE `AppartenirStarter`
  ADD PRIMARY KEY (`Id`,`NomStarter`),
  ADD KEY `fk_AppartenirStarter_NomStarter` (`NomStarter`);

--
-- Index pour la table `Attaque`
--
ALTER TABLE `Attaque`
  ADD PRIMARY KEY (`Nom`);

--
-- Index pour la table `Booster`
--
ALTER TABLE `Booster`
  ADD PRIMARY KEY (`Nom`),
  ADD KEY `fk_Booster_NomSet` (`NomSet`);

--
-- Index pour la table `Carte`
--
ALTER TABLE `Carte`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fk_Carte_NomIllustrateur` (`NomIllustrateur`),
  ADD KEY `fk_Carte_NomSet` (`NomSet`);

--
-- Index pour la table `Figurine`
--
ALTER TABLE `Figurine`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fk_Figurine_NomSet` (`NomSet`),
  ADD KEY `fk_Figurine_NomSculpteur` (`NomSculpteur`),
  ADD KEY `fk_Figurine_NomTalent` (`NomTalent`);

--
-- Index pour la table `Illustrateur`
--
ALTER TABLE `Illustrateur`
  ADD PRIMARY KEY (`Nom`);

--
-- Index pour la table `PossederAttaque`
--
ALTER TABLE `PossederAttaque`
  ADD PRIMARY KEY (`Id`,`NomAttaque`),
  ADD KEY `fk_PossederAttaque_NomAttaque` (`NomAttaque`);

--
-- Index pour la table `Sculpteur`
--
ALTER TABLE `Sculpteur`
  ADD PRIMARY KEY (`Nom`);

--
-- Index pour la table `SetFigurines`
--
ALTER TABLE `SetFigurines`
  ADD PRIMARY KEY (`Nom`);

--
-- Index pour la table `Starter`
--
ALTER TABLE `Starter`
  ADD PRIMARY KEY (`Nom`),
  ADD KEY `fk_Starter_NomSet` (`NomSet`);

--
-- Index pour la table `Talent`
--
ALTER TABLE `Talent`
  ADD PRIMARY KEY (`Nom`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Carte`
--
ALTER TABLE `Carte`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT COMMENT 'Id dans la base de  la carte';

--
-- AUTO_INCREMENT pour la table `Figurine`
--
ALTER TABLE `Figurine`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT COMMENT 'Id dans la base de la figurine';

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `AppartenirStarter`
--
ALTER TABLE `AppartenirStarter`
  ADD CONSTRAINT `fk_AppartenirStarter_IdFigurine` FOREIGN KEY (`Id`) REFERENCES `Figurine` (`Id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `fk_AppartenirStarter_NomStarter` FOREIGN KEY (`NomStarter`) REFERENCES `Starter` (`Nom`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `Booster`
--
ALTER TABLE `Booster`
  ADD CONSTRAINT `fk_Booster_NomSet` FOREIGN KEY (`NomSet`) REFERENCES `SetFigurines` (`Nom`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `Carte`
--
ALTER TABLE `Carte`
  ADD CONSTRAINT `fk_Carte_NomIllustrateur` FOREIGN KEY (`NomIllustrateur`) REFERENCES `Illustrateur` (`Nom`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `fk_Carte_NomSet` FOREIGN KEY (`NomSet`) REFERENCES `SetFigurines` (`Nom`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `Figurine`
--
ALTER TABLE `Figurine`
  ADD CONSTRAINT `fk_Figurine_NomSculpteur` FOREIGN KEY (`NomSculpteur`) REFERENCES `Sculpteur` (`Nom`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `fk_Figurine_NomSet` FOREIGN KEY (`NomSet`) REFERENCES `SetFigurines` (`Nom`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `fk_Figurine_NomTalent` FOREIGN KEY (`NomTalent`) REFERENCES `Talent` (`Nom`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `PossederAttaque`
--
ALTER TABLE `PossederAttaque`
  ADD CONSTRAINT `fk_PossederAttaque_IdFigurine` FOREIGN KEY (`Id`) REFERENCES `Figurine` (`Id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `fk_PossederAttaque_NomAttaque` FOREIGN KEY (`NomAttaque`) REFERENCES `Attaque` (`Nom`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `Starter`
--
ALTER TABLE `Starter`
  ADD CONSTRAINT `fk_Starter_NomSet` FOREIGN KEY (`NomSet`) REFERENCES `SetFigurines` (`Nom`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
