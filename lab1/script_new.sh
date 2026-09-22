#!/bin/bash

TARGET_DIR=${1:-.}

gnome-terminal -- bash -c "./script_delete.sh '$TARGET_DIR'; exec bash"
