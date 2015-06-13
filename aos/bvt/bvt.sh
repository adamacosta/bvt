#!/bin/bash

if [ -z $1 ]; then
	echo "usage: bvt.sh [gtthreads|barrier|proxy-server|rvm|all]"
	exit
fi

PYTEST=`which pytest`

if [ "$PYTEST" = "" ]; then
	echo "Requires pytest"
	exit
fi

# Exporting these allows make to use them in resolving source file paths
# Edit to the correct directories for your assignment deliverables
export GTTHREADDIR=$HOME/omscs/aos/gtthreads
export BARRIERDIR=$HOME/omscs/aos/barrier 
export PROXYDIR=$HOME/omscs/aos/proxy-server
export RVMDIR=$HOME/omscs/aos/rvm

function test_gtthreads {
	echo "=============================== build gtthreads ================================"
	pushd gtthreads > /dev/null
	# Create symbolic links from home directory code files to test directory
	ln -s $GTTHREADDIR/dining.c -t tests
	ln -s $GTTHREADDIR/gtthread_mutex.c -t tests 
	ln -s $GTTHREADDIR/gtthread_sched.c -t tests
	ln -s $GTTHREADDIR/gtthread.h -t tests
	make > /dev/null
	pushd tests > /dev/null
	py.test -s -v test_gtthreads.py
	# Delete links to assignment files
	rm -f dining.c gtthread_mutex.c gtthread_sched.c gtthread.h
	popd > /dev/null
	make clean > /dev/null
	popd > /dev/null
	echo "============================== gtthreads complete =============================="
}

function test_barrier {
	echo "================================ build barrier ================================="
	#pushd barrier > /dev/null
	#make > /dev/null
	#pushd tests > /dev/null
	#py.test -s -v test_barrier.py
	#popd > /dev/null
	#make clean > /dev/null
	#popd > /dev/null
	echo "=============================== barrier complete ==============================="
}

function test_proxy-server {
	echo "============================== build proxy-server =============================="
	#pushd proxy-server > /dev/null
	#make > /dev/null
	#pushd tests > /dev/null
	#py.test -s -v test_proxy-server.py
	#popd > /dev/null
	#make clean > /dev/null
	#popd > /dev/null
	echo "============================ proxy-server complete ============================="
}

function test_rvm {
	echo "================================== build rvm ==================================="
	pushd rvm > /dev/null
	make > /dev/null
	pushd tests > /dev/null
	py.test -s -v test_rvm.py
	popd > /dev/null
	make clean > /dev/null
	popd > /dev/null
	echo "================================ rvm complete =================================="
}

function test_all {
	test_gtthreads
	test_barrier
	test_proxy-server
	test_rvm
}

test_$1