#!/bin/sh
find . -name "*.sh" -type f | sed 's/.sh$//' | rev | cut -d '/' -f 1 | rev 
