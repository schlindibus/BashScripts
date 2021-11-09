#!/bin/bash
#
# TextProcessing                                                                             |
# Autoren: Linden Koppejan                                                         |
# Datum: 09.11.2021  

man $1 | head -n6 | tail -n1 | cut -b 8-
