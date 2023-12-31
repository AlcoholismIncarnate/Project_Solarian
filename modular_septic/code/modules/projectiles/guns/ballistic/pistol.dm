// all pistols
/obj/item/gun/ballistic/automatic/pistol
	fire_delay = 1
	carry_weight = 1
	carry_weight = 0.8
	safety_off_sound = 'modular_septic/sound/weapons/guns/pistol/pistol_safety.wav'
	safety_on_sound = 'modular_septic/sound/weapons/guns/pistol/pistol_safety.wav'
	skill_melee = SKILL_IMPACT_WEAPON
	skill_ranged = SKILL_PISTOL
	suppressed = SUPPRESSED_NONE
	equip_sound = 'modular_septic/sound/weapons/guns/pistol/pistol_holster.wav'
	drop_sound = 'modular_septic/sound/weapons/guns/drop_lightgun.wav'
	tetris_width = 64
	tetris_height = 64

// RUGER MKIV
/obj/item/gun/ballistic/automatic/pistol
	name = "\improper TF-Trainer"
	desc = "A small, easily concealable 9mm handgun produced by Terran Federal for training security forces. It has a threaded barrel for a suppressor!"
	icon = 'modular_septic/icons/obj/items/guns/pistol.dmi'
	icon_state = "ruger"
	base_icon_state = "ruger"
	pickup_sound = 'modular_septic/sound/weapons/guns/pistol/pistol_draw.wav'
	lock_back_sound = 'modular_septic/sound/weapons/guns/pistol/pistol_lockback.wav'
	bolt_drop_sound = 'modular_septic/sound/weapons/guns/pistol/pistol_lockin.wav'
	eject_sound = 'modular_septic/sound/weapons/guns/pistol/pistol_magout.wav'
	eject_empty_sound = 'modular_septic/sound/weapons/guns/pistol/pistol_magout.wav'
	eject_sound_vary = FALSE
	rack_sound_vary = FALSE
	load_sound = 'modular_septic/sound/weapons/guns/pistol/pistol_magin.wav'
	load_empty_sound = 'modular_septic/sound/weapons/guns/pistol/pistol_magin.wav'
	rack_sound = 'modular_septic/sound/weapons/guns/pistol/pistol_rack.wav'
	gunshot_animation_information = list(
		"pixel_x" = 15, \
		"pixel_y" = 1, \
		"inactive_wben_suppressed" = TRUE, \
	)
	recoil_animation_information = list(
		"recoil_angle_upper" = -15, \
		"recoil_angle_lower" = -30, \
	)
	suppressor_x_offset = 10
	w_class = WEIGHT_CLASS_NORMAL
	carry_weight = 1 KILOGRAMS
	custom_price = 3000

// BERETTA 69R
/obj/item/gun/ballistic/automatic/pistol/aps
	name = "\improper CA-Oppressor"
	desc = "A machine pistol designed by Centauri-Arms. It was designed for the Republican Guard Internal-Security forces. \
		Uses 9mm ammo. Has a threaded barrel for suppressors."
	fire_sound = 'modular_septic/sound/weapons/guns/pistol/aps.ogg'
	suppressed_sound = list(
		'modular_septic/sound/weapons/guns/pistol/glock_suppressed1.wav', \
		'modular_septic/sound/weapons/guns/pistol/glock_suppressed2.wav', \
	)
	load_sound = 'modular_septic/sound/weapons/guns/pistol/aps_magin.wav'
	load_empty_sound = 'modular_septic/sound/weapons/guns/pistol/aps_magin.wav'
	eject_sound = 'modular_septic/sound/weapons/guns/pistol/aps_magout.ogg'
	eject_empty_sound = 'modular_septic/sound/weapons/guns/pistol/aps_magout.ogg'
	lock_back_sound = 'modular_septic/sound/weapons/guns/pistol/aps_lockback.wav'
	bolt_drop_sound = 'modular_septic/sound/weapons/guns/pistol/aps_lockin.wav'
	rack_sound = 'modular_septic/sound/weapons/guns/pistol/aps_rack.ogg'
	icon = 'modular_septic/icons/obj/items/guns/pistol.dmi'
	icon_state = "b93r"
	base_icon_state = "b93r"
	gunshot_animation_information = list(
		"pixel_x" = 15, \
		"pixel_y" = 2, \
		"inactive_wben_suppressed" = TRUE, \
	)
	recoil_animation_information = list(
		"recoil_angle_upper" = -15, \
		"recoil_angle_lower" = -30, \
		"recoil_burst_speed" = 0.5, \
		"return_burst_speed" = 0.5, \
	)
	burst_size = 3
	suppressor_x_offset = 11
	w_class = WEIGHT_CLASS_NORMAL
	carry_weight = 1.5 KILOGRAMS
	custom_price = 4500
	full_auto = TRUE

/obj/item/gun/ballistic/automatic/pistol/aps/mkfa
	name = "\improper MKFA-Oppressor"
	desc = "A machine pistol licensed produced by Minikasha. It is somewhat heavier than its CA counterpart with a 2 round burst. \
		Uses 9mm ammo. Has a threaded barrel for suppressors."
	carry_weight = 2 KILOGRAMS
	custom_price = 3250
	burst_size = 2

/obj/item/gun/ballistic/automatic/pistol/remis

// M1911
/obj/item/gun/ballistic/automatic/pistol/m1911
	name = "\improper TF-Patriot"
	desc = "The Terran-Federation Patriot is an ancient design chambering the .45 cartridge. Legendary among mercenary and military forces alike."
	icon = 'modular_septic/icons/obj/items/guns/pistol.dmi'
	icon_state = "m1911"
	base_icon_state = "m1911"
	gunshot_animation_information = list(
		"pixel_x" = 16, \
		"pixel_y" = 2, \
		"inactive_wben_suppressed" = TRUE,
	)
	recoil_animation_information = list()
	fire_sound = 'modular_septic/sound/weapons/guns/pistol/colt1.wav'
	rack_sound = 'modular_septic/sound/weapons/guns/pistol/pistol_rack.wav'
	force = 10
	w_class = WEIGHT_CLASS_NORMAL
	carry_weight = 1 KILOGRAMS
	custom_price = 3500

// USP
/obj/item/gun/ballistic/automatic/pistol/cortes //corruptable gun
	name = "\improper CA-Apprentice"
	desc = "The Centauri-produced Apprentice was originally designed for the Solarian Territorials Officers. It lost the contract to the TF-Witness. \
			it is still well regarded as a reliable handgun! Chambers the .45 caliber round."
	icon = 'modular_septic/icons/obj/items/guns/pistol.dmi'
	icon_state = "USP"
	base_icon_state = "USP"
	gunshot_animation_information = list(
		"pixel_x" = 16, \
		"pixel_y" = 2, \
		"inactive_wben_suppressed" = TRUE,
	)
	recoil_animation_information = list()
	fire_sound = list('modular_septic/sound/weapons/guns/pistol/USP1.ogg', 'modular_septic/sound/weapons/guns/pistol/USP2.ogg')
	rack_sound = 'modular_septic/sound/weapons/guns/pistol/john_rack.wav'
	lock_back_sound = 'modular_septic/sound/weapons/guns/pistol/john_lockback.wav'
	bolt_drop_sound = 'modular_septic/sound/weapons/guns/pistol/john_lockin.wav'
	mag_type = /obj/item/ammo_box/magazine/u45
	can_suppress = FALSE
	force = 15
	w_class = WEIGHT_CLASS_NORMAL
	carry_weight = 1 KILOGRAMS
	var/corrupted = FALSE
	var/corrupted_shot_sound = list('modular_septic/sound/weapons/guns/pistol/USP_corrupt1.ogg', 'modular_septic/sound/weapons/guns/pistol/USP_corrupt2.ogg')
	var/corruption_cooldown_duration = 1 SECONDS
	COOLDOWN_DECLARE(corruption_cooldown)
	custom_price = 3500

/obj/item/gun/ballistic/automatic/pistol/cortes/examine(mob/user)
	. = ..()
	var/mob/living/carbon/human/human_user
	if(ishuman(user))
		human_user = user
	if(HAS_TRAIT(human_user, TRAIT_GAKSTER) && !corrupted)
		. += span_warning("An <span class='boldwarning'>inborn</span> can do something special with this to make it <span class='boldwarning'>more powerful.</span> It'd be <span class='boldwarning'>suicide</span> to be allies with one.")
	if(human_user.dna?.species?.id == SPECIES_INBORN && !corrupted)
		. += span_boldwarning("I can alternatively use this to corrupt it and empower it with Liminal Power.")

/obj/item/gun/ballistic/automatic/pistol/cortes/alt_click_secondary(mob/user)
	var/mob/living/carbon/human/human_user
	if(ishuman(user))
		human_user = user
	if(COOLDOWN_FINISHED(src, corruption_cooldown) && human_user.dna?.species?.id == SPECIES_INBORN && !corrupted)
		var/corruption_chance = GET_MOB_ATTRIBUTE_VALUE(human_user, STAT_INTELLIGENCE)*4.20 // :3
		human_user.audible_message(span_boldwarning("[human_user] whispers a secret into [src]'s ear."))
		playsound(human_user, 'modular_septic/sound/effects/whispers.wav', 35, TRUE)
		corrupt(corruption_chance, user)
		COOLDOWN_START(src, corruption_cooldown, corruption_cooldown_duration)

/obj/item/gun/ballistic/automatic/pistol/cortes/proc/corrupt(chance = 0, mob/inborn)
	if(corrupted)
		return
	if(prob(chance))
		visible_message(span_warning("[src] grumbles."))
		corrupted = TRUE
		sleep(rand(1 SECONDS, 1.5 SECONDS))
		visible_message(span_warning("[src] <span class='boldwarning'>CORRUPTS!</span>"))
		to_chat(inborn, span_notice("I have corrupted the [src]."))
		playsound(src, 'modular_septic/sound/heart/inborn_combatcocktail.ogg', 80, FALSE)
		name = "\improper Cortraxx .45"
		desc = "A lavish pistol for a lavish life. <span class='boldwarning'>It has been corrupted.</span>"
		icon_state = "USP_corrupted"
		base_icon_state = "USP_corrupted"
		update_appearance(UPDATE_ICON)
	else
		say(pick("No...", "It can't be...", "Stop..."))

/obj/item/gun/ballistic/automatic/pistol/cortes/shoot_live_shot(mob/living/user, pointblank = FALSE, atom/target, message = TRUE)
	. = ..()
	if(corrupted)
		playsound(user, corrupted_shot_sound, 70, FALSE)

// STI 2011 COMBAT MASTER
/obj/item/gun/ballistic/automatic/pistol/remis/combatmaster
	name = "\improper TF-Houndmaster"
	desc = "The Terran Federal Houndmaster is an expensive and showoff handgun. Historically purchased amongst Officers of the Solarian Territorials as a form of promotional gift.\
			It is chambered in the 9mm cartridge, and uses an expensive exotic-metal in its construction!"
	icon = 'modular_septic/icons/obj/items/guns/pistol.dmi'
	icon_state = "combatmaster"
	base_icon_state = "combatmaster"
	fire_sound = list('modular_septic/sound/weapons/guns/pistol/combatmaster1.wav', 'modular_septic/sound/weapons/guns/pistol/combatmaster2.wav')
	suppressed_sound = 'modular_septic/sound/weapons/guns/pistol/combatmaster_silenced.wav'
	gunshot_animation_information = list(
		"pixel_x" = 15, \
		"pixel_y" = 1, \
		"inactive_wben_suppressed" = TRUE, \
	)
	recoil_animation_information = list(
		"recoil_angle_upper" = -15, \
		"recoil_angle_lower" = -30,
	)
	force = 10
	suppressor_x_offset = 12
	mag_type = /obj/item/ammo_box/magazine/combatmaster9mm
	w_class = WEIGHT_CLASS_NORMAL
	carry_weight = 1 KILOGRAMS
	custom_price = 8000

// GLOCK-17
/obj/item/gun/ballistic/automatic/pistol/remis/glock17
	name = "\improper TF-Civilian"
	desc = "A simple and boxy handgun. Commonly used by security officers due to its reliable nature and dirt-cheap pricetag!"
	icon = 'modular_septic/icons/obj/items/guns/pistol.dmi'
	icon_state = "glock"
	base_icon_state = "glock"
	fire_sound = list('modular_septic/sound/weapons/guns/pistol/glock1.wav', \
					'modular_septic/sound/weapons/guns/pistol/glock2.wav')
	suppressed_sound = list('modular_septic/sound/weapons/guns/pistol/glock_suppressed1.wav', \
					'modular_septic/sound/weapons/guns/pistol/glock_suppressed2.wav')
	gunshot_animation_information = list(
		"pixel_x" = 15, \
		"pixel_y" = 5, \
	)
	recoil_animation_information = list(
		"recoil_angle_upper" = -20, \
		"recoil_angle_lower" = -35, \
	)
	force = 10
	mag_type = /obj/item/ammo_box/magazine/glock9mm
	mag_display = TRUE
	can_suppress = TRUE
	w_class = WEIGHT_CLASS_NORMAL
	carry_weight = 1 KILOGRAMS
	custom_price = 2500
	suppressor_x_offset = 10

// WALTHER PPK
/obj/item/gun/ballistic/automatic/pistol/remis/ppk
	name = "\improper TA-Littletree"
	desc = "Terran Federals littletree, one of the companies most infamous failures. It chambers the anemic .22 cartridge."
	icon = 'modular_septic/icons/obj/items/guns/pistol.dmi'
	icon_state = "ppk"
	base_icon_state = "ppk"
	fire_sound = list('modular_septic/sound/weapons/guns/pistol/walter1.wav',
					'modular_septic/sound/weapons/guns/pistol/walter2.wav')
	suppressed_sound = 'modular_septic/sound/weapons/guns/pistol/walter_silenced.wav'
	safety_on_sound = 'modular_septic/sound/weapons/guns/pistol/walter_safety.wav'
	safety_off_sound = 'modular_septic/sound/weapons/guns/pistol/walter_safety.wav'
	gunshot_animation_information = list(
		"pixel_x" = 11, \
		"pixel_y" = 1, \
		"inactive_wben_suppressed" = TRUE, \
	)
	recoil_animation_information = list(
		"recoil_angle_upper" = -10, \
		"recoil_angle_lower" = -20, \
	)
	client_recoil_animation_information = list(
		"strength" = 0.35,
		"duration" = 2,
	)
	mag_type = /obj/item/ammo_box/magazine/ppk22lr
	mag_display = TRUE
	can_suppress = TRUE
	w_class = WEIGHT_CLASS_SMALL
	carry_weight = 500 GRAMS
	suppressor_x_offset = 8
	custom_price = 900

// "DEAGLE" Dont use this gun.
/obj/item/gun/ballistic/automatic/pistol/remis/aniquilador
	name = "\improper Aniquilador .50 LE Anti-Personnel Firearm"
	desc = "A very rare firearm that can be found within experimental military bases, comes loaded with .50 LE, Living Exterminator rounds. \
		Feeling the gun in your hand, he never stops nervously shaking and vibrating until you aim down the sights at a living being."
	icon = 'modular_septic/icons/obj/items/guns/pistol.dmi'
	lefthand_file = 'modular_septic/icons/obj/items/guns/inhands/pistol_lefthand.dmi'
	righthand_file = 'modular_septic/icons/obj/items/guns/inhands/pistol_righthand.dmi'
	inhand_icon_state = "one"
	icon_state = "aniquilador"
	base_icon_state = "aniquilador"
	gunshot_animation_information = list(
		"pixel_x" = 16, \
		"pixel_y" = 2, \
	)
	recoil_animation_information = list()
	fire_sound = 'modular_septic/sound/weapons/guns/pistol/one.ogg'
	rack_sound = 'modular_septic/sound/weapons/guns/pistol/one_rack.ogg'
	lock_back_sound = 'modular_septic/sound/weapons/guns/pistol/one_lockback.ogg'
	bolt_drop_sound = 'modular_septic/sound/weapons/guns/pistol/one_lockin.ogg'
	aim_stress_sound = list('modular_septic/sound/weapons/guns/pistol/voice_anaquilador/anaquilador_getout.wav',
						'modular_septic/sound/weapons/guns/pistol/voice_anaquilador/anaquilador_noescape.wav')
	aim_spare_sound = 'modular_septic/sound/weapons/guns/rifle/voice_steyr/spare.wav'
	force = 10
	fire_delay = 8
	mag_type = /obj/item/ammo_box/magazine/aniquilador
	w_class = WEIGHT_CLASS_NORMAL
	can_unsuppress = FALSE
	verb_say = "ravishes"
	carry_weight = 2 KILOGRAMS
	custom_price = 5500

/obj/item/gun/ballistic/automatic/pistol/remis/aniquilador/Initialize(mapload)
	. = ..()
	RegisterSignal(src, COMSIG_GUNPOINT_GUN_AIM_STRESS_SOUNDED, .proc/aimed_sounding)

/obj/item/gun/ballistic/automatic/pistol/remis/aniquilador/Destroy()
	UnregisterSignal(src, COMSIG_GUNPOINT_GUN_AIM_STRESS_SOUNDED)
	return ..()

/obj/item/gun/ballistic/automatic/pistol/remis/aniquilador/proc/aimed_sounding(datum/component/gunpoint/gunpoint, sounding)
	var/voice_line = "FUCK!"
	switch(sounding)
		if('modular_septic/sound/weapons/guns/pistol/voice_anaquilador/anaquilador_getout.wav')
			voice_line = "GET OUT FREAK."
		if('modular_septic/sound/weapons/guns/pistol/voice_anaquilador/anaquilador_noescape.wav')
			voice_line = "THERE IS NO ESCAPE."
	if(voice_line)
		say(voice_line)
	INVOKE_ASYNC(src, .proc/we_do_a_little_shaking)

/obj/item/gun/ballistic/automatic/pistol/remis/aniquilador/proc/we_do_a_little_shaking(intensity = 4, time_in = 2, time_out = 2, loops = 3)
	for(var/i in 1 to loops)
		animate(src, pixel_x = pixel_x + intensity, time = time_in)
		sleep(time_in)
		animate(src, pixel_x = pixel_x - intensity, time = time_out)
		sleep(time_out)

/obj/item/gun/ballistic/automatic/pistol/remis/john
	name = "\improper John .50 AE Pistol"
	desc = "Who's that? Oh It's just John, don't worry. It's a plinking pistol."
	icon = 'modular_septic/icons/obj/items/guns/pistol.dmi'
	lefthand_file = 'modular_septic/icons/obj/items/guns/inhands/pistol_lefthand.dmi'
	righthand_file = 'modular_septic/icons/obj/items/guns/inhands/pistol_righthand.dmi'
	inhand_icon_state = "five7"
	icon_state = "glockl"
	base_icon_state = "glockl"
	gunshot_animation_information = list(
		"pixel_x" = 16, \
		"pixel_y" = 2, \
	)
	recoil_animation_information = list()
	fire_sound = list('modular_septic/sound/weapons/guns/pistol/john1.wav', 'modular_septic/sound/weapons/guns/pistol/john2.wav')
	rack_sound = 'modular_septic/sound/weapons/guns/pistol/john_rack.wav'
	lock_back_sound = 'modular_septic/sound/weapons/guns/pistol/john_lockback.wav'
	bolt_drop_sound = 'modular_septic/sound/weapons/guns/pistol/john_lockin.wav'
	force = 15
	fire_delay = 2
	mag_type = /obj/item/ammo_box/magazine/john
	w_class = WEIGHT_CLASS_NORMAL
	can_unsuppress = FALSE
	carry_weight = 2 KILOGRAMS
	custom_price = 5500

/obj/item/gun/ballistic/automatic/pistol/remis/pm9
	name = "\improper TF-Sinner"
	desc = "The Terran Federation 'Sinner' is considered by many to be one of the worst weapons ever produced by the company. \
	lacking in almost every department, it is only commonly used by collectors or the backwater milita units."
	icon = 'modular_septic/icons/obj/items/guns/pistol.dmi'
	lefthand_file = 'modular_septic/icons/obj/items/guns/inhands/pistol_lefthand.dmi'
	righthand_file = 'modular_septic/icons/obj/items/guns/inhands/pistol_righthand.dmi'
	inhand_icon_state = "pm9"
	icon_state = "pm9"
	base_icon_state = "pm9"
	gunshot_animation_information = list(
		"pixel_x" = 16, \
		"pixel_y" = 2, \
	)
	client_recoil_animation_information = list(
		"strength" = 1,
		"duration" = 2,
	)
	fire_sound = 'modular_septic/sound/weapons/guns/pistol/pm9.wav'
	suppressed_sound = 'modular_septic/sound/weapons/guns/pistol/pm9_suppressed.wav'
	rack_sound = 'modular_septic/sound/weapons/guns/pistol/pm9_rack.wav'
	lock_back_sound = 'modular_septic/sound/weapons/guns/pistol/pm9_lockback.wav'
	bolt_drop_sound = 'modular_septic/sound/weapons/guns/pistol/pm9_lockin.wav'
	load_sound = 'modular_septic/sound/weapons/guns/pistol/pm9_magin.wav'
	load_empty_sound = 'modular_septic/sound/weapons/guns/pistol/pm9_magin.wav'
	eject_sound = 'modular_septic/sound/weapons/guns/pistol/pm9_magout.wav'
	eject_empty_sound = 'modular_septic/sound/weapons/guns/pistol/pm9_magout.wav'
	force = 15
	fire_delay = 2
	mag_type = /obj/item/ammo_box/magazine/pm9
	bolt_type = BOLT_TYPE_LOCKING
	w_class = WEIGHT_CLASS_NORMAL
	suppressor_x_offset = 9
	carry_weight = 2
	custom_price = 5500

/obj/item/gun/ballistic/automatic/pistol/remis/pm9/desc_chaser(mob/user)
	. = list()
	var/image_src = image2html('modular_septic/images/pm9.gif', user, format = "gif", sourceonly = TRUE)
	. += "<img src='[image_src]' width=128 height=96>"
	. += ..()

/obj/item/gun/ballistic/automatic/pistol/remis/pm9/attackby(obj/item/A, mob/user, params)
	if(istype(A, /obj/item/suppressor))
		return
	. = ..()
	if(istype(A, /obj/item/reagent_containers/food/drinks/soda_cans/mug))
		var/obj/item/reagent_containers/food/drinks/soda_cans/mug/mug = A
		if(!can_suppress)
			to_chat(user, span_warning("I can't figure out how to fit the complex device on [src]!"))
			return
		if(!user.is_holding(src))
			to_chat(user, span_warning("I need be holding [src] to fit the complex device to it!"))
			return
		if(suppressed)
			to_chat(user, span_warning("[src] already has a suppressor!"))
			return
		if(user.transferItemToLoc(mug, src))
			install_suppressor(mug)
			playsound(user, 'modular_septic/sound/weapons/guns/silencer_start.ogg', 60, TRUE)
			to_chat(user, span_warning("I start screwing the fucking mug can on."))
			if(!do_after(user, 3 SECONDS, src))
				user.put_in_hands(mug)
				playsound(user, 'modular_septic/sound/weapons/guns/silencer_fumble.ogg', 25, TRUE)
				clear_suppressor()
				return
			to_chat(user, span_warning("I screw the mug can onto [src]. Are you happy now?"))
			playsound(user, 'modular_septic/sound/weapons/guns/silencer_on.wav', 75, TRUE)
			return
