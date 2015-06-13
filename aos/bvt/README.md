CS 6210 Advanced Operating Systems
==================================

This module comprises the build verification tester for CS 6210. Currently, only 
the tests for assignment 4, Recoverable Virtual Memory, are complete. Other tests 
are commented out.

## Usage

The bvt.sh script contains four environment variable export statements, telling 
each Makefile where to find your assignment deliverables in your home directory. 
There is no need to edit the Makefiles. Simply edit the export directives to 
point to the correct directories on your machine, and then execute:

```bash
./bvt.sh [gtthreads|barrier|proxy-server|rvm|all]
```

to test any individual build, or all of them. 