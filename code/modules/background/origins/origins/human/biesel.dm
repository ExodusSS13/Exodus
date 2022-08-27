/* ADDING NEW ORIGINS
Terms:
	- Culture: The overarching nation(if it has a sufficiently developed interstellar society) or homeworld of a species.
	ONE SPECIES PER CULTURE(if multiple species inhabit one planet or nation in a substantial amount, create a culture for each species)
	ONE CULTURE PER FILE
	If a species is mainly concentrated on one world but has small populations elsewhere, consider having one culture for the planet and one for offworld populations
	- Origin: A subdivision of culture. For interstellar-level nations, these will be the individual planets/fleets/whatever as well as non-specific origins.
Organization:
	origins
		human
			culture1.dm
			culture2.dm
		nondescript-alien
			culture3.dm
			culture4.dm
Ensuring the culture is selectable:
	- Make sure it's in the dme file
	- Open relevant species_name.dm
	- If not present already, add the following with your desired cultures:
		possible_cultures = list(
			/decl/origin_item/culture/culture1
			/decl/origin_item/culture/culture2
		)
Items:
	- Navigate to code/modules/client/preference_setup/loadout/whatever_the_item_you_want_to_restrict_is_in.dm
	- Add one of the following lines within the relevant object
	- For culture: list(/decl/origin_item/culture/your_culture_here)
	- For origin(no need to list parent culture): list(/decl/origin_item/origin/your_origin_here)
Other stuff:
	- This file should include working examples of all the vars used for creating a new origin
*/
#define RELIGIONS_BIESEL list(RELIGION_NONE, RELIGION_CHRISTIANITY, RELIGION_ISLAM, RELIGION_BUDDHISM, RELIGION_SHINTO, RELIGION_HINDU, RELIGION_TAOISM, RELIGION_JUDAISM, RELIGION_OTHER, RELIGION_TRINARY)
#define CITIZENSHIPS_BIESEL list(CITIZENSHIP_BIESEL, CITIZENSHIP_ERIDANI, CITIZENSHIP_COALITION)


/decl/origin_item/culture/generica
    name = "Generica"
    desc = "A generic culture that doesn't exist???"
    important_information = "A generic reminder that this can be used to drive a point. If you see this culture, someone fucked up."
    possible_origins = list(
        /decl/origin_item/origin/somewhere,
        /decl/origin_item/origin/somewhereelse
    )

/decl/origin_item/origin/somewhere
    name = "Somewhere"
    desc = "Some place within Generica."
    possible_accents = list(ACCENT_CETI)
    possible_citizenships = list(CITIZENSHIP_BIESEL)
    possible_religions = RELIGIONS_BIESEL

/decl/origin_item/origin/somewhereelse
    name = "Somewhere Else"
    desc = "Some other place within Generica."
    possible_accents = list(ACCENT_CETI)
    possible_citizenships = list(CITIZENSHIP_BIESEL)
    possible_religions = RELIGIONS_BIESEL
