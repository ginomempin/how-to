#!/bin/bash

#
# This script is not meant to be run by itself, but it should be
# source'd instead by other scripts.
#

#######################################################################
#                            DEFINES                                  #
#######################################################################

INF_COLOR="\e[33m"
EXC_COLOR="\e[31m"
RESET_COLOR="\e[39m"

SUDO=$(which sudo)

#######################################################################
#                           FUNCTIONS                                 #
#######################################################################

function INFO()
{
    message=${1}
    printf "${INF_COLOR}[INFO]${RESET_COLOR} ${message}\n"
}

function ERROR()
{
    message=${1}
    printf "${EXC_COLOR}[ERROR]${RESET_COLOR} ${message}\n"
}

function ABORT()
{
    ERROR "${1}"
    exit 1
}

function USAGE()
{
    description=${1}

    required=${2}
    required_fmtd=""
    if [ ! -z ${required} ];
    then
        required_fmtd="<${required}>"
    fi

    printf "USAGE: $(basename $0) [options] ${required_fmtd}\n"
    printf "\n${description}\n"
    printf "\nOPTIONS:\n "
    printf "\t%-15s: Show this help message\n" "--help"
    for opt in "${@:3}" # The rest of the arguments will be treated as options
    do
        key=$(echo ${opt} | cut -d ":" -f 1)
        val=$(echo ${opt} | cut -d ":" -f 2)
        printf "\t%-15s:%s\n" "${key}" "${val}"
    done
    printf "\n"

    exit 1
}

function is_executable()
{
    cmd_name=$1
    if [ -z $(command -v ${cmd_name}) ];
    then
        ABORT "The command '${cmd_name}' is not available"
        exit 1
    fi
}

function check_commands()
{
    commands="$@"
    for cmd in "${commands[@]}";
    do
        INFO "Checking for '${cmd}'"
        is_executable ${cmd}
    done
}
