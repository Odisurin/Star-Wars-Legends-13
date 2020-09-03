///////////////////
//*____iWuna____*//
//*__with love__*//
///////////////////

#define isdroidbasic(H) (is_species(H, /datum/species/droid)) // for some reason. Just don't touch this. You can use this in future.
#define isdroidb2(H) (is_species(H, /datum/species/droid/b2))

//Random droid naming

/datum/namepool/droid/get_random_name()
	return "droid #[rand(1,999)]"

/datum/namepool/tacticool/get_random_name()
	return "tactical droid #[rand(1,999)]"

/datum/namepool/droideka/get_random_name() //just gift, lol
	return "droideka #[rand(1,999)]"

/datum/namepool/droidb2/get_random_name() //this one too.
	return "battle droid #[rand(1,999)]"

//Droid "species"

/datum/species/droid
	name = "Droid B1 Slim"
	name_plural = "droids b1"

	icobase = 'icons/star/mob/droids/r_b1.dmi' //icons included
	deform = 'icons/star/mob/droids/r_def_b1.dmi'

	eyes = "blank_eyes"

	default_language_holder = /datum/language_holder/synthetic
	unarmed_type = /datum/unarmed_attack/punch
	rarity_value = 2

	total_health = 150

	brute_mod = 0.75
	burn_mod = 0.80

	cold_level_1 = -1
	cold_level_2 = -1
	cold_level_3 = -1

	heat_level_1 = 500
	heat_level_2 = 1000
	heat_level_3 = 2000

	body_temperature = 350

	species_flags = HAS_NO_HAIR|NO_BREATHE|NO_SCAN|NO_BLOOD|NO_POISON|NO_PAIN|IS_SYNTHETIC|NO_CHEM_METABOLIZATION|NO_STAMINA|DETACHABLE_HEAD

	blood_color = "#858585" //grey, like oil.

	has_organ = list(
		"heart" =    /datum/internal_organ/heart/prosthetic,
		"brain" =    /datum/internal_organ/brain/prosthetic,
		)

	lighting_alpha = LIGHTING_PLANE_ALPHA_MOSTLY_INVISIBLE
	see_in_dark = 8

	screams = list(MALE = "male_scream", FEMALE = "female_scream")
	paincries = list(MALE = "male_pain", FEMALE = "female_pain")
	goredcries = list(MALE = "male_gored", FEMALE = "female_gored")

	namepool = /datum/namepool/droid

	death_message = "Stands and start seems disabled" //You can change if you want. Appears when droid killed.

/datum/species/droid/handle_post_spawn(mob/living/carbon/human/H) //technical shit.
	. = ..()
	var/datum/atom_hud/AH = GLOB.huds[DATA_HUD_MEDICAL_ADVANCED_SYNTH]
	AH.add_hud_to(H)


/datum/species/droid/post_species_loss(mob/living/carbon/human/H) //technical shit.
	var/datum/atom_hud/AH = GLOB.huds[DATA_HUD_MEDICAL_ADVANCED_SYNTH]
	AH.remove_hud_from(H)
	return ..()

/mob/living/carbon/human/proc/randomize_appearance_hairless() //you can use this in future, proc which creates new bodies on Initialize() w/o hair
	gender = pick(MALE, FEMALE)
	name = GLOB.namepool[/datum/namepool/droid].get_random_name(gender)
	real_name = name
	f_style = "Shaved"
	ethnicity = random_ethnicity()
	body_type = random_body_type()
	age = rand(17, 20)
	update_hair()
	update_body()
	regenerate_icons()

/datum/species/droid/b1_thicc //extra thicc boi "species".
	name = "Droid B1"
	name_plural = "droids b1"
	icobase = 'icons/star/mob/droids/r_bb1.dmi'
	deform = 'icons/star/mob/droids/r_def_bb1.dmi'

/datum/species/droid/tactical
	name = "Tactical Droid"
	name_plural = "tactical droids"
	icobase = 'icons/star/mob/droids/r_tac.dmi'
	deform = 'icons/star/mob/droids/r_def_tac.dmi'
	total_health = 180
	namepool = /datum/namepool/tacticool

/datum/species/droid/b2
	name = "B2 Droid"
	name_plural = "droids b2"
	icobase = 'icons/star/mob/droids/r_b2.dmi'
	deform = 'icons/star/mob/droids/r_def_b2.dmi'
	total_health = 240
	namepool = /datum/namepool/droidb2

/mob/living/proc/offer_droid() //Proc for new droid
	GLOB.offered_mob_list += src
	notify_ghosts("<span class='boldnotice'>A new Droid created! Name: [name][job ? " Job: [job.title]" : ""] </span>", enter_link = "claim=[REF(src)]", source = src, action = NOTIFY_ORBIT)

/mob/living/carbon/proc/Weapon_Give()
	var/mob/living/carbon/human/species/droid/factory/D = src
	var/obj/item/I = new/obj/item/weapon/gun/energy/lasgun/droidgun
	if(D.race == "B2 Droid")
		D.put_in_hands(I)
	else return

/mob/living/carbon/human/species/droid/b1 //Technical shit
	race = "Droid B1"

/mob/living/carbon/human/species/droid/b1_slim //Technical shit
	race = "Droid B1 Slim"

/mob/living/carbon/human/species/droid/tactical
	race = "Tactical Droid"

/mob/living/carbon/human/species/droid/Initialize() //Technical shit
	. = ..()
	randomize_appearance_hairless()  //We don't need hair, right?

/mob/living/carbon/human/species/droid/factory //Technical shit, used in Droid Factory.
	race = "Droid B1"

/mob/living/carbon/human/species/droid/factory/Initialize() //Technical shit
	. = ..()
	offer_droid() //offers new droid to ghosts
	playsound(loc, 'sound/voice/liveagain.ogg', 75, 1)

/mob/living/carbon/human/species/droid/factory/slim //Technical shit
	race = "Droid B1 Slim"

/mob/living/carbon/human/species/droid/factory/tactical
	race = "Tactical Droid"

/mob/living/carbon/human/species/droid/factory/b2
	race = "B2 Droid"
	var/obj/item/weapon/gun/energy/lasgun/droidgun/attached_gun

/mob/living/carbon/human/species/droid/factory/b2/Initialize()
	. = ..()
	attached_gun = new /obj/item/weapon/gun/energy/lasgun/droidgun(src)