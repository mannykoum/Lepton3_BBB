#!/bin/bash

# Building script for library and demos

# Check if build doesn't exist
if [ ! -d "build" ] ; then
	mkdir build
fi

# Change dir and make executables
cd build && cmake .. && make
