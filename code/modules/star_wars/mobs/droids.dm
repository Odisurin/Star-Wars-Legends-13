///////////////////
//*____iWuna____*//
//*__with love__*//
///////////////////

#define isdroidbasic(H) (is_species(H, /datum/species/droid_b1)) // for some reason. Just don't touch this. You can use this in future.

//Random droid naming

/datum/namepool/droid/get_random_name()
	return "droid #[rand(1,999)]"

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

/datum/species/droid_b1/handle_post_spawn(mob/living/carbon/human/H) //technical shit.
	. = ..()
	var/datum/atom_hud/AH = GLOB.huds[DATA_HUD_MEDICAL_ADVANCED_SYNTH]
	AH.add_hud_to(H)


/datum/species/droid_b1/post_species_loss(mob/living/carbon/human/H) //technical shit.
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

/mob/living/proc/offer_droid() //Proc for new droid
	GLOB.offered_mob_list += src
	notify_ghosts("<span class='boldnotice'>A new Droid created! Name: [name][job ? " Job: [job.title]" : ""] </span>", enter_link = "claim=[REF(src)]", source = src, action = NOTIFY_ORBIT)

/mob/living/carbon/human/species/droid/b1 //Technical shit
	race = "Droid B1"

/mob/living/carbon/human/species/droid/b1_slim //Technical shit
	race = "Droid B1 Slim"

/mob/living/carbon/human/species/droid/Initialize() //Technical shit
	. = ..()
	randomize_appearance_hairless()  //We don't need hair, right?

/mob/living/carbon/human/species/droid/factory //Technical shit, used in Droid Factory.
	race = "Droid B1"

/mob/living/carbon/human/species/droid/factory/Initialize() //Technical shit
	. = ..()
	offer_droid() //offers new droid to ghosts

/mob/living/carbon/human/species/droid/factory/slim //Technical shit
	race = "Droid B1 Slim"