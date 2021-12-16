-- demos.compatibilite definition
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


-- demos.forme_medic definition
CREATE TABLE `forme_medic` (
  `code` varchar(10) NOT NULL,
  `libelle` varchar(50) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- demos.medicament_type definition
CREATE TABLE `medicament_type` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `id_ordo_type` bigint NOT NULL,
  `description` varchar(100) NOT NULL DEFAULT '',
  `formes` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `medicament_type_fk` (`id_ordo_type`),
  CONSTRAINT `medicament_type_fk` FOREIGN KEY (`id_ordo_type`) REFERENCES `ordonnance_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COMMENT='Médicament d''une ordonnance type';


-- demos.nomenclature definition
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


-- demos.ordonnance_type definition
CREATE TABLE `ordonnance_type` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;


-- demos.preconisation definition
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


-- demos.preconisation_medicament definition
CREATE TABLE `preconisation_medicament` (
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


-- demos.preconisation_ordonnance definition
CREATE TABLE `preconisation_ordonnance` (
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


-- demos.preconisation_produit definition
CREATE TABLE `preconisation_produit` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `id_preco_medic` bigint NOT NULL,
  `id_produit` bigint NOT NULL,
  `dosages` varchar(100) NOT NULL,
  `unite_dosage` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `preconisation_produit_fk` (`id_preco_medic`),
  KEY `preconisation_produit_fk_1` (`id_produit`),
  CONSTRAINT `preconisation_produit_fk` FOREIGN KEY (`id_preco_medic`) REFERENCES `preconisation_medicament` (`id`),
  CONSTRAINT `preconisation_produit_fk_1` FOREIGN KEY (`id_produit`) REFERENCES `produit` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- demos.produit definition
CREATE TABLE `produit` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'identifiant produit',
  `code` varchar(10) NOT NULL COMMENT 'code interne du prouit',
  `designation` varchar(50) NOT NULL COMMENT 'libellé du produit',
  `indesirable` varchar(200) DEFAULT NULL COMMENT 'effets indésirables',
  `indication` varchar(200) DEFAULT NULL COMMENT 'indications thérapeutiques',
  PRIMARY KEY (`id`),
  UNIQUE KEY `produit_code_idx` (`code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COMMENT='référentiel des produits médicamenteux';


-- demos.produit_type definition
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;


-- demos.unite_dosage definition
CREATE TABLE `unite_dosage` (
  `unite` varchar(20) NOT NULL,
  PRIMARY KEY (`unite`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;