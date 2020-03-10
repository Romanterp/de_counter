#!/bin/bash
#Description: Counts the occurences of the word 'de' of the Dutch wikipedia page of the RuG
#Usage: ./de_counter PAGE

#Argument is the webpage, check if it works
curl -sS https://nl.wikipedia.org/wiki/Rijksuniversiteit_Groningen?action=raw > page.html
  grep -wo "[Dd]e" page.html | wc -l
