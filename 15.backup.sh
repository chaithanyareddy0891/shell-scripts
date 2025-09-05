#!/bin/bash
SOURCE_DIR=$1
DEST_DIR=$2
DAYS=${3:-14} #if $3 is empty, default is 14 days.

#chek the source and destination are provided
if [ $# -lt  ]