/mob
	/// Skill holder
	var/datum/attribute_holder/attributes
	/// Sound we play to the player who controls us on death
	var/deathsound_local = sound('modular_septic/sound/effects/flatline.ogg', FALSE, 0, CHANNEL_EAR_RING, 100)
	/// Works like client.movement_locked, but handled mob-wise
	var/movement_locked = FALSE
	/// Hydration level of the mob
	var/hydration = HYDRATION_LEVEL_START_MIN // Randomised in Initialize
	/// Intents
	var/a_intent
	var/list/possible_a_intents
	/// Combat style
	var/combat_style = CS_DEFAULT
	/// Dodge/parry
	var/dodge_parry = DP_PARRY
	/// Middle click special attacks
	var/special_attack = SPECIAL_ATK_NONE
