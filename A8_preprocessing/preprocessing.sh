#!/bin/bash

# File to check
file="AB_NYC_2019.csv"

# Field separator (comma by default)
separator=","

# Check for missing values in each field and print
awk -F "$separator" '{
    for (i = 1; i <= NF; i++) {
        if ($i == "" || $i == "NA") {
            printf "Missing value in row %d, column %d, ID: %d\n", NR, i, $1
        }
    }
}' "$file"

# Remove duplicate lines
awk '!v[$1]++' AB_NYC_2019.csv > unique.csv

# Remove lines with missing value
awk -F, '$12 != 0 && $13 && $14 && $15 && $16 != "" { print $0 }' AB_NYC_2019.c
sv > remove.csv

# Remove outlier
total=$(wc -l < prices.txt)

q1_pos=$(echo "$total * 0.25" | bc | awk '{print int($1)}')
q3_pos=$(echo "$total * 0.75" | bc | awk '{print int($1)}')

q1=$(sed -n "${q1_pos}p" prices.txt)
q3=$(sed -n "${q3_pos}p" prices.txt)

iqr=$(echo "$q3 - $q1" | bc)

upper_bound=$(echo "$q3 + 1.5 * $iqr" | bc)

awk -F',' -v upper="$upper_bound" 'NR == 1 || $10 <= upper {print $0}' unique.csv > cleaned.csv


