#!/bin/bash
if ps | grep -q $1
then
    echo "Loading $1"
else
    echo "Not Loading $1"
fi