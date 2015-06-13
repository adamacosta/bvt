#! /bin/bash

if [ -z $1 ]; then
	echo "usage: bvt.sh [1|2|3|all]"
	exit
fi

export A1DIR=$HOME/omscs/cn/2015-Summer-OMS6250/assignment-1
export A2DIR=$HOME/omscs/cn/2015-Summer-OMS6250/assignment-2
export A3DIR=$HOME/omscs/cn/2015-Summer-OMS6250/assignment-3
PYTEST=`which pytest`

if [ "$PYTEST" = "" ]; then
	echo "Requires pytest"
	exit
fi

function test_1 {
	echo "============================== test assignment 1 ==============================="
	if ! [ -e assignment-1/ ]; then
		ln -s $A1DIR/ -t assignment-1
	fi
	py.test -s -v assignment-1/test.py
	echo "============================ assignment 1 complete ============================="
}

function test_2 {
	echo "============================== test assignment 2 ==============================="
	if ! [ -e assignment-2/ ]; then
		ln -s $A2DIR/ -t assignment-2
	fi
	py.test -s -v assignment-2/test.py
	echo "============================ assignment 2 complete ============================="
}

function test_3 {
	echo "============================== test assignment 3 ==============================="
	if ! [ -e assignment-3/Node.py ]; then
		ln -s $A3DIR/Node.py -t assignment-3
	fi
	pushd assignment-3 > /dev/null
	py.test -s -v test.py
	popd > /dev/null
	echo "============================ assignment 3 complete ============================="
}

function test_all {
	test_1
	test_2
	test_3
}

test_$1