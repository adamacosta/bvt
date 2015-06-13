#!/bin/bash

export GTTHREADDIR=$HOME/omscs/aos/gtthreads
export BARRIERDIR=$HOME/omscs/aos/barrier 
export PROXYDIR=$HOME/omscs/aos/proxy-server
export RVMDIR=$HOME/omscs/aos/rvm
PYTEST=`which pytest`

if [ "$PYTEST" = "" ]; then
	echo "Requires pytest"
	exit
fi

echo "=============================== build gtthreads ================================"
#pushd gtthreads
#make tests > /dev/null
#pushd tests > /dev/null
#py.test -s -v test_gtthreads.py
#popd > /dev/null
#make clean > /dev/null
#popd
echo "============================== gtthreads complete =============================="

echo "================================ build barrier ================================="
#pushd barrier
#make tests > /dev/null
#pushd tests > /dev/null
#py.test -s -v test_barrier.py
#popd > /dev/null
#make clean > /dev/null
#popd
echo "=============================== barrier complete ==============================="

echo "============================== build proxy-server =============================="
#pushd proxy-server
#make tests > /dev/null
#pushd tests > /dev/null
#py.test -s -v test_proxy-server.py
#popd > /dev/null
#make clean > /dev/null
#popd
echo "============================ proxy-server complete ============================="

echo "================================== build rvm ==================================="
pushd rvm > /dev/null
make tests > /dev/null
pushd tests > /dev/null
py.test -s -v test_rvm.py
popd > /dev/null
make clean > /dev/null
popd > /dev/null
echo "================================ rvm complete =================================="