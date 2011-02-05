ModelUN - Quick and easy country and US State abbreviations
===========================================================

ModelUN is a tiny little Ruby library for abbreviating and, er, de-abbreviating Countries and US State names. 

Brought to you by [Uh Huh Yeah](http://uhhuhyeah.com/) and [Climber](http://www.climber.com/)

Installation
-------------

    gem install model_un


ModelUN API
===========

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


Current version: v0.1 (February 2011)
=====================================

*	Supports conversion of US State names (including Guam, Marshal and Virgin Islands)
* [Country conversions to be added in next release] 

Known issues
------------

*	No known issues. Please report bugs to [david@uhhuhyeah.com](mailto:david@uhhuhyeah.com?subject=ModelUN), or fee free for send me a patch.
