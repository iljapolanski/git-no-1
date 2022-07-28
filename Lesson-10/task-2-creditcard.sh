#!/bin/bash
#0000-0000-0000-0000 00/00
right_card="1234-5678-0000-0000 01/23"
wrong_card_chars="1234-abcd-0000-0000 00/ab"

echo "$right_card" | awk '{if ($1 ~ /^([0-9]{4})\-([0-9]{4})\-([0-9]{4})\-([0-9]{4})$/ || $2 ~ /^([0-9]{2})\/([0-9]{2})$/) {print $1 " " $2 "\tok"} else {print $1 " " $2 "\twrong!"}}'
echo "$wrong_card_chars" | awk '{if ($1 ~ /^([0-9]{4})\-([0-9]{4})\-([0-9]{4})\-([0-9]{4})$/ || $2 ~ /^([0-9]{2})\/([0-9]{2})$/) {print $1 " " $2 "\tok"} else {print $1 " " $2 "\twrong!"}}'
