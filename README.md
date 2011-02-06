ModelUN - Quick and easy country and US State abbreviations
===========================================================

ModelUN is a tiny little Ruby library for abbreviating and, er, de-abbreviating Countries and US State names. 

Brought to you by [Uh Huh Yeah](http://uhhuhyeah.com/) with help and encouragement from [Climber.com](http://www.climber.com/)

Installation
-------------

    gem install model_un


ModelUN API - US States
=======================

Convert a US State to it's abbreviated name
-------------------------------------------

		my_state = 'California'
		my_state_abbr = ModelUN.convert_state_name(my_state) # returns 'CA'
	
Convert a US State abbreviation to it's full name
-------------------------------------------------

		my_state_abbr = 'CA'
		my_state_name = ModelUN.convert_state_abbr(my_state_abbr) # returns 'California'
	
Or, a shortcut for either method
--------------------------------

		my_state = 'California'
		my_state_abbr = ModelUN.convert(my_state) # returns 'CA'	

		my_state_abbr = 'CA'
		my_state_name = ModelUN.convert(my_state_abbr) # returns 'California'
		

ModelUN API - Countries
=======================

Convert a Country to it's (NATO) abbreviated name
-------------------------------------------

		my_country = 'Sweden'
		my_country_abbr = ModelUN.convert_country_name(my_country) # returns 'SWE'

Convert a NATO Country abbreviation to it's full name
-------------------------------------------------

		my_country_abbr = 'SWE'
		my_country_name = ModelUN.convert_country_abbr(my_country_abbr) # returns 'Sweden'

Or, a shortcut for either method
--------------------------------

		my_country = 'Sweden'
		my_country_abbr = ModelUN.convert(my_country) # returns 'SWE'	

		my_country_abbr = 'SWE'
		my_country_name = ModelUN.convert(my_country_abbr) # returns 'Sweden'


Current version: v0.2 (February 2011)
=====================================

*	Supports conversion of US State names (including Guam, Marshal and Virgin Islands)
*	Supports conversion of Countries against NATO Country names and codes

Upcoming features:
=====================================

* Support converting countries by their common "nick names". E.g. Accepting "United Kingdom" for "United Kingdom of Great Britain and Northern Ireland"

Known issues
------------

*	No known issues. Please report bugs to [david@uhhuhyeah.com](mailto:david@uhhuhyeah.com?subject=ModelUN), or fee free for send me a patch.
