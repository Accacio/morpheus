##
# Morpheus
#
# @file
# @version 0.1

CXX=g++
CFLAGS=-I. -Wall
UNAME=$(shell uname)

SOURCES +=
SOURCES += src/sandbox.cpp

EXE = build/morpheus

INCLUDES = -I../pincenez/
LIBS = -lengine

OBJS = $(addprefix build/,$(addsuffix .o, $(basename $(notdir $(SOURCES)))))

all: build/Content $(EXE) compileDatabase

build/%.o:src/%.cpp
	@echo Compiling $@
	@$(CXX) $(CFLAGS) -c -o $@ $(INCLUDES) $(LIBS) $<

$(EXE): $(OBJS)
	@echo Linking
	@$(CXX) $(CFLAGS) -o $@ $^ $(INCLUDES) $(LIBS)

build/Content:
	@echo Linking Content folder
	@ln -s ../Content build/Content

compile_commands.json:
	@ (echo "[";\
make --always-make --dry-run | grep -vE "^#" | grep -v make | grep -wE 'clang|gcc|g++' | grep -w '\-c' \
	| sed "s,\(.* \)\([0-9a-Z/]*\.[0-9a-Z/]*\)$$,{\n\"directory\":\"${PWD}\"\,\n\"command\": \"\1\2\"\,\n\"file\": \"\2\"\n}\,,";\
	echo "]" ) > compile_commands.json

.PHONY: compileDatabase
compileDatabase: compile_commands.json

.PHONY: clean
clean:
	@rm build/*

# end

# end
