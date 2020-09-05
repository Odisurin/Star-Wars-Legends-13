///////////////////
//*____iWuna____*//
//*__with love__*//
///////////////////

/mob/living/carbon/human/species/droid/factory/b2/verb/give_weap()
	set name = "Toggle gun"
	set category = "DROID"

	if(!is_holding(attached_gun))
		src.put_in_hands(attached_gun)
	else
		dropItemToGround(attached_gun, force=TRUE)
		attached_gun.forceMove(src)

/obj/item/weapon/gun/energy/lasgun/droidgun
	name = "droid gun"
	desc = "This is arm. And this is gun. Arm gun?.."
	force = 15
	icon = 'icons/star/gun_b2.dmi'
	icon_state = "B2-Blaster"
	item_state = "E-5"
	max_shots = 50 //codex stuff
	load_method = CELL //codex stuff
	ammo = /datum/ammo/energy/lasgun/M43
	ammo_diff = null
	cell_type = /obj/item/cell/lasgun/droid
	charge_cost = ENERGY_STANDARD_AMMO_COST
	flags_gun_features = GUN_AUTO_EJECTOR|GUN_CAN_POINTBLANK|GUN_AMMO_COUNTER|GUN_ENERGY|GUN_AMMO_COUNTER
	flags_item = NODROP|WIELDED
	accuracy_mult_unwielded = 0.5 //Heavy and unwieldy; you don't one hand this.
	scatter_unwielded = 100 //Heavy and unwieldy; you don't one hand this.
	damage_falloff_mult = 0.25
	fire_delay = 8
	fire_sound = 'sound/weapons/guns/fire/gunshot.ogg'

/obj/item/cell/lasgun/droid
	name = "laser gun battery"
	desc = "A specialized high density battery used to power the M43-P practice lasgun. It lacks any potential to harm someone, but it has the ability to recharge."
	gun_type = /obj/item/weapon/gun/energy/lasgun/droidgun
	base_ammo_icon = "m43"
	icon_state = "m43"
	self_recharge = TRUE
	maxcharge = 800
	charge_amount = 25 // 10%, 2 shots
	charge_delay = 2 SECONDS