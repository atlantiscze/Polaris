/obj/item/modular_computer/embedded/preset/robot/install_default_hardware()
	..()
	processor_unit = new/obj/item/weapon/computer_hardware/processor_unit/photonic(src)
	tesla_link = new/obj/item/weapon/computer_hardware/tesla_link(src)
	hard_drive = new/obj/item/weapon/computer_hardware/hard_drive/cluster(src)
	network_card = new/obj/item/weapon/computer_hardware/network_card/advanced(src)
	nano_printer = new/obj/item/weapon/computer_hardware/nano_printer(src)
	card_slot = new/obj/item/weapon/computer_hardware/card_slot(src)
	// Robots, unlike AIs, are likely to operate outside APC range, so give them a good integrated battery as well
	battery_module = new/obj/item/weapon/computer_hardware/battery_module/ultra(src)
	battery_module.charge_to_full()

/obj/item/modular_computer/embedded/preset/ai
	name = "AI Computer"
	appearance_flags = TILE_BOUND|PIXEL_SCALE|NO_CLIENT_COLOR
	layer = LAYER_HUD_BASE
	plane = PLANE_PLAYER_HUD

/obj/item/modular_computer/embedded/preset/ai/install_default_hardware()
	..()
	processor_unit = new/obj/item/weapon/computer_hardware/processor_unit/photonic(src)
	tesla_link = new/obj/item/weapon/computer_hardware/tesla_link(src)
	hard_drive = new/obj/item/weapon/computer_hardware/hard_drive/cluster(src)
	network_card = new/obj/item/weapon/computer_hardware/network_card/wired(src)
	nano_printer = new/obj/item/weapon/computer_hardware/nano_printer(src)
	card_slot = new/obj/item/weapon/computer_hardware/card_slot(src)