#
###############################################################################

clean:
	-rm -rf work/*
	-rm -rf iseconfig/

distclean: clean

###############################################################################

MAKEFILE_PATH := $(abspath $(lastword $(MAKEFILE_LIST)))
PROJECT_DIR := $(notdir $(patsubst %/,%,$(dir $(MAKEFILE_PATH))))

dist: distclean
	cd ../ && zip -9r \
		${PROJECT_DIR}-$$(date +%F-%T | sed 's/:/-/g').zip \
		${PROJECT_DIR}

###############################################################################
