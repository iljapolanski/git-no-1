#!/bin/bash
right_isbn="ISBN 5-02-013850-9"
wrong_isbn="SBN 5-02-010-9"

echo "$right_isbn" | awk '{if ($1 ~ /^(ISBN)$/ || $2 ~ /^([0-9]{1})\-([0-9]{2})\-([0-9]{6})\-([0-9]{1})$/ ) {print $1 " " $2 "\tok"} else {print $1 " " $2 "\twrong!"}}'
echo "$wrong_isbn" | awk '{if ($1 ~ /^(ISBN)$/ || $2 ~ /^([0-9]{1})\-([0-9]{2})\-([0-9]{6})\-([0-9]{1})$/ ) {print $1 " " $2 "\tok"} else {print $1 " " $2 "\twrong!"}}'
