#!/usr/bin/env bash

THIS_SCRIPT=$(basename "${0}")
VENV_DIR=${1}
if [ -z "${VENV_DIR}" ]
then
    printf "USAGE:\n  ${THIS_SCRIPT} </path/to/venv/dir>\n"
    exit 1
fi

GREEN='\033[1;32m'
RESET='\033[0m'

NUM_VENVS=$(find "${VENV_DIR}"/* -maxdepth 0 -type d | wc -l | xargs)
printf "Upgrading pip on ${GREEN}${NUM_VENVS}${RESET} venvs\n"

count=1
for venv in "${VENV_DIR}"/*
do
    printf "${GREEN}[${count}/${NUM_VENVS}]:${RESET}\n"

    pip_bin=${venv}/bin/pip
    if [ -e "${pip_bin}" ]
    then
        printf "$(${pip_bin} -V)\n"
        ${pip_bin} install -U pip

        printf "\n"
    fi

    count=$((count + 1))
done
