#!/bin/bash
Names=("MS" "Killer" "king" "nag" "fish")

TIMESTAMP=$(date)
echo "Script print :$TIMESTAMP"

echo "first name : ${Names[0]}"
echo "first name : ${Names[1]}"
echo "first name : ${Names[3]}"
echo "first name : ${Names[4]}"

echo "All names : ${Names[@]}"
