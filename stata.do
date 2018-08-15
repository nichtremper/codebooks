/// Stata codebook

/*
This keeps a copy of useful code for later use in stata.
*/

// test if a variable is numeric/string
foreach v of varlist * {
	capture confirm numeric variable `v' // creates scalar _rc that takes 0 if numeric
	if _rc != 0 { // if not numeric, if numeric should be if _rc == 0
		/*DO STUFF*/
	}
}
