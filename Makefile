# Modular Makefile (v2.0)

PROJECT	:= $(notdir $(PWD))
PROGS	:= python3 g++ gcc avr-gcc avr-g++

.PHONY:	all
all:
	@echo $(PROJECT)
	@echo $(SHELL)

.PHONY:	check-programs
check-programs:
	K := $(foreach exec, $(PROGS), \
		$(if $(shell PATH=$(PATH) which $(prog)),\
			"Program check:", ,$(error "No $(exec) in PATH")))
