#!/usr/bin/env bash

THIS_SCRIPT=$(basename "${0}")
VENV_DIR=${1}
if [ -z "${VENV_DIR}" ]
then
    printf "USAGE:\n  ${THIS_SCRIPT} </path/to/venv/dir>\n"
    exit 1
fi

YELLOW='\033[1;32m'
RESET='\033[0m'
for venv in "${VENV_DIR}"/*
do
    pip_bin=${venv}/bin/pip
    if [ -e "${pip_bin}" ]
    then
        printf "${YELLOW}CURRENT${RESET} $(${pip_bin} -V)\n"
        ${pip_bin} install -U pip

        printf "\n"
    fi
done
