package net.jimbe.douleur.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import net.jimbe.douleur.ordonnance.OrdonnanceService;
import net.jimbe.douleur.protocoleDouleur.beans.PrescriptionPreconisee;
import net.jimbe.douleur.protocoleDouleur.dao.NomenclatureRepository;
import net.jimbe.douleur.protocoleDouleur.entities.Nomenclature;

@RestController
@RequestMapping("/douleurs")
@CrossOrigin(origins = "*", allowedHeaders = "*")
public class DouleurController {
	
	@Autowired
	NomenclatureRepository nomenclatureRepository;
	@Autowired
	OrdonnanceService ordonnanceService;

	@RequestMapping("/arborescence")
	public List<Nomenclature> getNomenclatureDouleur() {
		List<Nomenclature> nomenclatures = nomenclatureRepository.findByNomenclatureParentIsNull();
		return nomenclatures;
	}
	
	@RequestMapping(method=RequestMethod.GET, path="/{idDouleur}")
	public List<PrescriptionPreconisee> getFicheDouleur(@PathVariable int idDouleur) {
		List<PrescriptionPreconisee> prescriptions = ordonnanceService.getPrescriptionsProposees(idDouleur);
		if (prescriptions == null || prescriptions.isEmpty()) {
			String message = "Aucune ordonnance n'est encore proposée pour cette douleur";
			throw new RuntimeException(message);
		}
		return prescriptions;
	}

	
}
