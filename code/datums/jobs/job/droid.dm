/datum/job/droid
	access = ALL_ANTAGONIST_ACCESS
	minimal_access = ALL_ANTAGONIST_ACCESS
	skills_type = /datum/skills/crafty
	faction = FACTION_CIS
	selection_color = "#ddddff"


//CLF Standard
/datum/job/droid/battle_droid
	title = "Battle Droid"
	paygrade = "CLF1"
	outfit = /datum/outfit/job/clf/standard
	comm_title = "CIS"
	supervisors = "fix me"
	selection_color = "#ccceff"
	total_positions = -1
	display_order = JOB_DISPLAY_ORDER_BATTLE
	jobworth = list()
	job_flags = JOB_FLAG_LATEJOINABLE|JOB_FLAG_ROUNDSTARTJOINABLE|JOB_FLAG_PROVIDES_BANK_ACCOUNT|JOB_FLAG_ADDTOMANIFEST|JOB_FLAG_PROVIDES_SQUAD_HUD


/datum/outfit/job/droid/battle_droid
	name = "Battle Droid"
	jobtype = /datum/job/droid/battle_droid

	id = /obj/item/card/id/silver
	belt = /obj/item/storage/belt/knifepouch
	ears = /obj/item/radio/headset/distress/dutch
	w_uniform = /obj/item/clothing/under/colonist
	shoes = /obj/item/clothing/shoes/black
	wear_suit = /obj/item/clothing/suit/storage/militia
	gloves = /obj/item/clothing/gloves/black
	suit_store = /obj/item/weapon/gun/smg/uzi
	r_store = /obj/item/storage/pouch/general
	l_store = /obj/item/storage/pill_bottle/zoom
	back = /obj/item/storage/backpack/lightpack


/datum/outfit/job/droid/battle_droid/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	. = ..()
	H.equip_to_slot_or_del(new /obj/item/explosive/grenade/frag/stick, SLOT_IN_SUIT)
	H.equip_to_slot_or_del(new /obj/item/explosive/grenade/frag/stick, SLOT_IN_SUIT)

	H.equip_to_slot_or_del(new /obj/item/radio, SLOT_IN_BACKPACK)
	H.equip_to_slot_or_del(new /obj/item/tool/crowbar/red, SLOT_IN_BACKPACK)
	H.equip_to_slot_or_del(new /obj/item/storage/box/MRE, SLOT_IN_BACKPACK)
	H.equip_to_slot_or_del(new /obj/item/storage/box/MRE, SLOT_IN_BACKPACK)
	H.equip_to_slot_or_del(new /obj/item/explosive/grenade/incendiary/molotov, SLOT_IN_BACKPACK)
	H.equip_to_slot_or_del(new /obj/item/explosive/grenade/incendiary/molotov, SLOT_IN_BACKPACK)
	H.equip_to_slot_or_del(new /obj/item/storage/box/m94, SLOT_IN_BACKPACK)
	H.equip_to_slot_or_del(new /obj/item/storage/box/m94, SLOT_IN_BACKPACK)
	H.equip_to_slot_or_del(new /obj/item/ammo_magazine/smg/uzi/extended, SLOT_IN_BACKPACK)
	H.equip_to_slot_or_del(new /obj/item/ammo_magazine/smg/uzi/extended, SLOT_IN_BACKPACK)
	H.equip_to_slot_or_del(new /obj/item/ammo_magazine/smg/uzi/extended, SLOT_IN_BACKPACK)
	H.equip_to_slot_or_del(new /obj/item/ammo_magazine/smg/uzi/extended, SLOT_IN_BACKPACK)

	H.equip_to_slot_or_del(new /obj/item/reagent_containers/hypospray/autoinjector/tramadol, SLOT_IN_R_POUCH)