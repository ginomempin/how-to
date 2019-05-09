#!/bin/bash

#######################################################################
#                            DEFINES                                  #
#######################################################################

PROJECT_ROOT=$(git rev-parse --show-toplevel)
source ${PROJECT_ROOT}/path/to/utils.sh



#######################################################################
#                           FUNCTIONS                                 #
#######################################################################

function show_usage()
{
    USAGE \
"Describe the purpose of the script.\n\
The description can span multiple lines with correct '\n\' placements." \
        "required|script|parameters" \
        "--option1: Option1 description" \
        "--option2: Option2 description" \
        "--option3: Option3 description"
}

function check_environment()
{
    commands=(apt grep python pip bluetoothctl)
    check_commands ${commands}
}

#######################################################################
#                             MAIN                                    #
#######################################################################

for mode in "$@"
do
    case ${mode} in
        --help)
        show_usage
        ;;
        *)
        ERROR "Unknown option '${mode}'"
        show_usage
        ;;
    esac
done

check_environment

# Flow #1: Call other functions here based on the modes passed to the script.
# Flow #2: Call the functions directly from the case statements then exit N.
