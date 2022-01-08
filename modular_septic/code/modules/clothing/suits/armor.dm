/obj/item/clothing/suit/armor
	body_parts_covered = CHEST|GROIN

/obj/item/clothing/suit/armor/vest
	name = "slim type 1 armor vest"
	desc = "A slim version of the type I armored vest that provides decent protection against most types of damage."
	icon = 'modular_septic/icons/obj/clothing/suits.dmi'
	icon_state = "armorvest_slim"
	worn_icon = 'modular_septic/icons/mob/clothing/suit.dmi'
	worn_icon_state = "armorvest_slim"
	//A decent kevlar vest weighs almost 3kg
	carry_weight = 3
	//But does not cover the groin
	body_parts_covered = CHEST
	equip_sound = 'modular_septic/sound/armor/equip/armor_use.wav'
	pickup_sound = 'modular_septic/sound/armor/equip/armor_pickup.wav'
	drop_sound = 'modular_septic/sound/armor/equip/armor_drop.wav'
	armor = null
	subarmor = list(SUBARMOR_FLAGS = SUBARMOR_FLEXIBLE, \
                EDGE_PROTECTION = 40, \
                CRUSHING = 13, \
                CUTTING = 15, \
                PIERCING = 34, \
                IMPALING = 5, \
                LASER = 1, \
                ENERGY = 0, \
                BOMB = 8, \
                BIO = 0, \
                FIRE = 2, \
                ACID = 2, \
                MAGIC = 0, \
                WOUND = 0, \
                ORGAN = 0)

/obj/item/clothing/suit/armor/vest/alt
	name = "type 1 armor vest"
	desc = "A type I armored vest that provides decent protection against most types of damage."
	icon = 'modular_septic/icons/obj/clothing/suits.dmi'
	icon_state = "armorvest"
	worn_icon = 'modular_septic/icons/mob/clothing/suit.dmi'
	worn_icon_state = "armorvest"
	//Bulkier vest
	carry_weight = 6
	body_parts_covered = CHEST|GROIN
	armor = null
	subarmor = list(SUBARMOR_FLAGS = SUBARMOR_FLEXIBLE, \
                EDGE_PROTECTION = 40, \
                CRUSHING = 13, \
                CUTTING = 15, \
                PIERCING = 34, \
                IMPALING = 5, \
                LASER = 1, \
                ENERGY = 0, \
                BOMB = 8, \
                BIO = 0, \
                FIRE = 2, \
                ACID = 2, \
                MAGIC = 0, \
                WOUND = 0, \
                ORGAN = 0)

/obj/item/clothing/suit/armor/vest/heavy
	name = "type 3 armor vest"
	desc = "A type 3 armored vest that provides intermediate protection against most types of damage."
	icon = 'modular_septic/icons/obj/clothing/suits.dmi'
	icon_state = "armorvest_heavy"
	worn_icon = 'modular_septic/icons/mob/clothing/suit.dmi'
	worn_icon_state = "armorvest_heavy"
	//Bulkierer vest
	carry_weight = 8
	body_parts_covered = CHEST|GROIN
