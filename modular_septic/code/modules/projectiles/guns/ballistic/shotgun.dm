// Remove this dumb knockback shit pls
/obj/item/gun/ballistic/shotgun
	icon = 'modular_septic/icons/obj/items/guns/40x32.dmi'
	icon_state = "ithaca"
	base_icon_state = "ithaca"
	lefthand_file = 'modular_septic/icons/obj/items/guns/inhands/shotgun_lefthand.dmi'
	righthand_file = 'modular_septic/icons/obj/items/guns/inhands/shotgun_righthand.dmi'
	inhand_icon_state = "ithaca"
	inhand_x_dimension = 32
	inhand_y_dimension = 32
	wielded_inhand_state = TRUE
	rack_sound_vary = FALSE
	sawn_inhand_state = TRUE
	empty_indicator = FALSE
	empty_icon_state = FALSE
	suppressed = SUPPRESSED_NONE
	worn_icon = 'modular_septic/icons/obj/items/guns/worn/back.dmi'
	equip_sound = 'modular_septic/sound/weapons/guns/weap_away.ogg'
	worn_icon_state = "shotgun"
	fire_sound = 'modular_septic/sound/weapons/guns/shotgun/shotgun.wav'
	suppressed_sound = list('modular_septic/sound/weapons/guns/shotgun/countryforold1.wav', 'modular_septic/sound/weapons/guns/shotgun/countryforold2.wav')
	pickup_sound = 'modular_septic/sound/weapons/guns/shotgun/shotgun_draw.wav'
	lock_back_sound = 'modular_septic/sound/weapons/guns/shotgun/shotgun_lock_back.wav'
	bolt_drop_sound = 'modular_septic/sound/weapons/guns/shotgun/shotgun_lockin.wav'
	rack_sound = 'modular_septic/sound/weapons/guns/shotgun/shotgun_cycle.wav'
	drop_sound = 'modular_septic/sound/weapons/guns/drop_heavygun.wav'
	safety_on_sound = 'modular_septic/sound/weapons/guns/safety2.ogg'
	safety_off_sound = 'modular_septic/sound/weapons/guns/safety2.ogg'
	load_sound = list(
		'modular_septic/sound/weapons/guns/shotgun/shell1.wav', \
		'modular_septic/sound/weapons/guns/shotgun/shell2.wav', \
		'modular_septic/sound/weapons/guns/shotgun/shell3.wav', \
	)
	load_sound_volume = 80
	safety_off_sound = 'modular_septic/sound/weapons/guns/shotgun/shotgun_safety2.wav'
	safety_on_sound = 'modular_septic/sound/weapons/guns/shotgun/shotgun_safety1.wav'
	gunshot_animation_information = list(
		"pixel_x" = 24, \
		"pixel_y" = 1, \
		"inactive_wben_suppressed" = TRUE, \
		"add_pixel_x_sawn" = -5, \
	)
	recoil_animation_information = list(
		"recoil_angle_upper" = -15, \
		"recoil_angle_lower" = -30, \
	)
	force = 12
	pb_knockback = 0
	can_suppress = TRUE
	suppressor_x_offset = 13
	bolt_type = BOLT_TYPE_LOCKING
	skill_melee = SKILL_IMPACT_WEAPON_TWOHANDED
	skill_ranged = SKILL_SHOTGUN
	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_SUITSTORE
	tetris_width = 128
	tetris_height = 32

// DOUBLE BARRELED SHOTGUN
/obj/item/gun/ballistic/shotgun/doublebarrel
	pb_knockback = 0
	empty_icon_state = FALSE
	bolt_type = BOLT_TYPE_BREAK_ACTION
	can_suppress = FALSE
	safety_flags = NONE
	semi_auto = TRUE
	cylinder_shows_open = TRUE
	cylinder_shows_ammo_count = TRUE

// The legendary
/obj/item/gun/ballistic/shotgun/doublebarrel/bobox
	name = "TF-Bitch"
	desc = "The Legendary Bitch. It's real name has been long forgotten as Terran Federal marketing embraced the nickname given to it by customers. \
	kicks like a bitch, hits even harder. Beloved by just about any milita soldier."
	icon = 'modular_septic/icons/obj/items/guns/shotgun.dmi'
	inhand_icon_state = "bobox"
	base_icon_state = "bobox"
	icon_state = "bobox"
	worn_icon_state = "bobox"
	wielded_inhand_state = FALSE
	w_class = WEIGHT_CLASS_NORMAL
	weapon_weight = WEAPON_LIGHT
	cylinder_wording = "barrel"
	rack_sound = list(
		'modular_septic/sound/weapons/guns/revolver/hammer1.ogg', \
		'modular_septic/sound/weapons/guns/revolver/hammer2.ogg', \
	)
	drop_sound = 'modular_septic/sound/weapons/guns/drop_lightgun.wav'
	// close cylinder sound
	lock_back_sound = 'modular_septic/sound/weapons/guns/shotgun/db_in.wav'
	// open cylinder sound
	bolt_drop_sound = 'modular_septic/sound/weapons/guns/shotgun/db_out.wav'
	fire_sound = list('modular_septic/sound/weapons/guns/shotgun/comgun1.wav', 'modular_septic/sound/weapons/guns/shotgun/comgun2.wav')
	load_sound = 'modular_septic/sound/weapons/guns/shotgun/db_load.wav'
	mag_type = /obj/item/ammo_box/magazine/internal/cylinder/bobox
	slot_flags = ITEM_SLOT_BELT
	tetris_width = 64
	tetris_height = 32

// ITHACA SHOTGUN
/obj/item/gun/ballistic/shotgun/ithaca
	name = "\improper CA-Kanker"
	desc = "The Centauri-Arms Kanker. The most widely used breaching shotgun used by the Solarian Marines."
	icon = 'modular_septic/icons/obj/items/guns/40x32.dmi'
	icon_state = "ithaca"
	base_icon_state = "ithaca"
	empty_indicator = FALSE

// ??? SHOTGUN
/obj/item/gun/ballistic/shotgun/riot
	name = "\improper TF-Unionbuster"
	desc = "The Terran Federal Unionbuster got its name during The Red Wars, where it was used against entrenched communist forces with disgusting effect."
	icon = 'modular_septic/icons/obj/items/guns/40x32.dmi'
	icon_state = "riot"
	base_icon_state = "riot"
	inhand_icon_state = "riot"
	empty_indicator = FALSE
	can_be_sawn_off = FALSE
	gunshot_animation_information = list(
		"pixel_x" = 25, \
		"pixel_y" = 1, \
		"inactive_wben_suppressed" = TRUE, \
		"add_pixel_x_sawn" = -4, \
	)
	recoil_animation_information = list(
		"recoil_angle_upper" = -15, \
		"recoil_angle_lower" = -30, \
	)
	suppressor_x_offset = 14

/obj/item/gun/ballistic/shotgun/automatic
	bolt_type = BOLT_TYPE_LOCKING
	lock_back_sound = 'modular_septic/sound/weapons/guns/shotgun/semigun_lock_back.wav'
	bolt_drop_sound = 'modular_septic/sound/weapons/guns/shotgun/semigun_lockin.wav'

// BENELLI M4 SHOTGUN
/obj/item/gun/ballistic/shotgun/automatic/combat
	name = "\improper CA-Macemen"
	desc = "The Centauri-Arms Macemen is the next generation of breaching shotgun by the company. It has only seen minimal adoption throughout the Marines. "
	icon = 'modular_septic/icons/obj/items/guns/40x32.dmi'
	icon_state = "combat"
	base_icon_state = "combat"
	inhand_icon_state = "combat"
	can_flashlight = TRUE
	flight_x_offset = 24
	flight_y_offset = 10
	rack_sound = 'modular_septic/sound/weapons/guns/shotgun/semigun_cycle.wav'
	fire_sound = 'modular_septic/sound/weapons/guns/shotgun/semigun.wav'
	suppressed_sound = 'modular_septic/sound/weapons/guns/shotgun/semigun_silenced.wav'
	empty_indicator = FALSE
	gunshot_animation_information = list(
		"pixel_x" = 23, \
		"pixel_y" = 1, \
		"inactive_wben_suppressed" = TRUE, \
		"add_pixel_x_sawn" = -4, \
	)
	recoil_animation_information = list(
		"recoil_angle_upper" = -15, \
		"recoil_angle_lower" = -30, \
	)
	suppressor_x_offset = 13

// BROWNING 2000 SHOTGUN
/obj/item/gun/ballistic/shotgun/automatic/b2000
	name = "\improper MKFA-Salvekiss"
	desc = "A rather strangely named semi-automatic shotgun noted for being entirely unreliable, overpriced and generally confusing if it wasnt for the fact it can take a silencer!"
	icon = 'modular_septic/icons/obj/items/guns/40x32.dmi'
	icon_state = "b2000"
	base_icon_state = "b2000"
	bolt_wording = "slide"
	empty_indicator = FALSE
	rack_sound = 'modular_septic/sound/weapons/guns/shotgun/semigun_cycle.wav'
	fire_sound = 'modular_septic/sound/weapons/guns/shotgun/semigun.wav'
	suppressed_sound = 'modular_septic/sound/weapons/guns/shotgun/semigun_silenced.wav'
	gunshot_animation_information = list(
		"pixel_x" = 25, \
		"pixel_y" = 1, \
		"inactive_wben_suppressed" = TRUE, \
		"add_pixel_x_sawn" = -5, \
	)
	recoil_animation_information = list(
		"recoil_angle_upper" = -15, \
		"recoil_angle_lower" = -30, \
	)
	mag_type = /obj/item/ammo_box/magazine/internal/shot/lethal

// BELADOR 2021 SILENCED SHOTGUN
/obj/item/gun/ballistic/shotgun/automatic/b2021
	name = "\improper MKFA-Succubus"
	desc = "MKFA's most beloved product. The Succubus is a silenced semi-automatic shotgun with a ten-on-tap capacity. \
	Few guns have put the fear of their false fucking Gods into Xeno insurgents like this baby has."
	icon = 'modular_septic/icons/obj/items/guns/40x32.dmi'
	icon_state = "b2021"
	inhand_icon_state = "b2021"
	base_icon_state = "b2021"
	bolt_wording = "slide"
	semi_auto = FALSE
	empty_indicator = FALSE
	can_unsuppress = FALSE
	rack_sound = 'modular_septic/sound/weapons/guns/shotgun/semigun_cycle.wav'
	fire_sound = 'modular_septic/sound/weapons/guns/shotgun/rape_gun.wav'
	suppressed_sound = 'modular_septic/sound/weapons/guns/shotgun/belador_silenced.wav'
	gunshot_animation_information = list(
		"pixel_x" = 25, \
		"pixel_y" = 1, \
		"inactive_wben_suppressed" = TRUE, \
		"add_pixel_x_sawn" = -5, \
	)
	recoil_animation_information = list(
		"recoil_angle_upper" = -15, \
		"recoil_angle_lower" = -30, \
	)
	mag_type = /obj/item/ammo_box/magazine/internal/shot/b2021

/obj/item/gun/ballistic/shotgun/automatic/b2021/Initialize(mapload)
	. = ..()
	var/obj/item/suppressor/suppressor = new(src)
	install_suppressor(suppressor)

// ??? AUTOMATIC SHOTGUN
/obj/item/gun/ballistic/shotgun/bulldog
	name = "\improper CA-Armageddon"
	desc = "Centauri-Arms answer to the wildly popular Succubus. An impressive semi-automatic shotgun with a cripplingly high price-tag!"
	icon = 'modular_septic/icons/obj/items/guns/40x32.dmi'
	icon_state = "automatic"
	base_icon_state = "automatic"
	lefthand_file = 'modular_septic/icons/obj/items/guns/inhands/shotgun_lefthand.dmi'
	righthand_file = 'modular_septic/icons/obj/items/guns/inhands/shotgun_righthand.dmi'
	inhand_icon_state = "auto"
	bolt_wording = "bolt"
	special_mags = FALSE
	mag_display_ammo = FALSE
	empty_indicator = FALSE
	empty_alarm = FALSE
	casing_ejector = TRUE
	bolt_type = BOLT_TYPE_STANDARD
	empty_icon_state = TRUE
	rack_sound = 'modular_septic/sound/weapons/guns/shotgun/autogun_cycle.wav'
	lock_back_sound = 'modular_septic/sound/weapons/guns/shotgun/autogun_lock_back.wav'
	fire_sound = 'modular_septic/sound/weapons/guns/shotgun/rape_gun.wav'
	load_sound = 'modular_septic/sound/weapons/guns/shotgun/autogun_magin.ogg'
	load_empty_sound = 'modular_septic/sound/weapons/guns/shotgun/autogun_magin.ogg'
	eject_empty_sound = 'modular_septic/sound/weapons/guns/shotgun/autogun_magout.ogg'
	eject_sound = 'modular_septic/sound/weapons/guns/shotgun/autogun_magout.ogg'
	suppressed_sound = 'modular_septic/sound/weapons/guns/shotgun/belador_silenced.wav'
	load_sound_volume = 40
	gunshot_animation_information = list(
		"pixel_x" = 25, \
		"pixel_y" = 1, \
		"inactive_wben_suppressed" = TRUE, \
		"add_pixel_x_sawn" = -5, \
	)
	recoil_animation_information = list(
		"recoil_angle_upper" = -15, \
		"recoil_angle_lower" = -30, \
	)
	pin = /obj/item/firing_pin
	can_suppress = TRUE
	suppressor_x_offset = 12

// SAIGA-12 AUTOMATIC SHOTGUN
/obj/item/gun/ballistic/shotgun/abyss
	name = "\improper TF-Knocker"
	desc = "A relatively interesting product from Terran Federation. Made in direct response to Armageddon and Succubus. It fails to compete with either, however."
	icon = 'modular_septic/icons/obj/items/guns/48x32.dmi'
	lefthand_file = 'modular_septic/icons/obj/items/guns/inhands/shotgun_lefthand.dmi'
	righthand_file = 'modular_septic/icons/obj/items/guns/inhands/shotgun_righthand.dmi'
	inhand_icon_state = "saiga"
	icon_state = "saiga"
	worn_icon_state = "saiga"
	base_icon_state = "saiga"
	bolt_wording = "bolt"
	mag_display = TRUE
	empty_icon_state = TRUE
	bolt_type = BOLT_TYPE_STANDARD
	special_mags = FALSE
	mag_display_ammo = TRUE
	semi_auto = TRUE
	internal_magazine = FALSE
	rack_sound_vary = FALSE
	casing_ejector = TRUE
	rack_sound = 'modular_septic/sound/weapons/guns/shotgun/autogun_cycle.wav'
	lock_back_sound = 'modular_septic/sound/weapons/guns/shotgun/autogun_lock_back.wav'
	fire_sound = 'modular_septic/sound/weapons/guns/shotgun/rape_gun.wav'
	load_sound = 'modular_septic/sound/weapons/guns/shotgun/autogun_magin.ogg'
	load_empty_sound = 'modular_septic/sound/weapons/guns/shotgun/autogun_magin.ogg'
	eject_empty_sound = 'modular_septic/sound/weapons/guns/shotgun/autogun_magout.ogg'
	eject_sound = 'modular_septic/sound/weapons/guns/shotgun/autogun_magout.ogg'
	suppressed_sound = 'modular_septic/sound/weapons/guns/shotgun/belador_silenced.wav'
	load_sound_volume = 40
	gunshot_animation_information = list(
		"pixel_x" = 31, \
		"pixel_y" = 0, \
		"inactive_wben_suppressed" = TRUE, \
		"add_pixel_x_sawn" = -5, \
	)
	recoil_animation_information = list(
		"recoil_angle_upper" = -15, \
		"recoil_angle_lower" = -30, \
	)
	pin = /obj/item/firing_pin
	mag_type = /obj/item/ammo_box/magazine/abyss_shotgun_drum
	suppressor_x_offset = 8

// BALLS DESTROYER
/obj/item/gun/ballistic/shotgun/bolas
	name = "\improper MKFA-Crusader"
	desc = "When Minikasha was designing the crusader it was said they were on fourteen different kinds of drugs and on a six hour whore fucking spree in the Katilos System. \
	Chambers a utterly fucking massive four-gauge shell. It's liable to break your wrist."
	icon = 'modular_septic/icons/obj/items/guns/48x32.dmi'
	icon_state = "bolas"
	base_icon_state = "bolas"
	inhand_icon_state = "bolas"
	mag_type = /obj/item/ammo_box/magazine/internal/shot/bolas
	fire_sound = list('modular_septic/sound/weapons/guns/shotgun/bolas1.wav', 'modular_septic/sound/weapons/guns/shotgun/bolas2.wav')
	suppressed_sound = list('modular_septic/sound/weapons/guns/shotgun/bolas_silenced1.wav', 'modular_septic/sound/weapons/guns/shotgun/bolas_silenced2.wav')
	load_sound = list(
		'modular_septic/sound/weapons/guns/shotgun/bolas_load1.wav', \
		'modular_septic/sound/weapons/guns/shotgun/bolas_load2.wav', \
		'modular_septic/sound/weapons/guns/shotgun/bolas_load3.wav', \
	)
	client_recoil_animation_information = list(
		"strength" = 1.5,
		"duration" = 3.5,
	)
	lock_back_sound = 'modular_septic/sound/weapons/guns/shotgun/bolas_lock_back.wav'
	bolt_drop_sound = 'modular_septic/sound/weapons/guns/shotgun/bolas_lockin.wav'
	rack_sound = 'modular_septic/sound/weapons/guns/shotgun/bolas_pump.wav'
	slot_flags = null
	can_suppress = TRUE
	suppressor_x_offset = 11

// SPAS 12
/obj/item/gun/ballistic/shotgun/denominator
	name = "\improper SPICE-12 12-gauge shotgun"
	desc = "An iconic 12-gauge shotgun with a chunky, chewy design with selectable fire-mode simply by pressing the switch \
	(MMB) while the pump is forward and the safety is off."
	icon = 'modular_septic/icons/obj/items/guns/48x32.dmi'
	icon_state = "spas"
	base_icon_state = "spas"
	inhand_icon_state = "spas"
	worn_icon_state = "spas"
	lock_back_sound = 'modular_septic/sound/weapons/guns/shotgun/spas_lock_back.ogg'
	bolt_drop_sound = 'modular_septic/sound/weapons/guns/shotgun/spas_lockin.ogg'
	rack_sound = 'modular_septic/sound/weapons/guns/shotgun/spas_cycle.ogg'
	fire_sound = list('modular_septic/sound/weapons/guns/shotgun/spas1.ogg', 'modular_septic/sound/weapons/guns/shotgun/spas2.ogg')
	fold_open_sound = 'modular_septic/sound/weapons/guns/rifle/ak_stock_open.wav'
	fold_close_sound = 'modular_septic/sound/weapons/guns/rifle/ak_stock_close.wav'
	var/semi = FALSE
	var/spas_semi_click = 'modular_septic/sound/weapons/guns/shotgun/spas_click.ogg'
	foldable = TRUE
	mag_type = /obj/item/ammo_box/magazine/internal/shot/spas

/obj/item/gun/ballistic/shotgun/denominator/attack_self_tertiary(mob/user, modifiers)
	. = ..()
	if(bolt_locked || (!safety_flags & GUN_SAFETY_ENABLED))
		var/wontbudge = "The switch won't budge."
		if(!safety_flags & GUN_SAFETY_ENABLED)
			wontbudge += span_warning(" The safety has to be off.")
		if(bolt_locked)
			wontbudge += span_danger(" The pump has to be forward.")
		to_chat(user, span_notice("[wontbudge]"))
		return
	semi = !semi
	user.visible_message(span_warning("[user] toggles the semi-automatic function to [semi ? "on" : "off"]."), \
	span_notice("I toggle the semi-automatic function to [semi ? "on" : "off"]."))
	if(semi)
		playsound(src, safety_off_sound, safety_sound_volume, safety_sound_vary)
	else
		playsound(src, safety_on_sound, safety_sound_volume, safety_sound_vary)
	sound_hint()

/obj/item/gun/ballistic/shotgun/denominator/shoot_live_shot(mob/living/user)
	. = ..()
	if(semi)
		playsound(src, spas_semi_click, 80, FALSE)
		rack()
