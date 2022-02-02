/obj/item/storage/firstaid
	carry_weight = 1

/obj/item/storage/firstaid/regular/PopulateContents()
	if(empty)
		return
	var/static/items_inside = list(
		/obj/item/stack/medical/gauze = 1,
		/obj/item/stack/medical/suture = 2,
		/obj/item/stack/medical/mesh = 2,
		/obj/item/reagent_containers/hypospray/medipen = 1)
	generate_items_inside(items_inside,src)

/obj/item/storage/firstaid/medical/PopulateContents()
	if(empty)
		return
	var/static/items_inside = list(
		/obj/item/healthanalyzer = 1,
		/obj/item/stack/medical/gauze/twelve = 1,
		/obj/item/stack/medical/splint/five = 1,
		/obj/item/stack/medical/suture = 2,
		/obj/item/stack/medical/mesh = 2,
		/obj/item/stack/medical/ointment = 2,
		/obj/item/reagent_containers/hypospray/medipen = 1,
		/obj/item/reagent_containers/hypospray/medipen/ekit = 1)
	generate_items_inside(items_inside,src)

/obj/item/storage/firstaid/ancient/PopulateContents()
	if(empty)
		return
	var/static/items_inside = list(
		/obj/item/stack/medical/gauze/twelve = 1,
		/obj/item/stack/medical/bruise_pack = 3,
		/obj/item/stack/medical/ointment= 3)
	generate_items_inside(items_inside,src)

/obj/item/storage/firstaid/brute/PopulateContents()
	if(empty)
		return
	var/static/items_inside = list(
		/obj/item/stack/medical/gauze/twelve = 1,
		/obj/item/stack/medical/bruise_pack= 3,
		/obj/item/stack/medical/suture = 2,
		/obj/item/reagent_containers/medigel/libital = 1)
	generate_items_inside(items_inside,src)

/obj/item/storage/firstaid/fire/PopulateContents()
	if(empty)
		return
	var/static/items_inside = list(
		/obj/item/stack/medical/gauze/twelve = 1,
		/obj/item/stack/medical/ointment= 3,
		/obj/item/stack/medical/mesh = 2,
		/obj/item/reagent_containers/medigel/aiuri = 1)
	generate_items_inside(items_inside,src)

/obj/item/storage/firstaid/toxin/PopulateContents()
	if(empty)
		return
	var/static/items_inside = list(
	    /obj/item/storage/pill_bottle/multiver = 1,
		/obj/item/reagent_containers/syringe/syriniver = 3,
		/obj/item/reagent_containers/syringe/antiviral = 1,
		/obj/item/storage/pill_bottle/potassiodide = 1,
		/obj/item/reagent_containers/hypospray/medipen/penacid = 1)
	generate_items_inside(items_inside,src)

/obj/item/storage/firstaid/o2/PopulateContents()
	if(empty)
		return
	var/static/items_inside = list(
		/obj/item/reagent_containers/syringe/convermol = 3,
		/obj/item/reagent_containers/syringe/tirimol = 1,
		/obj/item/reagent_containers/hypospray/medipen/salbutamol = 1,
		/obj/item/reagent_containers/hypospray/medipen = 1,
		/obj/item/storage/pill_bottle/iron = 1)
	generate_items_inside(items_inside,src)

/obj/item/storage/firstaid/advanced/Initialize()
	. = ..()
	var/datum/component/storage/STR = GetComponent(/datum/component/storage)
	STR.max_w_class = WEIGHT_CLASS_NORMAL //holds the same equipment as a medibelt
	STR.max_items = 12
	STR.max_combined_w_class = 24
	STR.set_holdable(list(
		/obj/item/healthanalyzer,
		/obj/item/dnainjector,
		/obj/item/reagent_containers/dropper,
		/obj/item/reagent_containers/glass/beaker,
		/obj/item/reagent_containers/glass/bottle,
		/obj/item/reagent_containers/pill,
		/obj/item/reagent_containers/syringe,
		/obj/item/reagent_containers/medigel,
		/obj/item/reagent_containers/spray,
		/obj/item/lighter,
		/obj/item/storage/fancy/cigarettes,
		/obj/item/storage/pill_bottle,
		/obj/item/stack/medical,
		/obj/item/flashlight/pen,
		/obj/item/extinguisher/mini,
		/obj/item/reagent_containers/hypospray,
		/obj/item/sensor_device,
		/obj/item/radio,
		/obj/item/clothing/gloves/,
		/obj/item/lazarus_injector,
		/obj/item/bikehorn/rubberducky,
		/obj/item/clothing/mask/surgical,
		/obj/item/clothing/mask/breath,
		/obj/item/clothing/mask/breath/medical,
		/obj/item/surgical_drapes, //for true paramedics
		/obj/item/scalpel,
		/obj/item/circular_saw,
		/obj/item/bonesetter,
		/obj/item/surgicaldrill,
		/obj/item/retractor,
		/obj/item/cautery,
		/obj/item/hemostat,
		/obj/item/blood_filter,
		/obj/item/shears,
		/obj/item/geiger_counter,
		/obj/item/clothing/neck/stethoscope,
		/obj/item/stamp,
		/obj/item/clothing/glasses,
		/obj/item/wrench/medical,
		/obj/item/clothing/mask/muzzle,
		/obj/item/reagent_containers/blood,
		/obj/item/tank/internals/emergency_oxygen,
		/obj/item/gun/syringe/syndicate,
		/obj/item/implantcase,
		/obj/item/implant,
		/obj/item/implanter,
		/obj/item/pinpointer/crew,
		/obj/item/holosign_creator/medical,
		/obj/item/stack/sticky_tape //surgical tape
		))

/obj/item/storage/firstaid/advanced/PopulateContents()
	if(empty)
		return
	var/static/items_inside = list(
		/obj/item/stack/medical/gauze/twelve = 1,
		/obj/item/stack/medical/ointment= 1,
		/obj/item/stack/medical/bruise_pack= 1,
		/obj/item/reagent_containers/medigel/synthflesh = 1,
		/obj/item/reagent_containers/glass/bottle/copium = 1,
		/obj/item/reagent_containers/glass/bottle/tirimol = 1,
		/obj/item/reagent_containers/glass/bottle/syriniver = 1,
		/obj/item/reagent_containers/glass/bottle/spaceacillin = 1,
		/obj/item/reagent_containers/syringe = 1)
	generate_items_inside(items_inside,src)

/obj/item/storage/firstaid/morango
	name = "morango first-aid kit"
	desc = "A kevlar bag containing lifesaving equipment secured with only simple clip. Usually contains enough medical equipment to perform the suturing of a tendon on the field while \
	also being able to stabalize bruises, cuts, etc. The intense, overpowering smell of strawberry radiates off of it."
	icon = 'modular_septic/icons/obj/items/firstaid.dmi'
	lefthand_file = 'modular_septic/icons/mob/inhands/equipment/remis_lefthand.dmi'
	righthand_file = 'modular_septic/icons/mob/inhands/equipment/remis_righthand.dmi'
	icon_state = "morango"
	inhand_icon_state = "morango"
	base_icon_state = "morango"
	pickup_sound = 'modular_septic/sound/effects/pouch_pickup.wav'
	drop_sound = 'modular_septic/sound/effects/pouch_drop.wav'

/obj/item/storage/firstaid/morango/Initialize()
	. = ..()
	var/datum/component/storage/STR = GetComponent(/datum/component/storage)
	if(STR)
		STR.rustle_sound = 'modular_septic/sound/effects/pouch_use.wav'
	STR.max_w_class = WEIGHT_CLASS_NORMAL
	STR.max_items = 10

/obj/item/storage/firstaid/morango/PopulateContents()
	if(empty)
		return
	var/static/items_inside = list(
		/obj/item/scalpel = 1,
		/obj/item/stack/medical/gauze = 1,
		/obj/item/stack/medical/ointment = 1,
		/obj/item/stack/medical/suture/medicated = 2,
		/obj/item/reagent_containers/hypospray/medipen/blacktar = 2,
		/obj/item/reagent_containers/hypospray/medipen/antibiotic = 1,
		/obj/item/reagent_containers/pill/potassiodide = 2)
	generate_items_inside(items_inside,src)

/obj/item/storage/firstaid/morango/update_icon_state()
	. = ..()
	if(LAZYLEN(contents) < 10)
		icon_state = "[base_icon_state]_open"
	else
		icon_state = base_icon_state
