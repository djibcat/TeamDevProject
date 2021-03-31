-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 31 mars 2021 à 14:58
-- Version du serveur :  10.4.17-MariaDB
-- Version de PHP : 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `jeuxvideos_blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id_categorie` int(11) NOT NULL,
  `titre_categorie` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id_categorie`, `titre_categorie`) VALUES
(1, 'Action'),
(2, 'Aventure'),
(3, 'Horreur');

-- --------------------------------------------------------

--
-- Structure de la table `jeux`
--

CREATE TABLE `jeux` (
  `id_jeux` int(11) NOT NULL,
  `titre_jeux` varchar(50) NOT NULL,
  `sous_titre_jeux` varchar(50) NOT NULL,
  `img_jeux` varchar(255) NOT NULL,
  `description_jeux` text NOT NULL,
  `date_sortie_jeux` date NOT NULL,
  `note_jeux` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id_utilisateur` int(11) NOT NULL,
  `nom_utilisateur` varchar(50) NOT NULL,
  `date_post_utilisateur` date NOT NULL,
  `contenu_com_utilisateur` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id_utilisateur`, `nom_utilisateur`, `date_post_utilisateur`, `contenu_com_utilisateur`) VALUES
(1, 'Jean-Michel', '2021-03-12', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis interdum libero turpis, id malesuada risus malesuada et. Aliquam auctor id nulla sed auctor. Nam commodo ut lectus eget elementum. Nam sed ex a metus consequat sodales at ut nisl. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Etiam eget ornare tortor, eu laoreet tellus. Nam accumsan dolor in mi accumsan, vitae dignissim enim mattis. Nulla massa ligula, feugiat id dictum quis, auctor vitae neque. Donec et aliquet velit. Pellentesque dictum vehicula mi, vel elementum magna porta sed. Morbi augue felis, ornare id justo ut, scelerisque condimentum odio. Etiam urna lectus, tincidunt vel eros sed, ullamcorper vestibulum sem. Maecenas pharetra pellentesque elementum. '),
(2, 'Toto', '2021-03-25', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis interdum libero turpis, id malesuada risus malesuada et. Aliquam auctor id nulla sed auctor. Nam commodo ut lectus eget elementum. Nam sed ex a metus consequat sodales at ut nisl. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Etiam eget ornare tortor, eu laoreet tellus. Nam accumsan dolor in mi accumsan, vitae dignissim enim mattis. Nulla massa ligula, feugiat id dictum quis, auctor vitae neque. Donec et aliquet velit. Pellentesque dictum vehicula mi, vel elementum magna porta sed. Morbi augue felis, ornare id justo ut, scelerisque condimentum odio. Etiam urna lectus, tincidunt vel eros sed, ullamcorper vestibulum sem. Maecenas pharetra pellentesque elementum. '),
(3, 'Jean-Michel', '2021-03-12', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis interdum libero turpis, id malesuada risus malesuada et. Aliquam auctor id nulla sed auctor. Nam commodo ut lectus eget elementum. Nam sed ex a metus consequat sodales at ut nisl. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Etiam eget ornare tortor, eu laoreet tellus. Nam accumsan dolor in mi accumsan, vitae dignissim enim mattis. Nulla massa ligula, feugiat id dictum quis, auctor vitae neque. Donec et aliquet velit. Pellentesque dictum vehicula mi, vel elementum magna porta sed. Morbi augue felis, ornare id justo ut, scelerisque condimentum odio. Etiam urna lectus, tincidunt vel eros sed, ullamcorper vestibulum sem. Maecenas pharetra pellentesque elementum. '),
(5, 'Paul', '2021-03-13', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis interdum libero turpis, id malesuada risus malesuada et. Aliquam auctor id nulla sed auctor. Nam commodo ut lectus eget elementum. Nam sed ex a metus consequat sodales at ut nisl. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Etiam eget ornare tortor, eu laoreet tellus. Nam accumsan dolor in mi accumsan, vitae dignissim enim mattis. Nulla massa ligula, feugiat id dictum quis, auctor vitae neque. Donec et aliquet velit. Pellentesque dictum vehicula mi, vel elementum magna porta sed. Morbi augue felis, ornare id justo ut, scelerisque condimentum odio. Etiam urna lectus, tincidunt vel eros sed, ullamcorper vestibulum sem. Maecenas pharetra pellentesque elementum. '),
(6, 'Kiki', '2021-03-22', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis interdum libero turpis, id malesuada risus malesuada et. Aliquam auctor id nulla sed auctor. Nam commodo ut lectus eget elementum. Nam sed ex a metus consequat sodales at ut nisl. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Etiam eget ornare tortor, eu laoreet tellus. Nam accumsan dolor in mi accumsan, vitae dignissim enim mattis. Nulla massa ligula, feugiat id dictum quis, auctor vitae neque. Donec et aliquet velit. Pellentesque dictum vehicula mi, vel elementum magna porta sed. Morbi augue felis, ornare id justo ut, scelerisque condimentum odio. Etiam urna lectus, tincidunt vel eros sed, ullamcorper vestibulum sem. Maecenas pharetra pellentesque elementum. '),
(7, 'Jacquie', '2021-03-13', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis interdum libero turpis, id malesuada risus malesuada et. Aliquam auctor id nulla sed auctor. Nam commodo ut lectus eget elementum. Nam sed ex a metus consequat sodales at ut nisl. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Etiam eget ornare tortor, eu laoreet tellus. Nam accumsan dolor in mi accumsan, vitae dignissim enim mattis. Nulla massa ligula, feugiat id dictum quis, auctor vitae neque. Donec et aliquet velit. Pellentesque dictum vehicula mi, vel elementum magna porta sed. Morbi augue felis, ornare id justo ut, scelerisque condimentum odio. Etiam urna lectus, tincidunt vel eros sed, ullamcorper vestibulum sem. Maecenas pharetra pellentesque elementum. '),
(8, 'Bob', '2021-03-13', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis interdum libero turpis, id malesuada risus malesuada et. Aliquam auctor id nulla sed auctor. Nam commodo ut lectus eget elementum. Nam sed ex a metus consequat sodales at ut nisl. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Etiam eget ornare tortor, eu laoreet tellus. Nam accumsan dolor in mi accumsan, vitae dignissim enim mattis. Nulla massa ligula, feugiat id dictum quis, auctor vitae neque. Donec et aliquet velit. Pellentesque dictum vehicula mi, vel elementum magna porta sed. Morbi augue felis, ornare id justo ut, scelerisque condimentum odio. Etiam urna lectus, tincidunt vel eros sed, ullamcorper vestibulum sem. Maecenas pharetra pellentesque elementum. '),
(9, 'Diablox9', '2021-03-11', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis interdum libero turpis, id malesuada risus malesuada et. Aliquam auctor id nulla sed auctor. Nam commodo ut lectus eget elementum. Nam sed ex a metus consequat sodales at ut nisl. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Etiam eget ornare tortor, eu laoreet tellus. Nam accumsan dolor in mi accumsan, vitae dignissim enim mattis. Nulla massa ligula, feugiat id dictum quis, auctor vitae neque. Donec et aliquet velit. Pellentesque dictum vehicula mi, vel elementum magna porta sed. Morbi augue felis, ornare id justo ut, scelerisque condimentum odio. Etiam urna lectus, tincidunt vel eros sed, ullamcorper vestibulum sem. Maecenas pharetra pellentesque elementum. '),
(10, 'Robert_du_76', '2021-03-12', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis interdum libero turpis, id malesuada risus malesuada et. Aliquam auctor id nulla sed auctor. Nam commodo ut lectus eget elementum. Nam sed ex a metus consequat sodales at ut nisl. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Etiam eget ornare tortor, eu laoreet tellus. Nam accumsan dolor in mi accumsan, vitae dignissim enim mattis. Nulla massa ligula, feugiat id dictum quis, auctor vitae neque. Donec et aliquet velit. Pellentesque dictum vehicula mi, vel elementum magna porta sed. Morbi augue felis, ornare id justo ut, scelerisque condimentum odio. Etiam urna lectus, tincidunt vel eros sed, ullamcorper vestibulum sem. Maecenas pharetra pellentesque elementum. '),
(11, 'Jean_le_boeufoO', '2021-03-13', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis interdum libero turpis, id malesuada risus malesuada et. Aliquam auctor id nulla sed auctor. Nam commodo ut lectus eget elementum. Nam sed ex a metus consequat sodales at ut nisl. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Etiam eget ornare tortor, eu laoreet tellus. Nam accumsan dolor in mi accumsan, vitae dignissim enim mattis. Nulla massa ligula, feugiat id dictum quis, auctor vitae neque. Donec et aliquet velit. Pellentesque dictum vehicula mi, vel elementum magna porta sed. Morbi augue felis, ornare id justo ut, scelerisque condimentum odio. Etiam urna lectus, tincidunt vel eros sed, ullamcorper vestibulum sem. Maecenas pharetra pellentesque elementum. ');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_categorie`);

--
-- Index pour la table `jeux`
--
ALTER TABLE `jeux`
  ADD PRIMARY KEY (`id_jeux`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id_utilisateur`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id_categorie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `jeux`
--
ALTER TABLE `jeux`
  MODIFY `id_jeux` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id_utilisateur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
