/obj/item/grenade/anti_photon
	desc = "An experimental device for temporarily removing light in a limited area."
	name = "photon disruption grenade"
	icon = 'icons/obj/grenade.dmi'
	icon_state = "photon"
	item_state = "photon"
	det_time = 20
	origin_tech = list(TECH_BLUESPACE = 4, TECH_MATERIAL = 4)

/obj/item/grenade/anti_photon/prime()
	playsound(src.loc, 'sound/effects/phasein.ogg', 50, 1, 5)
	set_light(10, -10, "#FFFFFF")

	var/extra_delay = rand(0,90)

	spawn(extra_delay)
		spawn(200)
			if(prob(10+extra_delay))
				set_light(10, 10, "#[num2hex(rand(64,255), 0)][num2hex(rand(64,255), 0)][num2hex(rand(64,255), 0)]")
		spawn(210)
			..()
			playsound(src.loc, 'sound/effects/bang.ogg', 50, 1, 5)
			qdel(src)
