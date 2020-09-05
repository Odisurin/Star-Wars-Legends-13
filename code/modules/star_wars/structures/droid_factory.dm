///////////////////
//*____iWuna____*//
//*__with love__*//
///////////////////

/obj/machinery/droid_factory
	name = "droid factory"
	desc = "Droid factory"
	icon = 'icons/obj/machines/cryogenics.dmi' //change
	icon_state = "body_scanner_0" //change
	idle_power_usage = 50
	active_power_usage = 2000
	var/constructing_cooldown = FALSE
	var/end_message = "<span class='notice'>Droid factory finished droid construction.</span>"
	var/start_message = "<span class='notice'>Droid factory starts construct new droid.</span>"

/obj/machinery/droid_factory/interact(mob/user) //Factory UI
	. = ..()
	var/dat = "<hr/><center><br/><b>Droid Factory</b><br/>"
	dat += "<i>Welcome, [user.name == "Unknown" ? "John Doe" : user.name].</i><br/><br/><hr/>"
	dat += "<b>PROPERTY OF CIS</b></center><br/>"
	if(constructing_cooldown)
		dat += "<b>Factory is recharging.</b><br>"
	else
		dat += "<hr/><b>Choose droid type:</b><br/>"
		dat += "<a href='byond://?src=\ref[src];b1=TRUE'>B1</a><br/>"
		dat += "<a href='byond://?src=\ref[src];b1_slim=TRUE'>B1 slim</a><br/>"
		dat += "<hr/>"

	var/datum/browser/popup = new(user, "droid_factory", "<div align='center'>Droid Factory</div>")
	popup.set_content(dat)
	popup.open()

/obj/machinery/droid_factory/Topic(href, href_list)
	. =..()
	if(.)
		return
	if(constructing_cooldown == TRUE)
		return 0
	if(href_list["b1"])
		visible_message(start_message)
		constructing_cooldown = TRUE
		addtimer(VARSET_CALLBACK(src, constructing_cooldown, FALSE), 3 MINUTES)
		sleep(60)
		new/mob/living/carbon/human/species/droid/factory(get_turf(src), 1)
		visible_message(end_message)
		updateUsrDialog()
	else if(href_list["b1_slim"])
		constructing_cooldown = TRUE
		visible_message(start_message)
		addtimer(VARSET_CALLBACK(src, constructing_cooldown, FALSE), 3 MINUTES)
		sleep(60)
		new/mob/living/carbon/human/species/droid/factory/slim(get_turf(src), 1)
		visible_message(end_message)
		updateUsrDialog()

/*Adding new droid guide:
for /obj/machinery/droid_factory/Topic(href, href_list)

/obj/machinery/droid_factory/Topic(href, href_list)
	. =..()
	if(.)
		return
	if(constructing_cooldown == TRUE)
		return 0
	else if(href_list["b1_slim"]) <-- button ref for UI
		constructing_cooldown = TRUE <-- Cooldown, technical shit.
		visible_message(start_message) <-- technical.
		addtimer(VARSET_CALLBACK(src, constructing_cooldown, FALSE), 3 MINUTES) <-- Cooldown timer, can be set in SECONDS, MINUTES, HOURS, DAYS
		sleep(60) <-- technical.
		new/mob/living/carbon/human/species/droid/factory/slim(get_turf(src), 1) <-- New droid. Spawns new droid.
		visible_message(end_message) <-- technical.
		updateUsrDialog() <-- this one too.

for /obj/machinery/droid_factory/interact(mob/user)

/obj/machinery/droid_factory/interact(mob/user)
	. = ..()
	var/dat = "<hr/><center><br/><b>Droid Factory</b><br/>"
	dat += "<i>Welcome, [user.name == "Unknown" ? "John Doe" : user.name].</i><br/><br/><hr/>"
	dat += "<b>PROPERTY OF CIS</b></center><br/>"
	if(constructing_cooldown)
		dat += "<b>Factory is recharging.</b><br>"
	else
		dat += "<hr/><b>Choose droid type:</b><br/>"
		dat += "<a href='byond://?src=\ref[src];b1=TRUE'>B1</a><br/>"
		dat += "<a href='byond://?src=\ref[src];b1_slim=TRUE'>B1 slim</a><br/>"
		dat += "<a href='byond://?src=\ref[src];HERE YOU SHOULD PUT BUTTON REF=TRUE'>BUTTON NAME</a><br/>"
		dat += "<hr/>"*/