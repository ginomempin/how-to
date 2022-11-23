#!/bin/bash

#######################################################################
#                            DEFINES                                  #
#######################################################################

THIS_SCRIPT=$(basename "${BASH_SOURCE[0]}")
PATH_TO_THIS_SCRIPT=$(readlink -f "${THIS_SCRIPT}")

INFO_COLOR="\e[37m"
FAIL_COLOR="\e[31m"
WARN_COLOR="\e[33m"
RESET_COLOR="\e[0m"

SUDO=$(which sudo)

#######################################################################
#                           FUNCTIONS                                 #
#######################################################################

function show_usage()
{
    echo "${THIS_SCRIPT} <ARG> [OPTIONS]"
    echo ""
    echo "ARG: A required argument"
    echo ""
    echo "OPTIONS:"
    echo ""
    echo "    -b VAL:   Replace default value with VAL"
    echo "    -x:       Disable some setting"
    echo "    -h:       Show this help message"
    echo ""
}

#######################################################################
#                            USAGE                                    #
#######################################################################

function print_info()
{
    printf "${INFO_COLOR}[LOG] $* ${RESET_COLOR}\n"
}

function print_warn()
{
    printf "${WARN_COLOR}[WARN] $* ${RESET_COLOR}\n"
}

function print_error()
{
    printf "${FAIL_COLOR}[ERROR] $* ${RESET_COLOR}\n"
}

function exit_if_error()
{
    if [[ ! $? -eq 0 ]]; then
        print_error "The last operation failed.\n"
        exit 1
    fi
}

#######################################################################
#                             MAIN                                    #
#######################################################################

function main()
{
    print_info "Now running ${THIS_SCRIPT}"

    # check

    # do

    # report
    print_info "${THIS_SCRIPT} is done."
    print_info "See ${BUILD_OUT}"
}

DISABLE_SOMETHING=0
while getopts "hb:x" opt; do
    case "${opt}" in
        b)
            OVERRIDE=${OPTARG}
            ;;
        x)
            DISABLE_SOMETHING=1
            ;;
        *)
            show_usage
            exit 1
            ;;
    esac
done
main
