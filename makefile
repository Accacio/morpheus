##
# Sandbox Helper
#
# @file
# @version 0.1

all: pincenez morpheus

.PHONY: pincenez
pincenez:
	@make -C pincenez -j4
	@make -C pincenez install

.PHONY: morpheus
sandbox:
	@make -C morpheus -j4

# end
