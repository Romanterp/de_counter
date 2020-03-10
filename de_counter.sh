#!/bin/bash
# Description: Counts the occurences of the word 'de' on the Dutch wikipedia page of the RuG
# Usage: ./de_counter

# Uses the curl package to get the webpage, use: $ sudo apt install curl
# First line takes the webpage with action=raw to only get the textual data, and saves it as webpage.html
curl -s https://nl.wikipedia.org/wiki/Rijksuniversiteit_Groningen?action=raw > webpage.html
# Second line prints a de or De on every line, and outputs the number occurences
  grep -wo "[Dd]e" webpage.html | wc -l

