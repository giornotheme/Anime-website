-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  sam. 16 mai 2020 à 20:56
-- Version du serveur :  5.7.23
-- Version de PHP :  7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `anime`
--

-- --------------------------------------------------------

--
-- Structure de la table `anime`
--

DROP TABLE IF EXISTS `anime`;
CREATE TABLE IF NOT EXISTS `anime` (
  `animeID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Anime ID',
  `animeName` varchar(30) NOT NULL COMMENT 'Nom de l''anime',
  `animePicture` varchar(10) DEFAULT NULL COMMENT 'Lien de l''image de l''anime',
  `studioName` varchar(20) NOT NULL COMMENT 'Nom du studio',
  `genre` varchar(20) NOT NULL COMMENT 'Genre de l''anime',
  `Description` text NOT NULL,
  PRIMARY KEY (`animeID`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `anime`
--

INSERT INTO `anime` (`animeID`, `animeName`, `animePicture`, `studioName`, `genre`, `Description`) VALUES
(1, 'Naruto', '', 'Studio Pierrot', 'Shounen', 'Dans le village de Konoha vie Naruto, un jeune garçon détesté et craint des villageois. Il est craint du faite qu\'il détient en lui Kyuubi (démon renard à neuf queues) d\'une incroyable force, qui a tué un grand nombre de personnes. Le ninja le plus puissant de Konoha à l\'époque, le quatrième Hokage, Yondaime réussit à sceller ce démon dans le corps de Naruto. Malheureusement il y laissa la vie. C\'est ainsi que douze ans plus tard, Naruto rêve de devenir le plus grand Hokage de Konoha afin que tous le reconnaissent. Mais la route pour devenir Hokage est très longue et Naruto doit remplir un bon nombre d\'épreuves et affronter de nombreux ennemis pour atteindre son but !'),
(2, 'Love Live! SIP', '', 'Sunrise', 'Shojo', 'Honoka Kosaka est une jeune fille qui aime son lycée, l\'académie Otonokizaka. Lorsque sa fermeture est prévue en raison d\'un manque d\'élèves, Honoka est déterminée à éviter cela. S’inspirant de la grande popularité des idoles scolaires, Honoka et ses amies décident de créer un groupe, μ\'s (ミューズ, Myūzu?), afin d\'attirer de nouveaux étudiants dans leur lycée. '),
(3, 'Jojo', NULL, 'A.P.P.P', 'Shounen', 'Dans l’ancienne civilisation des Aztèques, le peuple du Soleil avait en sa possession un masque de pierre appelé, Le Masque Miraculeux. Ce masque confère à celui qui le porte, la vie éternelle et un immense pouvoir. Personne ne connait son origine, ni ce qu’il est devenu depuis… L’histoire se déroule au 19ème siècle en Angleterre. Lord Joestar adopte un jeune enfant nommé Dio. Cependant, Dio se révèle être très ambitieux et rejette continuellement l’amitié de Jonathan, le fils naturel de Lord Joestar. Un jour, Dio trouve un ancien masque de pierre datant de la civilisation Aztèque…'),
(4, 'Death Note', NULL, 'Madhouse', 'Seinen', 'Light Yagami est un lycéen surdoué qui juge le monde actuel criminel, pourri et corrompu. Sa vie change du tout au tout le jour où il ramasse par hasard un mystérieux cahier intitulé « Death Note ». Le mode d\'emploi inclus dans ce carnet indique que « la personne dont le nom est écrit dans ce cahier meurt ». D\'abord sceptique, Light décide toutefois de tester le carnet et découvre que son pouvoir est bien réel. Il rencontre l\'ancien propriétaire du Death Note, un dieu de la mort nommé Ryûk. Celui-ci déclare avoir volontairement laissé tomber son carnet dans le but de tuer son ennui. Light décide d\'utiliser le Death Note pour exterminer les criminels, dans le but d\'éradiquer le Mal et de bâtir un monde parfait dont il sera le dieu. Il apprend peu à peu à se servir des pouvoirs du cahier et de ses règles. L\'utilisateur peut seulement tuer une personne dont il connaît le visage, en y inscrivant son nom. Il dispose également de la possibilité d\'en préciser la cause ainsi que les circonstances détaillées, la cause par défaut étant la crise cardiaque. Les nombreuses morts inexpliquées de criminels à travers le monde attirent l\'attention d\'Interpol et du mystérieux L, un détective capable de résoudre n\'importe quelle énigme, mais dont personne ne connaît l\'identité . L décide d\'enquêter pour capturer le tueur en série, surnommé par le grand public « Kira » (キラ?, dérivé de la prononciation japonaise de « killer »). Entre Light et L, tous deux persuadés d\'agir pour la justice, s\'engage un duel psychologique et acharné dont sortira vainqueur celui qui trouvera en premier l\'identité de l\'autre.'),
(5, 'Fullmetal Alchemist', NULL, 'Bones', 'Shounen', 'Les épisodes de la série ont une première accroche qui est : « Le principe de l\'échange équivalent : pour toute chose reçue, il faut en abandonner une autre de même valeur en retour. Les deux frères Elric partent à la recherche de la « pierre philosophale » car celle-ci ignore ce principe et cela leur permettra de récupérer leur corps d\'origine. » L\'alchimie est la science qui permet de comprendre, de décomposer et de recomposer la matière. Bien que puissante, l\'alchimie a des limites : il est impossible de créer à partir de rien. On ne peut qu\'utiliser des matériaux déjà présents à la base. Ainsi, si l\'on veut, par exemple, créer une arbalète en bois, avec des flèches à pointes métalliques, il faut transmuter du bois et du métal. En alchimie, c\'est la loi fondamentale de l\'échange équivalent. Et la transmutation humaine (créer un être humain à partir de ses matières premières) est un tabou absolu. Nul ne doit enfreindre cet interdit.'),
(6, 'Fairy Tail', NULL, 'A-1 Pictures', 'Shounen', 'Dans un monde magique au beau milieu du pays de Fiore, la jeune Lucy Heartfiria rejoint la Guilde Magique de Fairy Tail. L\'attendent de nombreuses et palpitantes aventures aux côtés de Natsu Dragnir, Happy, Erza Scarlett et Grey Fullbuster.'),
(7, 'Code Geass', NULL, 'CLAMP', 'Seinen', 'En 2017, le Japon vit sous le joug de l\'empire de Britannia. Rebaptisé \"Zone Eleven\", le pays subit quotidiennement la terreur de l\'occupant qui réprime toute sédition grâce à ses armées de Mécas, les \"Nightmare Frames\". Mais le jour de la révolte a peut-être sonné lorsqu\'un jeune étudiant du nom de Lelouch Lamperouge va se retrouver accidentellement impliqué dans un attentat terroriste. Alors qu\'il aurait dû mourir, Lelouch va au contraire survivre, et même hériter d\'un mystérieux pouvoir, le \"Geass\", qui donne à celui qui le détient la possibilité de contrôler la volonté d\'autrui. Ce pouvoir permettra-t-il à Lelouch de faire vaciller l\'empire de Britannia ?'),
(8, 'Hunter x hunter', NULL, 'Madhouse', 'Shounen', 'Gon est un jeune garçon intrépide et aventureux qui vit chez sa tante Mito. Son rêve : devenir un Hunter, comme son père. Les Hunters forment une caste à part. Ce sont des gens qui ont dédié toute leur existence à la recherche d\'espèces rares, de mets inconnus, de territoires inexplorés ou encore de trésors enfouis. Mais pour en faire partie, Gon va devoir passer un examen particulièrement difficile truffé d\'épreuves plus dangereuses les unes que les autres. Heureusement, il pourra compter sur son ingéniosité et sur son courage, ainsi que sur trois compagnons qu\'il rencontre au cours de l\'examen : Leolio, Kurapika et Kirua. Ensemble, ils comptent bien triompher de tous les obstacles et obtenir l\'un des trésors les plus convoités de la planète: la carte de Hunter !'),
(9, 'My hero academia', NULL, 'Bones', 'Shounen', 'On suit les aventures d\'Izuku Midoriya qui, malgré qu\'il vive dans un monde où avoir des pouvoirs est commun, est l\'un des seuls à ne pas en posséder.'),
(10, 'Shokugeki no soma', NULL, 'J.C.Staff', 'Shounen', 'Sôma Yukihira rêve de devenir le chef cuisinier dans le restaurant familial et ainsi surpasser les talents culinaires de son père. Alors que Sôma vient juste d\'être diplômé au collège, son père Jôichirô Yukihira ferme le restaurant pour cuisiner aux États-Unis. L\'esprit de compétition de Sôma va alors être mis à l\'épreuve par son père qui lui conseille de rejoindre une école d\'élite culinaire, où seuls 10 % des élèves sont diplômés. Sôma va-t-il parvenir à atteindre son objectif ?'),
(11, 'Psycho Pass', NULL, 'Production I.G', 'Seinen', 'Début du xxiie siècle, il est possible de mesurer instantanément l\'état mental d\'une personne, sa personnalité et la probabilité qu\'elle commette des crimes grâce à un dispositif installé sur le corps de chaque citoyen appelé « Psycho-Pass ». Lorsque cette probabilité, mesurée par le niveau du « coefficient de criminalité », est trop élevée chez certaines personnes : ces individus sont poursuivis et appréhendés ou si nécessaire, abattus. Cette tâche est effectuée par une équipe spéciale de criminels potentiels appelés Exécuteurs, qui sont supervisés par des policiers appelés Inspecteurs. Les Inspecteurs s\'assurent que les Exécuteurs exercent leurs fonctions dans les limites qui leurs sont imposées. Les Inspecteurs et Exécuteurs utilisent une arme spéciale polymorphe appelée « Dominateur », conçue pour tirer uniquement sur ceux ayant un coefficient de criminalité plus élevé que la normale. L\'histoire suit l\'unité Une de la Division des Enquêtes Criminelles du Bureau de la Sécurité Publique au Japon.'),
(12, 'Death Parade', NULL, 'Madhouse', 'Seinen', 'L\'histoire consiste en une succession de deux personnes qui viennent d’atterrir dans un bar à l’ambiance sombre. Sans méfiance, ils ne savent pas encore qu\'ils sont entrés dans un jeu mortel. En effet, ils ne savent absolument plus comment ils ont atterris ici… Decim, le barman, et son assistante leur expliquent alors qu’il va falloir qu\'ils jouent à un jeu de bar (fléchettes, bowling, billards, etc.) et mettre leur vie en jeu afin de peut-être comprendre ce qui leur est arrivé.'),
(13, 'Cowboy Bepop', NULL, 'Sunrise', 'Seinen', 'En 2071, l\'équipage du vaisseau spatial Bebop voyage dans le système solaire à la recherche de primes. Dans l\'argot de l\'époque, ces chasseurs de primes sont appelés « cowboys ». La plupart des épisodes tournent autour d\'une prime ; cependant, le centre de l\'histoire concerne le passé de chaque personnage et d\'anciens évènements plus généraux, qui se connectent au fur et à mesure que la série progresse.\r\n\r\nLa première histoire est celle de Spike Spiegel, ancien membre d\'une organisation criminelle, les Dragons Rouges, qui est hanté par un triangle amoureux qu\'il a connu avec son ancien coéquipier aux Dragons Rouges, Vicious, et une mystérieuse femme nommée Julia.\r\n\r\nLa seconde histoire tourne autour de Faye Valentine, une joueuse endettée et amnésique réveillée d\'un sommeil cryogénique, dont le passé est un mystère.\r\n\r\nLes autres personnages ont aussi un passé à explorer : Jet Black, un ancien officier de l\'agence de police interplanétaire ISSP et propriétaire du vaisseau (le Bebop), Edward, une jeune hacker surdouée et hyperactive, et Ein, un « chien data » échappé d\'un laboratoire, possédant une intelligence supérieure mais se comportant la plupart du temps comme un chien normal. '),
(14, 'Erased', NULL, 'A-1 Pictures', 'Seinen', 'Nous sommes en 2006. Satoru Fujinuma est un mangaka qui n\'arrive pas à faire décoller sa carrière. Pour arrondir ses fins de mois, il travaille comme livreur de pizza. Réservé, Satoru ne s\'ouvre pas au monde qui l\'entoure. Pourtant, il a la capacité de revenir quelques minutes en arrière avant qu\'un accident ne se produise. Un jour, à la suite d\'un événement soudain, Satoru est ramené 18 ans auparavant, quand il était encore à l\'école primaire, lui donnant ainsi la possibilité d\'arrêter un criminel qui avait enlevé et assassiné trois de ses camarades. '),
(15, 'Fruits Basket', NULL, 'Deen', 'Shojo', 'Il s\'agit d\'une nouvelle adaptation du manga Fruits Basket de Takaya Natsuki. D\'après le magazine Hana to Yume, ce nouveau projet va adapter le manga en entier.'),
(16, 'Kaichou wa Maid-sama', NULL, 'J.C.Staff', 'Shojo', 'Misaki, la présidente des élèves du lycée Seika est très stricte, elle est crainte mais en même temps admirée par tout le monde pour toutes les choses qu\'elle a accomplies, elle mène son travail d\'une main de fer et ne laisse rien passer. Il se trouve que si elle est sévère avec les garçons, c\'est parce que sa situation familiale la tourmente en quelque sorte, et cela à cause de son père. C\'est pour cette raison qu\'elle travaille secrètement dans un café où elle doit porter un uniforme de soubrette. La vraie histoire commence lorsque l\'un de ses camarades de classe découvre son secret...');

-- --------------------------------------------------------

--
-- Structure de la table `anime_user`
--

DROP TABLE IF EXISTS `anime_user`;
CREATE TABLE IF NOT EXISTS `anime_user` (
  `user_id` int(11) NOT NULL,
  `anime_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `anime_user`
--

INSERT INTO `anime_user` (`user_id`, `anime_id`) VALUES
(1, 3),
(1, 5),
(16, 2),
(16, 4),
(3, 2),
(16, 7),
(1, 1),
(1, 3),
(1, 5),
(1, 6),
(3, 1),
(3, 3),
(3, 5),
(3, 6),
(3, 7),
(3, 11),
(3, 12),
(3, 13),
(3, 14),
(3, 4);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `UserID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL COMMENT 'Nom d''utilisateur',
  `statu` enum('NORMAL','ADMIN') NOT NULL COMMENT 'Statut de l''user',
  `pass` varchar(200) NOT NULL COMMENT 'Mot de passe',
  `accstatus` enum('NOT BAN','BAN') NOT NULL COMMENT 'Si l''user est ban ou pas',
  PRIMARY KEY (`UserID`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`UserID`, `username`, `statu`, `pass`, `accstatus`) VALUES
(1, 'Nathaan', 'ADMIN', 'd8408668db2bef6f6e29cc269c8614f8', 'NOT BAN'),
(2, 'testuser', 'NORMAL', '5d9c68c6c50ed3d02a2fcf54f63993b6', 'NOT BAN'),
(3, 'victor', 'ADMIN', 'ffc150a160d37e92012c196b6af4160d', 'NOT BAN');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
