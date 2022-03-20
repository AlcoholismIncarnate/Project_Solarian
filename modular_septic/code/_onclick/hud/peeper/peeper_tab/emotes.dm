#define EMOTES_PER_LOADOUT 16

/datum/peeper_tab/emotes
	name = "Emote"
	desc = "Tab that contains shortcuts to emotes."
	icon_state = "emote_tab"
	/// Help button that always appears on this tab
	var/atom/movable/screen/emote/help
	/// Emote buttons currently being exhibited
	var/list/atom/movable/screen/emote/current_emote_buttons = list()
	/// Emote screen atoms indexed by emote datum
	var/list/atom/movable/screen/emote/emote_buttons = list()
	/// Emote loadout switch buttons we are currently exhibiting
	var/list/atom/movable/screen/emote_loadout/current_loadout_switches = list()
	/// Emote loadout up switch
	var/atom/movable/screen/emote_loadout/up/loadout_up
	/// Emote loadout down switch
	var/atom/movable/screen/emote_loadout/down/loadout_down
	/// In case we have too many emotes, which ones are we exhibiting?
	var/current_emote_loadout = 0

/datum/peeper_tab/emotes/initialize_screen_atoms()
	. = ..()
	var/datum/emote/help/help_emote = GLOB.emote_list["help"][1]
	help = new /atom/movable/screen/emote(help_emote)
	help.maptext_x = 0
	help.maptext_y = 0
	help.screen_loc = ui_peeper_emote_help
	loadout_up = new(mypeeper?.myhud)
	loadout_up.mytab = src
	loadout_down = new(mypeeper?.myhud)
	loadout_down.mytab = src

/datum/peeper_tab/emotes/Destroy()
	. = ..()
	current_emote_buttons = null
	for(var/emote_type in emote_buttons)
		qdel(emote_buttons[emote_type])
		emote_buttons -= emote_type
	emote_buttons = null
	QDEL_NULL(help)

/datum/peeper_tab/emotes/show_tab()
	update_emote_buttons()
	return ..()

/datum/peeper_tab/emotes/get_all_screen_atoms()
	. = ..()
	. |= help
	. |= flatten_list(emote_buttons)
	. |= loadout_up
	. |= loadout_down

/datum/peeper_tab/emotes/get_visible_screen_atoms()
	. = ..()
	. |= help
	. |= current_emote_buttons
	. |= current_loadout_switches

/datum/peeper_tab/emotes/proc/update_emote_buttons()
	current_emote_buttons = list()
	var/emotes_per_column = EMOTES_PER_LOADOUT/2
	var/current_button = 0
	var/counter = 0
	var/list/emote_datums_counted = list()
	var/datum/emote/emote_datum
	var/atom/movable/screen/emote/emote_button
	for(var/act in (GLOB.emote_list-"help"))
		emote_datum = null
		for(var/datum/emote/candidate_emote as anything in GLOB.emote_list[act])
			//first emote datum that works wins out
			if(!(candidate_emote in emote_datums_counted) && \
				mypeeper?.myhud?.mymob && \
				candidate_emote.can_run_emote(mypeeper.myhud.mymob, FALSE, TRUE))
				emote_datum = candidate_emote
				emote_datums_counted |= emote_datum
				counter++
				break
		//only display emotes that match the current tab
		if(counter <= (current_emote_loadout * EMOTES_PER_LOADOUT))
			continue
		//no valid emotes for this key
		if(!emote_datum)
			continue
		var/width = FLOOR(current_button/emotes_per_column, 1)
		var/height = emotes_per_column - 1 - (current_button % emotes_per_column)
		//we're done
		if(width >= 2)
			continue
		emote_button = emote_buttons[emote_datum.type]
		if(!emote_button)
			emote_button = new(emote_datum)
			emote_button.hud = mypeeper?.myhud
			emote_buttons[emote_datum.type] = emote_button
		current_emote_buttons |= emote_button
		emote_button.screen_loc = "statmap:1:[width*64],0:[height*16]"
		current_button++
	current_loadout_switches = list()
	var/max_loadout = CEILING((counter-1)/EMOTES_PER_LOADOUT, 1)
	if(current_emote_loadout > 0)
		current_loadout_switches |= loadout_up
	if(current_emote_loadout < max_loadout)
		current_loadout_switches |= loadout_down
	return TRUE

/datum/peeper_tab/emotes/proc/loadout_up()
	current_emote_loadout--
	update_emote_buttons()
	if((mypeeper?.current_tab == src) && (mypeeper.myhud?.peeper_active) && mypeeper.myhud.mymob?.client)
		hide_tab()
		show_tab()

/datum/peeper_tab/emotes/proc/loadout_down()
	current_emote_loadout++
	update_emote_buttons()
	if((mypeeper?.current_tab == src) && (mypeeper.myhud?.peeper_active) && mypeeper.myhud.mymob?.client)
		hide_tab()
		show_tab()

#undef EMOTES_PER_LOADOUT
