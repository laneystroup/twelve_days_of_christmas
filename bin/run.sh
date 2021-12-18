#!/bin/bash

echo "Starting The Twelve Days of Christmas..."

ruby -e "load './lib/twelve_days_of_christmas.rb'; TwelveDaysOfChristmas::Song.new.print"
