#!/bin/bash
#
# Umgestalten
# ---------------------------------------------------------------------------------
# SYNOPSIS: umgestalten.sh [Input] [Output]                                        |
# Ausführung: In Konsole von Git Bash (Ubuntu)                                     |
#                                                                                  |
# Description: Gestalltet der Inhalt eines Dokuments gut leserlich um.             |
#                                                                                  |
# Autoren: Linden Koppejan                                                         |
# Datum: 02.11.2021                                                                |
# ----------------------------------------------------------------------------------

if [ ! -f "$1" ]; then
    echo "$1 does not exist."
    exit 1
fi

if [ ! -f "$2" ]; then
    echo "$2 does not exist."
    exit 1
fi

grep -w "2	[0-9][  ,0-9]" $1 | cut -f 3,4 | tr -d "'" | sort -k 1 -V >$2