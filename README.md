# bvt

This module comprises test suites designed to mimic the autograders for Georgia 
Tech OMSCS programming assignments. Each subdirectory contains the BVT for a 
particular course. Currently, this is only CS 6210 Advanced Operating Systems.

Each BVT is a shell script that first builds the project and test code, then drops 
into a test directory and uses pytest to run the actual tests. From any course 
bvt directory, executing `./bvt.sh` will run all of the tests for that course. For 
this to work correctly, you must edit the directory variable exports in the 
script to point to the directories containing your assignment deliverables. All 
of the headers and test code are already included and the Makefiles will pull 
in the directories they need to get the remaining files from the script.