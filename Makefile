# DOCKER
CC=./docker/cross
CROSS=./docker/cross
NC=./docker/native
NATIVE=./docker/native
PRG=./docker/purge
PURGE=./docker/purge
PRGA=./docker/purge-all
PURGEALL=./docker/purge-all
ETR=./docker/enter
ENTER=./docker/enter
PL=./docker/pull
PULL=./docker/pull
SUP=./docker/setup
SETUP=./docker/setup
CLEAN=$(shell rm -f Dockerfile* *.yml)

help:
	@echo
	@echo "\e[1;32mDOCKER ARM IMAGE BUILDER\e[0m"
	@echo 
	@echo "Outside container: "
	@echo
	@echo "  make cross            Create docker container for cross compiling"
	@echo "  make native           Create docker container for native compiling"
	@echo "  make enter            If exited re-enter container"
	@echo "  make purge            Purge said container"
	@echo "  make purge-all        Purge container and prune volumes"
	@echo "  make cleanup          Remove docker files"
	@echo
	@echo "Inside container: "
	@echo
	@echo "  make setup            Create docker Makefiles"
	@echo "  make pull             Update builders"
	@echo
	@echo "For details consult the README.md"
	@echo

cross:
	# Cross compiling ...
	@chmod +x ${CC}
	@${CROSS}

native:
	# Native compiling ...
	@chmod +x ${NC}
	@${NATIVE}

purge:
	# Purging ...
	@chmod +x ${PRG}
	@${PURGE}
	
purge-all:
	# Purging ...
	@chmod +x ${PRGA}
	@${PURGEALL}

enter:
	# Entering ...
	@chmod +x ${ETR}
	@${ENTER}

pull:
	# Updating ...
	@chmod +x ${PL}
	@${PULL}

setup:
	# Creating docker Makefiles ...
	@chmod +x ${SUP}
	@${SETUP}

cleanup:
	# Removing docker files ...
	@${CLEAN}
