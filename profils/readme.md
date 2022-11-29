# DONESOL MOBILE

## Fosses pédologiques

### **Adaptations du modèle Donesol3**

Afin de récolter des données spécifiques, plusieurs tables de référence (liste déroulante) ont été adaptées et des champs ajoutés.

#### __Tables__

##### profil_abond_rac_p

* ajout de la valeur "Pas de racine" pour l'entité id_code = 16022

##### horizon_abond_por

* ajout de la valeur "Pas de pores" pour l'entité id_code = 14543
* ajout de la valeur "Indéterminée" pour l'entité id_code = 21938

##### horizon_abond_por_afnor_h

* ajout de la valeur "Pas de pores" pour l'entité id_code = 14787
* ajout de la valeur "Indéterminée" pour l'entité id_code = 21939

##### horizon_vacuite

* ajout de la valeur "Porosité non identifiée" pour l'entité id_code = 14551

##### horizon_abond_tach1

* ajout de la valeur "Pas de tâches" pour l'entité id_code = 14475
* ajout de la valeur "Indéterminée" pour l'entité id_code = 21935

##### horizon_dens_cv

* ajout de la valeur "Pas de conduits de vers" pour l'entité id_code = 14557

##### horizon_abond_nod_1

* ajout de la valeur "Pas de nodules" pour l'entité id_code = 14673
* ajout de la valeur "Indéterminée" pour l'entité id_code = 392415

#### __Champs__

* tidm_act_biologique --> alias formulaire = "Activité biologique"
* tidm_erosion2 --> alias formulaire = "Erosion secondaire"
* tidm_orig_exces2_p --> alias formulaire = "Origine de l'excès d'eau secondaire"
* tidm_permeabilite --> alias formulaire = "Perméabilité"
* tidm_prof_obs_nap2 --> alias formulaire = "Nappe 2 profondeur (cm)"
* tidm_prof_obs_nap3 --> alias formulaire = "Nappe 3 profondeur (cm)"
* tidm_prof_sup_nap2 --> alias formulaire = "Nappe 2 maximum (cm)"
* tidm_prof_sup_nap3 --> alias formulaire = "Nappe 3 maximum (cm)"
* tidm_sol_zh --> alias formulaire = "Sol de zone humide"
* tidm_classe_geppa --> alias formulaire = "Classe GEPPA
* tidm_humus_hz_ol_epaisseur_p --> alias formulaire = "Epaisseur OL"
* tidm_humus_hz_of_epaisseur_p --> alias formulaire = "Epaisseur OF"
* tidm_humus_hz_oh_epaisseur_p --> alias formulaire = "Epaisseur OH"
* tidm_nat_act_anthro2 --> alias formulaire = "Non utilisé dans le formulaire "Fosses pédologiques"
* tidm_abond_act_anthro2 --> alias formulaire = "Non utilisé dans le formulaire "Fosses pédologiques"
* tidm_com_act_anthro --> alias formulaire = "Non utilisé dans le formulaire "Fosses pédologiques"
* tidm_nat_act_bio2 --> alias formulaire = "Non utilisé dans le formulaire "Fosses pédologiques"
* tidm_abond_act_bio2 --> alias formulaire = "Non utilisé dans le formulaire "Fosses pédologiques"
* tidm_com_act_bio --> alias formulaire = "Non utilisé dans le formulaire "Fosses pédologiques"
* tidm_com_h --> alias formulaire = "Commentaire"
* tidm_prel_h --> alias formulaire = "Prélèvements réalisés"
* tidm_prel_h_com --> alias formulaire = "Prélévement réalisés - commentaire"
* tidm_prof_prel --> alias formulaire = "Profondeur des prélèvements"