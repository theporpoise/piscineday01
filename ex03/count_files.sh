#!/bin/sh
find . -not -path '*/\.*' | wc -l | sed 's/^ *//'
