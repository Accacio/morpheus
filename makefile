##
# Sandbox Helper
#
# @file
# @version 0.1

all: pincenez sandbox

.PHONY: pincenez
pincenez:
	@make -C pincenez -j4
	@make -C pincenez install

.PHONY: sandbox
sandbox:
	@make -C sandbox -j4

# end
