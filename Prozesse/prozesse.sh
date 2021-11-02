#!/bin/bash
#
# Prozesse
# ---------------------------------------------------------------------------------
# SYNOPSIS: prozesse.sh                                                            |
# Ausführung: In Konsole von Git Bash (Ubuntu)                                     |
#                                                                                  |
# Description: Dieses Script Prueft ob ein Prozess läuft oder nicht.               |
#                                                                                  |
# Autoren: Linden Koppejan                                                         |
# Datum: 29.09.2021                                                                |
# ----------------------------------------------------------------------------------
if ps | grep -q $1
then
    echo "Ladet $1"
else
    echo "Der Prozess $1 wird nicht gelaeden"
fi