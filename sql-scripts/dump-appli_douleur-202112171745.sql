-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: appli_douleur
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `compatibilite`
--

DROP TABLE IF EXISTS `compatibilite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compatibilite` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `id_preconisation` bigint NOT NULL,
  `id_produit` bigint NOT NULL,
  `dosages` varchar(50) DEFAULT NULL,
  `unite_dosage` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `compatibilite_preconisation_fk` (`id_preconisation`),
  KEY `compatibilite_produit_fk` (`id_produit`),
  KEY `compatibilite_unite_dosage_fk` (`unite_dosage`),
  CONSTRAINT `compatibilite_preconisation_fk` FOREIGN KEY (`id_preconisation`) REFERENCES `preconisation` (`id`) ON DELETE CASCADE,
  CONSTRAINT `compatibilite_produit_fk` FOREIGN KEY (`id_produit`) REFERENCES `produit` (`id`),
  CONSTRAINT `compatibilite_unite_dosage_fk` FOREIGN KEY (`unite_dosage`) REFERENCES `unite_dosage` (`unite`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=687 DEFAULT CHARSET=utf8mb3 COMMENT='Correspondance entre médicaments et produits';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compatibilite`
--

LOCK TABLES `compatibilite` WRITE;
/*!40000 ALTER TABLE `compatibilite` DISABLE KEYS */;
INSERT INTO `compatibilite` VALUES (443,14,1,NULL,NULL),(444,15,1,NULL,NULL),(445,17,1,NULL,NULL),(446,18,1,NULL,NULL),(447,19,1,NULL,NULL),(448,20,1,NULL,NULL),(449,22,1,NULL,NULL),(450,23,1,NULL,NULL),(451,24,1,NULL,NULL),(452,26,1,NULL,NULL),(453,28,1,NULL,NULL),(454,30,1,NULL,NULL),(455,32,1,NULL,NULL),(456,34,1,NULL,NULL),(457,36,1,NULL,NULL),(458,38,1,NULL,NULL),(459,40,1,NULL,NULL),(460,42,1,NULL,NULL),(461,43,1,NULL,NULL),(462,44,1,NULL,NULL),(463,46,1,NULL,NULL),(464,48,1,NULL,NULL),(465,50,1,NULL,NULL),(466,51,1,NULL,NULL),(467,53,1,NULL,NULL),(468,54,1,NULL,NULL),(469,56,1,NULL,NULL),(470,58,1,NULL,NULL),(471,59,1,NULL,NULL),(472,61,1,NULL,NULL),(473,64,1,NULL,NULL),(474,65,1,NULL,NULL),(475,67,1,NULL,NULL),(476,69,1,NULL,NULL),(477,71,1,NULL,NULL),(478,72,1,NULL,NULL),(479,74,1,NULL,NULL),(480,76,1,NULL,NULL),(481,79,1,NULL,NULL),(482,80,1,NULL,NULL),(483,82,1,NULL,NULL),(484,84,1,NULL,NULL),(485,88,1,NULL,NULL),(486,89,1,NULL,NULL),(487,91,1,NULL,NULL),(488,92,1,NULL,NULL),(489,93,1,NULL,NULL),(490,94,1,NULL,NULL),(491,96,1,NULL,NULL),(492,98,1,NULL,NULL),(493,99,1,NULL,NULL),(494,101,1,NULL,NULL),(495,103,1,NULL,NULL),(496,104,1,NULL,NULL),(497,106,1,NULL,NULL),(498,107,1,NULL,NULL),(499,109,1,NULL,NULL),(500,110,1,NULL,NULL),(501,111,1,NULL,NULL),(502,112,1,NULL,NULL),(503,114,1,NULL,NULL),(504,116,1,NULL,NULL),(505,118,1,NULL,NULL),(506,119,1,NULL,NULL),(507,120,1,NULL,NULL),(508,122,1,NULL,NULL),(509,126,1,NULL,NULL),(510,127,1,NULL,NULL),(570,16,2,NULL,NULL),(571,21,2,NULL,NULL),(572,33,2,NULL,NULL),(573,37,2,NULL,NULL),(574,41,2,NULL,NULL),(575,55,2,NULL,NULL),(576,69,2,NULL,NULL),(577,73,2,NULL,NULL),(578,81,2,NULL,NULL),(579,86,2,NULL,NULL),(580,92,2,NULL,NULL),(581,95,2,NULL,NULL),(582,97,2,NULL,NULL),(583,100,2,NULL,NULL),(584,105,2,NULL,NULL),(585,113,2,NULL,NULL),(586,124,2,NULL,NULL),(601,15,3,NULL,NULL),(602,18,3,NULL,NULL),(603,20,3,NULL,NULL),(604,23,3,NULL,NULL),(605,28,3,NULL,NULL),(606,32,3,NULL,NULL),(607,36,3,NULL,NULL),(608,40,3,NULL,NULL),(609,51,3,NULL,NULL),(610,54,3,NULL,NULL),(611,59,3,NULL,NULL),(612,64,3,NULL,NULL),(613,67,3,NULL,NULL),(614,72,3,NULL,NULL),(615,80,3,NULL,NULL),(616,84,3,NULL,NULL),(617,88,3,NULL,NULL),(618,89,3,NULL,NULL),(619,91,3,NULL,NULL),(620,93,3,NULL,NULL),(621,94,3,NULL,NULL),(622,99,3,NULL,NULL),(623,104,3,NULL,NULL),(624,110,3,NULL,NULL),(625,112,3,NULL,NULL),(626,118,3,NULL,NULL),(627,127,3,NULL,NULL),(632,14,4,NULL,NULL),(633,17,4,NULL,NULL),(634,19,4,NULL,NULL),(635,22,4,NULL,NULL),(636,26,4,NULL,NULL),(637,50,4,NULL,NULL),(638,53,4,NULL,NULL),(639,71,4,NULL,NULL),(640,79,4,NULL,NULL),(641,82,4,NULL,NULL),(642,98,4,NULL,NULL),(643,103,4,NULL,NULL),(644,109,4,NULL,NULL),(645,111,4,NULL,NULL),(646,126,4,NULL,NULL),(647,25,5,NULL,NULL),(648,27,5,NULL,NULL),(649,29,5,NULL,NULL),(650,31,5,NULL,NULL),(651,35,5,NULL,NULL),(652,39,5,NULL,NULL),(653,45,5,NULL,NULL),(654,47,5,NULL,NULL),(655,57,5,NULL,NULL),(656,60,5,NULL,NULL),(657,63,5,NULL,NULL),(658,66,5,NULL,NULL),(659,68,5,NULL,NULL),(660,75,5,NULL,NULL),(661,77,5,NULL,NULL),(662,83,5,NULL,NULL),(663,85,5,NULL,NULL),(664,87,5,NULL,NULL),(665,90,5,NULL,NULL),(666,102,5,NULL,NULL),(667,108,5,NULL,NULL),(668,115,5,NULL,NULL),(669,117,5,NULL,NULL),(670,123,5,NULL,NULL),(678,62,7,NULL,NULL),(679,70,7,NULL,NULL),(680,125,7,NULL,NULL),(681,49,8,NULL,NULL),(682,52,9,NULL,NULL),(683,78,9,NULL,NULL),(685,120,10,NULL,NULL),(686,121,10,NULL,NULL);
/*!40000 ALTER TABLE `compatibilite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forme_medic`
--

DROP TABLE IF EXISTS `forme_medic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forme_medic` (
  `code` varchar(10) NOT NULL,
  `libelle` varchar(50) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forme_medic`
--

LOCK TABLES `forme_medic` WRITE;
/*!40000 ALTER TABLE `forme_medic` DISABLE KEYS */;
INSERT INTO `forme_medic` VALUES ('COMPR','comprimé'),('GELUL','gélule'),('PATCH','patch');
/*!40000 ALTER TABLE `forme_medic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicament_prescrit`
--

DROP TABLE IF EXISTS `medicament_prescrit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicament_prescrit` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `id_preco_ordo` bigint NOT NULL,
  `description` varchar(100) NOT NULL DEFAULT '',
  `duree_min` int NOT NULL,
  `duree_max` int DEFAULT NULL,
  `formes` varchar(100) NOT NULL,
  `frequence_min` int NOT NULL,
  `frequence_max` int DEFAULT NULL,
  `frequence_autre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `preconisation_medicament_fk` (`id_preco_ordo`),
  CONSTRAINT `preconisation_medicament_fk` FOREIGN KEY (`id_preco_ordo`) REFERENCES `ordonnance_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Détail médicament d''une ordonnance type prescrite';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicament_prescrit`
--

LOCK TABLES `medicament_prescrit` WRITE;
/*!40000 ALTER TABLE `medicament_prescrit` DISABLE KEYS */;
/*!40000 ALTER TABLE `medicament_prescrit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicament_type`
--

DROP TABLE IF EXISTS `medicament_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicament_type` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `id_ordo_type` bigint NOT NULL,
  `description` varchar(100) NOT NULL DEFAULT '',
  `formes` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `medicament_type_fk` (`id_ordo_type`),
  CONSTRAINT `medicament_type_fk` FOREIGN KEY (`id_ordo_type`) REFERENCES `ordonnance_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb3 COMMENT='Médicament d''une ordonnance type';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicament_type`
--

LOCK TABLES `medicament_type` WRITE;
/*!40000 ALTER TABLE `medicament_type` DISABLE KEYS */;
INSERT INTO `medicament_type` VALUES (15,21,'Paracétamol 400 ou 500 mg + Codéine 20 ou 30 mg','Comprimé|Gélule|comprimé|gélule'),(16,22,'Paracétamol 400 ou 500 mg + Poudre d\'opium 25 mg','Comprimé|Gélule|comprimé|gélule'),(17,23,'Tramadol 50 mg','comprimé|gélule'),(18,24,'Paracétamol 1000 mg','comprimé|gélule'),(19,24,'Kétoprofène 150 mg','comprimé|gélule'),(20,25,'Paracétamol 400 ou 500 mg + Poudre d\'opium 25 mg','comprimé|gélule'),(21,25,'Kétoprofène 150 mg','comprimé|gélule'),(22,26,'Paracétamol 400 ou 500 mg + Codéine 20 ou 30 mg','comprimé|gélule'),(23,26,'Kétoprofène 150 mg','comprimé|gélule'),(24,27,'Paracétamol 1000 mg','comprimé|gélule'),(25,27,'Kétoprofène LP 100 mg','comprimé|gélule'),(26,28,'Paracétamol 1000 mg','comprimé|gélule'),(27,29,'Paracétamol 1000 mg','comprimé|gélule'),(28,29,'Rofécoxib 25 mg','comprimé|gélule'),(29,30,'Célécoxib 100 mg','comprimé|gélule'),(30,31,'Paracétamol 400 ou 500 mg + Codéine 20 ou 30 mg','comprimé|gélule'),(31,31,'Kétoprofène 100 mg','comprimé|gélule'),(32,32,'Paracétamol 400 ou 500 mg','comprimé|gélule'),(33,32,'Morphine LI 10 ou 20 mg','comprimé|gélule'),(34,32,'Kétoprofène 100 mg','comprimé|gélule'),(35,33,'Paracétamol 375 mg + Tramadol 37.5 mg','comprimé|gélule'),(36,34,'Paracétamol 375 mg + Tramadol 37.5 mg','comprimé|gélule'),(37,34,'Morphine LI 10 mg','comprimé|gélule'),(38,35,'Tramadol 50 mg','comprimé|gélule'),(39,35,'Kétoprofène 150 mg','comprimé|gélule'),(40,36,'Paracétamol 500 mg + Codéine 30 mg','comprimé|gélule'),(41,37,'Kétoprofène 150 mg','comprimé|gélule'),(42,38,'Paracétamol 500 mg','comprimé|gélule'),(46,41,'Fentanyl patch 25 µg/h','patch'),(49,43,'Paracétamol 500 mg','comprimé|gélule'),(50,43,'Fentanyl patch 25 µg/h','patch'),(52,45,'Morphine LI 10 ou 20 mg','comprimé|gélule');
/*!40000 ALTER TABLE `medicament_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nomenclature`
--

DROP TABLE IF EXISTS `nomenclature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nomenclature` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'Identifiant douleur',
  `libelle` varchar(100) NOT NULL,
  `id_parent` bigint DEFAULT NULL COMMENT 'Identifiant douleur parente',
  `infos_generales` varchar(2000) DEFAULT NULL COMMENT 'Description générale, avertissements',
  `recommandations` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `nomenclature_nomenclature_fk` (`id_parent`),
  CONSTRAINT `nomenclature_nomenclature_fk` FOREIGN KEY (`id_parent`) REFERENCES `nomenclature` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nomenclature`
--

LOCK TABLES `nomenclature` WRITE;
/*!40000 ALTER TABLE `nomenclature` DISABLE KEYS */;
INSERT INTO `nomenclature` VALUES (1,'Douleur post opératoire',NULL,NULL,NULL),(2,'Cardiovasculaire',1,NULL,NULL),(3,'Gynécologique',1,NULL,NULL),(4,'Orthopédique',1,NULL,NULL),(5,'Tête et cou',1,NULL,NULL),(6,'Uro-néphrologique',1,NULL,NULL),(7,'Viscéral',1,NULL,NULL),(8,'Chirurgie coronaire',2,'Intensité de la douleur postopératoire:\r\n- EVA au repos  = 10 à 30 mm \r\n- EVA à la toux, kinésithérapie et mobilisation = 40 à 60 mm \r\nIntensité maximale entre J2-J3 postopératoire \r\nDouleurs chroniques scapulaires rapportées jusqu\'à 28 mois chez 39% des patients \r\nDouleurs pariétale antérieures souvent bilatérales et prolongées dues à un prélèvement et donc à la dissection d\'une ou des deux artères mammaires internes. \r\nDe plus, le site de prélèvement d\'une veine saphène pour greffon au niveau de la jambe ou de la cuisse occasionne des douleurs parfois plus intenses que l\'incision sternale; \r\nMême remarque pour la dissection d\'une artère radiale. \r\nDouleur beaucoup plus intense après dissection de l\'artère gastroépiploïque requérant une laparotomie sus-ombilicale. \r\nOutre l\'abord cardiaque par sternotomie, il est proposé actuellement une thoracotomie antérieure gauche avec vidéoassistance et monopontage coronaire avec ou sans CEC**: dans ce cas, l\'intensité de la douleur est plus élevée que par sternotomie plus spécialement à la mobilisation.\r\nBénéfice clinique d\'une kinésithérapie respiratoire et de mobilisation précoce, régulière et prolongée, en particulier sur les douleurs résiduelles ou chroniques\r\n',NULL),(9,'Chirurgie périphérique',2,'* Douleur postopératoire élevée (EVA 60 mm) en cas de pontage vasculaire (fémoro-poplitée). L\'analgésie périmédullaire améliore la qualité des pontages, passée la période postopératoire immédiate, l\'analgésie par voie orale peut être envisagée en relais. \r\n* Durée de la douleur : 24 h à 3 jours en l\'absence de complications. Cependant la persistance de douleurs au niveau des lésions trophiques est plus prolongée et les soins locaux sont facilités par la réalisation de blocs périphériques \r\n* En postopératoire la survenue de douleurs intenses au niveau du membre \r\nopéré nécessite d\'éliminer une occlusion du pontage.  \r\nDes douleurs neuropatiques (ex. cruralgie, douleur sur le trajet des cicatrices) peuvent survenir dans 1/4 des cas et nécessitent une prise en charge spécifique. ',NULL),(10,'Chirurgie valvulaire',2,'Intensité de la douleur postopératoire :  \r\nEVA au repos = 10 à 30 mm  \r\nEVA à la toux, kinésithérapie et mobilisation = 40 à 60 mm  \r\nIntensité maximale entre J2-J3 postopératoire \r\n* Douleurs chroniques scapulaires rapportées jusqu\'à 28 mois chez 39 % des patients \r\n* Douleurs prédominant initialement au niveau de l\'incision sternale (68 %), des drains \r\nmédiastinaux (15 %) puis accentuées avec le temps (J5-J7) au niveau scapulo-huméral et \r\ndorsal (15-35 %) \r\n* Abord par thoracotomie pour la chirurgie valvulaire mitrale sous CEC** plus rare qu\'en chirurgie coronaire, mais la thoracotomie droite est souvent choisie pour la fermeture de la communication interauriculaire et donc source de douleurs d\'intensité plus élevée qu\'après sternotomie \r\nBénéfice clinique d\'une kinésithérapie respiratoire et de mobilisation précoce, régulière et prolongée, en particulier sur les douleurs résiduelles ou chroniques ',NULL),(11,'Césarienne    ',3,'Chirurgie à douleur forte \r\n* Intensité douloureuse maximale durant les 24 premières heures postopératoires, \r\npuis s\'estompe progressivement en 1 à 2 jours. La consommation de morphine est importante pendant cette période : titration et PCA** peuvent atteindre 60-75 mg en moyenne sur 24 h2  \r\n* Origine des douleurs après césarienne : elle est double, cicatrice et contractions utérines, renforcées par l\'utilisation d\'ocytociques \r\n* L\'analgésie doit présenter un minimum de contraintes et de sédation pour permettre \r\nà la mère de se sentir rapidement en mesure de prendre en charge son nouveau-né et ne pas altérer la relation mère-enfant \r\n* L\'analgésie est le complément logique de la technique anesthésique utilisée en \r\npréopératoire, qui est elle même déterminée par les circonstances de la césarienne et par la structure hospitalière sous-jacente ','Codéine contre-indiquée par prudence pendant l\'allaitement \r\nkétoprofène en surveillant la tolérance gastroduodénale '),(12,'Chirurgie sein  ',3,'- Intensité faible à modérée selon le type d\'intervention (de la tumorectomie simple à \r\nla mastectomie avec curage axillaire) \r\n- Risque élevé de douleur chronique en rapport avec une douleur située sur la paroi \r\n(cicatrice), une douleur de sein fantÃ´me ou une douleur d\'épaule ou du bras  \r\nL\'incidence, tout type de douleur confondue, peut atteindre 50 % des patientes \r\n* Douleur sévère pour la chirurgie avec reconstruction \r\n* Durée : 2-3 jours ','Kétoprofène en surveillant la tolérance gastroduodénale,  \r\n5 jours de traitement maximum '),(13,'Hystérectomie  voie basse',3,'Douleur postopératoire modérée \r\n* Durée ≤ 2 jours \r\n* Trois composantes à la douleur : viscérale (laparotomie et voie vaginale), pariétale (surtout laparotomie) et référée (douleur scapulaire \r\nsurtout après coelioscopie) ','Kétoprofène en surveillant la tolérance gastroduodénale '),(14,'Hystérectomie Laparotomie',3,'Douleur postopératoire forte, EVA moyenne > 50 mm \r\n* Durée de la douleur postopératoire : laparotomie par voie transverse (Pfannenstiel) ≤ 2 jours, \r\nEVA médiane = 42 mm à J2, laparotomie par voie médiane sous ombilicale ≥ 2 jours \r\n* Consommation moyenne de morphine (PCA IV) durant les premières 48 h : 36 ± 14 mg, 83 à 100 mg pendant 60 h \r\n* Trois composantes à la douleur : viscérale (laparotomie et voie vaginale), pariétale (surtout laparotomie) et référée (douleur scapulaire surtout après coelioscopie) ','Kétoprofène en surveillant la tolérance gastroduodénale '),(15,'Hystérectomie voie coélioscopique',3,'Durée de la douleur postopératoire ≤ 2 jours \r\n* Douleur postopératoire modérée : EVA médiane = 36 mm à J2 \r\n* Consommation moyenne de morphine (PCA IV) durant les 48 premières heures : 21 ± 14 mg \r\n* Trois composantes à la douleur : viscérale (laparotomie et voie vaginale), pariétale (surtout laparotomie) et référée (douleur scapulaire surtout après coelioscopie) ','Kétoprofène  en surveillant la tolérance gastroduodénale '),(16,'Arthroscopie    ',4,'Habituellement faible (EVA = 20-30 mm) Durée < 48 h ','kétoprofène en surveillant la tolérance gastroduodénale'),(17,'Canal carpien ',4,'Douleur postopératoire habituellement modérée (0 mm ‹ EVA ‹ 30 mm à 24 h) \r\nEn postopératoire immédiat moins de 1,5 % des patients présentent des douleurs sévères \r\nDurée de la douleur au repos ≤ 48 h ','Les Coxibs n\'ont pas l\'AMM dans la douleur postopératoire '),(18,'Chirurgie épaule ',4,'Durée de la douleur postopératoire : 3-5 j \r\nAprès les acromioplasties et les arthroscopies, douleur modérée (EVA  40 mm) durant 24-48 h \r\nAprès les réparations de la coiffe des rotateurs, les arthrolyses, les prothèses et certaines fractures de la tête humérale, douleur sévère (EVA = 40-100 mm) ','kétoprofène en surveillant la tolérance gastroduodénale \r\nDurée de traitement maximum conseillée : 5 jours '),(19,'Fixation rachidienne   ',4,'Douleur postopératoire intense (EVA > 70 mm) qui peut être prolongée (> 48 h) \r\nDouleur liée à une prise de greffon iliaque qui peut s\'associer à la douleur rachidienne ','kétoprofène en surveillant la tolérance gastroduodénale '),(20,'Fracture du col fémoral sujet agé ',4,'Niveau et durée de la douleur post opératoire : modérée pendant 2-3 jours ; la douleur peut durer en moyenne 7 jours ','kétoprofène en surveillant la tolérance gastroduodénale \r\nLa réapparition d\'une douleur à distance de l\'intervention impose un examen clinique du patient '),(21,'Hallus valgus ',4,'Douleur postopératoire intense : 2-3 jours. Avec PCA** et PCRA***, EVA = 15 mm au repos et 40 mm au mouvement.  \r\nAvec bloc sciatique, 5 mm < EVA < 20 mm \r\nDouleur due à la mobilisation précoce et obligatoire en raison du risque thrombo-embolique \r\nDouleur après la sortie : 3-6 semaines \r\nSuites simples si douleur correctement prise en charge \r\n** PCA : patient controlled analgesia (analgésie auto-controlée par le patient) \r\n*** PCRA : Patient controlled regional analgesia (analgésie par voie périnerveuse controÌ‚lée par le patient) ','kétoprofène en surveillant la tolérance gastroduodénale \r\nMorphine en analgésie de secours '),(22,'Hernie discale ',4,'Modérée : durée ‹ 48 h \r\nL\'analgésie postopératoire de la chirurgie du rachis doit assurer le confort de l\'opéré sans entraver le dépistage et le traitement des complications neurologiques immédiates ou précoces. Ceci limite l\'utilisation des anesthésiques locaux dans l\'arsenal thérapeutique habituel de la DPO \r\nL\'analgésie postopératoire après cure de hernie discale est de préférence une analgésie multimodale donnant une large place aux AINS ','\r\nLa réapparition d\'une douleur à distance de l\'intervention impose un examen clinique du patient  \r\nUn AINS différent du kétoprofène est utilisable par voie orale '),(23,'Ligamentoplastie  arthroscopie ',4,'EVA = 50 ± 40 mm (extrêmes : 40-70 mm) pendant 3 jours (2-6 jours)1,2  \r\nEVA = 60-70 mm à la mobilisation \r\nConsommation horaire de morphine élevée : 4,6 ± 1,6 mg/h2 ','kétoprofène en surveillant la tolérance gastroduodénale '),(24,'Ostéotomie tibiale ou fémorale ',4,'Douleur très intense pendant 24-48 h mais plus rapidement régressive que lors \r\nd\'une arthroplastie du genou ','kétoprofène en surveillant la tolérance gastroduodénale et en l\'absence de contre-indication '),(25,'Prothèse de genou ',4,'Intense pendant plus de 48 h1 \r\nDurée : au moins 2 mois après la sortie2 \r\nUne douleur préopératoire importante est prédictive de la douleur postopératoire3 \r\nLe bloc fémoral assure l\'essentiel de l\'efficacité analgésique. Les antalgiques morphiniques et non morphiniques assurent le complément d\'analgésie ','kétoprofène en surveillant la tolérance gastroduodénale '),(26,'Prothèse de hanche ',4,'Fortes douleurs postopératoires : EVA > 60 mm dans 60-70 % augmentant lors de la mobilisation \r\nDurée estimée : 36 à 72 h selon les équipes avec une acmé survenant entre 3 et 6 h \r\nDans la majorité des cas, les opérés présentent des douleurs avant l\'intervention qui peuvent majorer la douleur postopératoire \r\nRythme de la douleur avec une composante inflammatoire : en statique, recrudescence nycthémérale en 2e partie de nuit. \r\nParoxysmes douloureux lors des gestes de soins et de nursing ',NULL),(27,'Amygdalectomie',5,'Douleur postopératoire d\'intensité sévère et de durée supérieure à 48 heures \r\nEVA moyenne de 65 mm à J1 \r\nDurée prévisible : 7 à 10 jours. Elle est maximale pendant les 4 premiers jours puis diminue progressivement \r\nDouleur essentiellement liée à la lésion des piliers amygdaliens auxquels adhèrent les amygdales (adhérences favorisées par les angines à répétition) \r\nDouleur continue avec des épisodes paroxystiques et dynamiques lors de la stimulation des piliers amygdaliens.  \r\nIls sont responsables d\'une sialorrhée, d\'un refus de l\'alimentation (douleur intense pendant la déglutition) et d\'un mutisme chez certains enfants (lié aux douleurs lors de la phonation) \r\nLa douleur peut être responsable de troubles du sommeil (réveils multiples lors des paroxysmes douloureux ou lors d\'une déglutition nocturne) \r\nUne douleur référée à type d\'otalgie peut exister (notamment pendant la déglutition) ','Conseils diététiques (alimentation liquide, mixée, tiède ou froide - glaces ou sucettes glacées - réhydratation importante en évitant les boissons acides ou gazeuses) \r\nReprise d\'une alimentation normale à partir du 3e jour \r\nAntibiothérapie (amoxicilline ou cefpodoxime) pendant 5 à 7 jours. Elle favorise une reprise plus rapide de l\'alimentation et d\'une activité normale \r\nUne cure courte de corticoiÌˆdes (1 mg/kg pendant moins de 7 jours) peut être proposée à visée antalgique et antiémétique '),(28,'Adénome prostate',6,'Douleur postopératoire : \r\nIntense pendant 48 h (EVA  50-60 mm) après adénomectomie par voie haute \r\nModérée à faible jusqu\'à J4-J5 postopératoire ',NULL),(29,'Cholécystectomie sous coelioscopie',7,'Faible à modérée \r\n3 composantes à la douleur : viscérale, paroi et référée (douleur de l\'épaule) 1,2  \r\n* EVA moyenne = 40 mm pendant 24 h \r\n* EVA  50mm chez 30% des patients \r\nMajorée par la toux \r\nIndépendante de la durée du pneumopéritoine \r\nConsommation de morphine : en moyenne 20 mg les premières 24 h \r\nLa voie coelioscopique abaisse le niveau de douleur vs laparotomie sous-costale ',NULL),(30,'Colectomie laparotomie ',7,'Intense : 2-3 jours \r\nModérée à faible jusqu\'au 7e jour postopératoire \r\nAprès traitement par morphine, EVA = 30-35 mm au repos, EVA = 45-55 mm à la toux \r\nLes doses de morphine reçues par PCA** IV : 35-50 mg les 24 premières heures ± AINS1 \r\nDiminution progressive jusqu\'à une intensité faible (EVA = 20-25 mm) à J5-J6 avec une diminution de consommation de morphine : - 40 % à J22\r\n','kétoprofène en surveillant la tolérance gastroduodénale du patient  \r\nUn AINS différent du kétoprofène est utilisable par voie orale \r\nLa réapparition d\'une douleur à distance de l\'intervention impose un examen clinique\r\n'),(31,'Gastrectomie',7,'Douleur postopératoire très intense de J1 à J3. Sous morphine péridurale :  \r\nEVA = 30-80 mm au repos. EVA = 55-100 mm à la toux \r\nDouleur postopératoire faible à modérée jusqu\'à J7\r\n',NULL),(32,'Hémorroidectomie',7,'Chirurgie douloureuse :  \r\nEVA  50 mm les premières heures malgré un AINS et une infiltration locale, avec une exacerbation lors de la première selle (EVA=70 mm) \r\n50 à 60 % des malades ont une douleur sévère au repos \r\nLes techniques à plaie ouverte (type Milligan-Morgan) sont plus douloureuses  \r\nSévère : durée 48 h en moyenne mais elle peut persister jusqu\'au 8e jour postopératoire \r\nLes techniques à plaie fermée sont moins douloureuses (Reis-Neto ou Longo)\r\n','Il faut prescrire des médicaments diminuant la constipation pour éviter au malade les efforts expulsifs douloureux [association PEG (2 sachets/j) + vaseline (2 applic./j)]'),(33,'Hépatectomie',7,'Intense 2-3 jours \r\nScores de douleur avec morphine : EVA = 30-35 mm au repos, EVA = 45-55 mm à la toux Diminution progressive jusqu\'à intensité faible, EVA = 20-25 mm à J5-J6 \r\nDoses de morphine par PCA** IV : 35-50 mg les 24 premières heures ; - 40 % à J2\r\n',NULL),(34,'Hernie inguinale ',7,'Douleur postopératoire variable selon le type de chirurgie. \r\nRéputée forte après réparation sous tension et plutoÌ‚t faible à modérée pendant les 24-48 premières heures après techniques sans tension ou après réparation laparoscopique\r\nDouleur incisionnelle majorée par la toux et la mobilisation \r\nJusqu\'à 10 % des patients ont une douleur plus d\'un mois après la chirurgie, avec allodynie et hyperalgésie. En général, ces douleurs disparaissent mais elles peuvent aussi se prolonger plus de 4 mois et devenir chroniques. Une atteinte de nerfs périphériques est souvent évoquée  \r\n','La convalescence moyenne est de 2 à 3 semaines. Il n\'y a pas de relation prouvée entre durée de convalescence sans efforts physiques et douleur ou récidive'),(35,'Oesophagectomie',7,'Douleur postopératoire forte à intense, majorée par la mobilisation et la toux. \r\nLa thoracotomie augmente l\'intensité (3-5 j) de la douleur et peut occasionner des douleurs neuropathiques chroniques \r\nLe réveil après oesophagectomie est progressif (après réchauffement, stabilisation des paramètres hémodynamiques et ventilatoires). Même si des protocoles d\'extubation rapide (fast-track) sont désormais souvent applicables, le maintien d\'une sédation pendant quelques heures en postopératoire est souvent nécessaire et doit être mis à profit pour optimiser la stratégie analgésique ',NULL),(36,'Thoracotomie',7,'Douleur post-opératoire particulièrement intense de J0 à J3 (EVA = 100 mm au repos) \r\nDouleur importante jusqu\'à l\'ablation des drains thoraciques réalisée en moyenne à J4 \r\nMultiples composantes de la douleur : origine thoracique (incision, distension des ligaments costo-transverses, plèvre), et très fréquemment douleurs de l\'épaule d\'origine cervicale (C4) liées à une irritation phrénique (80 % des cas)  ',NULL),(37,'Thyroidectomie',7,'Modérée1 (ENS = 55 mm +/- 10 mm)2-5; augmente à la déglutition \r\nDurée : 1-2 jours2,5 \r\nIl faut distinguer une thyroiÌˆdectomie simple d\'une thyroiÌˆdectomie pour cancer avec \r\ncurages ganglionnaires unis et bilatéraux qui augmentent la durée de la chirurgie et les scores de douleurs postopératoires. La majorité des études ont inclus des thyroiÌˆdectomies simples, lobectomie ou thyroiÌˆdectomie totale sans curage ',NULL),(38,'Enfant',NULL,NULL,NULL),(39,'Abdominal',38,NULL,NULL),(40,'Digestif et coliques',39,NULL,NULL),(41,'Tête et cou',38,'',NULL),(42,'Migraine',41,'La migraine est la céphalée primaire la plus fréquente chez l\'enfant. Elle touche 5 à 10 % des enfants.  \r\nL\'ibuprofène 10 mg/kg doit être privilégié en traitement de crise (Grade A). Le paracétamol 15 mg/kg reste néanmoins un traitement de crise souvent efficace. Le sumatriptan nasal est à utiliser en deuxième intention à partir de 12 ans (Grade B).  \r\nOn ne doit pas donner d\'opioides (faibles et forts) en traitemenrt de crise.  \r\nAucune étude de qualité ne permet d\'émettre de recommandation pour le traitement médicamenteux de fond de la migraine de l\'enfant (Grade A). Les méthodes psychocorporelles (relaxation, auto- hypnose...) peuvent être recommandées (Accord professionnel).  ',NULL),(43,'Rhume Rhinite',41,'Les douleurs étant souvent modérées, il est recommandé de prescrire en première intention un antalgique de palier 1. Le paracétamol et l\'ibuprofène semblent d\'efficacité équivalente dans cette indication (Grade B).  \r\nL\'intensité des douleurs engendrées par ce type de pathologie peut nécessiter la prescription d\'un antalgique de niveau 2 (Accord professionnel).  \r\nUne corticothérapie orale de courte durée en association à l\'antibiothérapie peut se discuter en cas d\'angine streptococcique avec douleurs sévères, chez l\'enfant à partir de 5 ans (Grade B).  ',NULL),(44,'Otite',41,'L\'intensité de la douleur de l\'otite peut conduire à recommander une association d\'antalgiques. Il est recommandé d\'utiliser le paracétamol et l\'ibuprofène (Grade B). En cas de douleur sévère et persistante, on peut recommander la codéine orale à partir de l\'âge d\'un an (Accord professionnel).  \r\nChez l\'enfant de plus d\'un an, des gouttes auriculaires contenant un anesthésique local peuvent être prescrites dans l\'otite moyenne congestive, l\'otite phlycténulaire et l\'otite barotraumatique, en l\'absence de perforation tympanique (Grade C).  ',NULL),(45,'Aigüe traumatique ou médicale',NULL,'',NULL),(46,'Abdominal',45,NULL,NULL),(47,'Arthropathie',45,NULL,NULL),(48,'Cutané',45,NULL,NULL),(49,'Osseux',45,NULL,NULL),(50,'Rachis',45,NULL,NULL),(51,'Tête et cou',45,NULL,NULL),(52,'Neuropathique',NULL,NULL,NULL),(53,'Neuro périphérique',52,NULL,NULL);
/*!40000 ALTER TABLE `nomenclature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordonnance_prescrite`
--

DROP TABLE IF EXISTS `ordonnance_prescrite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordonnance_prescrite` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `id_douleur` bigint NOT NULL,
  `id_ordo_type` bigint NOT NULL,
  `description` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `preconisation_ordonnance_fk` (`id_douleur`),
  KEY `preconisation_ordonnance_fk_1` (`id_ordo_type`),
  CONSTRAINT `preconisation_ordonnance_fk` FOREIGN KEY (`id_douleur`) REFERENCES `nomenclature` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `preconisation_ordonnance_fk_1` FOREIGN KEY (`id_ordo_type`) REFERENCES `ordonnance_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Association d''un protocole douleur de la nomenclature avec une ordonnance type';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordonnance_prescrite`
--

LOCK TABLES `ordonnance_prescrite` WRITE;
/*!40000 ALTER TABLE `ordonnance_prescrite` DISABLE KEYS */;
/*!40000 ALTER TABLE `ordonnance_prescrite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordonnance_type`
--

DROP TABLE IF EXISTS `ordonnance_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordonnance_type` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordonnance_type`
--

LOCK TABLES `ordonnance_type` WRITE;
/*!40000 ALTER TABLE `ordonnance_type` DISABLE KEYS */;
INSERT INTO `ordonnance_type` VALUES (21,'Paracétamol 400 ou 500 mg + Codéine 20 ou 30 mg'),(22,'Paracétamol 400 ou 500 mg + Poudre d\'opium 25 mg'),(23,'Tramadol 50 mg'),(24,'Paracétamol 1000 mg ; Kétoprofène 150 mg'),(25,'Paracétamol 400 ou 500 mg + Poudre d\'opium 25 mg ; Kétoprofène 150 mg'),(26,'Paracétamol 400 ou 500 mg + Codéine 20 ou 30 mg ; Kétoprofène 150 mg'),(27,'Paracétamol 1000 mg ; Kétoprofène LP 100 mg'),(28,'Paracétamol 1000 mg'),(29,'Paracétamol 1000 mg ; Rofécoxib 25 mg'),(30,'Célécoxib 100 mg'),(31,'Paracétamol 400 ou 500 mg + Codéine 20 ou 30 mg ; Kétoprofène 100 mg'),(32,'Paracétamol 400 ou 500 mg ; Morphine LI 10 ou 20 mg ; Kétoprofène 100 mg'),(33,'Paracétamol 375 mg + Tramadol 37.5 mg'),(34,'Paracétamol 375 mg + Tramadol 37.5 mg ; Morphine LI 10 mg'),(35,'Tramadol 50 mg ; Kétoprofène 150 mg'),(36,'Paracétamol 500 mg + Codéine 30 mg'),(37,'Kétoprofène 150 mg'),(38,'Paracétamol 500 mg'),(41,'Fentanyl patch 25 µg/h'),(43,'Paracétamol 500 mg ; Fentanyl patch 25 µg/h'),(45,'Morphine LI 10 ou 20 mg');
/*!40000 ALTER TABLE `ordonnance_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preconisation`
--

DROP TABLE IF EXISTS `preconisation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `preconisation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `id_douleur` bigint NOT NULL COMMENT 'Identifiant de la douleur',
  `description` varchar(400) NOT NULL,
  `duree_min` int DEFAULT NULL COMMENT 'Durée minimum en jours',
  `duree_max` int DEFAULT NULL COMMENT 'Durée maximum en jours',
  `recommandation` varchar(100) DEFAULT NULL,
  `num_ordonnance` int NOT NULL COMMENT 'N° ordonnance proposée pour la douleur',
  `num_medicament` int NOT NULL DEFAULT '1' COMMENT 'N° du médicament pour l''ordonannce proposée',
  `formes` varchar(100) DEFAULT NULL,
  `frequence_min` int DEFAULT NULL COMMENT 'Nb de fois par jour minimum',
  `frequence_max` int DEFAULT NULL COMMENT 'Nb de fois par jour maximum',
  `frequence_autre` varchar(50) DEFAULT NULL COMMENT 'Exemple: matin, midi et soir ',
  `quantite_min` int DEFAULT NULL COMMENT 'Quantité minimum à chaque prise',
  `quantite_max` int DEFAULT NULL COMMENT 'Quantité maximum à chaque prise',
  PRIMARY KEY (`id`),
  UNIQUE KEY `preconisation_un` (`id_douleur`,`num_ordonnance`,`num_medicament`),
  CONSTRAINT `preconisation_nomenclature_fk` FOREIGN KEY (`id_douleur`) REFERENCES `nomenclature` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preconisation`
--

LOCK TABLES `preconisation` WRITE;
/*!40000 ALTER TABLE `preconisation` DISABLE KEYS */;
INSERT INTO `preconisation` VALUES (14,8,'Paracétamol (400 ou 500 mg) + Poudre d\'opium 25 mg   ; (1 ou 2) (comprimé(s) ou gélule(s)) ;  matin, midi et soir  ; Pendant (5 à 10) jours  ',NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL),(15,8,'Paracétamol (400 ou 500 mg) + Codéine (20 ou 30 mg)   ; (1 à 2) (comprimé(s) ou gélule(s); matin, midi et soir  ; Pendant (5 à 10) jours ',NULL,NULL,NULL,2,1,NULL,NULL,NULL,NULL,NULL,NULL),(16,8,'Tramadol 50 mg  ; (1 à 2) (comprimé(s) ou gélule(s)) ; matin, midi et soir  ; Pendant (5 à 10) jours ',NULL,NULL,NULL,3,1,NULL,NULL,NULL,NULL,NULL,NULL),(17,9,'Paracétamol (400 ou 500 mg) + Poudre d\'opium 25 mg  ; 2 (comprimé(s) ou gélule(s); quatre fois par jour  ; Pendant 8 jours ',NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL),(18,9,'Paracétamol (400 ou 500 mg) + Codéine (20 ou 30 mg) ; 2 (comprimé(s) ou gélule(s)); quatre fois par jour ; Pendant 8 jours',NULL,NULL,NULL,2,1,NULL,NULL,NULL,NULL,NULL,NULL),(19,10,'Paracétamol (400-500 mg) + Poudre d\'opium (25 mg) = Izalgi ; 1-2 cp ou gél/8 h ; Duré du traitement: 5 à 10 jours',NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL),(20,10,'Paracétamol (400-500 mg) + Codéine (20-30 mg) = Codoliprane, Dafalgan codeiné, Efferalgan codeiné ; 1-2 cp ou gél/8 h ; Duré du traitement: 5 à 10 jours',NULL,NULL,NULL,2,1,NULL,NULL,NULL,NULL,NULL,NULL),(21,10,'Tramadol (50 mg) ; 1-2 cp ou gél/8 h ; Duré du traitement: 5 à 10 jours',NULL,NULL,NULL,3,1,NULL,NULL,NULL,NULL,NULL,NULL),(22,11,'Paracétamol (400 ou 500 mg) + Poudre d\'opium 25 mg ; (1 ou 2) (comprimé(s) ou gélule(s)); trois fois par jour ; Pendant 10 jours',NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL),(23,11,'Paracétamol (400 ou 500 mg) + Codéine (20 ou 30 mg) ; (1 ou 2 )(comprimé(s) ou gélule(s))trois fois par jour ; Pendant 10 jours',NULL,NULL,NULL,2,1,NULL,NULL,NULL,NULL,NULL,NULL),(24,11,'Paracétamol 1g ; 1 (comprimé(s) ou gélule(s)); quatre fois par jour ; Pendant 10 jours',NULL,NULL,NULL,3,1,NULL,NULL,NULL,NULL,NULL,NULL),(25,11,'Kétoprofène 150 mg ; 1 (comprimé(s) ou gélule(s)); matin et soir ; Duré du traitement: 10 jours',NULL,NULL,NULL,3,2,NULL,NULL,NULL,NULL,NULL,NULL),(26,12,'Paracétamol (400 ou 500 mg) + Poudre d\'opium 25 mg ; 2 (comprimé(s) ou gélule(s)); matin, midi et soir ; Pendant 7 jours',NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL),(27,12,'Kétoprofène 150 mg ; 2 (comprimé(s) ou gélule(s)); matin et soir ; Pendant 5 jours',NULL,NULL,NULL,1,2,NULL,NULL,NULL,NULL,NULL,NULL),(28,12,'Paracétamol (400 ou 500 mg) + Codéine (20 ou 30 mg) ; 2 (comprimé(s) ou gélule(s)); matin, midi et soir ; Pendant 7 jours',NULL,NULL,NULL,2,1,NULL,NULL,NULL,NULL,NULL,NULL),(29,12,'Kétoprofène 150 mg ; 2 (comprimé(s) ou gélule(s)); une fois par jour ; Pendant 5 jours',NULL,NULL,NULL,2,2,NULL,NULL,NULL,NULL,NULL,NULL),(30,13,'Paracetamol 1 g ; 1 (comprimé ou gélule); quatre fois par jours ; Pendant (5 à 7) jours',NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL),(31,13,'Kétoprofène LP 100 mg ; 1 (comprimé ou gélule); matin et soir ; Pendant (5 à 7) jours',NULL,NULL,NULL,1,2,NULL,NULL,NULL,NULL,NULL,NULL),(32,13,'Paracétamol (400 ou 500 mg) + codéine : (20 ou 30 mg) ; (1 ou 2) (comprimé(s) ou gélule(s)); matin, midi et soir ; Pendant (5 à 7) jours',NULL,NULL,NULL,2,1,NULL,NULL,NULL,NULL,NULL,NULL),(33,13,'Tramadol 50 mg ; (1 ou 2) (comprimé(s) ou gélule(s)); quatre fois par jour ; Pendant (5 à 7) jours',NULL,NULL,NULL,3,1,NULL,NULL,NULL,NULL,NULL,NULL),(34,14,'Paracetamol 1 g ; 1 (comprimé ou gélule); quatre fois par jour ; Pendant (5 à 7) jours',NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL),(35,14,'Kétoprofène LP 100 mg ; 1 (comprimé ou gélule); matin et soir ; Pendant (5 à 7) jours',NULL,NULL,NULL,1,2,NULL,NULL,NULL,NULL,NULL,NULL),(36,14,'Paracétamol (400 ou 500 mg) + codéine : (20 ou 30 mg) ; (1 ou 2) (comprimé(s)ou gélule(s)); matin, midi et soir ; Pendant (5 à 7) jours',NULL,NULL,NULL,2,1,NULL,NULL,NULL,NULL,NULL,NULL),(37,14,'Tramadol 50 mg ; (1 ou 2) (comprimé(s)ou gélule(s)); quatre fois par jour ; Pendant (5 à 7) jours',NULL,NULL,NULL,3,1,NULL,NULL,NULL,NULL,NULL,NULL),(38,15,'Paracetamol 1 g ; 1 (comprimé ou gélule); quatre fois par jour ; Pendant (5 à 7) jours',NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL),(39,15,'Kétoprofène LP 100 mg ; 1 (comprimé ou gélule); matin et soir ; Pendant (5 à 7) jours',NULL,NULL,NULL,1,2,NULL,NULL,NULL,NULL,NULL,NULL),(40,15,'Paracétamol (400 ou 500 mg) + codéine : (20 ou 30 mg) ; (1 ou 2) (comprimé(s) ou gélule(s)); matin, midi et soir ; Pendant (5 à 7) jours',NULL,NULL,NULL,2,1,NULL,NULL,NULL,NULL,NULL,NULL),(41,15,'Tramadol 50 mg ; (1 ou 2) (comprimé(s) ou gélule(s)); quatre fois par jour ; Pendant (5 à 7) jours',NULL,NULL,NULL,3,1,NULL,NULL,NULL,NULL,NULL,NULL),(42,16,'Paracétamol 1 g ; 1 (comprimé ou gélule); quatre fois par jour ; Pendant (3 à 7) jours',NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL),(43,16,'Paracétamol 1 g ; 1 (comprimé ou gélule); quatre fois par jour ; Pendant (3 à 7) jours ; Antalgique de niveau 2',NULL,NULL,NULL,2,1,NULL,NULL,NULL,NULL,NULL,NULL),(44,16,'Paracétamol 1 g ; 1 (comprimé ou gélule); quatre fois par jour ; Pendant (3 à 7) jours',NULL,NULL,NULL,3,1,NULL,NULL,NULL,NULL,NULL,NULL),(45,16,'Kétoprofène LP 100 mg ; 1 (comprimé ou gélule); matin et soir ; Pendant (3 à 7) jours',NULL,NULL,NULL,3,2,NULL,NULL,NULL,NULL,NULL,NULL),(46,16,'Paracétamol 1 g ; 1 (comprimé ou gélule); quatre fois par jour ; Pendant (3 à 7) jours',NULL,NULL,NULL,4,1,NULL,NULL,NULL,NULL,NULL,NULL),(47,16,'Kétoprofène LP 100 mg ; 1 (comprimé ou gélule); matin et soir ; Pendant (3 à 7) jours ; Antalgique de niveau 2',NULL,NULL,NULL,4,2,NULL,NULL,NULL,NULL,NULL,NULL),(48,17,'Paracetamol 1 g ; 1 (comprimé ou gélule); quatre fois par jour ; Pendant 7 jours',NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL),(49,17,'Rofécoxib 25 mg ; 1 (comprimé ou gélule); le matin ; Pendant 7 jours',NULL,NULL,NULL,1,2,NULL,NULL,NULL,NULL,NULL,NULL),(50,17,'Paracétamol (400 ou 500 mg) + Poudre d\'opium 25 mg ; (1 ou 2) (comprimé(s) ou gélule(s)) ; matin, midi et soir ; Pendant (5 à 10) jours',NULL,NULL,NULL,2,1,NULL,NULL,NULL,NULL,NULL,NULL),(51,17,'Paracétamol (400 ou 500 mg) + Codéine (20 ou 30 mg) ; (1 à 2) (comprimé(s) ou gélule(s); matin, midi et soir ; Pendant (5 à 10) jours',NULL,NULL,NULL,3,1,NULL,NULL,NULL,NULL,NULL,NULL),(52,17,'Célécoxib 100 mg ; 1 (comprimé ou gélule); matin et soir ; Pendant 7 jours',NULL,NULL,NULL,4,1,NULL,NULL,NULL,NULL,NULL,NULL),(53,18,'Paracétamol (400 ou 500 mg) + Poudre d\'opium 25 mg ; (1 ou 2) (comprimé(s) ou gélule(s)) ; matin, midi et soir ; Pendant 10 jours',NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL),(54,18,'Paracétamol (400 ou 500 mg) + Codéine (20 ou 30 mg) ; (1 à 2) (comprimé(s) ou gélule(s); matin, midi et soir ; Pendant 10 jours',NULL,NULL,NULL,2,1,NULL,NULL,NULL,NULL,NULL,NULL),(55,18,'Tramadol 50 mg ; (1 à 2) (comprimé(s) ou gélule(s)) ; quatre fois par jour ; Pendant 10 jours',NULL,NULL,NULL,3,1,NULL,NULL,NULL,NULL,NULL,NULL),(56,18,'Paracétamol 1g ; 1 (comprimé ou gélule) ; quatre fois par jour ; Pendant 10 jours',NULL,NULL,NULL,4,1,NULL,NULL,NULL,NULL,NULL,NULL),(57,18,'Kétoprofène 150 mg ; 1 (comprimé ou gélule); matin et soir ; Pendant 5 jours',NULL,NULL,NULL,4,2,NULL,NULL,NULL,NULL,NULL,NULL),(58,18,'Paracétamol 1g ; 1 (comprimé ou gélule) ; quatre fois par jour ; Pendant 10 jours',NULL,NULL,NULL,5,1,NULL,NULL,NULL,NULL,NULL,NULL),(59,19,'Paracétamol (400 ou 500 mg) + Codéine (20 ou 30 mg) ; (1 ou 2) (comprimé(s) ou gélule(s)); matin, midi et soir ; Pendant (10 à 15) jours',NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL),(60,19,'Kétoprofène 100 mg ; 1 (comprimé(s) ou gélule(s)); matin et soir ; Pendant (10 à 15) jours',NULL,NULL,NULL,1,2,NULL,NULL,NULL,NULL,NULL,NULL),(61,19,'Paracétamol (400 ou 500 mg) ; (1 ou 2) (comprimé(s) ou gélule(s)); matin, midi et soir ; Pendant (10 à 15) jours',NULL,NULL,NULL,2,1,NULL,NULL,NULL,NULL,NULL,NULL),(62,19,'Morphine (10 ou 20) mg à libération immédiate ; 1 (comprimé ou gélule); jusqu\'à 6 par jour ; Pendant (10 à 15) jours',NULL,NULL,NULL,2,2,NULL,NULL,NULL,NULL,NULL,NULL),(63,19,'Kétoprofène 100 mg ; 1 (comprimé(s) ou gélule(s)); matin et soir ; Pendant (10 à 15) jours',NULL,NULL,NULL,2,3,NULL,NULL,NULL,NULL,NULL,NULL),(64,20,'Paracétamol (400 ou 500 mg) + Codéine (20 ou 30 mg) ; (1 ou 2) (comprimé(s) ou gélule(s)); matin, midi et soir ; Pendant 7 jours',NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL),(65,20,'Paracétamol 1g ; 1 (comprimé ou gélule); quatre fois par jour ; Pendant 7 jours',NULL,NULL,NULL,2,1,NULL,NULL,NULL,NULL,NULL,NULL),(66,20,'Kétoprofène 100 mg ; 1 (comprimé(s) ou gélule(s)); matin et soir ; Pendant 3 jours maximum',NULL,NULL,NULL,2,2,NULL,NULL,NULL,NULL,NULL,NULL),(67,21,'Paracétamol (400 ou 500 mg) + Codéine (20 ou 30 mg) ; (1 ou 2) (comprimé(s) ou gélule(s)); matin, midi et soir ; Pendant 3 jours',NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL),(68,21,'Kétoprofène LP 100 mg ; 1 (comprimé ou gélule); matin et soir ; Pendant 5 jours',NULL,NULL,NULL,1,2,NULL,NULL,NULL,NULL,NULL,NULL),(69,21,'Paracétamol + Tramadol ; (1 ou 2) (comprimé(s) ou gélule(s)); matin, midi et soir',NULL,NULL,NULL,2,1,NULL,NULL,NULL,NULL,NULL,NULL),(70,21,'Morphine LI 10 mg ; (1 à 6) (comprimé(s) ou gélule(s));',NULL,NULL,NULL,2,2,NULL,NULL,NULL,NULL,NULL,NULL),(71,22,'Paracétamol (400 ou 500 mg) + Poudre d\'opium 25 mg ; (1 ou 2) (comprimé(s) ou gélule(s)) ; matin, midi et soir ; Pendant 7 jours',NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL),(72,22,'Paracétamol (400 ou 500 mg) + Codéine (20 ou 30 mg) ; (1 à 2) (comprimé(s) ou gélule(s); matin, midi et soir ; Pendant 7 jours',NULL,NULL,NULL,2,1,NULL,NULL,NULL,NULL,NULL,NULL),(73,22,'Tramadol 50 mg ; (1 à 2) (comprimé(s) ou gélule(s)) ; quatre fois par jour ; Pendant 7 jours',NULL,NULL,NULL,3,1,NULL,NULL,NULL,NULL,NULL,NULL),(74,22,'Paracétamol 1g ; 1 (comprimé ou gélule); quatre fois par jour ; Pendant 7 jours',NULL,NULL,NULL,4,1,NULL,NULL,NULL,NULL,NULL,NULL),(75,22,'Kétoprofène 150 mg ; 1 (comprimé ou gélule); matin et soir ; Pendant 3 jours maximum',NULL,NULL,NULL,4,2,NULL,NULL,NULL,NULL,NULL,NULL),(76,23,'Paracétamol 1 g ; 1 (comprimé ou gélule); quatre fois par jour ; Pendant 10 jours',NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL),(77,23,'Kétoprofène 150 mg ; 1 (comprimé ou gélule); matin et soir ; Pendant 10 jours',NULL,NULL,NULL,1,2,NULL,NULL,NULL,NULL,NULL,NULL),(78,23,'Célécoxib 100 mg ; 1 (comprimé ou gélule); matin et soir ; Pendant (3 à 7) jours',NULL,NULL,NULL,2,1,NULL,NULL,NULL,NULL,NULL,NULL),(79,23,'Paracétamol (400 ou 500 mg) + Poudre d\'opium 25 mg ; (1 ou 2) (comprimé(s) ou gélule(s)) ; matin, midi et soir',NULL,NULL,NULL,3,1,NULL,NULL,NULL,NULL,NULL,NULL),(80,23,'Paracétamol (400 ou 500 mg) + Codéine (20 ou 30 mg) ; (1 à 2) (comprimé(s) ou gélule(s); matin, midi et soir',NULL,NULL,NULL,4,1,NULL,NULL,NULL,NULL,NULL,NULL),(81,23,'Tramadol 50 mg ; (1 à 2) (comprimé(s) ou gélule(s)) ; Quatre fois par jour',NULL,NULL,NULL,5,1,NULL,NULL,NULL,NULL,NULL,NULL),(82,24,'Paracétamol (400 ou 500 mg) + Poudre d\'opium 25 mg ; (1 ou 2) (comprimé(s) ou gélule(s)) ; matin, midi et soir ; Pendant 5 jours',NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL),(83,24,'Kétoprofène 150 mg ; 1 (comprimé ou gélule); matin et soir ; Pendant 5 jours',NULL,NULL,NULL,1,2,NULL,NULL,NULL,NULL,NULL,NULL),(84,24,'Paracétamol (400 ou 500 mg) + Codéine (20 ou 30 mg) ; (1 à 2) (comprimé(s) ou gélule(s); matin, midi et soir ; Pendant 5 jours',NULL,NULL,NULL,2,1,NULL,NULL,NULL,NULL,NULL,NULL),(85,24,'Kétoprofène 150 mg ; 1 (comprimé ou gélule); matin et soir ; Pendant 5 jours',NULL,NULL,NULL,2,2,NULL,NULL,NULL,NULL,NULL,NULL),(86,24,'Tramadol 50 mg ; (1 à 2) (comprimé(s) ou gélule(s)) ; Quatre fois par jour ; Pendant 5 jours',NULL,NULL,NULL,3,1,NULL,NULL,NULL,NULL,NULL,NULL),(87,24,'Kétoprofène 150 mg ; 1 (comprimé ou gélule); matin et soir ; Pendant 5 jours',NULL,NULL,NULL,3,2,NULL,NULL,NULL,NULL,NULL,NULL),(88,25,'Paracétamol (400 ou 500 mg) + Codéine (20 ou 30 mg) ; 2 (comprimés) ou gélules); Quatre fois par jour ; Pendant 8 jours',NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL),(89,25,'Paracétamol (400 ou 500 mg) + Codéine (20 ou 30 mg) ; 2 (comprimés) ou gélules); Quatre fois par jour ; Pendant 8 jours',NULL,NULL,NULL,2,1,NULL,NULL,NULL,NULL,NULL,NULL),(90,25,'Kétoprofène 150 mg ; 1 (comprimé ou gélule); matin et soir ; Pendant 8 jours',NULL,NULL,NULL,2,2,NULL,NULL,NULL,NULL,NULL,NULL),(91,26,'Paracétamol (400 ou 500 mg) + Codéine (20 ou 30 mg) ; 2 (comprimés ou gélules); matin, midi et soir ; Pendant (8 à 15) jours',NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL),(92,26,'Paracétamol (375 mg) + Tramadol (37,5 mg) ; (1 à 2)(comprimé(s) ou gélule(s)); Le matin ; Pendant (8 à 15) jours',NULL,NULL,NULL,2,1,NULL,NULL,NULL,NULL,NULL,NULL),(93,27,'Paracétamol 500 mg + Codéine 30 mg ; 2 (comprimés) ou gélules); matin, midi et soir ; Pendant (7 à 10) jours',NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL),(94,28,'Paracétamol 500 mg + Codéine 30 mg ; (1 à 2) (comprimé(s) ou gélule(s)); quatre fois par jour',NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL),(95,28,'Tramadol 50 mg ; 1 (comprimé ou gélule) ; quatre fois par jour',NULL,NULL,NULL,2,1,NULL,NULL,NULL,NULL,NULL,NULL),(96,29,'Paracétamol 1g ; 1 (comprimé ou gélule); quatre fois par jour ; Pendant (5 à 10) jours',NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL),(97,29,'Tramadol 50 mg ; (1 à 2) (comprimé(s) ou gélule(s)) ; matin, midi et soir ; Pendant (5 à 10) jours',NULL,NULL,NULL,2,1,NULL,NULL,NULL,NULL,NULL,NULL),(98,30,'Paracétamol (400 ou 500 mg) + Poudre d\'opium 25 mg ; (1 ou 2) (comprimé(s) ou gélule(s)) ; matin, midi et soir ; Pendant 7 jours',NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL),(99,30,'Paracétamol (400 ou 500 mg) + Codéine (20 ou 30 mg) ; (1 à 2) (comprimé(s) ou gélule(s); matin, midi et soir ; Pendant 7 jours',NULL,NULL,NULL,2,1,NULL,NULL,NULL,NULL,NULL,NULL),(100,30,'Tramadol 50 mg ; (1 à 2) (comprimé(s) ou gélule(s)) ; quatre fois par jour ; Pendant 7 jours',NULL,NULL,NULL,3,1,NULL,NULL,NULL,NULL,NULL,NULL),(101,30,'Paracétamol 1 g ; 1 (comprimé ou gélule); quatre fois par jour ; Pendant 7 jours',NULL,NULL,NULL,4,1,NULL,NULL,NULL,NULL,NULL,NULL),(102,30,'Kétoprofène 150 mg ; 1 (comprimé ou gélule); matin et soir ; Pendant 3 jours',NULL,NULL,NULL,4,2,NULL,NULL,NULL,NULL,NULL,NULL),(103,31,'Paracétamol (400 ou 500 mg) + Poudre d\'opium 25 mg ; (1 ou 2) (comprimé(s) ou gélule(s)) ; matin, midi et soir',NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL),(104,31,'Paracétamol (400 ou 500 mg) + Codéine (20 ou 30 mg) ; (1 à 2) (comprimé(s) ou gélule(s); matin, midi et soir',NULL,NULL,NULL,2,1,NULL,NULL,NULL,NULL,NULL,NULL),(105,31,'Tramadol 50 mg ; (1 à 2) (comprimé(s) ou gélule(s)) ; quatre fois par jour',NULL,NULL,NULL,3,1,NULL,NULL,NULL,NULL,NULL,NULL),(106,31,'Paracétamol 1 g ; 1 (comprimé ou gélule) ; quatre fois par jour ; Pendant (2 à 4) jours',NULL,NULL,NULL,4,1,NULL,NULL,NULL,NULL,NULL,NULL),(107,32,'Paracétamol 1g ; (1 ou 2) (comprimé(s) ou gélule(s)); matin, midi et soir ; Pendant 1 semaine',NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL),(108,32,'Kétoprofène 150 mg ; 1 (comprimé ou gélule); matin et soir ; Pendant (2 à 3) jours',NULL,NULL,NULL,1,2,NULL,NULL,NULL,NULL,NULL,NULL),(109,32,'Paracétamol (400 ou 500 mg) + Poudre d\'opium 25 mg ; (1 ou 2) (comprimé(s) ou gélule(s)) ; matin, midi et soir',NULL,NULL,NULL,2,1,NULL,NULL,NULL,NULL,NULL,NULL),(110,32,'Paracétamol (400 ou 500 mg) + Codéine (20 ou 30 mg) ; (1 à 2) (comprimé(s) ou gélule(s); matin, midi et soir',NULL,NULL,NULL,3,1,NULL,NULL,NULL,NULL,NULL,NULL),(111,33,'Paracétamol (400 ou 500 mg) + Poudre d\'opium 25 mg ; (1 ou 2) (comprimé(s) ou gélule(s)) ; matin, midi et soir ; Pendant (5 à 10) jours',NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL),(112,33,'Paracétamol (400 ou 500 mg) + Codéine (20 ou 30 mg) ; (1 à 2) (comprimé(s) ou gélule(s); matin, midi et soir ; Pendant (5 à 10) jours',NULL,NULL,NULL,2,1,NULL,NULL,NULL,NULL,NULL,NULL),(113,33,'Tramadol 50 mg ; (1 à 2) (comprimé(s) ou gélule(s)) ; quatre fois par jour',NULL,NULL,NULL,3,1,NULL,NULL,NULL,NULL,NULL,NULL),(114,33,'Paracétamol 1g ; 1 (comprimé(s) ou gélule(s)); quatre fois par jour',NULL,NULL,NULL,4,1,NULL,NULL,NULL,NULL,NULL,NULL),(115,33,'Kétoprofène 150 mg ; 1 (comprimé(s) ou gélule(s)); matin et soir',NULL,NULL,NULL,4,2,NULL,NULL,NULL,NULL,NULL,NULL),(116,34,'Paracétamol 1g ; (1 ou 2) (comprimé ou gélule); matin, midi et soir ; Pendant 3 jours',NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL),(117,34,'kétoprofène 150 mg ; 1 (comprimé ou gélule); matin et soir ; Pendant 3 jours',NULL,NULL,NULL,2,1,NULL,NULL,NULL,NULL,NULL,NULL),(118,35,'Paracétamol effervescent 500 mg + Codéine 30 mg ; 2 (comprimés ou gélules); quatre fois par jour',NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL),(119,35,'Paracétamol sublingual 500mg ; 1 (comprimés ou gélule); quatre fois par jour',NULL,NULL,NULL,2,1,NULL,NULL,NULL,NULL,NULL,NULL),(120,35,'Paracétamol sublingual 500 mg ; 1 (comprimés ou gélule); quatre fois par jour ; Fentanyl patch 25 µg/h; si douleur forte (hors AMM)',NULL,NULL,NULL,3,1,NULL,NULL,NULL,NULL,NULL,NULL),(121,35,'Fentanyl patch 25 µg/h; si douleur forte (hors AMM)',NULL,NULL,NULL,4,1,NULL,NULL,NULL,NULL,NULL,NULL),(122,36,'Paracetamol 1 g ; 1 (comprimé ou gélule); quatre fois par jours ; Pendant 2 à 4 jours',NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL),(123,36,'Kétoprofène 150 mg ; 1 (comprimé ou gélule); matin et soir ; Pendant (10 à 15) jours',NULL,NULL,NULL,2,1,NULL,NULL,NULL,NULL,NULL,NULL),(124,36,'Tramadol 50 mg ; (1 ou 2) (comprimé(s) ou gélule(s)); quatre fois par jour',NULL,NULL,NULL,3,1,NULL,NULL,NULL,NULL,NULL,NULL),(125,36,'Morphine 10-20 mg LI ; 1 (comprimé ou gélule); six fois par jours ; Pendant (10 à 15) jours',NULL,NULL,NULL,4,1,NULL,NULL,NULL,NULL,NULL,NULL),(126,37,'Paracétamol (400 ou 500 mg) + Poudre d\'opium 25 mg ; 2 (comprimés ou gélules) ; matin, midi et soir ; Pendant (2 à 5) jours',NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL),(127,37,'Paracétamol (400 ou 500 mg) + Codéine (20 ou 30 mg) ; 2 (comprimés ou gélules); matin, midi et soir ; Pendant (2 à 5) jours',NULL,NULL,NULL,2,1,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `preconisation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produit`
--

DROP TABLE IF EXISTS `produit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produit` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'identifiant produit',
  `code` varchar(10) NOT NULL COMMENT 'code interne du prouit',
  `designation` varchar(50) NOT NULL COMMENT 'libellé du produit',
  `indesirable` varchar(200) DEFAULT NULL COMMENT 'effets indésirables',
  `indication` varchar(200) DEFAULT NULL COMMENT 'indications thérapeutiques',
  PRIMARY KEY (`id`),
  UNIQUE KEY `produit_code_idx` (`code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COMMENT='référentiel des produits médicamenteux';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produit`
--

LOCK TABLES `produit` WRITE;
/*!40000 ALTER TABLE `produit` DISABLE KEYS */;
INSERT INTO `produit` VALUES (1,'PARACTM','Paracétamol','',NULL),(2,'TRAMADOL','Tramadol',NULL,NULL),(3,'CODEINE','Codéine',NULL,NULL),(4,'OPIUM','Poudre d\'opium',NULL,NULL),(5,'KETOPROF','Kétoprofène',NULL,NULL),(6,'IBUPROF','Ibuprofène',NULL,NULL),(7,'MORPHINE','Morphine LI',NULL,NULL),(8,'ROFECOXIB','Rofécoxib',NULL,NULL),(9,'CELECOXIB','Célécoxib',NULL,NULL),(10,'FENTANYL','Fentanyl patch',NULL,NULL),(11,'KETOPROFLP','Kétoprofène LP',NULL,NULL);
/*!40000 ALTER TABLE `produit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produit_prescrit`
--

DROP TABLE IF EXISTS `produit_prescrit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produit_prescrit` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `id_preco_medic` bigint NOT NULL,
  `id_produit` bigint NOT NULL,
  `dosages` varchar(100) NOT NULL,
  `unite_dosage` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `preconisation_produit_fk` (`id_preco_medic`),
  KEY `preconisation_produit_fk_1` (`id_produit`),
  CONSTRAINT `preconisation_produit_fk` FOREIGN KEY (`id_preco_medic`) REFERENCES `medicament_prescrit` (`id`),
  CONSTRAINT `preconisation_produit_fk_1` FOREIGN KEY (`id_produit`) REFERENCES `produit` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produit_prescrit`
--

LOCK TABLES `produit_prescrit` WRITE;
/*!40000 ALTER TABLE `produit_prescrit` DISABLE KEYS */;
/*!40000 ALTER TABLE `produit_prescrit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produit_type`
--

DROP TABLE IF EXISTS `produit_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produit_type` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `id_medic_type` bigint NOT NULL,
  `id_produit` bigint NOT NULL,
  `description` varchar(100) NOT NULL DEFAULT '',
  `dosages` varchar(100) NOT NULL,
  `unite_dosage` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `produit_type_fk` (`id_medic_type`),
  KEY `produit_type_fk_1` (`id_produit`),
  CONSTRAINT `produit_type_fk` FOREIGN KEY (`id_medic_type`) REFERENCES `medicament_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `produit_type_fk_1` FOREIGN KEY (`id_produit`) REFERENCES `produit` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produit_type`
--

LOCK TABLES `produit_type` WRITE;
/*!40000 ALTER TABLE `produit_type` DISABLE KEYS */;
INSERT INTO `produit_type` VALUES (20,15,1,'Paracétamol 400 ou 500 mg','400|500','mg'),(21,15,3,'Codéine 20 ou 30 mg','20|30','mg'),(22,16,1,'Paracétamol 400 ou 500 mg','400|500','mg'),(23,16,4,'Poudre d\'opium 25 mg','25','mg'),(24,17,2,'Tramadol 50 mg','50','mg'),(25,18,1,'Paracétamol 1000 mg','1000','mg'),(26,19,5,'Kétoprofène 150 mg','150','mg'),(27,20,1,'Paracétamol 400 ou 500 mg','400|500','mg'),(28,20,4,'Poudre d\'opium 25 mg','25','mg'),(29,21,5,'Kétoprofène 150 mg','150','mg'),(30,22,1,'Paracétamol 400 ou 500 mg','400|500','mg'),(31,22,3,'Codéine 20 ou 30 mg','20|30','mg'),(32,23,5,'Kétoprofène 150 mg','150','mg'),(33,24,1,'Paracétamol 1000 mg','1000','mg'),(34,25,11,'Kétoprofène LP 100 mg','100','mg'),(35,26,1,'Paracétamol 1000 mg','1000','mg'),(36,27,1,'Paracétamol 1000 mg','1000','mg'),(37,28,8,'Rofécoxib 25 mg','25','mg'),(38,29,9,'Célécoxib 100 mg','100','mg'),(39,30,1,'Paracétamol 400 ou 500 mg','400|500','mg'),(40,30,3,'Codéine 20 ou 30 mg','20|30','mg'),(41,31,5,'Kétoprofène 100 mg','100','mg'),(42,32,1,'Paracétamol 400 ou 500 mg','400|500','mg'),(43,33,7,'Morphine LI 10 ou 20 mg','10|20','mg'),(44,34,5,'Kétoprofène 100 mg','100','mg'),(45,35,1,'Paracétamol 375 mg','375','mg'),(46,35,2,'Tramadol 37.5 mg','37.5','mg'),(47,36,1,'Paracétamol 375 mg','375','mg'),(48,36,2,'Tramadol 37.5 mg','37.5','mg'),(49,37,7,'Morphine LI 10 mg','10','mg'),(50,38,2,'Tramadol 50 mg','50','mg'),(51,39,5,'Kétoprofène 150 mg','150','mg'),(52,40,1,'Paracétamol 500 mg','500','mg'),(53,40,3,'Codéine 30 mg','30','mg'),(54,41,5,'Kétoprofène 150 mg','150','mg'),(55,42,1,'Paracétamol 500 mg','500','mg'),(59,46,10,'Fentanyl patch 25 µg/h','25','µg/h'),(62,49,1,'Paracétamol 500 mg','500','mg'),(63,50,10,'Fentanyl patch 25 µg/h','25','µg/h'),(65,52,7,'Morphine LI 10 ou 20 mg','10|20','mg');
/*!40000 ALTER TABLE `produit_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `protocole_douleur`
--

DROP TABLE IF EXISTS `protocole_douleur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `protocole_douleur` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'Identifiant protocole douleur',
  `libelle` varchar(100) NOT NULL,
  `id_nomenclature` bigint NOT NULL COMMENT 'Identifiant nomenclature parente',
  `infos_generales` varchar(2000) DEFAULT NULL COMMENT 'Description générale, avertissements',
  `recommandations` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `protocole_douleur_nomenclature_fk` (`id_nomenclature`),
  CONSTRAINT `protocole_douleur_nomenclature_fk` FOREIGN KEY (`id_nomenclature`) REFERENCES `nomenclature` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `protocole_douleur`
--

LOCK TABLES `protocole_douleur` WRITE;
/*!40000 ALTER TABLE `protocole_douleur` DISABLE KEYS */;
/*!40000 ALTER TABLE `protocole_douleur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unite_dosage`
--

DROP TABLE IF EXISTS `unite_dosage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unite_dosage` (
  `unite` varchar(20) NOT NULL,
  PRIMARY KEY (`unite`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unite_dosage`
--

LOCK TABLES `unite_dosage` WRITE;
/*!40000 ALTER TABLE `unite_dosage` DISABLE KEYS */;
INSERT INTO `unite_dosage` VALUES ('g'),('mg'),('mg LI'),('mg LP'),('µg/h');
/*!40000 ALTER TABLE `unite_dosage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'appli_douleur'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-17 17:45:30
