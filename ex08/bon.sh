#!/bin/sh
ldapsearch -Q  "uid=*bon*" | grep "# numEntries" | cut -d ':' -f 2 | cut -c 2-
