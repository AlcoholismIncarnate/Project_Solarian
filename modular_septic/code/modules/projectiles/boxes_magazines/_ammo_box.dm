/obj/item/ammo_box
	multiload = TRUE
	carry_weight = 2

/obj/item/ammo_box/attackby(obj/item/attacking_item, mob/user, params, silent = FALSE, replace_spent = 0)
	var/num_loaded = 0
	if(!can_load(user))
		return
	if(istype(attacking_item, /obj/item/ammo_box))
		var/obj/item/ammo_box/ammo_box = attacking_item
		for(var/obj/item/ammo_casing/casing in ammo_box.stored_ammo)
			var/did_load = give_round(casing, replace_spent)
			if(did_load)
				casing.stored_ammo -= casing
				num_loaded++
			if(!did_load || !multiload)
				break
		if(num_loaded)
			ammo_box.update_ammo_count()
	if(istype(attacking_item, /obj/item/ammo_casing))
		var/obj/item/ammo_casing/casing = attacking_item
		if(give_round(casing, replace_spent))
			user.transferItemToLoc(casing, src, TRUE)
			num_loaded++
			casing.update_appearance()

	if(num_loaded)
		if(!silent)
			to_chat(user, span_notice("I load [num_loaded] shell\s into \the [src]!"))
			playsound(src, 'modular_septic/sound/weapons/guns/bullet_load.ogg', 60, TRUE)
		update_ammo_count()

	return num_loaded

/obj/item/ammo_box/attack_self(mob/user)
	var/obj/item/ammo_casing/casing = get_round()
	if(!casing)
		return

	casing.forceMove(drop_location())
	//incase they're using TK
	if(!user.is_holding(src) || !user.put_in_hands(casing))
		casing.bounce_away(FALSE, NONE)
	playsound(src, 'modular_septic/sound/weapons/guns/bullet_spill.ogg', 60, TRUE)
	to_chat(user, span_notice("I remove a round from [src]!"))
	update_ammo_count()

/obj/item/ammo_box/add_notes_box()
	var/list/readout = list()
	readout += span_notice("<b>Capacity:</b> [max_ammo]")
	var/obj/item/ammo_casing/mag_ammo = get_round(TRUE)
	if(istype(mag_ammo))
		readout += "[mag_ammo.add_notes_ammo()]"
	else
		readout += span_notice("<b>Caliber:</b> [caliber]")
	return readout.Join("\n")

/obj/item/ammo_box/get_carry_weight()
	. = ..()
	for(var/obj/item/ammo_casing/casing as anything in stored_ammo)
		. += casing?.get_carry_weight()

/obj/item/ammo_box/a762svd
	name = "ammo box (7.62x54R)"
	icon = 'modular_septic/icons/obj/items/ammo/boxes.dmi'
	icon_state = "riflebox"
	ammo_type = /obj/item/ammo_casing/a762svd
	max_ammo = 120

/obj/item/ammo_box/a762svd/ap
	name = "armor-piercing ammo box (7.62x54R)"
	icon = 'modular_septic/icons/obj/items/ammo/boxes.dmi'
	icon_state = "riflebox-AP"
	ammo_type = /obj/item/ammo_casing/a762svd/ap
	max_ammo = 120

/obj/item/ammo_box/a54539abyss
	name = "ammo box (5.45x39)"
	icon = 'modular_septic/icons/obj/items/ammo/boxes.dmi'
	icon_state = "riflebox"
	ammo_type = /obj/item/ammo_casing/a545
	max_ammo = 120

/obj/item/ammo_box/a54539abyss/ap
	name = "armor-piercing ammo box (5.45x39)"
	icon = 'modular_septic/icons/obj/items/ammo/boxes.dmi'
	icon_state = "riflebox-AP"
	ammo_type = /obj/item/ammo_casing/a545/ap
	max_ammo = 120

/obj/item/ammo_box/a762winter
	name = "ammo box (7.62x39)"
	icon = 'modular_septic/icons/obj/items/ammo/boxes.dmi'
	icon_state = "riflebox"
	ammo_type = /obj/item/ammo_casing/a762
	max_ammo = 120

/obj/item/ammo_box/a762winter/ap
	name = "armor-piercing ammo box (7.62x39)"
	icon = 'modular_septic/icons/obj/items/ammo/boxes.dmi'
	icon_state = "riflebox-AP"
	ammo_type = /obj/item/ammo_casing/a762/ap
	max_ammo = 120
