/obj/item/clothing/suit/armor/sw
	name = "star wars suit"
	desc = "An armored suit that protects against moderate damage. Used in Star Wars."
	icon = 'icons/star/mob/suit.dmi"
	icon_state = "pilot_armor"
	item_state = "pilot_armor"
	gas_transfer_coefficient = 0.01
	permeability_coefficient = 0.01
	flags_armor_protection = CHEST|GROIN|LEGS|FEET|ARMS
	allowed = list(/obj/item/weapon/gun,/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/weapon/baton,/obj/item/restraints/handcuffs,/obj/item/tank/emergency_oxygen)
	slowdown = 1
	soft_armor = list("melee" = 80, "bullet" = 60, "laser" = 50, "energy" = 25, "bomb" = 50, "bio" = 100, "rad" = 100, "fire" = 25, "acid" = 25)
	flags_inventory = BLOCKSHARPOBJ|NOPRESSUREDMAGE
	flags_inv_hide = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT
	flags_cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	siemens_coefficient = 0.6

/obj/item/clothing/suit/armor/sw/pilot
	name = "pilot suit"
	desc = "An armored suit that protects against moderate damage. Used by pilots."
	icon_state = "pilot_armor"
	item_state = "pilot_armor"
	gas_transfer_coefficient = 0.01
	permeability_coefficient = 0.01
	flags_armor_protection = CHEST|GROIN|LEGS|FEET|ARMS
	allowed = list(/obj/item/weapon/gun,/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/weapon/baton,/obj/item/restraints/handcuffs,/obj/item/tank/emergency_oxygen)
	slowdown = 1
	soft_armor = list("melee" = 80, "bullet" = 60, "laser" = 50, "energy" = 25, "bomb" = 50, "bio" = 100, "rad" = 100, "fire" = 25, "acid" = 25)
	flags_inventory = BLOCKSHARPOBJ|NOPRESSUREDMAGE
	flags_inv_hide = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT
	flags_cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	siemens_coefficient = 0.6

/obj/item/clothing/suit/armor/sw/commando
	name = "commando suit"
	desc = "A heavily armored suit that protects against damage. Used by imperial commandos."
	icon_state = "commando_armor"
	item_state = "commando_armor"
	gas_transfer_coefficient = 0.01
	permeability_coefficient = 0.01
	flags_armor_protection = CHEST|GROIN|LEGS|FEET|ARMS
	allowed = list(/obj/item/weapon/gun,/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/weapon/baton,/obj/item/restraints/handcuffs,/obj/item/tank/emergency_oxygen)
	slowdown = 1
	soft_armor = list("melee" = 80, "bullet" = 60, "laser" = 50, "energy" = 25, "bomb" = 50, "bio" = 100, "rad" = 100, "fire" = 25, "acid" = 25)
	flags_inventory = BLOCKSHARPOBJ|NOPRESSUREDMAGE
	flags_inv_hide = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT
	flags_cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	siemens_coefficient = 0.6

/obj/item/clothing/suit/armor/sw/stormtrooper
	name = "stormtrooper suit"
	desc = "A well armored suit that protects against moderate damage. Used by imperial stormtroopers."
	icon_state = "storm_armor"
	item_state = "storm_armor"
	gas_transfer_coefficient = 0.01
	permeability_coefficient = 0.01
	flags_armor_protection = CHEST|GROIN|LEGS|FEET|ARMS
	allowed = list(/obj/item/weapon/gun,/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/weapon/baton,/obj/item/restraints/handcuffs,/obj/item/tank/emergency_oxygen)
	slowdown = 1
	soft_armor = list("melee" = 80, "bullet" = 60, "laser" = 50, "energy" = 25, "bomb" = 50, "bio" = 100, "rad" = 100, "fire" = 25, "acid" = 25)
	flags_inventory = BLOCKSHARPOBJ|NOPRESSUREDMAGE
	flags_inv_hide = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT
	flags_cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	siemens_coefficient = 0.6

/obj/item/clothing/suit/armor/sw/clonetrooper
	name = "clonearmor suit"
	desc = "A well armored suit that protects against moderate damage. Used by imperial clonetroopers."
	icon_state = "clone_armor"
	item_state = "clone_armor"
	gas_transfer_coefficient = 0.01
	permeability_coefficient = 0.01
	flags_armor_protection = CHEST|GROIN|LEGS|FEET|ARMS
	allowed = list(/obj/item/weapon/gun,/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/weapon/baton,/obj/item/restraints/handcuffs,/obj/item/tank/emergency_oxygen)
	slowdown = 1
	soft_armor = list("melee" = 80, "bullet" = 60, "laser" = 50, "energy" = 25, "bomb" = 50, "bio" = 100, "rad" = 100, "fire" = 25, "acid" = 25)
	flags_inventory = BLOCKSHARPOBJ|NOPRESSUREDMAGE
	flags_inv_hide = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT
	flags_cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	siemens_coefficient = 0.6

/obj/item/clothing/suit/armor/sw/clone_sgt
	name = "clonearmor sergeant suit"
	desc = "A well armored suit that protects against moderate damage. Used by imperial clonetrooper sergeants."
	icon_state = "clone_sgt_armor"
	item_state = "clone_sgt_armor"
	gas_transfer_coefficient = 0.01
	permeability_coefficient = 0.01
	flags_armor_protection = CHEST|GROIN|LEGS|FEET|ARMS
	allowed = list(/obj/item/weapon/gun,/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/weapon/baton,/obj/item/restraints/handcuffs,/obj/item/tank/emergency_oxygen)
	slowdown = 1
	soft_armor = list("melee" = 80, "bullet" = 60, "laser" = 50, "energy" = 25, "bomb" = 50, "bio" = 100, "rad" = 100, "fire" = 25, "acid" = 25)
	flags_inventory = BLOCKSHARPOBJ|NOPRESSUREDMAGE
	flags_inv_hide = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT
	flags_cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	siemens_coefficient = 0.6

/obj/item/clothing/suit/armor/sw/clone_lt
	name = "clonearmor sergeant suit"
	desc = "A well armored suit that protects against moderate damage. Used by imperial clonetrooper lieutenants."
	icon_state = "clone_lt_armor"
	item_state = "clone_lt_armor"
	gas_transfer_coefficient = 0.01
	permeability_coefficient = 0.01
	flags_armor_protection = CHEST|GROIN|LEGS|FEET|ARMS
	allowed = list(/obj/item/weapon/gun,/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/weapon/baton,/obj/item/restraints/handcuffs,/obj/item/tank/emergency_oxygen)
	slowdown = 1
	soft_armor = list("melee" = 80, "bullet" = 60, "laser" = 50, "energy" = 25, "bomb" = 50, "bio" = 100, "rad" = 100, "fire" = 25, "acid" = 25)
	flags_inventory = BLOCKSHARPOBJ|NOPRESSUREDMAGE
	flags_inv_hide = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT
	flags_cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	siemens_coefficient = 0.6

/obj/item/clothing/suit/armor/sw/clone_cmdr
	name = "clonearmor sergeant suit"
	desc = "A well armored suit that protects against moderate damage. Used by imperial clonetrooper commanders."
	icon_state = "clone_cmdr_armor"
	item_state = "clone_cmdr_armor"
	gas_transfer_coefficient = 0.01
	permeability_coefficient = 0.01
	flags_armor_protection = CHEST|GROIN|LEGS|FEET|ARMS
	allowed = list(/obj/item/weapon/gun,/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/weapon/baton,/obj/item/restraints/handcuffs,/obj/item/tank/emergency_oxygen)
	slowdown = 1
	soft_armor = list("melee" = 80, "bullet" = 60, "laser" = 50, "energy" = 25, "bomb" = 50, "bio" = 100, "rad" = 100, "fire" = 25, "acid" = 25)
	flags_inventory = BLOCKSHARPOBJ|NOPRESSUREDMAGE
	flags_inv_hide = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT
	flags_cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	siemens_coefficient = 0.6

/obj/item/clothing/suit/armor/sw/clone_cpt
	name = "clonearmor captain suit"
	desc = "A well armored suit that protects against moderate damage. Used by imperial clonetrooper captains."
	icon_state = "clone_captain_armor"
	item_state = "clone_captain_armor"
	gas_transfer_coefficient = 0.01
	permeability_coefficient = 0.01
	flags_armor_protection = CHEST|GROIN|LEGS|FEET|ARMS
	allowed = list(/obj/item/weapon/gun,/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/weapon/baton,/obj/item/restraints/handcuffs,/obj/item/tank/emergency_oxygen)
	slowdown = 1
	soft_armor = list("melee" = 80, "bullet" = 60, "laser" = 50, "energy" = 25, "bomb" = 50, "bio" = 100, "rad" = 100, "fire" = 25, "acid" = 25)
	flags_inventory = BLOCKSHARPOBJ|NOPRESSUREDMAGE
	flags_inv_hide = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT
	flags_cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	siemens_coefficient = 0.6

/obj/item/clothing/suit/armor/sw/clone_sec
	name = "clonearmor security suit"
	desc = "A well armored suit that protects against moderate damage. Used by imperial clonetrooper security."
	icon_state = "clone_securitypi_armor"
	item_state = "clone_securitypi_armor"
	gas_transfer_coefficient = 0.01
	permeability_coefficient = 0.01
	flags_armor_protection = CHEST|GROIN|LEGS|FEET|ARMS
	allowed = list(/obj/item/weapon/gun,/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/weapon/baton,/obj/item/restraints/handcuffs,/obj/item/tank/emergency_oxygen)
	slowdown = 1
	soft_armor = list("melee" = 80, "bullet" = 60, "laser" = 50, "energy" = 25, "bomb" = 50, "bio" = 100, "rad" = 100, "fire" = 25, "acid" = 25)
	flags_inventory = BLOCKSHARPOBJ|NOPRESSUREDMAGE
	flags_inv_hide = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT
	flags_cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	siemens_coefficient = 0.6

/obj/item/clothing/suit/armor/sw/501st
	name = "501st suit"
	desc = "A well armored suit that protects against moderate damage. Used by imperial 501st legion."
	icon_state = "501st_armor"
	item_state = "501st_armor"
	gas_transfer_coefficient = 0.01
	permeability_coefficient = 0.01
	flags_armor_protection = CHEST|GROIN|LEGS|FEET|ARMS
	allowed = list(/obj/item/weapon/gun,/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/weapon/baton,/obj/item/restraints/handcuffs,/obj/item/tank/emergency_oxygen)
	slowdown = 1
	soft_armor = list("melee" = 80, "bullet" = 60, "laser" = 50, "energy" = 25, "bomb" = 50, "bio" = 100, "rad" = 100, "fire" = 25, "acid" = 25)
	flags_inventory = BLOCKSHARPOBJ|NOPRESSUREDMAGE
	flags_inv_hide = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT
	flags_cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	siemens_coefficient = 0.6

/obj/item/clothing/suit/armor/sw/212th
	name = "212th suit"
	desc = "A well armored suit that protects against moderate damage. Used by imperial 212th legion."
	icon_state = "212th_armor"
	item_state = "212th_armor"
	gas_transfer_coefficient = 0.01
	permeability_coefficient = 0.01
	flags_armor_protection = CHEST|GROIN|LEGS|FEET|ARMS
	allowed = list(/obj/item/weapon/gun,/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/weapon/baton,/obj/item/restraints/handcuffs,/obj/item/tank/emergency_oxygen)
	slowdown = 1
	soft_armor = list("melee" = 80, "bullet" = 60, "laser" = 50, "energy" = 25, "bomb" = 50, "bio" = 100, "rad" = 100, "fire" = 25, "acid" = 25)
	flags_inventory = BLOCKSHARPOBJ|NOPRESSUREDMAGE
	flags_inv_hide = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT
	flags_cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	siemens_coefficient = 0.6

/obj/item/clothing/suit/armor/sw/442nd
	name = "212th suit"
	desc = "A well armored suit that protects against moderate damage. Used by imperial 442nd legion."
	icon_state = "442nd_armor"
	item_state = "442nd_armor"
	gas_transfer_coefficient = 0.01
	permeability_coefficient = 0.01
	flags_armor_protection = CHEST|GROIN|LEGS|FEET|ARMS
	allowed = list(/obj/item/weapon/gun,/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/weapon/baton,/obj/item/restraints/handcuffs,/obj/item/tank/emergency_oxygen)
	slowdown = 1
	soft_armor = list("melee" = 80, "bullet" = 60, "laser" = 50, "energy" = 25, "bomb" = 50, "bio" = 100, "rad" = 100, "fire" = 25, "acid" = 25)
	flags_inventory = BLOCKSHARPOBJ|NOPRESSUREDMAGE
	flags_inv_hide = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT
	flags_cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	siemens_coefficient = 0.6
