# emstreeR 2.0.0 (2018-11-28 - pre CRAN release)

## Internal

* Fix [-Wlang-lang] windows compilation WARNINGs when running devtools::win_check() 
  by adding `CXX_STD = CXX_11` line to the Makevars.win file. Reference: "Writing
  R Extensions" manual, section 1.2.4 - "Using C++11 code".

## New data, functions, and features

* Substituted the wrapper function `plotMST()` for the S3 method `plot.MST()`

* Added 'dontrun' example 'honeymoon cruise' to the package README file 

* Removed broken Japan 'dontrun' example from the package help page 
  'emstreeR-package.Rd'because of the token problem with GoogleMaps API.

* fixed errors in the DESCRIPTION file as suggested by CRAN
