/obj/item/modular_computer/embedded
	name = "embedded computer"
	desc = "A small advanced computer installed as part of robots or AI mainframes."
	icon = 'icons/obj/modular_tablet.dmi'
	icon_state = "tablet"
	icon_state_unpowered = "tablet"
	icon_state_menu = "menu"
	hardware_flag = PROGRAM_EMBEDDED
	w_class = ITEMSIZE_SMALL
	light_strength = 0					// Part of chassis, not really a physical device.
	modifiable = FALSE
	damageable = FALSE

// Gives emagged/traitor/malf cyborgs/AIs access to antag programs
/obj/item/modular_computer/embedded/turn_on(var/mob/user)
	if(isrobot(loc))
		var/mob/living/silicon/robot/R = loc
		computer_emagged = R.emagged
	else if (isAI(loc))
		var/mob/living/silicon/ai/A = loc
		computer_emagged = A.malfunctioning || (A.mind && A.mind.special_role)
	..(user)

/obj/item/modular_computer/embedded/preset/ai/update_icon()
	..()
	underlays.Cut()
	underlays.Add(icon("icons/mob/screen_ai.dmi", "blank"))