-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 23 août 2024 à 08:49
-- Version du serveur : 8.2.0
-- Version de PHP : 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mon_projet_licence`
--

-- --------------------------------------------------------

--
-- Structure de la table `affectations`
--

DROP TABLE IF EXISTS `affectations`;
CREATE TABLE IF NOT EXISTS `affectations` (
  `idAffectation` int NOT NULL AUTO_INCREMENT,
  `idDemandeur` int DEFAULT NULL,
  `idService` int DEFAULT NULL,
  `dateAffectation` date DEFAULT NULL,
  PRIMARY KEY (`idAffectation`),
  KEY `idDemandeur` (`idDemandeur`),
  KEY `idService` (`idService`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `affectations`
--

INSERT INTO `affectations` (`idAffectation`, `idDemandeur`, `idService`, `dateAffectation`) VALUES
(1, 16, 0, NULL),
(2, 16, 0, NULL),
(3, 17, 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

DROP TABLE IF EXISTS `compte`;
CREATE TABLE IF NOT EXISTS `compte` (
  `idCompte` int NOT NULL AUTO_INCREMENT,
  `login` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `motpasse` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `confirmepasse` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `supprimer` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`idCompte`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `compte`
--

INSERT INTO `compte` (`idCompte`, `login`, `motpasse`, `confirmepasse`, `supprimer`) VALUES
(5, 'kouame1234', '$2y$10$sgAGPXu/dn32oOaVDkUXV.kEdTsyU0oO7XZ2mliFxQuDPUHxX/WsK', NULL, 0),
(6, 'ouedraogo123456', '$2y$10$5cssSYAcg8vgceIwb95GiuHPk2oLaCGDgELfzjXBTC6TlGZLKEG8O', NULL, 0);

-- --------------------------------------------------------

--
-- Structure de la table `demandeurs`
--

DROP TABLE IF EXISTS `demandeurs`;
CREATE TABLE IF NOT EXISTS `demandeurs` (
  `idDEMANDEUR` int NOT NULL AUTO_INCREMENT,
  `nomDemandeur` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `prenomsDemandeur` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `genre` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `emailDemandeur` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `dateNaissance` date NOT NULL,
  `lieuNaissance` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `nationaliteDemandeur` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `numeropiece` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `debutstage` date NOT NULL,
  `finstage` date NOT NULL,
  `dureestage` int NOT NULL,
  `telephone` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `dateDemande` date NOT NULL,
  `photo` longblob NOT NULL,
  `diplomeDemandeur` longblob NOT NULL,
  `cvDemandeur` longblob NOT NULL,
  `cniDemandeur` longblob NOT NULL,
  `lettreDemandeur` longblob NOT NULL,
  `supprimer` tinyint(1) DEFAULT '0',
  `idSpecialite` int DEFAULT NULL,
  `idNiveau` int DEFAULT NULL,
  `idEcole` int DEFAULT NULL,
  `idTypestage` int DEFAULT NULL,
  `idService` int DEFAULT NULL,
  PRIMARY KEY (`idDEMANDEUR`),
  UNIQUE KEY `emailDemandeur` (`emailDemandeur`),
  UNIQUE KEY `numeropiece` (`numeropiece`),
  KEY `idSpecialite` (`idSpecialite`),
  KEY `idNiveau` (`idNiveau`),
  KEY `idEcole` (`idEcole`),
  KEY `idTypestage` (`idTypestage`),
  KEY `fk_idService` (`idService`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `demandeurs`
--

INSERT INTO `demandeurs` (`idDEMANDEUR`, `nomDemandeur`, `prenomsDemandeur`, `genre`, `emailDemandeur`, `dateNaissance`, `lieuNaissance`, `nationaliteDemandeur`, `numeropiece`, `debutstage`, `finstage`, `dureestage`, `telephone`, `dateDemande`, `photo`, `diplomeDemandeur`, `cvDemandeur`, `cniDemandeur`, `lettreDemandeur`, `supprimer`, `idSpecialite`, `idNiveau`, `idEcole`, `idTypestage`, `idService`) VALUES
(16, 'Tiho', 'aziz', 'M', 'tihoaziz@gmail.com', '2004-04-15', 'Congo', 'Congolaise', 'Cong123456', '2024-09-12', '0000-00-00', 3, '+2250505873114', '2024-08-22', 0x75706c6f6164732f31365f70686f746f5469686f476e696d6574612e6a7067, 0x75706c6f6164732f31365f323031392d6d617468202831292e706466, 0x75706c6f6164732f31365f323031392d70726f62612e706466, 0x75706c6f6164732f31365f41666669636865414f5f646174612d323032342e706466, 0x75706c6f6164732f31365f323031392d70726f62615f312e706466, 0, 6, 3, 2, 1, NULL),
(17, 'Sow', 'Maty', 'F', 'sowMaty@gmail.com', '2001-05-12', 'Senegal', 'Sénégalaise', 'SEN123654789', '2024-09-12', '0000-00-00', 6, '+2250505873114', '2024-08-20', 0x75706c6f6164732f31375f70686f746f5469686f476e696d6574612e6a7067, 0x75706c6f6164732f31375f323031392d6d617468202832292e706466, 0x75706c6f6164732f31375f323031392d6d617468202833292e706466, 0x75706c6f6164732f31375f41666669636865414f5f646174612d323032342e706466, 0x75706c6f6164732f31375f323031392d70726f62612e706466, 0, 5, 2, 2, 2, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `ecole`
--

DROP TABLE IF EXISTS `ecole`;
CREATE TABLE IF NOT EXISTS `ecole` (
  `idEcole` int NOT NULL AUTO_INCREMENT,
  `libelEcole` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lieuEcole` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `supprimer` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`idEcole`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `fonction`
--

DROP TABLE IF EXISTS `fonction`;
CREATE TABLE IF NOT EXISTS `fonction` (
  `idFonction` int NOT NULL AUTO_INCREMENT,
  `fonction` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `supprimer` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`idFonction`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `fonction`
--

INSERT INTO `fonction` (`idFonction`, `fonction`, `supprimer`) VALUES
(1, 'DRH', 0),
(2, 'Responsable du Service Informatique', 0);

-- --------------------------------------------------------

--
-- Structure de la table `niveau`
--

DROP TABLE IF EXISTS `niveau`;
CREATE TABLE IF NOT EXISTS `niveau` (
  `idNiveau` int NOT NULL AUTO_INCREMENT,
  `libelNiveau` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `supprimer` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`idNiveau`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `niveau`
--

INSERT INTO `niveau` (`idNiveau`, `libelNiveau`, `supprimer`) VALUES
(1, 'BTS', 0),
(2, 'Licence', 0),
(3, 'Master', 0);

-- --------------------------------------------------------

--
-- Structure de la table `personnel`
--

DROP TABLE IF EXISTS `personnel`;
CREATE TABLE IF NOT EXISTS `personnel` (
  `idPersonnel` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `prenoms` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `emailPersonnel` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `supprimer` tinyint(1) DEFAULT '0',
  `idProfil` int DEFAULT NULL,
  `idCompte` int DEFAULT NULL,
  `idFonction` int DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`idPersonnel`),
  UNIQUE KEY `emailPersonnel` (`emailPersonnel`),
  KEY `idProfil` (`idProfil`),
  KEY `idCompte` (`idCompte`),
  KEY `idFonction` (`idFonction`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `personnel`
--

INSERT INTO `personnel` (`idPersonnel`, `nom`, `prenoms`, `emailPersonnel`, `supprimer`, `idProfil`, `idCompte`, `idFonction`, `photo`) VALUES
(1, 'Gnimeta', 'Tiho', 'tihognimeta@gmail.com', 0, NULL, 1, 1, NULL),
(2, 'kouassi', 'Tiho', 'gnimetakouassi@gmail.com', 0, NULL, 4, 1, 'uploads/kouassitiho.jpg'),
(3, 'Kouamé', 'Antoine', 'kouameAntoine@gmail.com', 0, NULL, 5, 1, 'uploads/kouamantoine.jpg'),
(4, 'Ouédraogo', 'Solange', 'ouedraogosolange@gmail.com', 0, NULL, 6, 2, 'uploads/oudraogosolange.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `profil`
--

DROP TABLE IF EXISTS `profil`;
CREATE TABLE IF NOT EXISTS `profil` (
  `idProfil` int NOT NULL AUTO_INCREMENT,
  `profil` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `supprimer` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`idProfil`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `service`
--

DROP TABLE IF EXISTS `service`;
CREATE TABLE IF NOT EXISTS `service` (
  `idService` int NOT NULL AUTO_INCREMENT,
  `service` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `supprimer` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`idService`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `service`
--

INSERT INTO `service` (`idService`, `service`, `supprimer`) VALUES
(1, 'Service INFORMATIQUE', 0),
(2, 'Service D AGRONOMIE', 0),
(3, 'Service DE L ECONOMIE ET DU COMMERCE', 0),
(4, 'Service DES MINES ET GEOLOGIE', 0),
(5, 'Service DES TRAVAUX PUBLICS', 0),
(6, 'Service DE COMPTABILITE', 0);

-- --------------------------------------------------------

--
-- Structure de la table `specialite`
--

DROP TABLE IF EXISTS `specialite`;
CREATE TABLE IF NOT EXISTS `specialite` (
  `idSpecialite` int NOT NULL AUTO_INCREMENT,
  `specialite` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `supprimer` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`idSpecialite`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `specialite`
--

INSERT INTO `specialite` (`idSpecialite`, `specialite`, `supprimer`) VALUES
(1, 'Informatique', 0),
(2, 'Agronomie', 0),
(3, 'Economie & Commerce', 0),
(4, 'Mines et Géologie', 0),
(5, 'Travaux Publics', 0),
(6, 'Comptabilité', 0);

-- --------------------------------------------------------

--
-- Structure de la table `typestage`
--

DROP TABLE IF EXISTS `typestage`;
CREATE TABLE IF NOT EXISTS `typestage` (
  `idTypestage` int NOT NULL AUTO_INCREMENT,
  `libelstage` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `supprimer` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`idTypestage`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `typestage`
--

INSERT INTO `typestage` (`idTypestage`, `libelstage`, `supprimer`) VALUES
(1, 'Stage de validation de Diplôme', 0),
(2, 'Stage de Perfectionnement', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
