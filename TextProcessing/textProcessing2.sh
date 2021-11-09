#!/bin/bash
#
# TextProcessing                                                                             |
# Autoren: Linden Koppejan                                                         |
# Datum: 09.11.2021
 
cat textfiles/list-1 textfiles/list-2 textfiles/list-3 | sort | uniq > final.list
