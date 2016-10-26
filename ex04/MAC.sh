#!/bin/sh
ifconfig | grep "..:..:..:..:..:.." | sed "s/ether //" | cut -c 2-
