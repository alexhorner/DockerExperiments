#!/bin/bash

java -server -Xms ${MC_SERVER_MEMORY_MEGS}M -Xmx ${MC_SERVER_MEMORY_MEGS}M -jar ${MC_SERVER_JAR} nogui