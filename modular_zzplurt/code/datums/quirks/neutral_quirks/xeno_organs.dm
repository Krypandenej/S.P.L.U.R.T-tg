/datum/quirk/item_quirk/xeno_organs
	name = "Xenomorph Organs"
	desc = "Be it genetic inclination or seedy connections to the dark side of big spess pharma, you have access to organs that would otherwise be exclusive to your feral cousins."
	icon = FA_ICON_SUITCASE
	value = 0
	gain_text = span_notice("You feel like making a nest in maintenance.")
	lose_text = span_notice()
	medical_record_text = "Patient's anatomy is inclined towards feral xenomorphs."
	mob_trait = //set this one up yourself blease
	species_whitelist = list(SPECIES_XENO)

/obj/item/autosurgeon/xenoweird
	name = "weird autosurgeon"
	icon = 'modular_skyrat/modules/moretraitoritems/icons/alien.dmi'
	surgery_speed = 2
	organ_whitelist = list(/obj/item/organ/alien, /obj/item/organ/tongue/alien)

/obj/item/storage/organbox/weird
	name = "weird organ transport box"
	icon = 'modular_skyrat/modules/moretraitoritems/icons/alien.dmi'

/obj/item/storage/organbox/weird/Initialize(mapload)
	. = ..()
	reagents.add_reagent_list(list(/datum/reagent/cryostylane = 60))

/obj/item/storage/organbox/weird/PopulateContents()
	new /obj/item/autosurgeon/xenoweird(src)
	new /obj/item/organ/alien/plasmavessel/roundstart(src)
	new /obj/item/organ/alien/resinspinner(src)
	new /obj/item/organ/tongue/alien

/datum/quirk/item_quirk/xeno_organs/add_unique(client/client_source)
	give_item_to_holder(/obj/item/storage/organbox/weird, list(LOCATION_BACKPACK, LOCATION_HANDS))


