/// Stata codebook

/*
This keeps a copy of useful code for later use in stata.
*/


// test if a variable is numeric/string
foreach v of varlist * {
	capture confirm string variable `v' // creates underscore variable that takes 1 if confirm statement is true and 0 if not
	if _rc { // if true that variable is string
		/*DO STUFF*/
	}
}

